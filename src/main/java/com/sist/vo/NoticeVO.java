package com.sist.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

/*
NOTICE_ID	  NOT NULL NUMBER          시퀀스넘버
TITLE         NOT NULL VARCHAR2(100)   제목
CONTENT       NOT NULL CLOB            내용
RGDATE        NOT NULL DATE            생성날짜
ADMIN_ID      NOT NULL NUMBER          시퀀스넘버
 */
public class NoticeVO {
	
	private int notice_id, admin_id;
	private String title, content;
	private Date rgdate;
	
	public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
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
	public Date getRgdate() {
		return rgdate;
	}
	public void setRgdate(Date rgdate) {
		this.rgdate = rgdate;
	}
	public String formatRgdate() {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return simpleDateFormat.format(this.rgdate);

	}



	@Override
	public String toString() {
		return "NoticeVO{" +
				"notice_id=" + notice_id +
				", admin_id=" + admin_id +
				", title='" + title + '\'' +
				", content='" + content + '\'' +
				", rgdate=" + rgdate +
				'}';
	}
}
