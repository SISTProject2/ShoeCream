package com.sist.dao;

import java.io.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import java.util.*;
import com.sist.vo.*;

//공통모듈 
public class UserDAO {
	   private static SqlSessionFactory ssf;
	   static
	   {
		   try
		   {
			   // XML 읽기 
			   // src/main/java => Config.xml  (classpath영역=>마이바티스 자동인식)
			   Reader reader=Resources.getResourceAsReader("Config.xml");
			   ssf=new SqlSessionFactoryBuilder().build(reader); //파씽
		   }catch(Exception ex) //예외처리
		   {
			   ex.printStackTrace(); //오류 발생시 printStackTrace실행해서 오류가 뭔지 출력할 수 있도록 해줌 
		   }
	   }
	   //user_id max값 가져오기
	   public static int getMaxUserId() {
		   int userId = 0;
		   SqlSession session=null;
		   try {
			   session=ssf.openSession();
			   System.out.println("UserDAO.getMaxUserId");
			   userId=session.selectOne("getMaxUserId");
		   } catch (Exception e) {
			   e.printStackTrace();
			   } 
		   finally {
			   if(session!=null)
				   session.close();
		   }
		   return userId;
	   }
	   
	   public static int userEmailCheck(String email) {
		   int count=0;
		   SqlSession session=null;
		   try {
			   session=ssf.openSession();
			   count=session.selectOne("userEmailCheck", email);
			   // selectList,selectOne ==> row
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
		   finally {
			   if(session!=null)
				   session.close();// 반환 (DBCP)
		   }
		   return count;
	   }
	   
	   public static int userTelCheck(String tel) {
		   int count=0;
		   SqlSession session=null;
		   try {
			   session=ssf.openSession();
			   System.out.println("UserDAO.userTelCheck : tel : " +tel);
			   count=session.selectOne("userTelCheck", tel);
			   // selectList,selectOne ==> row
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
		   finally {
			   if(session!=null)
				   session.close();// 반환 (DBCP)
		   }
		   return count;
	   }
	   
	   public static void userInsert(UserVO vo) {
		   SqlSession session=null;
		   try {
			   session=ssf.openSession(true);//autocommit
			   System.out.println("UserDAO.userInsert.vo : " + vo);
			   session.insert("userInsert",vo);
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
		   finally {
			   if(session!=null)
				   session.close();
		   }
	   }
	   
	   public static UserVO isLogin(String email,String pwd) {
		   UserVO vo=new UserVO();
		   // 연결 ==> getConnection()
		   SqlSession session=null;
		   try {
			   session=ssf.openSession(); //DBCP => Connection을 미리 생성 (8) => 생성 Connection의 주소값 얻기
			   int count=session.selectOne("userEmailCount", email);
			   
			   if(count==0) {
				   vo.setMsg("NOEMAIL");
			   } else {
				   vo=session.selectOne("userInfoData", email);
				   if(pwd.equals(vo.getPwd())) { //로그인
					   vo.setMsg("OK");
				   }
				   else {  //비밀번호가 틀린상태 
					   vo.setMsg("NOPWD");
				   }
			   }
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
		   finally {
			   if(session!=null)
				   session.close(); // POOL으로 반환 재사용 (미반환시 동작을 하지 않는다) => 스프링(처리)
		   }
		   return vo;
	   }
	   
	   //회원 정보 읽기
	   public static UserVO userDetailData(String email) {
		   UserVO vo=new UserVO();
		   SqlSession session=null;
		   try {
			   session=ssf.openSession(); //getConnection()
			   vo=session.selectOne("userDetailData", email);
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
		   finally {
			   if(session!=null)
				   session.close(); // disConnection()
		   }
		   return vo;
	   }
	   
	   //session처리
	   public static boolean userUpdate(UserVO vo) {
		   boolean bCheck=false;
		   SqlSession session=null;
		   try {
			   session=ssf.openSession();
			   UserVO pvo=session.selectOne("userInfoData", vo.getEmail());
			   if(pvo.getPwd().equals(vo.getPwd())) {
				   bCheck=true;
				   session.update("userUpdate",vo);
				   session.commit();
			   }
			   else {
				  bCheck=false; 
			   }
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
		   finally {
			   if(session!=null)
				   session.close();
		   }
		   return bCheck;
	   }
	   
	   public static boolean userDelete(String email,String pwd) {
		   boolean bCheck=false;
		   SqlSession session=null;
		   try {
			   session=ssf.openSession();
			   UserVO pvo=session.selectOne("userInfoData", email);
			   if(pvo.getPwd().equals(pwd)) {
				   bCheck=true;
				   session.delete("userDelete",email);
				   session.commit();
			   }
			   else {
				  bCheck=false; 
			   }
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
		   finally {
			   if(session!=null)
				   session.close();
		   }
		   return bCheck;
	   }
	   
}
	   



