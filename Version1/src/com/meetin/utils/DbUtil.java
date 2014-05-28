package com.meetin.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DbUtil {
	public Connection getConnection() {
		Connection conn = null;
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/meetinConn");
			conn = ds.getConnection();
			conn.setAutoCommit(false);
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			System.err.println(e.getLocalizedMessage());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println(e.getLocalizedMessage());
		}
		return conn;
	}
	
	public void disconnect(Connection conn) {
		try {
			if(conn != null) 
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void close(PreparedStatement pstmt) {
		try {
			if(pstmt != null)
				pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void close(ResultSet rs) {
		try {
			if(rs != null)
				rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void rollback(Connection conn) {
		try {
			conn.rollback();
			System.out.println("rollback success");
		} catch (SQLException e) {
			System.out.println("rollback fail");
		}
	}
	public void rollback(Connection conn, Savepoint s) {
		try {
			conn.rollback(s);
			System.out.println("rollback success");
		} catch (SQLException e) {
			System.out.println("rollback fail");
		}
	}
	public void commit(Connection conn) {
		try {
			conn.commit();
			System.out.println("commit success");
		} catch (SQLException e) {
			System.out.println("commit fail");
		}
	}
}
