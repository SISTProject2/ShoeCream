package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import java.io.*;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.UserVO;

@Controller //제일 먼저 할 일 
public class UserModel {
	
	//아이디 중복 체크
	@RequestMapping("account/email_check.do")
	public String user_email_check(HttpServletRequest request, HttpServletResponse response) {
		// data:{"id":id} ?id=aaa
		String email = request.getParameter("email");
		System.out.println("UserModel.user_email_check: email :" + email);
		int count = UserDAO.userEmailCheck(email);
		request.setAttribute("count", count);
		return "../account/idcheck_ok.jsp";
	}

	@RequestMapping("account/tel_check.do")
	public String user_tel_check(HttpServletRequest request, HttpServletResponse response) {
		String tel = request.getParameter("tel");
		System.out.println("UserModel.user_tel_check: tel :" + tel);
		int count = UserDAO.userTelCheck(tel);
		System.out.println("UserModel.user_tel_check: count :" + count);
		request.setAttribute("count", count);
		return "../account/idcheck_ok.jsp";
	}

	@RequestMapping("account/login.do")
	public String user_login(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("main_jsp", "../account/login.jsp"); // 재확인 필요
		return "../account/login.jsp";
	}

	@RequestMapping("account/join.do")
	public String user_join(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("main_jsp", "../account/join.jsp");
		return "../main/main.jsp";
	}

	@RequestMapping("account/join_ok.do")
	public String user_join_ok(HttpServletRequest request, HttpServletResponse response) {
		// 사용자 전송값 받기
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception e) {}
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		System.out.println("UserModel.user_join_ok.email : " + email + " pwd :" + pwd + " name :" + name + " tel :" + tel);

		UserVO vo = new UserVO();
		int userId = UserDAO.getMaxUserId();
		System.out.println("UserModel.user_join_ok.userId : " + userId);
		vo.setUser_id(userId + 1);
		vo.setEmail(email);
		vo.setPwd(pwd);
		vo.setName(name);
		vo.setTel(tel);
//		vo.setBirthday(birthday);
//		vo.setGender(gender);
//		vo.setZipcode(zipcode);
//		vo.setAdress(adress);
//		vo.setS_size(s_size);
//		vo.setImg(img);
//		vo.setBankname(bankname);
//		vo.setAccno(accno);
//		vo.setAccholder(accholder);
		
		// 데이터베이스 연결
		System.out.println("email:" + email);
		// 요청처리
		UserDAO.userInsert(vo);
		// 화면 이동
		return "redirect:../main/main.do";
	}

	// 로그인 처리
	@RequestMapping("account/login_ok.do")
	public String user_login_ok(HttpServletRequest request, HttpServletResponse response) {
		// 사용자 요청값 받기
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		System.out.println("UserModel.user_login_ok.email : " + email + " pwd :" + pwd);
		// DAO연동 ==> mapper(SQL) , dao(메소드 처리)
		UserVO vo = UserDAO.isLogin(email, pwd);
		String result = vo.getMsg();
		int user_id=StyleDAO.styleGetUserId(email);
		if (result.equals("OK"))// 로그인시에 세션에 저장 ==> 서버에 저장 (브라우저 종료 , 로그아웃시에 해제)
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", vo);
		
//			session.setAttribute("admin", vo.getAdmin());
			// 서버에 저장 ==> 모든 JSP에서 사용이 가능
		}
		System.out.println("UserModel.user_login_ok.result : " + result);
		request.setAttribute("result", result);
		return "../account/login_ok.jsp";// NOID,NOPWD,OK
	}

	// 로그아웃 처리
	@RequestMapping("account/logout.do")
	public String user_logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();// 저장된 모든 데이터를 지운다
		return "redirect:../main/main.do";
	}
}
