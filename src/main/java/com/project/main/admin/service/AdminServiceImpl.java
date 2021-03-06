package com.project.main.admin.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.main.admin.dao.AdminDao;
import com.project.main.admin.vo.ContactVO;
import com.project.main.checkIn.vo.BookVO;
import com.project.main.client.dao.ClientDao;
import com.project.main.client.vo.DetailVO;

@Service
public class AdminServiceImpl implements AdminService {
	Logger logger = Logger.getLogger(AdminServiceImpl.class);
	
	@Autowired
	private AdminDao adminDao;
	@Autowired
	private ClientDao clientDao;
	
	@Override
	public List<ContactVO> contactList(ContactVO cvo) {
		logger.info("contactList Service");
		List<ContactVO> list = null;
		list = adminDao.contactList(cvo);
		return list;
	}

	@Override
	public DetailVO checkDetail(String u_code) {
		return  clientDao.checkDetail(u_code);
	}

	@Override
	public List<DetailVO> checkInList() {
		return adminDao.checkInList();
	}

	@Override
	public ContactVO contactDetail(int contactnum) {
		return adminDao.contactDetail(contactnum);
	}

	@Override
	public int checkInDetailUpdate(BookVO bvo) {
		return adminDao.checkInDetailUpdate(bvo);
	}

	@Override
	public int contactUpdate(ContactVO cvo) {
		return adminDao.contactUpdate(cvo);
		
	}

}
