package com.meetin.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.dao.UserDao;
import com.meetin.dto.User;

public class GetUserAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		UserDao dao = new UserDao();
		User user = dao.getUser(id);
		if(user != null) {
			request.setAttribute("user", user);
		}
		dao.disconnect();
		
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/jsp/view/user_change.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
