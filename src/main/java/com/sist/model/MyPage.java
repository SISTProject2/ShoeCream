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
	
	@RequestMapping("mypage/my_mypage.do")
	public String my_mypage(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/my_mypage.jsp";
	}
	
	@RequestMapping("mypage/my_purchase_list.do")
	public String my_purchase_list(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/my_purchase_list.jsp";	 
	}
	
	@RequestMapping("mypage/my_sell_list.do")
	public String my_sell_list(HttpServletRequest request, HttpServletResponse response) {
		
		return "../mypage/my_sell_list.jsp";
	}
	
	@RequestMapping("mypage/my_bookmark.do")
	public String my_bookmark(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/my_bookmark.jsp";
	}
	
	@RequestMapping("mypage/my_recently_viewed.do")
	public String my_recently_viewed(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/my_recently_viewed.jsp";
	}
	
	
	
	@RequestMapping("mypage/my_profile.do")
	public String my_profile(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/my_profile.jsp";
	}
	
	@RequestMapping("mypage/my_addressbook.do")
	public String my_addressbook(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/my_addressbook.jsp";
	}
	
	@RequestMapping("mypage/my_pay_card.do")
	public String my_pay_card(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/my_pay_card.jsp";
	}
	
	@RequestMapping("mypage/my_pay_account.do")
	public String my_pay_account(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/my_pay_account.jsp";
	}
	
	@RequestMapping("mypage/my_style.do")
	public String my_style(HttpServletRequest request, HttpServletResponse response) {
	
		return "../mypage/my_style.jsp";
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
