package com.project.main.test.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.main.test.dao.TestDao;
import com.project.main.test.vo.TestVO;


@Service
@Transactional
public class TestServiceImpl implements TestService{
	Logger logger = Logger.getLogger(TestServiceImpl.class);
	
	@Autowired
	private TestDao testDao;

	@Override
	public List<TestVO> main() {
		List<TestVO> list = null;
		list = testDao.main();
		return list;
	}
	
}
