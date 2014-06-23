package com.meetin.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;


public class UserLoginAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub	
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath((String)request.getSession().getAttribute("login_url"));
		request.getSession().removeAttribute("login_url");
		return forward;
	}
	

}
