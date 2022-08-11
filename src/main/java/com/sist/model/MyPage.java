package com.sist.model;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.ShoesDAO;
import com.sist.vo.ShoesVO;

@Controller
public class MyPage {
	
	@RequestMapping("mypage/mypage.do")
	public String mypage(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/mypage.jsp";
	}
	
	@RequestMapping("mypage/purchase_list.do")
	public String purchase_list(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/purchase_list.jsp";	 
	}
	
	@RequestMapping("mypage/purchase_list2.do")
	public String purchase_list2(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/purchase_list2.jsp";	 
	}
	
	@RequestMapping("mypage/purchase_list3.do")
	public String purchase_list3(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/purchase_list3.jsp";	 
	}
	
	@RequestMapping("mypage/sell_list.do")
	public String sell_list(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/sell_list.jsp";
	}
	
	@RequestMapping("mypage/sell_list2.do")
	public String sell_list2(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/sell_list2.jsp";
	}
	
	@RequestMapping("mypage/sell_list3.do")
	public String sell_list3(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/sell_list3.jsp";
	}
	
	@RequestMapping("mypage/bookmark.do")
	public String bookmark(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/bookmark.jsp";
	}
	
	@RequestMapping("mypage/profile.do")
	public String profile(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/profile.jsp";
	}
	
	@RequestMapping("mypage/addressbook.do")
	public String addressbook(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/addressbook.jsp";
	}
	
	@RequestMapping("mypage/pay_card.do")
	public String pay_card(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/pay_card.jsp";
	}
	
	@RequestMapping("mypage/pay_account.do")
	public String pay_account(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/pay_account.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
