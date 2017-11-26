package com.project.main.test.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.main.test.vo.TestVO;

@Repository 
public class TestDaoImpl implements TestDao{
	
	/* SqlSession : 실제 SQL을 실행하는 객체.
	이 객체가 있어야만 SQL문 실행
	SqlSessionFactory : SquSession
	객체를 생성함. 이 객체는  직접 생성할 수 없고,
	SqlSessionFactoryBean를 통해서만 얻을 수 있다.*/
	@Autowired //mybatis는 SqlSession인터페이스를 구현
	private SqlSession session;
	
	@Override
	public List<TestVO> main() {
		return session.selectList("main");
	}
}
