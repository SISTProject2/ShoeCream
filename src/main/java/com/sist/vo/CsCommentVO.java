package com.sist.vo;

import java.util.Date;

/*
CC_ID	      NOT NULL NUMBER          시퀀스넘버
CONTENT       NOT NULL CLOB            내용
RGDATE        NOT NULL DATE            생성날짜
ADMIN_ID      NOT NULL NUMBER          시퀀스넘버
CS_ID	      NOT NULL NUMBER          시퀀스넘버
USER_ID	      NOT NULL NUMBER          시퀀스넘버
 */
public class CsCommentVO {
	
	private int cc_id, admin_id, cs_id, user_id ;
	private String content;
	private Date rgdate;
	
	public int getCc_id() {
		return cc_id;
	}
	public void setCc_id(int cc_id) {
		this.cc_id = cc_id;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRgdate() {
		return rgdate;
	}
	public void setRgdate(Date rgdate) {
		this.rgdate = rgdate;
	}
	
		
}
