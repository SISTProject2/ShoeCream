package com.sist.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.MypageDAO;
import com.sist.dao.NavDAO;
import com.sist.dao.ShoesDAO;
import com.sist.vo.LikesVO;
import com.sist.vo.ShoesVO;
import com.sist.vo.StyleVO;
import com.sist.vo.UserVO;

@Controller
public class NavModel {
	@RequestMapping("nav/nav_new.do")
	public String nav_new(HttpServletRequest request, HttpServletResponse response) {
		
		// 임시 로그인
        UserVO userVO = NavDAO.mockLogin2(1);
        System.out.println(userVO);


        HttpSession session2 = request.getSession();
        session2.setAttribute("user", userVO);
		//
		
        
        
		String page = request.getParameter("page");
		
		String no = request.getParameter("no");
		String goods_id = request.getParameter("goods_id");

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
		
		// ============= 좋아요 jcount =================
		
		try 
		{
			LikesVO jvo = new LikesVO();
		    jvo.setGoods_id(Integer.parseInt(goods_id));
		    
		    HttpSession session = request.getSession();
		    UserVO vo = (UserVO)session.getAttribute("user");
		   
		    jvo.setUser_id(vo.getUser_id());
		    
		    int jcount = 0;
		    if(vo != null)
		    {
		      jcount = NavDAO.likesCount(jvo);
		    }  
		    request.setAttribute("jcount", jcount);
		    
		}catch(Exception ex){}
		
	    
	    
	  //=================== 마이페이지 최근 본 상품
		
		// 쿠키
		Cookie[] cookies = request.getCookies();
		List<ShoesVO> cList = new ArrayList<ShoesVO>();
		
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
	
	// ==================== 좋아요 =============================
	
	
	
	@RequestMapping("nav/likes.do")
	public String shoes_likes(HttpServletRequest request, HttpServletResponse response)
	{
		
		// 임시 로그인
        UserVO userVO = NavDAO.mockLogin2(1);
        System.out.println(userVO);
        
        //--
        String no = request.getParameter("no");
        System.out.println("no=" + no);
        
        String page = request.getParameter("page");
        System.out.println("page=" + page);
        
        String goods_id = request.getParameter("goods_id");
        //--


        HttpSession session2 = request.getSession();
        session2.setAttribute("user", userVO);
		//
		
		
		LikesVO vo = new LikesVO();
		
		vo.setGoods_id(Integer.parseInt(goods_id));
		vo.setUser_id(userVO.getUser_id()); // 1
		
		NavDAO.likesInsert(vo);
		
		// 좋아요 클릭하고 되돌아가는 링크
		return "redirect:../nav/nav_new.do?no=" + no + "&page=" + page + "&goods_id=" + goods_id;  
	}
	
	// ============== 마이페이지 좋아요 ==================
	
	// 마이페이지에 좋아요 목록 출력
	@RequestMapping("nav/nav_list.do")
	public String likes_list(HttpServletRequest request, HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		
		List<Integer> list = NavDAO.likesGetGoodsId(user_id);
		List<ShoesVO> fList = new ArrayList<ShoesVO>(); 
		
		for(int goods_id: list)
		{
			ShoesVO vo = NavDAO.likesListData(goods_id); 
			fList.add(vo); 
		}
		
		request.setAttribute("fList", fList); // 좋아요한 게시글의 모든 데이터(*)
		
		request.setAttribute("my_mypage_jsp", "../mypage/my_bookmark.jsp");
		request.setAttribute("main_jsp", "../mypage/my_mypage.jsp");
		
		return "../main/main.jsp";
	}
	
	// 좋아요 취소
	@RequestMapping("nav/likes_cancel.do")
	public String likes_cancel(HttpServletRequest request, HttpServletResponse response)
	{
		String goods_id = request.getParameter("goods_id");
		
		HttpSession session = request.getSession();
		int user_id = (int)session.getAttribute("user_id");
		
		LikesVO vo = new LikesVO();
		vo.setUser_id(user_id);
		vo.setGoods_id(Integer.parseInt(goods_id));
		
		// DAO 연동
		NavDAO.likesDelete(vo);
		
		return "redirect:../mypage/my_mypage_list.do";
	}
}