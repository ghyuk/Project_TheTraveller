package com.project.main.client.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.main.admin.vo.ContactVO;
import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckOut1VO;
import com.project.main.client.vo.DetailVO;

public class ClientDaoImpl implements ClientDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<BookVO> checkList(CheckOut1VO cvo1) {
		return session.selectList("checkList",cvo1);
	}

	@Override
	public DetailVO checkDetail(String u_code) {
		return (DetailVO)session.selectOne("checkDetail",u_code);
	}

	@Override
	public int sendMessage(ContactVO cvo) {
		return session.insert("sendMessage");
	}
}
