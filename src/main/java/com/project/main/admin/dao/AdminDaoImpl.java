package com.project.main.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.main.admin.vo.ContactVO;
import com.project.main.checkIn.vo.BookVO;
import com.project.main.client.vo.DetailVO;

@Repository
public class AdminDaoImpl implements AdminDao {
	Logger logger = Logger.getLogger(AdminDaoImpl.class);
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<ContactVO> contactList(ContactVO cvo) {
		logger.info("contactList dao");
		return session.selectList("contactList");
	}
	@Override
	public List<DetailVO> checkInList() {
		return session.selectList("checkInList");
	}



	@Override
	public ContactVO contactDetail(int contactnum) {
		return (ContactVO)session.selectOne("contactDetail");
	}



	@Override
	public int checkInDetailUpdate(BookVO bvo) {
		return session.update("checkInDetailUpdate",bvo);
	}

}
