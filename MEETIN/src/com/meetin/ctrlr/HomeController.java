package com.meetin.ctrlr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.action.HomeAction;
import com.meetin.data.uploadConfig;

public class HomeController extends HttpServlet {
	private static final long serialVersionUID = -6979859362726644655L;
	private static uploadConfig config = new uploadConfig();
	public HomeController() {
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
		Action action = new HomeAction();
		try {
			if(config.getSaveDir().equals("")){
				String src = request.getSession().getServletContext().getRealPath("/");
				String[] arr_url  = null;
				if(src.indexOf("/")>=0){
					arr_url = src.split("/");
				}else{
					arr_url = src.split("\\\\");
				}

				StringBuilder upload_url = new StringBuilder();
					
				for(int i=0;i<arr_url.length-1;++i){			
					if(!arr_url[i].equals("")){	
						if(i>0){
							upload_url.append("/");	
						}
						upload_url.append(arr_url[i]);	
						
					}		
				}
				config.setSaveDir(upload_url.toString()+"/user_upload");
			}
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
