package com.shoppingmall.common;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator{
	
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		// "관리자gmail" : 메일인증요청한 이메일로 메일을 보낼 관리자의 gmail입력
		// "비밀번호"	 : 해당 gmail의 비밀번호 입력
		return new PasswordAuthentication("관리자gmail", "비밀번호");
	}
	
}
