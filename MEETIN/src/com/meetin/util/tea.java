package com.meetin.util;

import java.security.PrivateKey;

import javax.crypto.Cipher;

public class tea {

	public String decryptRsa(PrivateKey privateKey, String securedValue) throws Exception {
		//System.out.println("will decrypt : " + privateKey);
        Cipher cipher = Cipher.getInstance("RSA");
        byte[] encryptedBytes = hexToByteArray(securedValue);
        cipher.init(Cipher.DECRYPT_MODE, privateKey);
        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
        String decryptedValue = new String(decryptedBytes, "utf-8"); // ���� ���ڵ� ����.
        return decryptedValue;
	}
	
	public static byte[] hexToByteArray(String hex) {
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
