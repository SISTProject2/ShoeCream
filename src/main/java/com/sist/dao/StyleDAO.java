package com.sist.dao;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.StyleVO;

public class StyleDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		} catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public static List<StyleVO> styleListData(Map map) {
		List<StyleVO> list = null;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("styleListData", map);
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if(session!=null)
				session.close();
		}
		
		return list;
	}
	
	public static int styleTotalPage(Map map) {
		int total=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			total=session.selectOne("styleTotalPage", map);
		} catch(Exception ex) {
			System.out.println("styleTotalPage error : ");
			ex.printStackTrace();
		} finally {
			if (session!=null)
				session.close();
		}
		
		return total;
	}
	
	public static int styleGetUserId(String email) {
		SqlSession session=null;
		int user_id=0;
		try {
			session=ssf.openSession();
			user_id=session.selectOne("styleGetUserId",email);
		} catch(Exception ex) {
			if(session!=null)
				session.close();
		}
		
		return user_id;
	}
	
	public static void styleInsert(StyleVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);	
			session.insert("styleInsert",vo);
		} catch(Exception ex) {
			System.out.println("styleInsert error : ");
			ex.printStackTrace();
		} finally {
			if (session!=null)
				session.close();
		
		}
	}
	
	public static StyleVO styleDetailData(int style_id) {	
		SqlSession session=null;
		StyleVO vo=null;
		try {
			session=ssf.openSession();
			vo=session.selectOne("styleDetailData", style_id);
		} catch(Exception ex) {
			System.out.println("styleDetailData error : ");
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return vo;		
	}
	
	public static List<StyleVO> styleTagData(String tag) {
		
		SqlSession session=null;
		List<StyleVO> list=null;
		try {
			session=ssf.openSession();
			list=session.selectList("styleTagData", tag);
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return list;
		
	}
}
