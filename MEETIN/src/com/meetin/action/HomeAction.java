package com.meetin.action;

import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meetin.dao.test;
import com.meetin.data.Meeting;

public class HomeAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
	

		test t = new test();
		List<Meeting> meetings = t.setMoim("C000");
		ActionForward forward = null;
		forward = new ActionForward(); 
		request.setAttribute("meetings", meetings);			
		forward.setRedirect(false);
		forward.setPath("index.jsp");
			
		return forward;
	}

}
