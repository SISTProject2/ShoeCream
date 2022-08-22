package com.sist.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.MypageDAO;
import com.sist.dao.NavDAO;
import com.sist.dao.ShoesDAO;
import com.sist.vo.ShoesVO;
import com.sist.vo.StyleVO;
import com.sist.vo.UserVO;

@Controller
public class NavModel {
	@RequestMapping("nav/nav_new.do")
	public String nav_new(HttpServletRequest request, HttpServletResponse response) {
		
		
		//
        UserVO userVO = NavDAO.mockLogin2(1);
        System.out.println(userVO);


        HttpSession session = request.getSession();
        session.setAttribute("user", userVO);
		//
        
        
		String page = request.getParameter("page");
		
		String no = request.getParameter("no");
		String column = "";
		
		if(page == null)
			page = "1";
		
		if(no == null)
			no = "1";
		
		if(Integer.parseInt(no) == 1)
			column = "bookmark DESC";		
		if(Integer.parseInt(no) == 2)
			column = "im_buy DESC";
		if(Integer.parseInt(no) == 3)
			column = "im_buy ASC";
		
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		int rowSize = 12;
		int start = (rowSize*curpage)-(rowSize-1); //rownum
		int end = (rowSize*curpage);
		
		map.put("table_name", "nav_new");// ${table_name}
		map.put("im_buy", "im_buy");// 
		map.put("start", start); // #{start}
		map.put("end", end);
		map.put("no", no); 
		map.put("column", column);
		
		List<ShoesVO> list = NavDAO.navNewList(map);
		int totalpage = NavDAO.navTotalPage(map);
		
		final int BLOCK = 10;
		int startPage = ((curpage-1)/BLOCK*BLOCK) + 1;
		// [1] [2] [3] [4] [5]  => start = 1, 6, ... / end = 5, 10, ...
		int endPage = ((curpage-1)/BLOCK*BLOCK) + BLOCK;
		if(endPage>totalpage) {
			endPage = totalpage;
		}
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("no", no);
		request.setAttribute("column", column);
		
		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../nav/nav_new.jsp");
		
		return "../main/main.jsp";	
	}
	
	@RequestMapping("nav/nav_men.do")
	public String nav_men(HttpServletRequest request, HttpServletResponse response) {
		
		String page = request.getParameter("page");
		String category_id = request.getParameter("category_id");
		
		String no = request.getParameter("no");
		String column = "";
		
		if(page == null) {
			page = "1";
		}
		
		if(no == null)
			no = "1";
		
		if(Integer.parseInt(no) == 1)
			column = "bookmark DESC";		
		if(Integer.parseInt(no) == 2)
			column = "im_buy DESC";
		if(Integer.parseInt(no) == 3)
			column = "im_buy ASC";
		if(Integer.parseInt(no) == 4)
			column = "release_date DESC";
		if(Integer.parseInt(no) == 5)
			column = "release_date";
		
		
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		int rowSize = 12;
		int start = (rowSize*curpage)-(rowSize-1); //rownum
		int end = (rowSize*curpage);
		
		
		map.put("table_name", "nav_men");// ${table_name}
		map.put("start", start); // #{start}
		map.put("end", end);
		map.put("category_id", category_id);
		map.put("no", no); 
		map.put("column", column); 
		
		List<ShoesVO> list = NavDAO.navMenList(map);
		int totalpage = NavDAO.navTotalPage2(map);
		
		final int BLOCK = 10;
		int startPage = ((curpage-1)/BLOCK*BLOCK) + 1;
		// [1] [2] [3] [4] [5]  => start = 1, 6, ... / end = 5, 10, ...
		int endPage = ((curpage-1)/BLOCK*BLOCK) + BLOCK;
		if(endPage>totalpage) {
			endPage = totalpage;
		}
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("category_id", category_id);
		request.setAttribute("no", no);
		request.setAttribute("column", column);
		
		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../nav/nav_men.jsp");
		
		return "../main/main.jsp";		
	}
	
	
	@RequestMapping("nav/nav_women.do")
	public String nav_women(HttpServletRequest request, HttpServletResponse response) 
	{	
		String page = request.getParameter("page");
		String no = request.getParameter("no");
		String column = "";
		
		if(page == null) {
			page = "1";
		}
		
		if(no == null)
			no = "1";
		
		if(Integer.parseInt(no) == 1)
			column = "bookmark DESC";		
		if(Integer.parseInt(no) == 2)
			column = "im_buy DESC";
		if(Integer.parseInt(no) == 3)
			column = "im_buy ASC";
		if(Integer.parseInt(no) == 4)
			column = "release_date DESC";
		if(Integer.parseInt(no) == 5)
			column = "release_date ASC";
		
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		int rowSize = 12;
		int start = (rowSize*curpage)-(rowSize-1); //rownum
		int end = (rowSize*curpage);
		
		map.put("table_name", "nav_women");// ${table_name}
		map.put("start", start); // #{start}
		map.put("end", end);
		map.put("no", no); 
		map.put("column", column);
		
		List<ShoesVO> list = NavDAO.navWomenList(map);
		int totalpage = NavDAO.navTotalPage3(map);
		
		final int BLOCK = 10;
		int startPage = ((curpage-1)/BLOCK*BLOCK) + 1;
		// [1] [2] [3] [4] [5]  => start = 1, 6, ... / end = 5, 10, ...
		int endPage = ((curpage-1)/BLOCK*BLOCK) + BLOCK;
		if(endPage>totalpage) {
			endPage = totalpage;
		}
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("no", no);
		request.setAttribute("column", column);
		
		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../nav/nav_women.jsp");
		return "../main/main.jsp";		
	}
	
