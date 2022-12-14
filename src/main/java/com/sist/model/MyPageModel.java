package com.sist.model;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sist.dao.MypageDAO;
import com.sist.dao.NavDAO;
import com.sist.dao.ShoesDAO;
import com.sist.dao.StyleDAO;
import com.sist.vo.ShoesVO;
import com.sist.vo.StyleVO;
import com.sist.vo.UserVO;


import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import java.io.*;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


@Controller
public class MyPageModel {

    String fileDir = "C:/file/";
    
    @RequestMapping("mypage/my_mypage.do")
    public String my_mypage(HttpServletRequest request, HttpServletResponse response) {
    	try {
    		
    		if (request.getSession().getAttribute("user") == null) {
    			return "../account/login.jsp";
    		}
    		HttpSession session = request.getSession();
    		
    		UserVO userVO = (UserVO) session.getAttribute("user");
    		
    		session.setAttribute("user", userVO);
    		
    		String nickname = userVO.getEmail().split("@")[0];
    		System.out.println(nickname);
    		System.out.println(userVO);
    		
    		request.setAttribute("userProfile", userVO);
    		request.setAttribute("nickname", nickname);
    		
    		/////////// 관심 상품
			int user_id = (int)session.getAttribute("user_id");
			
			List<Integer> list = NavDAO.likesGetGoodsId(user_id);
			List<ShoesVO> fList2 = new ArrayList<ShoesVO>(); 
			
			for(int goods_id: list)
			{
				ShoesVO vo = NavDAO.likesListData(goods_id); 
				fList2.add(vo); 
			}
			
			request.setAttribute("fList2", fList2);
			
			
			//////////// 최근 본 상품
			
			ShoesDAO dao = new ShoesDAO();
		       
	       
	       // 쿠키
	       Cookie[] cookies = request.getCookies();
	       List<ShoesVO> cList2 = new ArrayList<ShoesVO>();
	       
	       if(cookies != null)
	       {
	          for(int i=cookies.length-1; i>=0; i--)
	          {
	             if(cookies[i].getName().startsWith(user_id + "shoes"))
	             {
	          	  cookies[i].setPath("/");
	                String goods_id2 = cookies[i].getValue();
	                ShoesVO vo = ShoesDAO.shoesDetailData(Integer.parseInt(goods_id2));
	                
	                cList2.add(vo);
	             }
	          }
	       }
	       
	       request.setAttribute("cList2", cList2);
		

    		
    	}catch(Exception e ) {
    		e.printStackTrace();
    	}

        return "../mypage/my_mypage.jsp";
    }
    
    @RequestMapping("mypage/my_purchase_list.do")
    public String my_purchase_list(HttpServletRequest request, HttpServletResponse response) {
        if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        return "../mypage/my_purchase_list.jsp";
    }

    @RequestMapping("mypage/my_sell_list.do")
    public String my_sell_list(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        return "../mypage/my_sell_list.jsp";
    }

    @RequestMapping("mypage/my_bookmark.do")
    public String my_bookmark(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        return "../mypage/my_bookmark.jsp";
    }

    @RequestMapping("mypage/my_recently_viewed.do")
    public String my_recently_viewed(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
       
       ShoesDAO dao = new ShoesDAO();
       
       // 세션
       HttpSession session = request.getSession();
	   int user_id = (int)session.getAttribute("user_id");
       
       // 쿠키
       Cookie[] cookies = request.getCookies();
       List<ShoesVO> cList = new ArrayList<ShoesVO>();
       
       if(cookies != null)
       {
          for(int i=cookies.length-1; i>=0; i--)
          {
             if(cookies[i].getName().startsWith(user_id + "shoes"))
             {
          	  cookies[i].setPath("/");
                String goods_id2 = cookies[i].getValue();
                ShoesVO vo = ShoesDAO.shoesDetailData(Integer.parseInt(goods_id2));
                
                cList.add(vo);
             }
          }
       }
       
       request.setAttribute("cList", cList);
       
        return "../mypage/my_recently_viewed.jsp";
    }


    @RequestMapping("mypage/my_profile.do")
    public String my_profile(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        HttpSession session = request.getSession();
        UserVO userVO = (UserVO) session.getAttribute("user");
        System.out.println("result = " + userVO);
        String nickname = userVO.getEmail().split("@")[0];
        request.setAttribute("userProfile", userVO);
        request.setAttribute("nickname", nickname);
        return "../mypage/my_profile.jsp";
    }

    @RequestMapping("mypage/update_address.do")
    public String update_address(HttpServletRequest request, HttpServletResponse response) {
        UserVO userVO = (UserVO) request.getSession().getAttribute("user");
        if (userVO == null) {
            return "../account/login.jsp";
        }
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (Exception ex) {
        }
        String address = request.getParameter("adress");
        userVO.setAdress(address);
        MypageDAO.updateAddress(userVO);
        HttpSession session = request.getSession();
        session.setAttribute("user", userVO);
        return "redirect:../mypage/my_addressbook.do";
    }

    
    
