package com.sist.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.CategoryDAO;
import com.sist.dao.NavDAO;
import com.sist.vo.ShoesVO;

@Controller
public class CategoryModel {

	// 브랜드
	@RequestMapping("shoes/shoes_brand.do")
	public String shoes_brand(HttpServletRequest request, HttpServletResponse response) {
		
		String page = request.getParameter("page");
		String brand = request.getParameter("brand");
		
		String no = request.getParameter("no");
		String column = "";
		
		if(page == null)
			page = "1";
		
		if(no == null)
			no = "1";
		
		if(Integer.parseInt(no) == 1)
			column = "bookmark DESC NULLS LAST";		
		if(Integer.parseInt(no) == 2)
			column = "im_buy DESC NULLS LAST";
		if(Integer.parseInt(no) == 3)
			column = "im_buy NULLS LAST";
		if(Integer.parseInt(no) == 4)
			column = "release_date DESC NULLS LAST";
		if(Integer.parseInt(no) == 5)
			column = "release_date NULLS LAST";
		
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		
		int rowSize = 12;
		int start = (rowSize*curpage)-(rowSize-1); // rownum
		int end = (rowSize*curpage);
		
		map.put("table_name", "shoes_brand"); // ${table_name}
		map.put("start", start); // ${start}
		map.put("end", end); // ${end}
		map.put("brand", brand); 
		map.put("no", no); 
		map.put("column", column); 
		
		List<ShoesVO> list = CategoryDAO.brandList(map);
		int totalpage = CategoryDAO.brandTotalPage(map);
		
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
		request.setAttribute("brand", brand);
		request.setAttribute("no", no);
		request.setAttribute("column", column);
		
		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../shoes/shoes_brand.jsp");
		
		return "../main/main.jsp";	
	}
	
	
	
	// 신발 종류
	@RequestMapping("shoes/shoes_kinds.do")
	public String shoes_kinds(HttpServletRequest request, HttpServletResponse response) {
		
		String page = request.getParameter("page");
		String category_id = request.getParameter("category_id");		
		String no = request.getParameter("no");
		String column = "";
		
		if(page == null)
			page = "1";
		
		if(no == null)
			no = "1";
		
		if(Integer.parseInt(no) == 1)
			column = "bookmark DESC NULLS LAST";		
		if(Integer.parseInt(no) == 2)
			column = "im_buy DESC NULLS LAST";
		if(Integer.parseInt(no) == 3)
			column = "im_buy NULLS LAST";
		if(Integer.parseInt(no) == 4)
			column = "release_date DESC NULLS LAST";
		if(Integer.parseInt(no) == 5)
			column = "release_date NULLS LAST";
		
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		
		int rowSize = 12;
		int start = (rowSize*curpage)-(rowSize-1); // rownum
		int end = (rowSize*curpage);
		
		map.put("table_name", "shoes_kinds"); // ${table_name}
		map.put("start", start); // ${start}
		map.put("end", end); // ${end}
		map.put("category_id", category_id);
		map.put("no", no); 
		map.put("column", column); 
		
		List<ShoesVO> list = CategoryDAO.kindList(map);
		int totalpage = CategoryDAO.kindTotalPage(map);
		
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
		request.setAttribute("category_id", category_id);
		request.setAttribute("no", no);
		request.setAttribute("column", column);
		
		request.setAttribute("list", list);
		request.setAttribute("main_jsp", "../shoes/shoes_kinds.jsp");
		
		return "../main/main.jsp";	
	}
	
	
	
}
