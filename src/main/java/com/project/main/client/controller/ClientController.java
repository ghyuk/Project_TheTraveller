package com.project.main.client.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.main.admin.vo.ContactVO;
import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckOut1VO;
import com.project.main.client.vo.DetailVO;
import com.project.main.checkIn.vo.FlightVO;
import com.project.main.checkIn.vo.HotelVO;
import com.project.main.client.service.ClientService;

@Controller
@RequestMapping(value="/client")
public class ClientController {
	Logger logger = Logger.getLogger(ClientController.class);
	
	@Autowired
	private ClientService clientService;
	
	@RequestMapping(value="/checkList.do",method=RequestMethod.GET)
	public ModelAndView checkList(@RequestParam("u_passport") String passport,@RequestParam("u_phone") String phone){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("template/checkIn/checkInfoList");
		CheckOut1VO cvo = new CheckOut1VO();
		cvo.setU_passport(passport);
		cvo.setU_phone(phone);
		List<BookVO> list = clientService.checkList(cvo);
		mav.addObject("list",list);
		mav.addObject("passport",passport);
		
		return mav;
	}
	@RequestMapping(value="/checkDetail.do",method=RequestMethod.GET)
	public ModelAndView checkDetail(@RequestParam("data") String u_code){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("template/checkIn/checkInfoDetail");
		DetailVO dvo = clientService.checkDetail(u_code);
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
	
	@ResponseBody
	@RequestMapping(value="/sendMessage.do",method = RequestMethod.POST)
	public String sendMessage(@ModelAttribute ContactVO cvo) {
		int result = 0;
		result = clientService.sendMessage(cvo);
		return "1";
	}
	
	
}
