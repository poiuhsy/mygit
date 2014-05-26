package com.meetin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.meetin.dto.User;

public class UserDao {
	private Connection conn;
	
	public UserDao() throws Exception  {
		// TODO Auto-generated constructor stub
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/meetinConn");
		conn = ds.getConnection();		
	}
	
	public boolean regist(User user, String pw) throws Exception { 
		String query = "insert into auth_users_tb values(?,HEX(AES_ENCRYPT(?,MD5(?))),?,?)";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, user.getUser_id());
		pstmt.setString(2, pw);
		pstmt.setString(3, pw);
		pstmt.setInt(4, 1);
		pstmt.setInt(5, 1);
		int excute = pstmt.executeUpdate();
		if(excute < 1) {
			return false;
		} else {
			excute = 0;
			pstmt.close();
		}
		
		query = "insert into act_users_tb(USER_ID,USER_NM,USER_PHONE,USER_REG_DT,USER_GB,USER_FL) values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, user.getUser_id());
		pstmt.setString(2, user.getUser_nm());
		pstmt.setString(3, user.getUser_phone());
		pstmt.setString(4, user.getUser_reg_dt());
		pstmt.setInt(5, user.getUser_gb());
		pstmt.setInt(6, 1);
		excute = pstmt.executeUpdate();
		if(excute < 1) {
			return false;
		} else {
			excute = 0;
			pstmt.close();
		}
		
		return true;
	}
	
	public boolean login(String id, String pw) throws Exception {
		boolean success = false;
		String query = "select count(*) from auth_users_tb where USER_ID=? and AES_DECRYPT(UNHEX(USER_PW),MD5(?))=?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, pw);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			if(rs.getInt(1) > 0) success = true;
		} 
		return success;
	}
	
	public void disconnect() throws Exception{
		conn.close();
	}
}
