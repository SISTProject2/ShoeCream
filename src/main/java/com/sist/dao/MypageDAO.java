package com.sist.dao;

import com.sist.vo.ShoesVO;
import com.sist.vo.UserVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.Reader;
import java.util.Map;


public class MypageDAO {
    private static SqlSessionFactory ssf;

    static {
        try {
            Reader reader = Resources.getResourceAsReader("Config.xml");
            ssf = new SqlSessionFactoryBuilder().build(reader);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static UserVO mockLogin(int seq) {
        SqlSession session = null;
        UserVO user = null;
        try {
            session = ssf.openSession();
            user = session.selectOne("mockLogin", seq);
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.close();
        }

        return user;
    }


    public static void updatePassword(UserVO updateUser) {
        SqlSession session = null;
        try {
            session = ssf.openSession();
            session.update("updatePassword", updateUser);
            session.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.close();
        }

    }

    public static void updateTel(UserVO updateUser) {
        SqlSession session = null;
        try {
            session = ssf.openSession();
            session.update("updateTel", updateUser);
            session.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.close();
        }

    }

    public static void updateSize(UserVO updateUser) {
        SqlSession session = null;
        try {
            session = ssf.openSession();
            session.update("updateSize", updateUser);
            session.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.close();
        }
    }


    public static void updateProfileImage(UserVO updateUser) {
        SqlSession session = null;
        try {
            session = ssf.openSession();
            session.update("updateProfileImage", updateUser);
            session.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.close();
        }
    }

    public static void deleteUser(int seq) {
        SqlSession session = null;
        try {
            session = ssf.openSession();
            session.delete("deleteUser", seq);
            session.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.close();
        }
    }

    public static void updateAddress(UserVO userVO) {
        SqlSession session = null;
        try {
            session = ssf.openSession();
            session.update("updateAddress", userVO);
            session.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.close();
        }
    }


    public static void updateAccount(UserVO userVO) {
        SqlSession session = null;
        try {
            session = ssf.openSession();
            session.update("updateAccount", userVO);
            session.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            session.close();
        }
    }




}