package com.project.main.admin.dao;

import java.util.List;

import com.project.main.admin.vo.ContactVO;
import com.project.main.checkIn.vo.BookVO;
import com.project.main.client.vo.DetailVO;

public interface AdminDao {

	public List<ContactVO> contactList(ContactVO cvo);

	public List<DetailVO> checkInList();

	public ContactVO contactDetail(int contactnum);

	public int checkInDetailUpdate(BookVO bvo);

	public int contactUpdate(ContactVO cvo);

}
