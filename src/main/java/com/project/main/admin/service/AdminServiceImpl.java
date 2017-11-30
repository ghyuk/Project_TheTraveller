package com.project.main.admin.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.main.admin.dao.AdminDao;
import com.project.main.admin.vo.ContactVO;

@Service
public class AdminServiceImpl implements AdminService {
	Logger logger = Logger.getLogger(AdminServiceImpl.class);
	
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<ContactVO> contactList(ContactVO cvo) {
		logger.info("contactList Service");
		List<ContactVO> list = null;
		list = adminDao.contactList(cvo);
		return list;
	}

}
