package com.meetin.action.user;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.dao.UserDao;
import com.meetin.dto.User;

public class UserRegistAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		User user = new User();
		user.setUser_id(request.getParameter("id"));
		user.setUser_nm(request.getParameter("nm"));
		user.setUser_phone(request.getParameter("phone"));
		Date now = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String user_reg_dt = format.format(now);
		user.setUser_reg_dt(user_reg_dt);
		user.setUser_gb(1);
		
		UserDao dao = new UserDao();
		if(dao.regist(user, request.getParameter("pw"))) {

		} else {
			
		}
		dao.disconnect();
		
		ActionForward forward = new ActionForward();
		forward.setPath("/");
		forward.setRedirect(true);
		return forward;
	}

}
