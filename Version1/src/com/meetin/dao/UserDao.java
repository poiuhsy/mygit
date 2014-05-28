package com.meetin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.meetin.dto.User;
import com.meetin.utils.DbUtil;

public class UserDao {
	private Connection conn;
	private DbUtil util;
	
	public UserDao() {
		// TODO Auto-generated constructor stub
		util = new DbUtil();
		conn = util.getConnection();
	}
	
	public boolean regist(User user, String pw) {
		boolean qflg1 = false;
		boolean qflg2 = false;
		boolean success = false;
		int excute = -1;
		PreparedStatement pstmt = null;
		try {
			String query1 = "insert into auth_users_tb values(?,HEX(AES_ENCRYPT(?,MD5(?))),?,?)";
			pstmt = conn.prepareStatement(query1);
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, pw);
			pstmt.setString(3, pw);
			pstmt.setInt(4, 1);
			pstmt.setInt(5, 1);
			excute = pstmt.executeUpdate();
			if(excute > 0) {
				qflg1 = true;
				excute = -1;
			}
			
			String query2 = "insert into act_users_tb(USER_ID,USER_NM,USER_PHONE,USER_REG_DT,USER_GB,USER_FL) values(?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(query2);
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getUser_nm());
			pstmt.setString(3, user.getUser_phone());
			pstmt.setString(4, user.getUser_reg_dt());
			pstmt.setInt(5, user.getUser_gb());
			pstmt.setInt(6, 1);
			excute = pstmt.executeUpdate();
			if(excute > 0) {
				qflg2 = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("UserDao.regist():"+e.getLocalizedMessage());
		} finally {
			if(qflg1 && qflg2) {
				success = true;
				util.commit(conn);
			} else {
				util.rollback(conn);
			}
			util.close(pstmt);
		}
		return success;
	}
	
	public boolean modify(User user) {
		boolean success = false;
		PreparedStatement pstmt = null;
		
		try {
			String query = "update act_users_tb set USER_NM=?, USER_PHONE=? where USER_ID=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUser_nm());
			pstmt.setString(2, user.getUser_phone());
			pstmt.setString(3, user.getUser_id());
			int excute = pstmt.executeUpdate();
			if(excute > 0) {
				success = true;
				util.commit(conn);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("UserDao.change():"+e.getLocalizedMessage());
			util.rollback(conn);
		} finally {
			util.close(pstmt);
		}
		
		return success;
	}
	
	public User login(String id, String pw) {
		User user = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String query = "select t2.USER_SQ, t2.USER_ID, t2.USER_NM, t2.USER_PHONE, t2.USER_REG_DT, t2.USER_GB from auth_users_tb t1 inner join act_users_tb t2 on t1.USER_ID = t2.USER_ID where t1.USER_ID=? and AES_DECRYPT(UNHEX(t1.USER_PW),MD5(?))=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, pw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				user = new User();
				user.setUser_sq(rs.getInt(1));
				user.setUser_id(rs.getString(2));
				user.setUser_nm(rs.getString(3));
				user.setUser_phone(rs.getString(4));
				user.setUser_reg_dt(rs.getString(5));
				user.setUser_gb(rs.getInt(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("UserDao.login():"+e.getLocalizedMessage());
		} finally {
			util.close(rs);
			util.close(pstmt);
		}
		return user;
	}
	
	public User getUser(String id) {
		User u = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String query = "select * from act_users_tb where USER_ID=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				u = new User();
				u.setUser_sq(rs.getInt(1));
				u.setUser_id(rs.getString(2));
				u.setUser_nm(rs.getString(3));
				u.setUser_phone(rs.getString(4));
				u.setUser_reg_dt(rs.getString(5));
				u.setUser_gb(rs.getInt(6));
				u.setUser_fl(rs.getInt(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("UserDao.getUser():"+e.getLocalizedMessage());
		} finally {
			util.close(rs);
			util.close(pstmt);
		}
		return u;
	}
	
	public void disconnect() {
		util.disconnect(conn);
	}
}
