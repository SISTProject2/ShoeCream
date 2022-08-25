package com.sist.dao;

import java.io.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import java.util.*;
import com.sist.vo.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

//공통모듈 
public class UserDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			// XML 읽기
			// src/main/java => Config.xml (classpath영역=>마이바티스 자동인식)
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader); // 파씽
		} catch (Exception ex) // 예외처리
		{
			ex.printStackTrace(); // 오류 발생시 printStackTrace실행해서 오류가 뭔지 출력할 수 있도록 해줌
		}
	}

	// user_id max값 가져오기
	public static int getMaxUserId() {
		int userId = 0;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			System.out.println("UserDAO.getMaxUserId");
			userId = session.selectOne("getMaxUserId");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return userId;
	}

	public static int userEmailCheck(String email) {
		int count = 0;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			count = session.selectOne("userEmailCheck", email);
			// selectList,selectOne ==> row
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();// 반환 (DBCP)
		}
		return count;
	}

	public static int userTelCheck(String tel) {
		int count = 0;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			System.out.println("UserDAO.userTelCheck : tel : " + tel);
			count = session.selectOne("userTelCheck", tel);
			// selectList,selectOne ==> row
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();// 반환 (DBCP)
		}
		return count;
	}

	public static void userInsert(UserVO vo) {
		SqlSession session = null;
		try {
			session = ssf.openSession(true);// autocommit
			System.out.println("UserDAO.userInsert.vo : " + vo);
			session.insert("userInsert", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public static UserVO isLogin(String email, String pwd) {
		UserVO vo = new UserVO();
		// 연결 ==> getConnection()
		SqlSession session = null;
		try {
			session = ssf.openSession(); // DBCP => Connection을 미리 생성 (8) => 생성 Connection의 주소값 얻기
			int count = session.selectOne("userEmailCount", email);

			if (count == 0) {
				vo.setMsg("NOEMAIL");
			} else {
				vo = session.selectOne("userDetailData", email);
				if (pwd.equals(vo.getPwd())) { // 로그인
					vo.setMsg("OK");
				} else { // 비밀번호가 틀린상태
					vo.setMsg("NOPWD");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close(); // POOL으로 반환 재사용 (미반환시 동작을 하지 않는다) => 스프링(처리)
		}
		return vo;
	}

	// 회원 정보 읽기
	public static UserVO userDetailData(String email) {
		UserVO vo = new UserVO();
		SqlSession session = null;
		try {
			session = ssf.openSession(); // getConnection()
			vo = session.selectOne("userDetailData", email);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close(); // disConnection()
		}
		return vo;
	}

	// session처리
	public static boolean userUpdate(UserVO vo) {
		boolean bCheck = false;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			UserVO pvo = session.selectOne("userInfoData", vo.getEmail());
			if (pvo.getPwd().equals(vo.getPwd())) {
				bCheck = true;
				session.update("userUpdate", vo);
				session.commit();
			} else {
				bCheck = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return bCheck;
	}

	public static boolean userDelete(String email, String pwd) {
		boolean bCheck = false;
		SqlSession session = null;
		try {
			session = ssf.openSession();
			UserVO pvo = session.selectOne("userInfoData", email);
			if (pvo.getPwd().equals(pwd)) {
				bCheck = true;
				session.delete("userDelete", email);
				session.commit();
			} else {
				bCheck = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
		return bCheck;
	}

//비밀번호 정규식 패턴
	private String checkPassword(String pwd, String email) {

		// 비밀번호 포맷 확인(영문, 특수문자, 숫자 포함 8자 이상)
		Pattern passPattern1 = Pattern.compile("^(?=.*[a-zA-Z])(?=.*\\d)(?=.*\\W).{8,20}$");
		Matcher passMatcher1 = passPattern1.matcher(pwd);

		if (!passMatcher1.find()) {
			return "비밀번호는 영문과 특수문자 숫자를 포함하며 8자 이상이어야 합니다.";
		}

		// 반복된 문자 확인
		Pattern passPattern2 = Pattern.compile("(\\w)\\1\\1\\1");
		Matcher passMatcher2 = passPattern2.matcher(pwd);

		if (passMatcher2.find()) {
			return "비밀번호에 동일한 문자를 과도하게 연속해서 사용할 수 없습니다.";
		}

		// 아이디 포함 확인
		if (pwd.contains(email)) {
			return "비밀번호에 email을 포함할 수 없습니다.";
		}

		// 특수문자 확인
		Pattern passPattern3 = Pattern.compile("\\W");
		Pattern passPattern4 = Pattern.compile("[!@#$%^*+=-]");

		for (int i = 0; i < pwd.length(); i++) {
			String s = String.valueOf(pwd.charAt(i));
			Matcher passMatcher3 = passPattern3.matcher(s);

			if (passMatcher3.find()) {
				Matcher passMatcher4 = passPattern4.matcher(s);
				if (!passMatcher4.find()) {
					return "비밀번호에 특수문자는 !@#$^*+=-만 사용 가능합니다.";
				}
			}
		}

		// 연속된 문자 확인
		int ascSeqCharCnt = 0; // 오름차순 연속 문자 카운트
		int descSeqCharCnt = 0; // 내림차순 연속 문자 카운트

		char char_0;
		char char_1;
		char char_2;

		int diff_0_1;
		int diff_1_2;

		for (int i = 0; i < pwd.length() - 2; i++) {
			char_0 = pwd.charAt(i);
			char_1 = pwd.charAt(i + 1);
			char_2 = pwd.charAt(i + 2);

			diff_0_1 = char_0 - char_1;
			diff_1_2 = char_1 - char_2;

			if (diff_0_1 == 1 && diff_1_2 == 1) {
				ascSeqCharCnt += 1;
			}

			if (diff_0_1 == -1 && diff_1_2 == -1) {
				descSeqCharCnt -= 1;
			}
		}

		if (ascSeqCharCnt > 1 || descSeqCharCnt > 1) {
			return "비밀번호에 연속된 문자열을 사용할 수 없습니다.";
		}

		return "";
	}
}