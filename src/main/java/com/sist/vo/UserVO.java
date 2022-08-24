package com.sist.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

/*

USER_id	NUMBER				No			1	시퀀스넘버
EMAIL		VARCHAR2(100 BYTE)	No			2	이메일
PWD			VARCHAR2(70 BYTE)	No			3	비밀번호
NAME		VARCHAR2(20 BYTE)	No			4	이름
TEL			VARCHAR2(50 BYTE)	No			5	핸드폰번호
BIRTHDAY	DATE				Yes			6	생년월일
GENDER		VARCHAR2(20 BYTE)	Yes			7	성별
ZIPCODE		VARCHAR2(100 BYTE)	Yes			8	우편번호
ADRESS		VARCHAR2(500 BYTE)	Yes			9	주소
S_SIZE		VARCHAR2(20 BYTE)	Yes			10	사이즈
IMG			VARCHAR2(2000 BYTE)	Yes			11	프로필 사진
BANKNAME	VARCHAR2(50 BYTE)	Yes			12	은행사
ACCNO		VARCHAR2(500 BYTE)	Yes			13	계좌번호
ACCHOLDER	VARCHAR2(20 BYTE)	Yes			14	예금주

 */
public class UserVO {

	private int user_id;
	private String email, pwd, name, tel, gender, zipcode, adress, s_size, img, bankname, accno, accholder, birthday, msg ;


	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getS_size() {
		return s_size;
	}
	public void setS_size(String s_size) {
		this.s_size = s_size;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public String getAccno() {
		return accno;
	}
	public void setAccno(String accno) {
		this.accno = accno;
	}
	public String getAccholder() {
		return accholder;
	}
	public void setAccholder(String accholder) {
		this.accholder = accholder;
	}



	public String getBirthday() {
		return birthday;
	}



	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
//	@Override
//	public String toString() {
//		return "UserVO{" +
//				"user_id=" + user_id +
//				", email='" + email + '\'' +
//				", pwd='" + pwd + '\'' +
//				", name='" + name + '\'' +
//				", tel='" + tel + '\'' +
//				", gender='" + gender + '\'' +
//				", zipcode='" + zipcode + '\'' +
//				", adress='" + adress + '\'' +
//				", s_size='" + s_size + '\'' +
//				", img='" + img + '\'' +
//				", bankname='" + bankname + '\'' +
//				", accno='" + accno + '\'' +
//				", accholder='" + accholder + '\'' +
//				", birthday=" + birthday + '\'' +
//				", msg=" + msg +
//				'}';
//	}

}

