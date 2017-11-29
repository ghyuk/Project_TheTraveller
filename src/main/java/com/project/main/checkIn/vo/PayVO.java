package com.project.main.checkIn.vo;

public class PayVO {
	private String p_code;
	private String u_code;
	private String p_amount;
	private String p_date;
	private String p_card;
	
	
	
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getU_code() {
		return u_code;
	}
	public void setU_code(String u_code) {
		this.u_code = u_code;
	}
	public String getP_amount() {
		return p_amount;
	}
	public void setP_amount(String p_amount) {
		this.p_amount = p_amount;
	}
	public String getP_date() {
		return p_date;
	}
	public void setP_date(String p_date) {
		this.p_date = p_date;
	}
	public String getP_card() {
		return p_card;
	}
	public void setP_card(String p_card) {
		this.p_card = p_card;
	}
	@Override
	public String toString() {
		return "PayVO [p_code=" + p_code + ", u_code=" + u_code + ", p_amount=" + p_amount + ", p_date=" + p_date
				+ ", p_card=" + p_card + "]";
	}
	
	
	
}
