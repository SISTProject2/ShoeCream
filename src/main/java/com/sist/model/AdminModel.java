package com.sist.model;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.AdminDAO;
import com.sist.dao.MypageDAO;
import com.sist.vo.*;

@Controller
public class AdminModel {





    @RequestMapping("admin/delete_QnA.do")
    public String delete_QnA(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
            AdminVO admin = (AdminVO) request.getSession().getAttribute("admin");
            if (admin == null) {
                return "redirect:../admin/admin_login.do";
            }
            int cs_id = Integer.parseInt(request.getParameter("cs_id"));
            System.out.println("cs_id = " + cs_id);
            AdminDAO.deleteQnA(cs_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:../admin/admin_QnA.do";
    }

    @RequestMapping("admin/save_QnA.do")
    public String save_QnA(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
            AdminVO admin = (AdminVO) request.getSession().getAttribute("admin");
            if (admin == null) {
                return "redirect:../admin/admin_login.do";
            }
            CsCommentVO csComment = new CsCommentVO();
            int cs_id = Integer.parseInt(request.getParameter("cs_id"));
            csComment.setCs_id(cs_id);
            csComment.setAdmin_id(admin.getAdmin_id());
            csComment.setContent( request.getParameter("content"));
            int csId = AdminDAO.findCsId(cs_id);
            if (csId == 0) {
                AdminDAO.saveQnA(csComment);
            } else {
                AdminDAO.updateQnA(csComment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:../admin/admin_QnA.do";
    }

    @RequestMapping("admin/admin_QnA.do")
    public String admin_QnA(HttpServletRequest request, HttpServletResponse response) {
        try {
            if (request.getSession().getAttribute("admin") == null) {
                return "redirect:../admin/admin_login.do";
            }
            try {
                request.setCharacterEncoding("UTF-8");
            } catch (Exception ex) {
            }
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
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "../admin/admin_QnA.jsp";
    }































    @RequestMapping("admin/admin_notice.do")
    public String admin_notice(HttpServletRequest request, HttpServletResponse response) {
        try {
            if (request.getSession().getAttribute("admin") == null) {
                return "redirect:../admin/admin_login.do";
            }
            try {
                request.setCharacterEncoding("UTF-8");
            } catch (Exception ex) {
            }
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

        return "../admin/admin_notice.jsp";
    }


    @RequestMapping("admin/update_notice.do")
    public String update_notice(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
            AdminVO admin = (AdminVO) request.getSession().getAttribute("admin");
            if (admin == null) {
                return "redirect:../admin/admin_login.do";
            }

            NoticeVO noticeVO=new NoticeVO();
            noticeVO.setNotice_id(Integer.parseInt(request.getParameter("notice_id")));
            noticeVO.setContent(request.getParameter("content"));
            noticeVO.setAdmin_id(admin.getAdmin_id());
            noticeVO.setTitle(request.getParameter("title"));
            System.out.println("noticeVO = " + noticeVO);
            AdminDAO.updateNotice(noticeVO);
        } catch (Exception e) {
            e.printStackTrace();
        }


        return "redirect:../admin/admin_notice.do";
    }


    @RequestMapping("admin/delete_notice.do")
    public String delete_notice(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
            AdminVO admin = (AdminVO) request.getSession().getAttribute("admin");
            if (admin == null) {
                return "redirect:../admin/admin_login.do";
            }
            int notice_id = Integer.parseInt(request.getParameter("notice_id"));
            System.out.println("notice_id = " + notice_id);
            AdminDAO.deleteNotice(notice_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:../admin/admin_notice.do";
    }


    @RequestMapping("admin/save_notice.do")
    public String save_notice(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
            AdminVO admin = (AdminVO) request.getSession().getAttribute("admin");
            if (admin == null) {
                return "redirect:../admin/admin_login.do";
            }
            NoticeVO noticeVO=new NoticeVO();
            noticeVO.setContent(request.getParameter("content"));
            noticeVO.setAdmin_id(admin.getAdmin_id());
            noticeVO.setTitle(request.getParameter("title"));
            System.out.println("noticeVO = " + noticeVO);
            AdminDAO.saveNotice(noticeVO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:../admin/admin_notice.do";
    }



    @RequestMapping("admin/admin_goods.do")
    public String admin_goods(HttpServletRequest request, HttpServletResponse response) {
        try {
            if (request.getSession().getAttribute("admin") == null) {
                return "redirect:../admin/admin_login.do";
            }
            try {
                request.setCharacterEncoding("UTF-8");
            } catch (Exception ex) {
            }

            String search = request.getParameter("search");
            if (search == null || search.isEmpty()) {
                search = "";
            }

            String page = request.getParameter("page");
            if (page == null || page.isEmpty()) {
                page = "1";
            }
            int curpage = Integer.parseInt(page);
            Map map = new HashMap();
            int rowSize = 5;
            int start = (rowSize * curpage) - (rowSize - 1);
            int end = (rowSize * curpage);

            map.put("count", rowSize);
            map.put("search", search);
            map.put("start", start);
            map.put("end", end);

            List<ShoesVO> list = AdminDAO.goodsPagingList(map);

            int totalpage = AdminDAO.goodsTotalPage(map);

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
            request.setAttribute("search", search);
            System.out.println("curpage = " + curpage);
            System.out.println("search = " + search);
            System.out.println("list = " + list);
            System.out.println("totalpage = " + totalpage);
            System.out.println("endPage = " + endPage);
            System.out.println("startPage = " + startPage);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "../admin/admin_goods.jsp";
    }

    @RequestMapping("admin/admin_login.do")
    public String admin_login(HttpServletRequest request, HttpServletResponse response) {
        try {


        } catch (Exception e) {
            e.printStackTrace();
        }
        return "../admin/admin_login.jsp";
    }


    @RequestMapping("admin/admin_login_post.do")
    public String admin_login_post(HttpServletRequest request, HttpServletResponse response) {
        AdminVO adminVO = null;
        try {
            String id = request.getParameter("id");
            String password = request.getParameter("password");
            adminVO = new AdminVO(id, password);
            adminVO = AdminDAO.login(adminVO);
            if (adminVO == null) {
                return "redirect:../admin/admin_login.do";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:../admin/admin_login.do";
        }
        HttpSession session = request.getSession();
        session.setAttribute("admin", adminVO);
        System.out.println("adminVO = " + adminVO.getAdmin_id());
        return "redirect:../admin/admin_user.do";
    }


    @RequestMapping("admin/delete_user.do")
    public String delete_user(HttpServletRequest request, HttpServletResponse response) {
        if (request.getSession().getAttribute("admin") == null) {
            return "redirect:../admin/admin_login.do";
        }

        String userId = request.getParameter("userId");
        MypageDAO.deleteUser(Integer.parseInt(userId));

        return "redirect:../admin/admin_user.do";
    }

    @RequestMapping("admin/delete_shoes.do")
    public String delete_shoes(HttpServletRequest request, HttpServletResponse response) {
        if (request.getSession().getAttribute("admin") == null) {
            return "redirect:../admin/admin_login.do";
        }

        String goods_id = request.getParameter("goods_id");
        AdminDAO.deleteShoes(Integer.parseInt(goods_id));
        return "redirect:../admin/admin_goods.do";
    }


    @RequestMapping("admin/save_user.do")
    public String save_user(HttpServletRequest request, HttpServletResponse response) {
        if (request.getSession().getAttribute("admin") == null) {
            return "redirect:../admin/admin_login.do";
        }
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        UserVO userVO = new UserVO();
        userVO.setTel(request.getParameter("tel"));
        userVO.setName(request.getParameter("name"));
        userVO.setZipcode(request.getParameter("zipcode"));
        userVO.setEmail(request.getParameter("email"));
        userVO.setBirthday(request.getParameter("birthday"));
        userVO.setS_size(request.getParameter("size"));
        userVO.setPwd("0");
        System.out.println("userVO = " + userVO);
        AdminDAO.saveUser(userVO);

        return "redirect:../admin/admin_user.do";
    }

    @RequestMapping("admin/save_shoes.do")
    public String save_shoes(HttpServletRequest request, HttpServletResponse response) {

        try {
            if (request.getSession().getAttribute("admin") == null) {
                return "redirect:../admin/admin_login.do";
            }
            request.setCharacterEncoding("UTF-8");
            ShoesVO shoesVO = new ShoesVO();
            shoesVO.setImg(request.getParameter("img"));
            shoesVO.setName_kor(request.getParameter("name_kor"));
            shoesVO.setName_eng(request.getParameter("name_eng"));
            shoesVO.setBrand(request.getParameter("brand"));
            shoesVO.setSku(request.getParameter("sku"));
            shoesVO.setType(request.getParameter("type"));
            shoesVO.setRelease_date(Date.valueOf(request.getParameter("release_date")));
            shoesVO.setRelease_price(request.getParameter("release_price"));
            shoesVO.setCategory_id(Integer.parseInt(request.getParameter("category_id")));
            shoesVO.setColor(request.getParameter("color"));
            System.out.println("shoesVO = " + shoesVO);
            AdminDAO.saveShoes(shoesVO);
        } catch (Exception e) {

            e.printStackTrace();

        }
        return "redirect:../admin/admin_goods.do";
    }

    @RequestMapping("admin/update_shoes.do")
    public String update_shoes(HttpServletRequest request, HttpServletResponse response) {
        try {
            if (request.getSession().getAttribute("admin") == null) {
                return "redirect:../admin/admin_login.do";
            }
            request.setCharacterEncoding("UTF-8");
            ShoesVO shoesVO = new ShoesVO();
            shoesVO.setGoods_id(Integer.parseInt(request.getParameter("goods_id")));
            shoesVO.setImg(request.getParameter("img"));
            shoesVO.setName_kor(request.getParameter("name_kor"));
            shoesVO.setName_eng(request.getParameter("name_eng"));
            shoesVO.setBrand(request.getParameter("brand"));
            shoesVO.setSku(request.getParameter("sku"));
            shoesVO.setType(request.getParameter("type"));
            shoesVO.setRelease_date(Date.valueOf(request.getParameter("release_date")));
            shoesVO.setRelease_price(request.getParameter("release_price"));
            shoesVO.setCategory_id(Integer.parseInt(request.getParameter("category_id")));
            shoesVO.setColor(request.getParameter("color"));
            System.out.println("shoesVO = " + shoesVO);
            AdminDAO.updateShoes(shoesVO);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return "redirect:../admin/admin_goods.do";
    }

    @RequestMapping("admin/update_user.do")
    public String update_user(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
            if (request.getSession().getAttribute("admin") == null) {
                return "redirect:../admin/admin_login.do";
            }
            UserVO userVO = new UserVO();
            userVO.setTel(request.getParameter("tel"));
            userVO.setName(request.getParameter("name"));
            userVO.setZipcode(request.getParameter("zipcode"));
            userVO.setEmail(request.getParameter("email"));
            userVO.setBirthday(request.getParameter("birthday"));
            userVO.setS_size(request.getParameter("size"));
            userVO.setUser_id(Integer.parseInt(request.getParameter("userId")));
            System.out.println("userVO = " + userVO);
            AdminDAO.updateUser(userVO);
        } catch (Exception e) {
            e.printStackTrace();
        }


        return "redirect:../admin/admin_user.do";
    }

    @RequestMapping("admin/admin_user.do")
    public String admin_user(HttpServletRequest request, HttpServletResponse response) {
        try {
            if (request.getSession().getAttribute("admin") == null) {
                return "redirect:../admin/admin_login.do";
            }
            try {
                request.setCharacterEncoding("UTF-8");
            } catch (Exception ex) {
            }

            String search = request.getParameter("search");
            if (search == null || search.isEmpty()) {
                search = "";
            }

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
            map.put("search", search);
            map.put("start", start);
            map.put("end", end);

            List<UserVO> list = AdminDAO.userPagingList(map);

            int totalpage = AdminDAO.usersTotalPage(map);

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
            request.setAttribute("search", search);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "../admin/admin_user.jsp";
    }


}
