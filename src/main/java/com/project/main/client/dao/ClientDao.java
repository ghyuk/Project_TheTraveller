package com.project.main.client.dao;

import java.util.List;

import com.project.main.admin.vo.ContactVO;
import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckOut1VO;
import com.project.main.client.vo.DetailVO;

public interface ClientDao {

	public List<BookVO> checkList(CheckOut1VO cvo);

	public DetailVO checkDetail(String u_code);

	public int sendMessage(ContactVO cvo);

}
