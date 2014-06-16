package com.meetin.ctrlr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.action.meeting.MeetingForwardAction;

public class MeetingDetailController extends HttpServlet {
	private static final long serialVersionUID = 3037936321235616657L;
	
	public MeetingDetailController() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ActionForward forward = null;
		Action action = null;

		action = new MeetingForwardAction();
		try {
			forward = action.excute(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
