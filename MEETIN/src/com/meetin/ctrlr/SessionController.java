package com.meetin.ctrlr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SessionController extends HttpServlet {
	private static final long serialVersionUID = 3037936321235616657L;
	
	public SessionController() {
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
		String cmd = request.getParameter("CMD");
		String key = request.getParameter("KEY");
		if(cmd.equals("delete")){		
			if(request.getSession().getAttribute(key)!=null){
				request.getSession().removeAttribute(key);
			}		
			response.getWriter().print(request.getSession().getAttribute(key));
		}else if(cmd.equals("check")){
			request.getSession().setAttribute("a1", "23");
			response.getWriter().print(request.getSession().getAttribute(key));
		}else if(cmd.equals("add")){
			String[] key_list = request.getParameter("KEY").split("\\|");
			String[] val_list = request.getParameter("VAL").split("\\|");
			for(int i=0;i<key_list.length;++i){
				if(!key_list[i].equals("") && !val_list[i].equals("")){
					request.getSession().setAttribute(key_list[i],val_list[i]);
				}
			}			
		}
	}
}
