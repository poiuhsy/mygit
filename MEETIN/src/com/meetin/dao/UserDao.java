package com.meetin.dao;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.meetin.data.Faq_Data;
import com.meetin.data.Meeting;
import com.meetin.data.User;
import com.meetin.dbUtil.dao;

public class UserDao {
	private SqlMapClient client;
	HashMap<String, String> param = new HashMap<String, String>();
	
	public UserDao() {	
		client = dao.getMapper();		
	}
	public int regist_email_check(String id){
		int result = 0;
		try {		
			result = (Integer)client.queryForObject("regist_check_email",id);						
		} catch (SQLException e) {
			System.out.println("test_error : "+e.getMessage());
		}
		return result;
	}
	public User login(String id, String password){
		param.clear();
		param.put("ID", id);
		param.put("PWD", password);
		User u = null;
		try {		
			u = (User)client.queryForObject("login",param);
		} catch (SQLException e) {
			System.out.println("test_error : "+e.getMessage());
		}
		return u;
	}	
	public boolean regist(User user) {
		boolean success = false;
		param.clear();
		param.put("ID", user.getUSER_ID());
		param.put("PWD", user.getUSER_PW());
				
		try {		
			client.startTransaction();
			int result_1 = client.update("regist_1",param);;						
			if(result_1>0){			
				param.clear();
				param.put("ID", user.getUSER_ID());
				param.put("EGG", user.getEGG_CD());	
				param.put("NM", user.getUSER_NM());
				param.put("IMG", user.getUSER_PIC());
				param.put("GENDER",user.getUSER_GENDER());
				param.put("BIRTHDATE", user.getUSER_BIRTH());
				param.put("REG_DT", user.getUSER_REG_DT());
				int result_2 = client.update("regist_2",param);
				if(result_2>0){
					success = true;
					client.commitTransaction();
					String ID = user.getUSER_ID();
					client.insert("regist_3",ID);
				}
			}
		} catch (SQLException e) {
			success = false;
			System.out.println("test_error : "+e.getMessage());
		}finally{
			try {
				client.endTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return success;
	}
}
