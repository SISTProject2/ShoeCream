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
import com.sist.dao.NavDAO;
import com.sist.dao.ShoesDAO;
import com.sist.vo.LikesVO;
import com.sist.vo.ShoesVO;

@Controller
public class ShoesModel {
	
	@RequestMapping("shoes/shoes_list.do")
	public String shoes_list(HttpServletRequest request, HttpServletResponse response) {

		String brand=request.getParameter("brand");
		List<ShoesVO> list=ShoesDAO.shoesBrandListData(brand);
		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../shoes/shoes_list.jsp");
		
		return "../main/main.jsp";	// forward
	}
	
	@RequestMapping("shoes/shoes_detail_before.do")
	public String shoes_detail_before(HttpServletRequest request, HttpServletResponse response) {
		
		// 세션
        HttpSession session=request.getSession();
	    int user_id=(int) session.getAttribute("user_id");
		
		String goods_id=request.getParameter("goods_id");
		Cookie cookie=new Cookie(user_id + "shoes" + goods_id, goods_id);
		cookie.setPath("/");
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		
		return "redirect:../shoes/shoes_detail.do?goods_id="+goods_id;	
	}
	
	@RequestMapping("shoes/shoes_detail_after.do")
	public String shoes_detail_after(HttpServletRequest request, HttpServletResponse response) {
		
		ShoesDAO dao = new ShoesDAO();
	       
       // 세션
       HttpSession session = request.getSession();
	   int user_id = (int)session.getAttribute("user_id");
       
       // 쿠키
       Cookie[] cookies = request.getCookies();
       
       
       if(cookies != null)
       {
          for(int i=cookies.length-1; i>=0; i--)
          {
             if(cookies[i].getName().startsWith(user_id + "shoes"))
             {
            	 cookies[i].setPath("/");
            	 cookies[i].setMaxAge(0);
         		 response.addCookie(cookies[i]);
            	 
             }
          }
       }
		
		return "redirect:../mypage/my_recently_viewed.do";	
	}
	
	// ==================== 좋아요 =============================
	
	@RequestMapping("shoes/shoes_detail.do")
	public String food_detail(HttpServletRequest request, HttpServletResponse response) {
		String goods_id=request.getParameter("goods_id");

		ShoesVO vo=ShoesDAO.shoesDetailData(Integer.parseInt(goods_id));

        LikesVO jvo = new LikesVO();
        jvo.setGoods_id(Integer.parseInt(goods_id));
         
        HttpSession session = request.getSession();
        int user_id = (int)session.getAttribute("user_id");
        
        jvo.setUser_id(user_id);
         
        int jcount = 0;
        if(user_id != 0)
        {
          jcount = NavDAO.likesCount(jvo);
        }  
        request.setAttribute("jcount", jcount);
		
		
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../shoes/shoes_detail.jsp");
		
		return "../main/main.jsp";
	}
		
		
		@RequestMapping("nav/likes.do")
		public String shoes_likes(HttpServletRequest request, HttpServletResponse response)
		{
	    
	      String goods_id = request.getParameter("goods_id");
	      
	      HttpSession session = request.getSession();
	      int user_id = (int)session.getAttribute("user_id");
	      
	      LikesVO vo = new LikesVO();
	      
	      vo.setGoods_id(Integer.parseInt(goods_id));
	      vo.setUser_id(user_id); 
	      
	      NavDAO.likesInsert(vo);
	      
	      // 좋아요 클릭하고 되돌아가는 링크
	      return "redirect:../shoes/shoes_detail.do?&goods_id=" + goods_id;  
	    }

		
		// ============== 마이페이지 좋아요 ==================
		
		// 마이페이지에 좋아요 목록 출력
		@RequestMapping("mypage/likes.do")
		public String likes_list(HttpServletRequest request, HttpServletResponse response)
		{
			HttpSession session = request.getSession();
			int user_id = (int)session.getAttribute("user_id");
			
			List<Integer> list = NavDAO.likesGetGoodsId(user_id);
			List<ShoesVO> fList = new ArrayList<ShoesVO>(); 
			
			for(int goods_id: list)
			{
				ShoesVO vo = NavDAO.likesListData(goods_id); 
				fList.add(vo); 
			}
			
			request.setAttribute("fList", fList); // 좋아요한 게시글의 모든 데이터(*)
			
			request.setAttribute("main_jsp", "../mypage/my_bookmark.jsp");
			
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
			
			return "redirect:../mypage/likes.do";
		}
	
	
	
	@RequestMapping("main/search.do")
	public String shoesFind(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch(Exception ex) {}
		
		String fd=request.getParameter("fd");
		if(fd.trim()=="")
		{
			fd="NIKE";
		} 

	    String page = request.getParameter("page");
		if(page == null) {
			page = "1";
		}
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		int rowSize = 12;
		int start = (rowSize*curpage)-(rowSize-1); 
		int end = (rowSize*curpage);
		
		map.put("table_name", "search");
		map.put("start", start); 
		map.put("end", end);
		map.put("brand", fd);
		map.put("name_eng", fd);
		map.put("name_kor", fd);
		List<ShoesVO> list=ShoesDAO.shoesFindData(map);
		int totalpage = ShoesDAO.findTotalPage(map);
		
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
		request.setAttribute("fd", fd);
		request.setAttribute("main_jsp", "../main/search.jsp");
		
		return "../main/main.jsp";
	}
	
}
