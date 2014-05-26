package com.meetin.ctrlr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.ActionForward;

public class HomeController extends HttpServlet {
	private static final long serialVersionUID = -6979859362726644655L;
	
	public HomeController() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ActionForward forward = null;
		forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/WEB-INF/jsp/view/home.jsp");
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				request.getRequestDispatcher(forward.getPath()).forward(request, response);
			}
		}
	}
}
