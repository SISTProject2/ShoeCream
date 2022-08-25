package com.sist.model;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.StyleReplyDAO;
import com.sist.vo.StyleReplyVO;

@Controller
public class StyleReplyModel {
	@RequestMapping("stylereply/reply_insert.do")
	public String reply_insert(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch(Exception ex) {}
		
		String sid=request.getParameter("sid");	
		String content=request.getParameter("content");
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		int index=email.indexOf("@");
		String name=email.substring(0,index);
		
		StyleReplyVO vo=new StyleReplyVO();
		vo.setSid(Integer.parseInt(sid));
		vo.setEmail(email);
		vo.setName(name);
		vo.setContent(content);
		
		StyleReplyDAO.styleReplyInsert(vo);
		
		return "redirect:../style/detail.do?style_id="+sid;
	}
	
	
	@RequestMapping("stylereply/rereply_insert.do") 
	public String rereply_insert(HttpServletRequest request, HttpServletResponse response) { 
		try {
			  request.setCharacterEncoding("UTF-8"); 
		} catch(Exception ex) {}
	  
		String sid=request.getParameter("sid");
		String content=request.getParameter("content");
		String group_id=request.getParameter("group_id"); 
		String group_step=request.getParameter("group_step"); 
		String group_tab=request.getParameter("group_tab"); 
		String root=request.getParameter("style_id"); 
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		int index=email.indexOf("@");
		String name=email.substring(0,index);
		
		StyleReplyVO vo=new StyleReplyVO(); 
		vo.setSid(Integer.parseInt(sid));
		vo.setEmail(email);
		vo.setName(name); 
		vo.setContent(content);
		vo.setGroup_id(Integer.parseInt(group_id));
		vo.setGroup_step(Integer.parseInt(group_step));
		vo.setGroup_tab(Integer.parseInt(group_tab));
		vo.setRoot(Integer.parseInt(root));

		StyleReplyDAO.styleRereplyInsert(vo);
	  
		return "redirect:../style/detail.do?style_id="+sid; 
	}
	
	@RequestMapping("stylereply/reply_update.do")
	public String reply_update(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch(Exception ex) {}
		String sid=request.getParameter("sid");	// 게시물 번호 => detail로 이동시
		String sreply_id=request.getParameter("sreply_id"); // 댓글 번호 => delete시 사용
		String content=request.getParameter("content");
		
		// DAO연동
		StyleReplyVO vo=new StyleReplyVO();
		vo.setSreply_id(Integer.parseInt(sreply_id));
		vo.setContent(content);
		StyleReplyDAO.styleReplyUpdate(vo);
		
		return "redirect:../style/detail.do?style_id="+sid;
		
	}
	
	@RequestMapping("stylereply/reply_delete.do")
	public String reply_delete(HttpServletRequest request, HttpServletResponse response) {
		String sid=request.getParameter("sid");	// 게시물 번호 => detail로 이동시
		String sreply_id=request.getParameter("sreply_id"); // 댓글 번호 => delete시 사용
		String group_id=request.getParameter("group_id");
		
		// 삭제 => DAO
		StyleReplyDAO.styleReplyDelete(Integer.parseInt(sreply_id), Integer.parseInt(group_id));
		
		return "redirect:../style/detail.do?style_id="+sid;	// .do는 데이터 넘어가지 x
	}
	 
	
}
