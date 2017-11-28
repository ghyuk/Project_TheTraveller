package com.project.main.checkIn.controller;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.main.checkIn.service.CheckInService;
import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckInVO2;
import com.project.main.checkIn.vo.CheckOut1VO;
import com.project.main.checkIn.vo.CheckOut2VO;
import com.project.main.checkIn.vo.FlightVO;
import com.project.main.checkIn.vo.HotelVO;
import com.project.main.common.vo.PayVO;
@Controller
@RequestMapping(value = "/checkIn")
public class CheckInController {
	Logger logger = Logger.getLogger(CheckInController.class);
	@Autowired
	private CheckInService checkInService;
	
	
	@RequestMapping(value = "/check.do", method = RequestMethod.GET)
	public String check(){ 
		logger.info("check.do GET 호출 성공");
		return "template/checkIn/selectInfo";
	}
	
	@RequestMapping(value="/fhList.do",method=RequestMethod.POST)
	public ModelAndView fhList(@ModelAttribute CheckInVO2 cvo){ 
		logger.info("fhList 호출 성공");
		
		ModelAndView mav = new ModelAndView();
		String [] departure_city = cvo.getDeparture().split(",");
		String [] arrival_city = cvo.getArrival().split(",");
		cvo.setDeparture(departure_city[0]);
		cvo.setDeparture_city(departure_city[1]);
		cvo.setArrival(arrival_city[0]);
		cvo.setArrival_city(arrival_city[1]);

		mav.addObject("cvo",cvo);
		mav.addObject("code",3);
		mav.setViewName("template/checkIn/fhList");
		
		return mav;
	}

	@ResponseBody
	@RequestMapping(value="/fdata.do",method=RequestMethod.GET)
	public String fdata(@RequestParam("apiurl") String test){
		logger.info("api요청,test:"+test);
		StringBuffer output = new StringBuffer();
		try {
			String site =test;
			
			URL url = new URL(site);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	
			//여기서 실제로 웹서버로 데이터가 전송된다. 
			conn.setRequestMethod("GET");
			/*conn.setRequestProperty("keyword_str", "자바");*/
			
			int resCode = conn.getResponseCode();
			System.out.println(resCode);
			
			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String inputLine;
			
	
			while ((inputLine = in.readLine()) != null) {
				output.append(inputLine);
				output.append("\n");
			}
			in.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return output.toString();
	}
	
	
	@ResponseBody
	@RequestMapping(value="/flight.do",method=RequestMethod.POST)
	public FlightVO flight(@ModelAttribute FlightVO vo,HttpSession session){
		session.setAttribute("sfvo", vo);
		return vo;
	}
	@ResponseBody
	@RequestMapping(value="/hotel.do",method=RequestMethod.POST)
	public HotelVO hotel(@ModelAttribute HotelVO vo,HttpSession session){
		session.setAttribute("shvo", vo);
		return vo;
	}

	@RequestMapping(value="/book.do",method=RequestMethod.POST)
	public ModelAndView voSession(HttpSession session){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("template/checkIn/insertForm");

		return mav;
	}
	@RequestMapping(value="/test.do",method=RequestMethod.GET)
	public ModelAndView test(HttpSession session){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("template/checkIn/insertForm");

		return mav;
	}
	@ResponseBody
	@RequestMapping(value="/fbook.do",method=RequestMethod.POST)
	public CheckOut1VO fbook(@ModelAttribute CheckOut1VO vo,HttpSession session){
		session.setAttribute("spvo", vo);
		return vo;
	}
	@RequestMapping(value="/pay.do",method=RequestMethod.POST)
	public ModelAndView pay(@ModelAttribute CheckOut2VO vo,HttpSession session){
		ModelAndView mav = new ModelAndView();
		int result = 0;
		session.setAttribute("scvo", vo);

		FlightVO fvo = (FlightVO)session.getAttribute("sfvo");
		HotelVO hvo = (HotelVO)session.getAttribute("shvo");
		CheckOut1VO cvo1 = (CheckOut1VO)session.getAttribute("spvo");
		CheckOut2VO cvo2 = (CheckOut2VO)session.getAttribute("scvo");
		
		PayVO pvo = new PayVO();
		pvo.setCvo1(cvo1);
		pvo.setCvo2(cvo2);
		pvo.setHvo(hvo);
		pvo.setFvo(fvo);
		
		result = checkInService.iuInsert(cvo1);
		
		
		
		
		
		BookVO fbvo = new BookVO();
		fbvo.setB_code("book_");
		fbvo.setU_code(cvo1.getU_code());
		fbvo.setB_price(Integer.parseInt(fvo.getPrice().trim())+"");
		fbvo.setB_date(fvo.getOut_day()+","+fvo.getIn_day());
		fbvo.setB_state("결제완료");
		fbvo.setFinfo(fvo.toString());
		fbvo.setHinfo(hvo.toString());
		//result = checkInService.bookInsert(fbvo);
		
		
		
		
		
		
		mav.setViewName("template/checkIn/checkInfoList");
		return mav;
	}

}
