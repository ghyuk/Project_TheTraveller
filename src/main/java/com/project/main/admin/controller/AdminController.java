package com.project.main.admin.controller;

import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.main.admin.service.AdminService;
import com.project.main.admin.vo.ContactVO;
import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.FlightVO;
import com.project.main.checkIn.vo.HotelVO;
import com.project.main.client.vo.DetailVO;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	Logger logger = Logger.getLogger(AdminController.class);
	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/checkInList.do")
	public String checkInList(Model model) {
		logger.info("checkInList Call Success");
		List<DetailVO> list = adminService.checkInList();
		model.addAttribute("checkInList", list);
		return "template/admin/checkInList";
	}

	@RequestMapping(value = "/checkDetail.do", method = RequestMethod.GET)
	public ModelAndView checkDetail(@RequestParam("data") String u_code) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("template/admin/checkInDetail");
		DetailVO dvo = adminService.checkDetail(u_code);
		String[] p = dvo.getB_price().split("\\^");
		dvo.setB_price((Integer.parseInt(p[0]) + Integer.parseInt(p[1])) + "");
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

		mav.addObject("dvo", dvo);
		mav.addObject("fvo", fvo);
		mav.addObject("hvo", hvo);

		return mav;
	}

	@RequestMapping(value = "/contactList.do")
	public String contactList(@ModelAttribute ContactVO cvo, Model model) {
		logger.info("contactList Call Success");
		List<ContactVO> list = adminService.contactList(cvo);

		model.addAttribute("contactList", list);

		return "template/admin/contactBoard";
	}

	@RequestMapping(value = "/contactDetail.do")
	public String contactDetail(@RequestParam("data") int contactnum, Model model) {
		logger.info("contactDetail Call Success");
		ContactVO value = adminService.contactDetail(contactnum);
		ContactVO cvo = new ContactVO();
		cvo.setContactnum(value.getContactnum());
		cvo.setContactdate(value.getContactdate());
		cvo.setContactname(value.getContactname());
		cvo.setContactemail(value.getContactemail());
		cvo.setContactcontent(value.getContactcontent());

		model.addAttribute("cvo", cvo);
		return "template/admin/contactDetail";
	}

	@RequestMapping(value = "/checkInDetailUpdate.do", method = RequestMethod.POST)
	public ModelAndView checkInDetailUpdate(@ModelAttribute BookVO bvo) {
		ModelAndView mav = new ModelAndView();

		if (bvo.getF_num1().trim().equals("")) {
			bvo.setF_num1(null);
		}
		if (bvo.getF_num2().trim().equals("")) {
			bvo.setF_num2(null);
		}
		if (bvo.getH_num().trim().equals("")) {
			bvo.setH_num(null);
		}
		adminService.checkInDetailUpdate(bvo);
		mav.addObject("code", 3); // 수정완료 코드 3

		mav.setViewName("redirect:/admin/checkInList.do");

		return mav;
	}

	// mailSending 코드
	@RequestMapping(value = "/mailSending.do")
	public ModelAndView mailSending(@ModelAttribute ContactVO cvo, HttpServletRequest request) {
		// mailForm.jsp 에서 작성해서 보낸, 상태방의 이메일, 메일제복, 내용을 받을 후 mailSender 에 담아서
		// 보내는 일을 한다.
		ModelAndView mav = new ModelAndView();
		String setfrom = "sister1308@gmail.com";
		String contactemail = cvo.getContactemail(); // 보내는 사람 이메일
		// String title = request.getParameter("title"); // 제목
		String contactreply = cvo.getContactreply(); // 내용
		mav.setViewName("redirect:/admin/contactList.do");
		
		// mav.addObject()
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(contactemail); // 받는사람 이메일
			messageHelper.setSubject("The Traveller 문의사항 답변 입니다."); // 메일제목은 생략이 가능하다
			messageHelper.setText(contactreply); // 메일 내용

			mailSender.send(message);
			cvo.setC_status("답변 완료");
			adminService.contactUpdate(cvo);
			
			
		} catch (Exception e) {
			System.out.println(e);
		}

		return mav;
	}
}
