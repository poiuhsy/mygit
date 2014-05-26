package com.meetin.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.dao.UserDao;

public class UserLoginAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();

		UserDao dao = new UserDao();
		if(dao.login(request.getAttribute("id").toString(), request.getAttribute("pw").toString())) {
			HttpSession session = request.getSession();
			session.setAttribute("login", request.getAttribute("id"));

			request.removeAttribute("id");
			request.removeAttribute("pw");
		} else {
			
		}
		dao.disconnect();
		
		forward.setRedirect(true);
		forward.setPath("/");
		return forward;
	}

}
