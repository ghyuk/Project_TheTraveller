package com.project.main.client.service;

import java.util.List;

import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckOut1VO;
import com.project.main.client.vo.DetailVO;

public interface ClientService {

	public List<BookVO> checkList(CheckOut1VO cvo);
	public DetailVO checkDetail(String u_code);

}
