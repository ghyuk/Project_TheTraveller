package com.project.main.checkIn.service;

import java.util.List;

import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckOut1VO;
import com.project.main.checkIn.vo.DetailVO;
import com.project.main.checkIn.vo.PayVO;

public interface CheckInService {

	public int bookInsert(BookVO bvo);

	public int iuInsert(CheckOut1VO cvo1);

	public int makeSeq(int seq);

	public int selectSeq();

	public int payInsert(PayVO pvo);

	public List<BookVO> checkList(CheckOut1VO cvo);

	public DetailVO checkDetail(String u_code);


}
