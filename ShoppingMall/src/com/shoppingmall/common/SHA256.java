package com.shoppingmall.common;

import java.security.MessageDigest;

public class SHA256 {
	
	public String getSHA256(String m_customer_email) {
		StringBuffer result = new StringBuffer();
		try {
			// 암호화
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			// 악성데이터 방지
			byte[] dummy = "this is dummy".getBytes();
			digest.reset();
			digest.update(dummy);
			// 실제 입력된 이메일로 헥사코드 인증키 생성
			byte[] key = digest.digest(m_customer_email.getBytes());
			for(int i =0; i< key.length;i++) {
				String hex = Integer.toHexString(0xff & key[i]);
				// 만들어진 헥사코드가 1자리수라면 앞에 0을 추가해줌
				if(hex.length()==1) {
					result.append("0");
				}
				// 반환할 result 객체에 코드 추가
				result.append(hex);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result.toString();
	}
}
