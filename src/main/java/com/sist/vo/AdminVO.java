package com.sist.vo;

/*
ADMIN_ID		NUMBER				No		1	시퀀스넘버
MANAGER			VARCHAR2(50 BYTE)	No		2	관리자 ID
MANAGER_PWD		VARCHAR2(70 BYTE)	No		3	관리자 PWD 
 
 */
public class AdminVO {
	
	private int admin_id;
	private String manager, manager_pwd;
	
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getManager_pwd() {
		return manager_pwd;
	}
	public void setManager_pwd(String manager_pwd) {
		this.manager_pwd = manager_pwd;
	}

	public AdminVO(String manager, String manager_pwd) {
		this.manager = manager;
		this.manager_pwd = manager_pwd;
	}

	@Override
	public String toString() {
		return "AdminVO{" +
				"number=" + admin_id +
				", manager='" + manager + '\'' +
				", manager_pwd='" + manager_pwd + '\'' +
				'}';
	}

	public AdminVO(int number, String manager, String manager_pwd) {
		this.admin_id = number;
		this.manager = manager;
		this.manager_pwd = manager_pwd;
	}

	public AdminVO() {
	}
}
