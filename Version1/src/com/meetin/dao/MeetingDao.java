package com.meetin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.meetin.dto.Meeting;
import com.meetin.utils.DbUtil;

public class MeetingDao {
	private Connection conn;
	private DbUtil util;
	
	public MeetingDao() {
		// TODO Auto-generated constructor stub
		util = new DbUtil();
		conn = util.getConnection();
	}
	
	public Meeting getMeeting(int sq) {
		Meeting meeting = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String query = "select t1.MEETING_SQ, t2.CATE_NM, t1.MEETING_NM, t1.MEETING_DT, t1.MEETING_FL from meeting_tb t1 inner join meeting_cate_tb t2 on t1.MEETING_CATE=t2.CATE_CD where t1.MEETING_SQ=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, sq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				meeting = new Meeting();
				meeting.setMeeting_sq(rs.getInt(1));
				meeting.setMeeting_cate(rs.getString(2));
				meeting.setMeeting_nm(rs.getString(3));
				meeting.setMeeting_dt(rs.getString(4));
				meeting.setMeeting_fl(rs.getInt(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("MeetingDao.getMeeting():"+e.getMessage());
		} finally {
			util.close(rs);
			util.close(pstmt);
		}
		return meeting;
	}
	
	public ArrayList<Meeting> getMeetingList(String cateCd) {
		ArrayList<Meeting> meetings = new ArrayList<Meeting>(); // size 여부로 체크
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "";
		
		try {
			if(cateCd.equals("C000")) {
				query = "select t1.MEETING_SQ, t2.CATE_NM, t1.MEETING_NM, t1.MEETING_DT, t1.MEETING_FL from meeting_tb t1 inner join meeting_cate_tb t2 on t1.MEETING_CATE=t2.CATE_CD";
				pstmt = conn.prepareStatement(query);
			} else {
				query = "select t1.MEETING_SQ, t2.CATE_NM, t1.MEETING_NM, t1.MEETING_DT, t1.MEETING_FL from meeting_tb t1 inner join meeting_cate_tb t2 on t1.MEETING_CATE=t2.CATE_CD where t2.MEETING_CATE=?";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, cateCd);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Meeting tmp = new Meeting();
				tmp.setMeeting_sq(rs.getInt(1));
				tmp.setMeeting_cate(rs.getString(2));
				tmp.setMeeting_nm(rs.getString(3));
				tmp.setMeeting_dt(rs.getString(4));
				tmp.setMeeting_fl(rs.getInt(5));
				meetings.add(tmp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("MeetingDao.getMeetingList():"+e.getMessage());
		} finally {
			util.close(rs);
			util.close(pstmt);
		}
		return meetings;
	}
	public void disconnect() {
		util.disconnect(conn);
	}
}
