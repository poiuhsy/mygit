package com.meetin.ctrlr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.action.user.GetUserAction;
import com.meetin.action.user.UserLoginAction;
import com.meetin.action.user.UserModifyAction;
import com.meetin.action.user.UserRegistAction;


public class UserController extends HttpServlet {
	private static final long serialVersionUID = -1816848888251725935L;
	
	public UserController() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		ActionForward forward = null;
		Action action = null;
		
		String commandURI = request.getRequestURI();
		String command = commandURI.substring(commandURI.lastIndexOf("/")+1);
		int dotIdx = command.indexOf(".");
		String goORdo = command.substring(dotIdx+1);
		String pageCmd = command.substring(0,dotIdx);
		
		if(goORdo.equals("go")) {
			forward = new ActionForward();
			if(pageCmd.equals("regist")) {
				forward.setPath("/WEB-INF/jsp/view/user_regist.jsp");
				forward.setRedirect(false);
			} else if(pageCmd.equals("modify")) {
				action = new GetUserAction();
				try {
					forward = action.excute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if(pageCmd.equals("withdrawal")) {
				
			}
		} else {
			if(pageCmd.equals("login")) {				
				action = new UserLoginAction();
				try {
					forward = action.excute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if(pageCmd.equals("regist")) {
				action = new UserRegistAction();
				try {
					forward = action.excute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if(pageCmd.equals("modify")) {
				action = new UserModifyAction();
				try {
					forward = action.excute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else if(pageCmd.equals("withdrawal")) {
				
			} else if(pageCmd.equals("logout")) {
				HttpSession session = request.getSession();
				session.invalidate();
				
				forward = new ActionForward();
				forward.setPath("/");
				forward.setRedirect(true);
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
