package com.sist.dao;

import java.io.Reader;
import java.util.List;

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
	
	public static List<StyleVO> styleListData() {
		List<StyleVO> list = null;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("styleListData");
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if(session!=null)
				session.close();
		}
		
		return list;
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
}
