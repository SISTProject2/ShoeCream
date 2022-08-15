package com.sist.model;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.StyleDAO;
import com.sist.vo.StyleVO;

@Controller
public class StyleModel {
	@RequestMapping("nav/nav_style.do")
	public String style_list(HttpServletRequest request, HttpServletResponse response) {
		List<StyleVO> list=StyleDAO.styleListData();

		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../nav/nav_style.jsp");
		
		
		return "../main/main.jsp";
	}
	
	@RequestMapping("style/insert.do")
	public String style_insert(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("main_jsp", "../style/insert.jsp");
		
		return "../main/main.jsp";
	}
	
	@RequestMapping("style/insert_ok.do")
	public String style_insert_ok(HttpServletRequest request, HttpServletResponse response) {
				
		try {
			request.setCharacterEncoding("UTF-8");
		} catch(Exception ex) {}
		
		String content=request.getParameter("content");
		String img=request.getParameter("img");
		 
		StyleVO vo=new StyleVO();
		vo.setContent(content);
		vo.setImg("../style/image/"+img);
		
		System.out.println("img="+img);
		System.out.println("content="+content);

		StyleDAO.styleInsert(vo);
		
		return "redirect:../nav/nav_style.do";
	}
	
	@RequestMapping("style/style_detail_before.do")
	public String style_detail_before(HttpServletRequest request, HttpServletResponse response) {
		String style_id=request.getParameter("style_id");
		Cookie cookie=new Cookie("style"+style_id, style_id);
		cookie.setPath("/");
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);

		return "redirect:../style/detail.do?style_id="+style_id;	
	}
	
	@RequestMapping("style/detail.do")
	public String style_detail(HttpServletRequest request, HttpServletResponse response) {
		String style_id=request.getParameter("style_id");

		StyleVO vo=StyleDAO.styleDetailData(Integer.parseInt(style_id));

		request.setAttribute("vo", vo);
		
		String content = vo.getContent();
		String[] tag = content.split("#");
	    
		request.setAttribute("tag", tag);
		
		
		request.setAttribute("main_jsp", "../style/detail.jsp");
		
		return "../main/main.jsp";
		
	}
}
