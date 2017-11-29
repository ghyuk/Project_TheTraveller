package com.project.main.checkIn.dao;

import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckOut1VO;

public interface CheckInDao {

	public int bookInsert(BookVO bvo);

	public int iuInsert(CheckOut1VO cvo1);

	public int makeSeq(int seq);

	public int selectSeq();

	
}
