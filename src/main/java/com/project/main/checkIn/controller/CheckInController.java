 package com.project.main.checkIn.controller;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

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
import com.project.main.client.vo.DetailVO;
import com.project.main.checkIn.vo.FlightVO;
import com.project.main.checkIn.vo.HotelVO;
import com.project.main.checkIn.vo.PayVO;
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
		int seq = checkInService.selectSeq();
		checkInService.makeSeq(seq);
		FlightVO fvo = (FlightVO)session.getAttribute("sfvo");
		HotelVO hvo = (HotelVO)session.getAttribute("shvo");
		CheckOut1VO cvo1 = (CheckOut1VO)session.getAttribute("spvo");
		CheckOut2VO cvo2 = (CheckOut2VO)session.getAttribute("scvo");
	
		//비회원 입력
		cvo1.setU_code("iu_"+seq);
		result = checkInService.iuInsert(cvo1);
		//예약 입력
		BookVO fbvo = new BookVO();
		fbvo.setB_code("book_"+seq);
		fbvo.setU_code(cvo1.getU_code());
		fbvo.setB_price(fvo.getPrice().trim()+"^"+hvo.getH_price().trim());
		fbvo.setB_state("1");
		fbvo.setFinfo(fvo.toString());
		fbvo.setHinfo(hvo.toString());
		result = checkInService.bookInsert(fbvo);
		
		//결제입력
		PayVO pvo = new PayVO();
		pvo.setP_code("pay_"+seq);
		pvo.setU_code(cvo1.getU_code());
		pvo.setP_amount(""+(Integer.parseInt(fvo.getPrice().trim())+Integer.parseInt(hvo.getH_price().trim())));
		pvo.setP_card(cvo2.toString());
		
		result = checkInService.payInsert(pvo);
		session.invalidate();
		mav.addObject("u_passport",cvo1.getU_passport());
		mav.addObject("u_phone",cvo1.getU_phone());
		mav.setViewName("template/checkIn/checkInfoList");
		return mav;
	}

	/*
	@RequestMapping(value="/checkList.do",method=RequestMethod.GET)
	public ModelAndView checkList(@RequestParam("u_passport") String passport,@RequestParam("u_phone") String phone){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("template/checkIn/checkInfoList");
		CheckOut1VO cvo = new CheckOut1VO();
		cvo.setU_passport(passport);
		cvo.setU_phone(phone);
		List<BookVO> list = checkInService.checkList(cvo);
		mav.addObject("list",list);
		mav.addObject("passport",passport);
		
		return mav;
	}
	@RequestMapping(value="/checkDetail.do",method=RequestMethod.GET)
	public ModelAndView checkDetail(@RequestParam("data") String u_code){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("template/checkIn/checkInfoDetail");
		DetailVO dvo = checkInService.checkDetail(u_code);
		String [] p =dvo.getB_price().split("\\^");
		dvo.setB_price((Integer.parseInt(p[0])+Integer.parseInt(p[1]))+"");
		String[] finfo = dvo.getFinfo().split("\\^");
		String[] hinfo = dvo.getHinfo().split("\\^");
		
		FlightVO fvo = new FlightVO();
		fvo.setAirline(finfo[0]);
		fvo.setOut_day(finfo[1]);
		fvo.setOut_time(finfo[2]);
		fvo.setOut_airport(finfo[3]);
		fvo.setIn_day(finfo[4]);
		fvo.setIn_time(finfo[5]);
		fvo.setIn_airport(finfo[6]);
		fvo.setHout_day(finfo[7]);
		fvo.setHout_time(finfo[8]);
		fvo.setHout_airport(finfo[9]);
		fvo.setHin_day(finfo[10]);
		fvo.setHin_time(finfo[11]);
		fvo.setHin_airport(finfo[12]);
		fvo.setCnt(finfo[13]);
		fvo.setSittype(finfo[14]);
		fvo.setPrice(finfo[15]);

		HotelVO hvo = new HotelVO();
		hvo.setH_name(hinfo[0]);
		hvo.setH_info(hinfo[1]);
		hvo.setH_address(hinfo[2]);
		hvo.setH_tel(hinfo[3]);
		hvo.setH_price(hinfo[4]);
		hvo.setH_image(hinfo[5]);
		
		mav.addObject("dvo",dvo);
		mav.addObject("fvo",fvo);
		mav.addObject("hvo",hvo);
		
		return mav;
	}
	*/
	
	
//	@RequestMapping(value="/test.do",method=RequestMethod.GET)
//	public ModelAndView test(){
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("template/checkIn/checkInfoList");
//		
//		String passport="1",phone="1";
//		CheckOut1VO cvo = new CheckOut1VO();
//		cvo.setU_passport(passport);
//		cvo.setU_phone(phone);
//		List<BookVO> list = checkInService.checkList(cvo);
//		mav.addObject("list",list);
//		mav.addObject("passport",passport);
//		
//		return mav;
//	}
	
}
