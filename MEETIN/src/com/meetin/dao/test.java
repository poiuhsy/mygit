package com.meetin.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.meetin.data.Faq_Data;
import com.meetin.data.Meeting;
import com.meetin.dbUtil.dao;

public class test {
	private SqlMapClient client;
	HashMap<String, String> param = new HashMap<String, String>();
	
	public test() {	
		client = dao.getMapper();		
	}
	public List<Faq_Data> getTest(){
		param.clear();
		List<Faq_Data> faq_data = null;
		try {		
			faq_data = client.queryForList("testest");
		} catch (SQLException e) {
			System.out.println("test_error : "+e.getMessage());
		}
		return faq_data;
	}
	public List<Meeting> setMoim(String cate){
		List<Meeting> faq_data = null;
		try {		
			faq_data = client.queryForList("m_moim",cate);
		} catch (SQLException e) {
			System.out.println("test_error : "+e.getMessage());
		}
		return faq_data;

	}
	public Meeting sqMoim(int sq){
		Meeting faq_data = null;
		try {		
			faq_data = (Meeting)client.queryForObject("sq_moim",sq);
		} catch (SQLException e) {
			System.out.println("test_error : "+e.getMessage());
		}
		return faq_data;

	}
	
}
