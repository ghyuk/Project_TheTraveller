package com.project.main.checkIn.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.main.checkIn.dao.CheckInDao;
import com.project.main.checkIn.vo.CheckInVO;


@Service
@Transactional
public class CheckInServiceImpl implements CheckInService{
	Logger logger = Logger.getLogger(CheckInServiceImpl.class);
	
	@Autowired
	private CheckInDao checkInDao;

	@Override
	public List<CheckInVO> main(String main) {
		List<CheckInVO> list = null;
		list = checkInDao.CheckIn(main);
		return list;
	}
	
}
