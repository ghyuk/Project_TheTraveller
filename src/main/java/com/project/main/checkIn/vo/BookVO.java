package com.project.main.checkIn.vo;

public class BookVO {

	private String b_code;
	private String u_code;
	private String b_price;
	private String b_state;
	private String b_date;
	private String b_num;
	private String finfo;
	private String hinfo;
	public String getB_code() {
		return b_code;
	}
	public void setB_code(String b_code) {
		this.b_code = b_code;
	}
	public String getU_code() {
		return u_code;
	}
	public void setU_code(String u_code) {
		this.u_code = u_code;
	}
	public String getB_price() {
		return b_price;
	}
	public void setB_price(String b_price) {
		this.b_price = b_price;
	}
	public String getB_state() {
		return b_state;
	}
	public void setB_state(String b_state) {
		this.b_state = b_state;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public String getB_num() {
		return b_num;
	}
	public void setB_num(String b_num) {
		this.b_num = b_num;
	}
	public String getFinfo() {
		return finfo;
	}
	public void setFinfo(String finfo) {
		this.finfo = finfo;
	}
	public String getHinfo() {
		return hinfo;
	}
	public void setHinfo(String hinfo) {
		this.hinfo = hinfo;
	}
	@Override
	public String toString() {
		return "BookVO [b_code=" + b_code + ", u_code=" + u_code + ", b_price=" + b_price + ", b_state=" + b_state
				+ ", b_date=" + b_date + ", b_num=" + b_num + ", fvo=" + finfo + ", hvo=" + hinfo + "]";
	}	
	
	
	
}
