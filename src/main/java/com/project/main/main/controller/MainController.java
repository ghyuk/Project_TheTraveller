package com.project.main.main.controller;


import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.main.main.service.MainServiceImpl;
import com.project.main.main.vo.MainVO;


@Controller
public class MainController {
	Logger logger = Logger.getLogger(MainController.class);
	@Autowired
	private MainServiceImpl mainService;

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(){
		logger.info("main 호출 성공");
		
		
		return "template/main/main";
	}
	
	
	
	
	
	
	@RequestMapping(value="/intro.do")
	public ModelAndView intro(@RequestParam("intro") String intro){
		logger.info("introSelect 호출 성공");
		ModelAndView mav = new ModelAndView();
		
		List<MainVO> list = mainService.introSelect(intro);
		List<MainVO> golist = new ArrayList<>();
		List<MainVO> eatlist = new ArrayList<>();
		List<MainVO> dolist = new ArrayList<>();
		List<MainVO> otherlist = new ArrayList<>();
		
		for(int i = 0 ; i < list.size() ; i++){
			if(list.get(i).getT_code().equals("t_1")){
				golist.add(list.get(i));
			}else if(list.get(i).getT_code().equals("t_2")){
				eatlist.add(list.get(i));
			}else if(list.get(i).getT_code().equals("t_3")){
				dolist.add(list.get(i));
			}else if(list.get(i).getT_code().equals("t_4")){
				otherlist.add(list.get(i));
			}
		}
		mav.addObject("intro",intro);
		mav.addObject("golist", golist);
		mav.addObject("eatlist", eatlist);
		mav.addObject("dolist", dolist);
		mav.addObject("otherlist", otherlist);
		mav.setViewName("template/main/intro");
		
		return mav;
	}
	

}
