package com.project.main.client.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.main.checkIn.vo.BookVO;
import com.project.main.checkIn.vo.CheckOut1VO;
import com.project.main.client.dao.ClientDao;
import com.project.main.client.vo.DetailVO;

@Service
public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientDao clientDao;
	
	@Override
	public List<BookVO> checkList(CheckOut1VO cvo) {
		return clientDao.checkList(cvo);
	}

	@Override
	public DetailVO checkDetail(String u_code) {
		return clientDao.checkDetail(u_code);
	}

}
