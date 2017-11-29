package com.project.main.checkIn.vo;

public class CheckOut2VO {
	private String cardnum;
	private String cardDateYear;
	private String cardDateMonth;
	private String securitycode;
	private String cardfname;		
	private String cardlname;
	
	private String billfname;
	private String billlname;
	private String comname;
	
	private String billemail;
	private String billphone;
	private String address;
	private String postcode;
	public String getCardnum() {
		return cardnum;
	}
	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}
	public String getCardDateYear() {
		return cardDateYear;
	}
	public void setCardDateYear(String cardDateYear) {
		this.cardDateYear = cardDateYear;
	}
	public String getCardDateMonth() {
		return cardDateMonth;
	}
	public void setCardDateMonth(String cardDateMonth) {
		this.cardDateMonth = cardDateMonth;
	}
	public String getSecuritycode() {
		return securitycode;
	}
	public void setSecuritycode(String securitycode) {
		this.securitycode = securitycode;
	}
	public String getCardfname() {
		return cardfname;
	}
	public void setCardfname(String cardfname) {
		this.cardfname = cardfname;
	}
	public String getCardlname() {
		return cardlname;
	}
	public void setCardlname(String cardlname) {
		this.cardlname = cardlname;
	}
	public String getBillfname() {
		return billfname;
	}
	public void setBillfname(String billfname) {
		this.billfname = billfname;
	}
	public String getBilllname() {
		return billlname;
	}
	public void setBilllname(String billlname) {
		this.billlname = billlname;
	}
	public String getComname() {
		return comname;
	}
	public void setComname(String comname) {
		this.comname = comname;
	}
	public String getBillemail() {
		return billemail;
	}
	public void setBillemail(String billemail) {
		this.billemail = billemail;
	}
	public String getBillphone() {
		return billphone;
	}
	public void setBillphone(String billphone) {
		this.billphone = billphone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	@Override
	public String toString() {
		return cardnum+"^"+cardDateYear+"^"+cardDateMonth
				+"^"+securitycode+"^"+cardfname+"^"+cardlname
				+"^"+billfname+"^"+billlname+"^"+comname+"^"+
				billemail+"^"+billphone+"^"+address+"^"+postcode;
	}
	
	
	
	
	
	
}
