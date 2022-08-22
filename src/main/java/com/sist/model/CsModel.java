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
public class CsModel {
	
	@RequestMapping("cs/cs_QnA.do")
	public String cs_QnA(HttpServletRequest request, HttpServletResponse response) {
		
		return "../cs/cs_Qna.jsp";	 
	}
	
	@RequestMapping("cs/cs_notice.do")
	public String cs_notice(HttpServletRequest request, HttpServletResponse response) {
		
		return "../cs/cs_notice.jsp";
	}
	


	
}
