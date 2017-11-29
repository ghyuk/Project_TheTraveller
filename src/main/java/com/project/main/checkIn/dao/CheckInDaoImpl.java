package com.project.main.checkIn.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckOut1VO;

@Repository 
public class CheckInDaoImpl implements CheckInDao{
	
	/* SqlSession : 실제 SQL을 실행하는 객체.
	이 객체가 있어야만 SQL문 실행
	SqlSessionFactory : SquSession
	객체를 생성함. 이 객체는  직접 생성할 수 없고,
	SqlSessionFactoryBean를 통해서만 얻을 수 있다.*/
	@Autowired //mybatis는 SqlSession인터페이스를 구현
	private SqlSession session;

	@Override
	public int bookInsert(BookVO bvo) {
		return session.insert("bookInsert",bvo);
	}

	@Override
	public int iuInsert(CheckOut1VO cvo1) {
		return session.insert("iuInsert",cvo1);
	}

	@Override
	public int makeSeq(int seq) {
		return session.update("makeSeq",seq);
		
	}

	@Override
	public int selectSeq() {
		int seq = session.selectOne("selectSeq");
		
		return seq;
	}
	
	
}
