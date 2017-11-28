package com.project.main.common.vo;

import com.project.main.checkIn.vo.CheckOut1VO;
import com.project.main.checkIn.vo.CheckOut2VO;
import com.project.main.checkIn.vo.FlightVO;
import com.project.main.checkIn.vo.HotelVO;

public class PayVO {
	private CheckOut1VO cvo1;
	private CheckOut2VO cvo2;
	private FlightVO fvo;
	private HotelVO hvo;
	
	public CheckOut1VO getCvo1() {
		return cvo1;
	}
	public void setCvo1(CheckOut1VO cvo1) {
		this.cvo1 = cvo1;
	}
	public CheckOut2VO getCvo2() {
		return cvo2;
	}
	public void setCvo2(CheckOut2VO cvo2) {
		this.cvo2 = cvo2;
	}
	public FlightVO getFvo() {
		return fvo;
	}
	public void setFvo(FlightVO fvo) {
		this.fvo = fvo;
	}
	public HotelVO getHvo() {
		return hvo;
	}
	public void setHvo(HotelVO hvo) {
		this.hvo = hvo;
	}
	
	
	
}
