package com.meetin.action.user;

import java.security.PrivateKey;

import javax.crypto.Cipher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.meetin.action.Action;
import com.meetin.action.ActionForward;
import com.meetin.dao.UserDao;
import com.meetin.dto.User;

public class UserLoginAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String secureId = request.getParameter("user_id");
		String securePw = request.getParameter("user_pw");
		
		HttpSession session = request.getSession();
		PrivateKey privateKey = (PrivateKey) session.getAttribute("__rsaPrivateKey__");
		session.removeAttribute("__rsaPrivateKey__");
		
		if(privateKey == null) {
			throw new RuntimeException("암호화 비밀키 정보를 찾을 수 없습니다.");
		}
		
		String userId = decryptRsa(privateKey, secureId);
		String userPw = decryptRsa(privateKey, securePw);
		
		ActionForward forward = new ActionForward();
		UserDao dao = new UserDao();
		User user = dao.login(userId, userPw);
		if(user != null ) {
			session.setAttribute("login", user);
		}
		dao.disconnect();
		
		forward.setRedirect(true);
		forward.setPath("/");
		return forward;
	}
	
	private String decryptRsa(PrivateKey privateKey, String securedValue) throws Exception {
//		System.out.println("will decrypt : " + securedValue);
        Cipher cipher = Cipher.getInstance("RSA");
        byte[] encryptedBytes = hexToByteArray(securedValue);
        cipher.init(Cipher.DECRYPT_MODE, privateKey);
        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
        String decryptedValue = new String(decryptedBytes, "utf-8"); // 문자 인코딩 주의.
        return decryptedValue;
	}
	
	private static byte[] hexToByteArray(String hex) {
        if (hex == null || hex.length() % 2 != 0) {
            return new byte[]{};
        }

        byte[] bytes = new byte[hex.length() / 2];
        for (int i = 0; i < hex.length(); i += 2) {
            byte value = (byte)Integer.parseInt(hex.substring(i, i + 2), 16);
            bytes[(int) Math.floor(i / 2)] = value;
        }
        return bytes;
    }
}
