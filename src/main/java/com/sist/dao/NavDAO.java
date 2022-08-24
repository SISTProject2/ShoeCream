package com.sist.dao;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.LikesVO;
import com.sist.vo.ShoesVO;
import com.sist.vo.StyleVO;
import com.sist.vo.UserVO;

public class NavDAO {
   private static SqlSessionFactory ssf;

   static {   
      try {
         Reader reader=Resources.getResourceAsReader("Config.xml");
         ssf=new SqlSessionFactoryBuilder().build(reader);
      } catch(Exception ex) {
         ex.printStackTrace();
      }
   }

   
   
   // new 페이징
   public static int navTotalPage(Map map)
   {
      int total = 0;
      SqlSession session = null;
      
      try
      {
         session = ssf.openSession();
         total = session.selectOne("navTotalPage", map);
      }catch(Exception ex) {
         ex.printStackTrace();
      }finally {
         if(session!=null) session.close();
      }
      return total;
   }
   
   // men 페이징
   public static int navTotalPage2(Map map)
   {
	   int total = 0;
	   SqlSession session = null;
	   
	   try
	   {
		   session = ssf.openSession();
		   total = session.selectOne("navTotalPage2", map);
	   }catch(Exception ex) {
		   ex.printStackTrace();
	   }finally {
		   if(session!=null) session.close();
	   }
	   return total;
   }
   
   // women 페이징
   public static int navTotalPage3(Map map)
   {
	   int total = 0;
	   SqlSession session = null;
	   
	   try
	   {
		   session = ssf.openSession();
		   total = session.selectOne("navTotalPage3", map);
	   }catch(Exception ex) {
		   ex.printStackTrace();
	   }finally {
		   if(session!=null) session.close();
	   }
	   return total;
   }
   
   // 캘린더 페이징
   public static int navTotalPage4(Map map)
   {
	   int total = 0;
	   SqlSession session = null;
	   
	   try
	   {
		   session = ssf.openSession();
		   total = session.selectOne("navTotalPage4", map);
	   }catch(Exception ex) {
		   ex.printStackTrace();
	   }finally {
		   if(session!=null) session.close();
	   }
	   return total;
   }
   
   // 캘린더 TBA 페이징
   public static int navTotalPage5(Map map)
   {
	   int total = 0;
	   SqlSession session = null;
	   
	   try
	   {
		   session = ssf.openSession();
		   total = session.selectOne("navTotalPage5", map);
	   }catch(Exception ex) {
		   ex.printStackTrace();
	   }finally {
		   if(session!=null) session.close();
	   }
	   return total;
   }

   public static List<ShoesVO> navNewList(Map map) {   
      SqlSession session=null;
      List<ShoesVO> list=null;
      try {
         session=ssf.openSession();
         list=session.selectList("navNewList", map);   
      } catch(Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
      
      return list;
   }
   
   public static List<ShoesVO> navMenList(Map map) {   
      SqlSession session=null;
      List<ShoesVO> list=null;
      try {
         session=ssf.openSession();
         list=session.selectList("navMenList", map);   
      } catch(Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
      
      return list;
   }
   
   
   
   public static List<ShoesVO> navWomenList(Map map) {   
      SqlSession session=null;
      List<ShoesVO> list=null;
      try {
         session=ssf.openSession();
         list=session.selectList("navWomenList", map);   
      } catch(Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
      
      return list;
   }
   
   public static List<ShoesVO> navKidsList(Map map) {   
      SqlSession session=null;
      List<ShoesVO> list=null;
      try {
         session=ssf.openSession();
         list=session.selectList("navKidsList", map);   
      } catch(Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
      
      return list;
   }
   
   public static List<StyleVO> navStyleList() {   
      SqlSession session=null;
      List<StyleVO> list=null;
      try {
         session=ssf.openSession();
         list=session.selectList("navStyleList");   
      } catch(Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
      
      return list;
   }
   
   public static List<ShoesVO> navBrandList() {   
      SqlSession session=null;
      List<ShoesVO> list=null;
      try {
         session=ssf.openSession();
         list=session.selectList("navBrandList");   
      } catch(Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
      
      return list;
   }
   
   public static List<ShoesVO> navCalendarList(Map map) {   
      SqlSession session=null;
      List<ShoesVO> list=null;
      try {
         session=ssf.openSession();
         list=session.selectList("navCalendarList", map);   
      } catch(Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
      
      return list;
   }   
   
   public static List<ShoesVO> navCalendarTba(Map map) {   
	   SqlSession session=null;
	   List<ShoesVO> list=null;
	   try {
		   session=ssf.openSession();
		   list=session.selectList("navCalendarTba", map);   
	   } catch(Exception ex) {
		   ex.printStackTrace();
	   } finally {
		   session.close();
	   }
	   
	   return list;
   }
   
	//////////////////////////////////좋아요
	   
	/*
	*<!-- 좋아요 테이블에 추가 -->
	<insert id="likesInsert" parameterType="LikesVO"> 
	*/
	public static void likesInsert(LikesVO vo)
	{
		SqlSession session = null;
		
		try
		{
			session = ssf.openSession(true); // => insert는 commit 필요
			session.insert("likesInsert", vo);
		
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
	}
	
	/*
	*<!-- 좋아요 수 확인 = 좋아요 여부 -->
	<select id="likesCount" resultType="int" parameterType="LikesVO">
	*/
	public static int likesCount(LikesVO vo)
	{
		int count = 0;
		SqlSession session = null;
	
	try
	{
		session = ssf.openSession();
		count = session.selectOne("likesCount", vo);
	
	}catch(Exception ex) {
		ex.printStackTrace();
	}finally {
		session.close();
		}
	return count;
	}
	
	/*
	* <!-- 마이페이지 좋아요 목록 출력 --> 상품의 모든 데이터 가져 옴 => ShoesVO 사용
	1. <select id="likesListData" resultType="LikesVO" parameterType="int">
	*/
	public static ShoesVO likesListData(int goods_id)
	{
		SqlSession session = null;
		ShoesVO vo = null;
		
		try
	{
		session = ssf.openSession();
		vo = session.selectOne("likesListData", goods_id);
	
	}catch(Exception ex) {
		ex.printStackTrace();
	}finally {
		session.close();
		}
	return vo;
	}
	
	// 2. <select id="likesGetGoodsId" resultType="int" parameterType="String">
	public static List<Integer> likesGetGoodsId(String user_id)
	{
		List<Integer> list = null;
		SqlSession session = null;
		
		try
	{
		session = ssf.openSession();
		list = session.selectList("likesGetGoodsId", user_id);
		
	}catch(Exception ex) {
		ex.printStackTrace();
	}finally {
		session.close();
		}
		return list;
	}
	
	/*
	* <!-- 좋아요 취소 -->
	<delete id="likesDelete" parameterType="LikesVO">
	*/
	public static void likesDelete(LikesVO vo)
	{
		SqlSession session = null;
		
		try
		{
		session = ssf.openSession(true);
		session.delete("likesDelete", vo);
	
	}catch(Exception ex) {
		ex.printStackTrace();
	}finally {
		session.close();
		}
	}
   
   
}