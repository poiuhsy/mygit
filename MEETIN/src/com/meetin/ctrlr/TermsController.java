package com.meetin.ctrlr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.ActionForward;

public class TermsController extends HttpServlet {
	private static final long serialVersionUID = -6979859362726644655L;

	public TermsController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String termsIdx = request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/")+1);
		if(termsIdx.equals("1")) {
			request.setAttribute("tUrl", "/resources/terms/terms_of_meetin.jsp");
		} else if(termsIdx.equals("2")) {
			request.setAttribute("tUrl", "/resources/terms/privacy_policy.jsp");
		} else if(termsIdx.equals("3")) {
			request.setAttribute("tUrl", "/resources/terms/terms_of_meetin.jsp");
		} else if(termsIdx.equals("4")) {
			request.setAttribute("tUrl", "/resources/terms/terms_of_payment.jsp");
		}
		request.setAttribute("tIdx", termsIdx);
		request.setAttribute("tSize", 1000);
		
//		System.out.println(request.getAttribute("tIdx")+" : "+request.getAttribute("tUrl")+" - "+request.getAttribute("tSize"));
		ActionForward forward = new ActionForward();
		forward.setPath("/WEB-INF/jsp/view/terms.jsp");
		forward.setRedirect(false);
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				request.getRequestDispatcher(forward.getPath()).forward(
						request, response);
			}
		}
		
	}
}
