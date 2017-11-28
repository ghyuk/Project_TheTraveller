package com.project.main.checkIn.service;

import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckOut1VO;

public interface CheckInService {

	public int bookInsert(BookVO bvo);

	public int iuInsert(CheckOut1VO cvo1);


}
