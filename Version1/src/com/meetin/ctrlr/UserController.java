package com.meetin.ctrlr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;


public class UserController extends HttpServlet {
	private static final long serialVersionUID = -1816848888251725935L;
	
	public UserController() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ActionForward forward = null;
//		Action action = null;
		
		String commandURI = request.getRequestURI();
		String command = commandURI.substring(commandURI.lastIndexOf("/")+1);
		String goORdo = command.substring(command.indexOf(".")+1);
		String pageCmd = command.substring(0,command.indexOf("."));
		
		if(goORdo.equals("go")) {
			forward = new ActionForward();
			if(pageCmd.equals("regist")) {
				forward.setPath("/WEB-INF/jsp/view/regist.jsp");
				forward.setRedirect(false);
			} else if(pageCmd.equals("change")) {
				
			} else if(pageCmd.equals("withdrawal")) {
				
			}
		} else {
			if(pageCmd.equals("login")) {
//				String userId = request.getParameter("user_id");
//				String userPw = request.getParameter("user_pw");
			} else if(pageCmd.equals("regist")) {
				
			} else if(pageCmd.equals("change")) {
				
			} else if(pageCmd.equals("withdrawal")) {
				
			}
		}
	
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				request.getRequestDispatcher(forward.getPath()).forward(request, response);
			}
		}
	}
}
