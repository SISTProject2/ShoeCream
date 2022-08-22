package com.sist.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.sist.vo.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class AdminDAO {
   private static SqlSessionFactory ssf;

   static {
      try
      {
         Reader reader=Resources.getResourceAsReader("Config.xml");
         ssf=new SqlSessionFactoryBuilder().build(reader);
      } catch(Exception ex) {
         ex.printStackTrace();
      }
   }

   public static AdminVO login(AdminVO input) {
      SqlSession session = null;
      AdminVO admin = null;
      try {
         session = ssf.openSession();
         admin = session.selectOne("adminLogin", input);
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
      return admin;
      }

   public static int usersTotalPage(Map map) {
      int total = 0;
      SqlSession session = null;
      try
      {
         session = ssf.openSession();

         total = session.selectOne("usersTotalPage", map);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return total;
   }

   public static List<UserVO> userPagingList(Map map) {
      List<UserVO> result = new ArrayList<>();
      SqlSession session = null;
      try
      {
         session = ssf.openSession();
         result = session.selectList("userPagingList", map);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return result;
   }

   public static List<ShoesVO> goodsPagingList(Map map) {
      List<ShoesVO> result = new ArrayList<>();
      SqlSession session = null;
      try
      {
         session = ssf.openSession();
         result = session.selectList("goodsPagingList", map);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return result;
   }

   public static int goodsTotalPage(Map map) {
      int total = 0;
      SqlSession session = null;
      try
      {
         session = ssf.openSession();
         total = session.selectOne("goodsTotalPage", map);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return total;
   }

   public static void saveShoes(ShoesVO shoesVO) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.insert("saveShoes", shoesVO);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }
   public static void deleteShoes(int seq) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.delete("deleteShoes", seq);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }

   public static void saveUser(UserVO userVO) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.insert("saveUser", userVO);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }

   public static void updateUser(UserVO userVO) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.update("updateUser", userVO);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }

   public static void updateShoes(ShoesVO shoesVO) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.update("updateShoes", shoesVO);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }

   public static List<NoticeVO> noticePageList(Map map) {
      List<NoticeVO> result = new ArrayList<>();
      SqlSession session = null;
      try
      {
         session = ssf.openSession();
         result = session.selectList("noticePageList", map);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return result;
   }


   public static int noticesTotalpage(Map map) {
      int total = 0;
      SqlSession session = null;
      try
      {
         session = ssf.openSession();
         total = session.selectOne("noticesTotalpage", map);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return total;
   }

   public static void updateNotice(NoticeVO noticeVO) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.update("updateNotice", noticeVO);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }

   public static void deleteNotice(int notice_id) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.delete("deleteNotice", notice_id);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }

   public static void saveNotice(NoticeVO noticeVO) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.insert("saveNotice",noticeVO);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }

   public static List<CsVO> qnaPageList(Map map) {
      List<CsVO> list= new ArrayList<>();
      SqlSession session = null;
      try
      {
         session = ssf.openSession();
         list = session.selectList("qnaPageList", map);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return list;
   }

   public static int qnaTotalpage(int count) {
      int total = 0;
      SqlSession session = null;
      try
      {
         session = ssf.openSession();
         total = session.selectOne("qnaTotalpage", count);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return total;
   }

   public static int findCsId(int cs_id) {
      int total = 0;
      SqlSession session = null;
      try
      {
         session = ssf.openSession();
         total = session.selectOne("findCsId", cs_id);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return total;
   }

   public static void saveQnA(CsCommentVO csCommentVO) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.insert("saveQnA",csCommentVO);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }

   public static void updateQnA(CsCommentVO csCommentVO) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.update("updateQnA",csCommentVO);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }

   public static void deleteQnA(int cs_id) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.delete("deleteQnA", cs_id);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }
}