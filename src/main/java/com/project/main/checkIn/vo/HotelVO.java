package com.project.main.checkIn.vo;

public class HotelVO {
	private String h_name;
	private String h_info;
	private String h_address;
	private String h_tel;
	private String h_price;
	private String h_image;
	
	
	
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getH_info() {
		return h_info;
	}
	public void setH_info(String h_info) {
		this.h_info = h_info;
	}
	public String getH_address() {
		return h_address;
	}
	public void setH_address(String h_address) {
		this.h_address = h_address;
	}
	public String getH_tel() {
		return h_tel;
	}
	public void setH_tel(String h_tel) {
		this.h_tel = h_tel;
	}
	public String getH_price() {
		return h_price;
	}
	public void setH_price(String h_price) {
		this.h_price = h_price;
	}
	public String getH_image() {
		return h_image;
	}
	public void setH_image(String h_image) {
		this.h_image = h_image;
	}
	@Override
	public String toString() {
		return h_name + "^" + h_info + "^" + h_address + "^" + h_tel
				 + "^" + h_price + "^" + h_image;
	}
	
	
	
}