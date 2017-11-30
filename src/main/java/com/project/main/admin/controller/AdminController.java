package com.project.main.admin.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.main.admin.service.AdminService;
import com.project.main.admin.vo.ContactVO;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	Logger logger = Logger.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
<<<<<<< HEAD
	@RequestMapping(value="/contactList.do")
=======
	@RequestMapping(value="/contactList")
>>>>>>> branch 'master' of https://github.com/ghyuk/Project_TheTraveller.git
	public String contactList(@ModelAttribute ContactVO cvo, Model model) {
		logger.info("contactList Call Success");
		List<ContactVO> list = adminService.contactList(cvo);
		
		model.addAttribute("contactList", list);
		
		return "template/admin/contactBoard";
	}
	
}
