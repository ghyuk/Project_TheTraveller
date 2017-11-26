package com.project.main.main.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.main.main.dao.MainDao;
import com.project.main.main.vo.MainVO;


@Service
@Transactional
public class MainServiceImpl implements MainService{
	Logger logger = Logger.getLogger(MainServiceImpl.class);
	
	@Autowired
	private MainDao mainDao;

	@Override
	public List<MainVO> main(String main) {
		List<MainVO> list = null;
		list = mainDao.main(main);
		return list;
	}
	
}
