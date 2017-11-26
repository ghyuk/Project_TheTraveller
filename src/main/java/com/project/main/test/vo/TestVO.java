package com.project.main.test.vo;

public class TestVO {
	private String i_code;
	private String t_code;
	private String c_code;
	private String i_title;
	private String i_content;
	private String i_image;
	
	
	
	public String getI_code() {
		return i_code;
	}
	public void setI_code(String i_code) {
		this.i_code = i_code;
	}
	public String getT_code() {
		return t_code;
	}
	public void setT_code(String t_code) {
		this.t_code = t_code;
	}
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	public String getI_title() {
		return i_title;
	}
	public void setI_title(String i_title) {
		this.i_title = i_title;
	}
	public String getI_content() {
		return i_content;
	}
	public void setI_content(String i_content) {
		this.i_content = i_content;
	}
	public String getI_image() {
		return i_image;
	}
	public void setI_image(String i_image) {
		this.i_image = i_image;
	}
	@Override
	public String toString() {
		return "TestVO [i_code=" + i_code + ", t_code=" + t_code + ", c_code=" + c_code + ", i_title=" + i_title
				+ ", i_content=" + i_content + ", i_image=" + i_image + "]";
	}
	

}
