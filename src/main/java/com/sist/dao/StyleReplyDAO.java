package com.sist.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.StyleReplyVO;
import com.sist.vo.StyleVO;


public class StyleReplyDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		} catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public static List<StyleReplyVO> styleReplyListData(StyleReplyVO vo) {
		List<StyleReplyVO> list = null;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("styleReplyListData", vo);
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if(session!=null)
				session.close();
		}
		
		return list;
	}
	
	public static void styleReplyInsert(StyleReplyVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.update("countIncrement",vo);
			session.insert("styleReplyInsert",vo);
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if(session!=null)
				session.close();
		}
		
	}
	
	
	 public static void styleRereplyInsert(StyleReplyVO vo) { 
		 SqlSession session=null; 
		 try { 
			 session=ssf.openSession(false);
			 session.selectOne("styleRereplyInsert",vo);
			 session.update("stepIncrement",vo); 
			 session.insert("styleRereplyInsert2",vo);
			 session.update("depthIncrement",vo);
			 session.commit();
		 } catch(Exception ex) {
			 ex.printStackTrace(); 
		 } finally { 
			 if(session!=null) session.close(); 
		 } 
	}
	 

	 
}
