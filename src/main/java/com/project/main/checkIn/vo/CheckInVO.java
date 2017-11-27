package com.project.main.checkIn.vo;

public class CheckInVO {
	private String departure;
	private String departure_city;
	private String arrival;
	private String arrival_city;
	private String d_date;
	private String a_date;
	private String sitclass;
	private String people;
	
	
	
	public String getDeparture_city() {
		return departure_city;
	}
	public void setDeparture_city(String departure_city) {
		this.departure_city = departure_city;
	}
	public String getArrival_city() {
		return arrival_city;
	}
	public void setArrival_city(String arrival_city) {
		this.arrival_city = arrival_city;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getArrival() {
		return arrival;
	}
	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	public String getD_date() {
		return d_date;
	}
	public void setD_date(String d_date) {
		this.d_date = d_date;
	}
	public String getA_date() {
		return a_date;
	}
	public void setA_date(String a_date) {
		this.a_date = a_date;
	}
	public String getSitclass() {
		return sitclass;
	}
	public void setSitclass(String sitclass) {
		this.sitclass = sitclass;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	@Override
	public String toString() {
		return "CheckInVO [departure=" + departure + ", arrival=" + arrival + ", d_date=" + d_date + ", a_date="
				+ a_date + ", sitclass=" + sitclass + ", people=" + people + "]";
	}
	
	
	
	
}
