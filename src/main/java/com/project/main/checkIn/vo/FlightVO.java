package com.project.main.checkIn.vo;

public class FlightVO {
	private String airline;
	private String out_day;
	private String out_time;
	private String out_airport;
	private String in_day;
	private String in_time;
	private String in_airport;
	private String hout_day;
	private String hout_time;
	private String hout_airport;
	private String hin_day;
	private String hin_time;
	private String hin_airport;
	private String cnt;
	private String sittype;
	private String price;
	private String readtime;
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public String getOut_day() {
		return out_day;
	}
	public void setOut_day(String out_day) {
		this.out_day = out_day;
	}
	public String getOut_time() {
		return out_time;
	}
	public void setOut_time(String out_time) {
		this.out_time = out_time;
	}
	public String getOut_airport() {
		return out_airport;
	}
	public void setOut_airport(String out_airport) {
		this.out_airport = out_airport;
	}
	public String getIn_day() {
		return in_day;
	}
	public void setIn_day(String in_day) {
		this.in_day = in_day;
	}
	public String getIn_time() {
		return in_time;
	}
	public void setIn_time(String in_time) {
		this.in_time = in_time;
	}
	public String getIn_airport() {
		return in_airport;
	}
	public void setIn_airport(String in_airport) {
		this.in_airport = in_airport;
	}
	public String getHout_day() {
		return hout_day;
	}
	public void setHout_day(String hout_day) {
		this.hout_day = hout_day;
	}
	public String getHout_time() {
		return hout_time;
	}
	public void setHout_time(String hout_time) {
		this.hout_time = hout_time;
	}
	public String getHout_airport() {
		return hout_airport;
	}
	public void setHout_airport(String hout_airport) {
		this.hout_airport = hout_airport;
	}
	public String getHin_day() {
		return hin_day;
	}
	public void setHin_day(String hin_day) {
		this.hin_day = hin_day;
	}
	public String getHin_time() {
		return hin_time;
	}
	public void setHin_time(String hin_time) {
		this.hin_time = hin_time;
	}
	public String getHin_airport() {
		return hin_airport;
	}
	public void setHin_airport(String hin_airport) {
		this.hin_airport = hin_airport;
	}
	public String getCnt() {
		return cnt;
	}
	public void setCnt(String cnt) {
		this.cnt = cnt;
	}
	public String getSittype() {
		return sittype;
	}
	public void setSittype(String sittype) {
		this.sittype = sittype;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getReadtime() {
		return readtime;
	}
	public void setReadtime(String readtime) {
		this.readtime = readtime;
	}
	@Override
	public String toString() {
		return airline + "^" + out_day + "^" + out_time  + "^" +  out_airport + "^" +  in_day + "^" + in_time  + "^" + in_airport
				 + "^" + hout_day + "^" + hout_time  + "^" + hout_airport
				 + "^" + hin_day  + "^" + hin_time + "^" + hin_airport + "^" +  cnt
				 + "^" + sittype + "^" + price  + "^" + readtime;
	}
	
	
	
	
	
	
	
	
}