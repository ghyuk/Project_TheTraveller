package com.project.main.admin.dao;

import java.util.List;

import com.project.main.admin.vo.ContactVO;

public interface AdminDao {

	public List<ContactVO> contactList(ContactVO cvo);

}