    @RequestMapping("mypage/update_account.do")
    public String update_account(HttpServletRequest request, HttpServletResponse response) {
        UserVO userVO = (UserVO) request.getSession().getAttribute("user");
        if (userVO == null) {
            return "../account/login.jsp";
        }
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (Exception ex) {
        }
        String bankname = request.getParameter("bankname");
        String accno = request.getParameter("accno");
        String accholder = request.getParameter("accholder");
        userVO.setBankname(bankname);
        userVO.setAccno(accno);
        userVO.setAccholder(accholder);
        MypageDAO.updateAccount(userVO);
        HttpSession session = request.getSession();
        session.setAttribute("user", userVO);
        return "redirect:../mypage/my_pay_account.do";
    }


    
    @RequestMapping("mypage/delete_account.do")
    public String delete_account(HttpServletRequest request, HttpServletResponse response) {
        UserVO userVO = (UserVO) request.getSession().getAttribute("user");
        if (userVO == null) {
            return "../account/login.jsp";
        }
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (Exception ex) {
        }
        userVO.setBankname("");
        userVO.setAccno("");
        userVO.setAccholder("");
        MypageDAO.updateAccount(userVO);
        HttpSession session = request.getSession();
        session.setAttribute("user", userVO);
        return "redirect:../mypage/my_pay_account.do";
    }

    @RequestMapping("mypage/delete_address.do")
    public String delete_address(HttpServletRequest request, HttpServletResponse response) {
        UserVO userVO = (UserVO) request.getSession().getAttribute("user");
        if (userVO == null) {
            return "../account/login.jsp";
        }
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (Exception ex) {
        }
        userVO.setAdress("");
        MypageDAO.updateAddress(userVO);
        HttpSession session = request.getSession();
        session.setAttribute("user", userVO);
        return "redirect:../mypage/my_addressbook.do";
    }
    @RequestMapping("mypage/update_password.do")
    public String update_password(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (Exception ex) {
        }
        HttpSession session = request.getSession();
        UserVO userVO = (UserVO) session.getAttribute("user");

        String pwd = request.getParameter("pwd");
        userVO.setPwd(pwd);
        MypageDAO.updatePassword(userVO);
        session.setAttribute("user", userVO);
        return "redirect:../mypage/my_profile.do";
    }

    @RequestMapping("mypage/update_size.do")
    public String update_size(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (Exception ex) {
        }

        HttpSession session = request.getSession();
        UserVO userVO = (UserVO) session.getAttribute("user");
        String size = request.getParameter("size");
        userVO.setS_size(size);
        MypageDAO.updateSize(userVO);
        session.setAttribute("user", userVO);
        return "redirect:../mypage/my_profile.do";
    }

    @RequestMapping("mypage/update_tel.do")
    public String update_tel(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (Exception ex) {
        }
        HttpSession session = request.getSession();
        UserVO userVO = (UserVO) session.getAttribute("user");
        String tel = request.getParameter("tel");
        userVO.setTel(tel);
        MypageDAO.updateTel(userVO);
        session.setAttribute("user", userVO);
        return "redirect:../mypage/my_profile.do";
    }


    @RequestMapping("mypage/update_profileImage.do")
    public String update_profileImage(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        try {
            HttpSession session = request.getSession();
            UserVO userVO = (UserVO) session.getAttribute("user");
            File file = new File(fileDir);
            if (!file.exists()) {
                file.mkdirs();
            }
            int sizeLimit = 1024 * 1024 * 15;
            MultipartRequest multi = new MultipartRequest(request, fileDir, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
            String imagePath = multi.getFilesystemName("image");
            System.out.println(fileDir + imagePath);
            userVO.setImg(imagePath);
            MypageDAO.updateProfileImage(userVO);
            session.setAttribute("user", userVO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:../mypage/my_profile.do";
    }


    @RequestMapping("mypage/delete_profileImage.do")
    public String delete_profileImage(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        HttpSession session = request.getSession();
        UserVO userVO = (UserVO) session.getAttribute("user");
        userVO.setImg("");
        MypageDAO.updateProfileImage(userVO);
        session.setAttribute("user", userVO);
        return "redirect:../mypage/my_profile.do";
    }

    @RequestMapping("mypage/my_addressbook.do")
    public String my_addressbook(HttpServletRequest request, HttpServletResponse response) {
        UserVO user = (UserVO) request.getSession().getAttribute("user");
        if (user == null) {
            return "../account/login.jsp";
        }
        request.setAttribute("userProfile", user);
        return "../mypage/my_addressbook.jsp";
    }

    @RequestMapping("mypage/secession.do")
    public String secession(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }
        try {
            HttpSession session = request.getSession();
            UserVO userVO = (UserVO) session.getAttribute("user");
            MypageDAO.deleteUser(userVO.getUser_id());

            session.invalidate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:../main/main.do";
    }


    @RequestMapping("mypage/profile_image.do")
    public void profile_image(HttpServletRequest request, HttpServletResponse response) throws FileNotFoundException {
       if (request.getSession().getAttribute("user") == null) {
           return;
        }
        HttpSession session = request.getSession();
        UserVO userVO = (UserVO) session.getAttribute("user");
        String imgName = userVO.getImg();
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

    @RequestMapping("mypage/my_pay_account.do")
    public String my_pay_account(HttpServletRequest request, HttpServletResponse response) {
       if (request.getSession().getAttribute("user") == null) {
            return "../account/login.jsp";
        }

        HttpSession session = request.getSession();
        UserVO userVO = (UserVO) session.getAttribute("user");
        System.out.println(userVO);
        request.setAttribute("userProfile", userVO);
        return "../mypage/my_pay_account.jsp";
    }

//    @RequestMapping("mypage/my_style.do")
//    public String my_style(HttpServletRequest request, HttpServletResponse response) {
//       if (request.getSession().getAttribute("user") == null) {
//            return "../account/login.jsp";
//        }
//        return "../mypage/my_style.jsp";
//    }


}
