package com.project.main.checkIn.controller;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.main.checkIn.service.CheckInServiceImpl;
import com.project.main.checkIn.vo.CheckInVO;
import com.project.main.checkIn.vo.FlightVO;
import com.project.main.checkIn.vo.HotelVO;
@Controller
@RequestMapping(value = "/checkIn")
public class CheckInController {
	Logger logger = Logger.getLogger(CheckInController.class);
	@Autowired
	private CheckInServiceImpl checkInService;
	
	
	@RequestMapping(value = "/check.do", method = RequestMethod.GET)
	public String check(){ 
		logger.info("check.do GET 호출 성공");
		return "template/checkIn/selectInfo";
	}
	
	@RequestMapping(value="/fhList.do",method=RequestMethod.POST)
	public ModelAndView fhList(@ModelAttribute CheckInVO cvo){ 
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
			
			BufferedReader in = new BufferedReader(new InputStreamReader(
					conn.getInputStream()));
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
	@RequestMapping(value = "/apitest.do", method = RequestMethod.GET)
	public String requestResult(@RequestParam("test") String test) {
		logger.info("api요청,test:" + test);
		StringBuffer output = new StringBuffer();
		try {
			String site = test;

			URL url = new URL(site);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			// 여기서 실제로 웹서버로 데이터가 전송된다.
			conn.setRequestMethod("GET");
			/* conn.setRequestProperty("keyword_str", "자바"); */

			int resCode = conn.getResponseCode();
			System.out.println(resCode);

			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String inputLine;

			while ((inputLine = in.readLine()) != null) {
				output.append(inputLine);
				output.append("\n");
			}
			in.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return output.toString();
	}
	@ResponseBody
	@RequestMapping(value="flight.do",method=RequestMethod.POST)
	public FlightVO flight(@ModelAttribute FlightVO fvo,Model model,HttpSession session){
		System.out.println(fvo.toString());
		model.addAttribute("model",fvo);
		session.setAttribute("session", fvo);

		return fvo;
	}
	@RequestMapping(value="hotel.do",method=RequestMethod.POST)
	public String hotel(@ModelAttribute HotelVO hvo){
		System.out.println(hvo.toString());
		
		return "regedit:"+hvo;
	}
	

}
