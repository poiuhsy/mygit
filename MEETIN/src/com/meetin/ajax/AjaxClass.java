package com.meetin.ajax;

import java.io.IOException;
import java.security.PrivateKey;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meetin.dao.UserDao;
import com.meetin.data.User;
import com.meetin.util.tea;

public class AjaxClass  extends HttpServlet {
	private static final long serialVersionUID = -1816848888251725935L;
	public AjaxClass() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String cmd = request.getParameter("CMD");
		
		if(cmd.equals("login")){
			String secureId = request.getParameter("user_id");
			String securePw = request.getParameter("user_pw");
		
			HttpSession session = request.getSession();
			PrivateKey privateKey = (PrivateKey) session.getAttribute("__rsaPrivateKey__");
			session.removeAttribute("__rsaPrivateKey__");
			
			if(privateKey == null) {
				throw new RuntimeException("비밀키가 없습니다.");
			}
			
			String userId = "";
			String userPw = "";
			tea t = new tea();
			try {
				userId = t.decryptRsa(privateKey, secureId);
				userPw = t.decryptRsa(privateKey, securePw);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
								
			UserDao dao = new UserDao();
			User user = dao.login(userId, userPw);

			if(user != null ) {
				session.setAttribute("login", user);
			}
			response.getWriter().print(user);
		}else if(cmd.equals("email_check")){
			String regist_email = request.getParameter("user_id");
			UserDao user = new UserDao();
			
			int result = user.regist_email_check(regist_email);
			response.getWriter().print(result);
		}
	}
	
}
