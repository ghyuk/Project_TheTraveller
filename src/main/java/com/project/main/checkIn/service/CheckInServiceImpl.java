package com.project.main.checkIn.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.main.checkIn.dao.CheckInDao;
import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckInVO;
import com.project.main.checkIn.vo.CheckOut1VO;
import com.project.main.checkIn.vo.PayVO;
import com.project.main.main.vo.MainVO;


@Service
@Transactional
public class CheckInServiceImpl implements CheckInService{
	Logger logger = Logger.getLogger(CheckInServiceImpl.class);
	
	@Autowired
	private CheckInDao checkInDao;

	@Override
	public int bookInsert(BookVO bvo) {
		return checkInDao.bookInsert(bvo);
	}

	@Override
	public int iuInsert(CheckOut1VO cvo1) {
		return checkInDao.iuInsert(cvo1);
	}

	@Override
	public int makeSeq(int seq) {
		return checkInDao.makeSeq(seq);
	}

	@Override
	public int selectSeq() {
		return checkInDao.selectSeq();
	}

	@Override
	public int payInsert(PayVO pvo) {
		return checkInDao.payInsert(pvo);
	}

	@Override
	public List<BookVO> checkList(CheckOut1VO cvo) {
		return checkInDao.checkList(cvo);
	}

	
	
}
