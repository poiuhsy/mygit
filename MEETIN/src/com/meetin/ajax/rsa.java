package com.meetin.ajax;

import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class rsa  extends HttpServlet {
	private static final long serialVersionUID = -1816848888251725935L;
	public rsa() {
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
		try {
			KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
			generator.initialize(512);
			
			KeyPair keyPair = generator.genKeyPair();
			KeyFactory keyFactory = KeyFactory.getInstance("RSA");
			
			PublicKey publicKey = keyPair.getPublic();
			PrivateKey privateKey = keyPair.getPrivate();
			
			HttpSession session = request.getSession();
			session.setAttribute("__rsaPrivateKey__", privateKey);
			
			RSAPublicKeySpec publicSpec = (RSAPublicKeySpec)keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);
			
			String publicKeyModules = publicSpec.getModulus().toString(16);
			String publicKeyExponent = publicSpec.getPublicExponent().toString(16);
			

			session.setAttribute("login_url", request.getParameter("url"));              
			
			response.getWriter().print(publicKeyModules+","+publicKeyExponent);
			//session.setAttribute("publicKeyModules", publicKeyModules);
			//session.setAttribute("publicKeyExponent", publicKeyExponent);
			
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			System.out.println("HomeAction.excute():" + e.getMessage());
		} catch (InvalidKeySpecException e) {
			// TODO Auto-generated catch block
			System.out.println("HomeAction.excute():" + e.getMessage());
		}
	}
	
}
