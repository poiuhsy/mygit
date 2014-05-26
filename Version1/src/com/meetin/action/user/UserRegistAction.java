package com.meetin.action.user;

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
		UserDao dao = new UserDao();
		if(dao.regist((User)request.getAttribute("user"), request.getAttribute("pw").toString())) {
			request.removeAttribute("user");
			request.removeAttribute("pw");
		} else {
			
		}
		dao.disconnect();
		ActionForward forward = new ActionForward();
		forward.setPath("/");
		forward.setRedirect(true);
		return forward;
	}

}
