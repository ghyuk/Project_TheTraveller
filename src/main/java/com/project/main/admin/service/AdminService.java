package com.project.main.admin.service;

import java.util.List;

import com.project.main.admin.vo.ContactVO;
import com.project.main.client.vo.DetailVO;

public interface AdminService {

	public List<ContactVO> contactList(ContactVO cvo);

	public List<DetailVO> checkInList();

	public DetailVO checkDetail(String u_code);

}
