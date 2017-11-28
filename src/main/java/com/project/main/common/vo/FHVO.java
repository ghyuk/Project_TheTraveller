package com.project.main.common.vo;

import com.project.main.checkIn.vo.FlightVO;
import com.project.main.checkIn.vo.HotelVO;

public class FHVO {
	private HotelVO hoteldata;
	private FlightVO flightdata;
	public HotelVO getHoteldata() {
		return hoteldata;
	}
	public void setHoteldata(HotelVO hoteldata) {
		this.hoteldata = hoteldata;
	}
	public FlightVO getFlightdata() {
		return flightdata;
	}
	public void setFlightdata(FlightVO flightdata) {
		this.flightdata = flightdata;
	}
	@Override
	public String toString() {
		return "FHVO [hoteldata=" + hoteldata + ", flightdata=" + flightdata + "]";
	}
	
	
}
