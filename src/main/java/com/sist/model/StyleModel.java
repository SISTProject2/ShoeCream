package com.sist.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.StyleDAO;
import com.sist.dao.StyleReplyDAO;
import com.sist.vo.StyleReplyVO;
import com.sist.vo.StyleVO;

@Controller
public class StyleModel {
	@RequestMapping("nav/nav_style.do")
	public String style_list(HttpServletRequest request, HttpServletResponse response) {
		String page=request.getParameter("page");
		if (page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		Map map=new HashMap();
		int rowSize=8;
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
		map.put("start", start);
		map.put("end", end);
		
		List<StyleVO> list=StyleDAO.styleListData(map);
		int totalpage=StyleDAO.styleTotalPage(map);
		
		final int BLOCK = 5;
		int startPage = ((curpage-1)/BLOCK*BLOCK) + 1;
		int endPage = ((curpage-1)/BLOCK*BLOCK) + BLOCK;
		if(endPage>totalpage) {
			endPage = totalpage;
		}
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
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

		StyleReplyVO svo=new StyleReplyVO();
		svo.setSid(vo.getStyle_id());
		List<StyleReplyVO> list=StyleReplyDAO.styleReplyListData(svo);
		
		String content = vo.getContent();
		String[] tag = content.split("#");
	    
		request.setAttribute("tag", tag);
		
		request.setAttribute("list", list);
		
		request.setAttribute("main_jsp", "../style/detail.jsp");
		
		return "../main/main.jsp";
		
	}
	
	@RequestMapping("style/tag.do")
	public String shoesFind(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch(Exception ex) {}
		
		String tag=request.getParameter("tag");

		
		List<StyleVO> list=StyleDAO.styleTagData(tag);
		
		request.setAttribute("tag", tag);
		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../style/tag.jsp");
		
		return "../main/main.jsp";
	}
}
