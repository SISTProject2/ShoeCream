package com.sist.dao;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.ShoesVO;

public class CategoryDAO {

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
	
    ///////////////////////////// 기본
    
    // 브랜드
    public static List<ShoesVO> brandList(Map map) {   
        SqlSession session=null;
        List<ShoesVO> list=null;
        try {
           session=ssf.openSession();
           list=session.selectList("brandList", map);   
        } catch(Exception ex) {
           ex.printStackTrace();
        } finally {
           session.close();
        }
        
        return list;
     }
    
    // 브랜드 페이징
	public static int brandTotalPage(Map map)
   {
	   int total = 0;
	   SqlSession session = null;
	   
	   try
	   {
		   session = ssf.openSession();
		   total = session.selectOne("brandTotalPage", map);
	   }catch(Exception ex) {
		   ex.printStackTrace();
	   }finally {
		   if(session!=null) session.close();
	   }
	   return total;
   }
	
	

	
	// 신발 종류
	public static List<ShoesVO> kindList(Map map) {   
		SqlSession session=null;
		List<ShoesVO> list=null;
		try {
			session=ssf.openSession();
			list=session.selectList("kindList", map);   
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return list;
	}
	
	// 신발 종류 페이징
	public static int kindTotalPage(Map map)
	{
		int total = 0;
		SqlSession session = null;
		
		try
		{
			session = ssf.openSession();
			total = session.selectOne("kindTotalPage", map);
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
		return total;
	}
	
	
	
	
}
