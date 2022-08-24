package com.sist.vo;

import java.util.Date;

/*
 *  STYLE_ID NOT NULL NUMBER         
	IMG      NOT NULL VARCHAR2(2000) 
	CONTENT  NOT NULL CLOB           
	RGDATE   NOT NULL DATE           
	BOOKMARK          NUMBER         
	USER_ID  NOT NULL NUMBER 
 */

public class StyleVO {
	private int style_id, bookmark, u_id, rcount;
	private String img, content, dbday, email;
	private Date rgdate;
	
	public int getStyle_id() {
		return style_id;
	}
	public void setStyle_id(int style_id) {
		this.style_id = style_id;
	}
	public int getBookmark() {
		return bookmark;
	}
	public void setBookmark(int bookmark) {
		this.bookmark = bookmark;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
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
	public int getRcount() {
		return rcount;
	}
	public void setRcount(int rcount) {
		this.rcount = rcount;
	}
	public String getDbday() {
		return dbday;
	}
	public void setDbday(String dbday) {
		this.dbday = dbday;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
