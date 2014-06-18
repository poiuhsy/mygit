package com.meetin.action.user;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.dao.UserDao;
import com.meetin.data.User;



public class UserRegistAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		String url = "/";

		if(request.getParameter("step").equals("1")){
			url = "http://localhost:8080/user/regist_2.go";
			request.getSession().setAttribute("email", request.getParameter("email"));
			request.getSession().setAttribute("name", request.getParameter("nm"));
			request.getSession().setAttribute("pwd", request.getParameter("pwd"));
			request.getSession().setAttribute("gender", request.getParameter("gender"));
			request.getSession().setAttribute("birthdate", request.getParameter("birthdate"));
		}else if(request.getParameter("step").equals("2")){ 
			url = "http://localhost:8080/user/regist_3.go";
			String img = "";
			String egg_code = "";
			if(request.getParameter("my_image")!=null && request.getParameter("egg") !=null){
				img = request.getParameter("my_image");
				egg_code =  request.getParameter("egg");
			}else{
				img =  "";
				egg_code =  "001";
			}
			User user = new User();
			user.setUSER_ID((String)request.getSession().getAttribute("email"));
			user.setUSER_NM((String)request.getSession().getAttribute("name"));
			user.setUSER_PW((String)request.getSession().getAttribute("pwd"));
			user.setUSER_PIC(img);
			user.setEGG_CD(egg_code);
			user.setUSER_GENDER((String)request.getSession().getAttribute("gender"));
			user.setUSER_BIRTH((String)request.getSession().getAttribute("birthdate"));
			Date now = new Date();
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String user_reg_dt = format.format(now);
			user.setUSER_REG_DT(user_reg_dt);
					
			UserDao dao = new UserDao();	
			dao.regist(user);
			request.getSession().invalidate();								
		}

		ActionForward forward = new ActionForward();
		forward.setPath(url);
		//if(request.getParameter("step")!=null){
		//	forward.setRedirect(false);
		//}else{
			forward.setRedirect(true);
		//}		
		return forward;
	}

}
