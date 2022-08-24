package com.sist.model;

import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.AdminDAO;
import com.sist.dao.CsDAO;
import com.sist.dao.MypageDAO;
import com.sist.dao.ShoesDAO;
import com.sist.vo.*;

@Controller
public class CsModel {
	String fileDir = "C:/file/";
	@RequestMapping("cs/cs_QnA.do")
	public String cs_QnA(HttpServletRequest request, HttpServletResponse response) {
		try {
			String page = request.getParameter("page");
			if (page == null || page.isEmpty()) {
				page = "1";
			}
			int curpage = Integer.parseInt(page);
			Map map = new HashMap();
			int rowSize = 10;
			int start = (rowSize * curpage) - (rowSize - 1);
			int end = (rowSize * curpage);
			map.put("count", rowSize);
			map.put("start", start);
			map.put("end", end);
			List<CsVO> list = AdminDAO.qnaPageList(map);
			int totalpage = AdminDAO.qnaTotalpage(rowSize);
			final int BLOCK = 5;
			int startPage = ((curpage - 1) / BLOCK * BLOCK) + 1;
			int endPage = ((curpage - 1) / BLOCK * BLOCK) + BLOCK;
			if (endPage > totalpage) {
				endPage = totalpage;
			}
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("list", list);
			System.out.println("list = " + list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "../cs/cs_QnA.jsp";
	}

	@RequestMapping("cs/img.do")
	public void profile_image(HttpServletRequest request, HttpServletResponse response) throws FileNotFoundException {
		//세션
		
		String imgName = request.getParameter("img");
		String fullFilePath = fileDir + imgName;
		File file = new File(fullFilePath);
		if (!file.exists()) {
			imgName = "noProfile.jpg";
			fullFilePath = fileDir + imgName;
			file = new File(fullFilePath);
		}
		try (BufferedInputStream fin = new BufferedInputStream(new FileInputStream(file));
			 BufferedOutputStream outs = new BufferedOutputStream(response.getOutputStream());) {
			String substring = imgName.substring(imgName.lastIndexOf(".") + 1);
			response.setContentType("image/" + substring);
			response.setHeader("Content-Transfer-Encoding", "binary");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
			byte[] byteImgArray = new byte[(int) file.length()];
			int read = 0;
			while ((read = fin.read(byteImgArray)) != -1) {
				outs.write(byteImgArray, 0, read);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("cs/save_QnA.do")
	public String save_QnA(HttpServletRequest request, HttpServletResponse response) {

			UserVO userVO = (UserVO) request.getSession().getAttribute("user");
			if (userVO == null) {
				return "../account/join.jsp";
			}
		
		try {

			request.setCharacterEncoding("UTF-8");
			CsVO cs = new CsVO();

			File file = new File(fileDir);
			if (!file.exists()) {
				file.mkdirs();
			}
			int sizeLimit = 1024 * 1024 * 15;
			MultipartRequest multi = new MultipartRequest(request, fileDir, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
			String imagePath = multi.getFilesystemName("img");
			if (imagePath != null && !imagePath.equals("")) {
				cs.setImg(imagePath);
			} else {
				cs.setImg("");
			}
			cs.setTitle (multi.getParameter("content"));
			cs.setS_type(multi.getParameter("s_type"));
			cs.setContent(multi.getParameter("content"));
			cs.setUser_id(userVO.getUser_id());
			System.out.println("cs "+cs);
			CsDAO.saveQna(cs);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:../cs/cs_QnA.do";
	}

















	@RequestMapping("cs/cs_notice.do")
	public String cs_notice(HttpServletRequest request, HttpServletResponse response) {
		//세션처리필요
		try {
			String page = request.getParameter("page");
			if (page == null || page.isEmpty()) {
				page = "1";
			}
			int curpage = Integer.parseInt(page);
			Map map = new HashMap();
			int rowSize = 10;
			int start = (rowSize * curpage) - (rowSize - 1);
			int end = (rowSize * curpage);
			map.put("count", rowSize);
			map.put("start", start);
			map.put("end", end);
			List<NoticeVO> list = AdminDAO.noticePageList(map);
			int totalpage = AdminDAO.noticesTotalpage(map);
			final int BLOCK = 5;
			int startPage = ((curpage - 1) / BLOCK * BLOCK) + 1;
			int endPage = ((curpage - 1) / BLOCK * BLOCK) + BLOCK;
			if (endPage > totalpage) {
				endPage = totalpage;
			}
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("list", list);
			System.out.println("list = " + list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "../cs/cs_notice.jsp";
	}
	


	
}
