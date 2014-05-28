package com.meetin.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.dao.UserDao;
import com.meetin.dto.User;

public class UserModifyAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		User u = new User();
		u.setUser_id(request.getParameter("id"));
		u.setUser_nm(request.getParameter("nm"));
		u.setUser_phone(request.getParameter("phone"));		
		UserDao dao = new UserDao();
		if(dao.modify(u)) {
			HttpSession session = request.getSession();
			User user = (User)session.getAttribute("login");
			user.setUser_nm(request.getParameter("nm"));
			user.setUser_phone(request.getParameter("phone"));
			session.setAttribute("login", user);
		}
		dao.disconnect();
		
		ActionForward forward = new ActionForward();
		forward.setPath("/");
		forward.setRedirect(true);
		return forward;
	}

}
