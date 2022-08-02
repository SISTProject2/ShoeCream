package com.sist.vo;

import java.util.Date;

/*
CS_ID	  	  NOT NULL NUMBER          시퀀스넘버
S_TYPE        NOT NULL VARCHAR2(50)    문의유형
TITLE         NOT NULL VARCHAR2(100)   제목
RGDATE        NOT NULL DATE            생성날짜
CONTENT       NOT NULL CLOB            내용
IMG			  		   VARCHAR2(2000)  사진
USER_ID       NOT NULL NUMBER          시퀀스넘버
 */
public class CsVO {
	
	private int cs_id, user_id;
	private String s_type, title, content, img;
	private Date rgdate;
	
	public int getCs_id() {
		return cs_id;
	}
	public void setCs_id(int cs_id) {
		this.cs_id = cs_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getS_type() {
		return s_type;
	}
	public void setS_type(String s_type) {
		this.s_type = s_type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getRgdate() {
		return rgdate;
	}
	public void setRgdate(Date rgdate) {
		this.rgdate = rgdate;
	}
	

	
}
