package com.meetin.action;

import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meetin.dao.MeetingDao;
import com.meetin.dto.Meeting;

public class HomeAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
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
			
			request.setAttribute("publicKeyModules", publicKeyModules);
			request.setAttribute("publicKeyExponent", publicKeyExponent);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			System.out.println("HomeAction.excute():" + e.getMessage());
		} catch (InvalidKeySpecException e) {
			// TODO Auto-generated catch block
			System.out.println("HomeAction.excute():" + e.getMessage());
		}
		
		MeetingDao dao = new MeetingDao();
		ArrayList<Meeting> meetings = dao.getMeetingList("C000");
		request.setAttribute("meetings", meetings);
		dao.disconnect();
		ActionForward forward = new ActionForward(); 
		forward.setRedirect(false);
		forward.setPath("/WEB-INF/jsp/view/home.jsp");
		return forward;
	}

}