	@RequestMapping("nav/nav_kids.do")
	public String nav_kids(HttpServletRequest request, HttpServletResponse response) {
		
		String no = request.getParameter("no");
		String column = "";
		
		if(no == null)
			no = "1";
		
		if(Integer.parseInt(no) == 1)
			column = "bookmark DESC";		
		if(Integer.parseInt(no) == 2)
			column = "im_buy DESC";
		if(Integer.parseInt(no) == 3)
			column = "im_buy ASC";
		if(Integer.parseInt(no) == 4)
			column = "release_date DESC";
		if(Integer.parseInt(no) == 5)
			column = "release_date ASC";
		
		Map map = new HashMap();
		map.put("no", no); 
		map.put("column", column);	
		
		List<ShoesVO> list = NavDAO.navKidsList(map);
		
		request.setAttribute("list", list);
		request.setAttribute("no", no);
		request.setAttribute("column", column);
		
		request.setAttribute("main_jsp", "../nav/nav_kids.jsp");
		
		return "../main/main.jsp";	
	}
	
	@RequestMapping("nav/nav_style.do")
	public String nav_style(HttpServletRequest request, HttpServletResponse response) {
		
		List<StyleVO> list = NavDAO.navStyleList();
		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../nav/nav_style.jsp");
		
		return "../main/main.jsp";	
	}
	
	
	@RequestMapping("nav/nav_calendar.do")
	public String nav_calendar(HttpServletRequest request, HttpServletResponse response) {
		
		String page = request.getParameter("page");
		String no = request.getParameter("month");
		String no2 = request.getParameter("year");
		String regdate = request.getParameter("regdate");
		
		if(regdate == null)
			regdate ="22/09";
		
		if(page == null)
			page = "1";
		
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		
		int rowSize = 10;
		int start = (rowSize*curpage)-(rowSize-1); // rownum
		int end = (rowSize*curpage);
		
		map.put("table_name", "nav_calendar"); // ${table_name}
		map.put("start", start); // ${start}
		map.put("end", end); // ${end}
		map.put("month", no); // ${month}
		map.put("year", no2); // ${year}
		map.put("regdate", regdate); // ${regdate}
		
		List<ShoesVO> list = NavDAO.navCalendarList(map);
		int totalpage = NavDAO.navTotalPage4(map);
		
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
	    request.setAttribute("month", no);
	    request.setAttribute("year", no2);
	    request.setAttribute("regdate", regdate);
		
		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../nav/nav_calendar.jsp");
		
		return "../main/main.jsp";	
	}
	
	@RequestMapping("nav/nav_calendar_tba.do")
	public String nav_calendar_tba(HttpServletRequest request, HttpServletResponse response) {
		
		String page = request.getParameter("page");
		
		if(page == null)
			page ="1";
		
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		
		int rowSize = 10;
		int start = (rowSize*curpage)-(rowSize-1); // rownum
		int end = (rowSize*curpage);
		
		map.put("table_name", "nav_calendar_tba"); // ${table_name}
		map.put("start", start); // ${start}
		map.put("end", end); // ${end}
		
		List<ShoesVO> list = NavDAO.navCalendarTba(map);
		int totalpage = NavDAO.navTotalPage5(map);
		
		final int BLOCK = 10;
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
		request.setAttribute("main_jsp", "../nav/nav_calendar_tba.jsp");
		
		return "../main/main.jsp";	
	}
}