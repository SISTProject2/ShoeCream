package com.sist.dao;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import com.sist.vo.CsVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.vo.ShoesVO;
import com.sist.vo.StyleVO;

public class CsDAO {
   private static SqlSessionFactory ssf;

   static {   
      try {
         Reader reader=Resources.getResourceAsReader("Config.xml");
         ssf=new SqlSessionFactoryBuilder().build(reader);
      } catch(Exception ex) {
         ex.printStackTrace();
      }
   }


   public static void saveQna(CsVO cs) {
      SqlSession session = null;
      try {
         session = ssf.openSession();
         session.insert("saveQna", cs);
         session.commit();
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }
   }
}