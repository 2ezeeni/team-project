<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	if('${key}'=='${param.key}'){
		alert('인증에 성공했습니다. 회원가입페이지로 이동합니다.');
		location.href='/ShoppingMall/m_customer/signUpPage.jsp?m_customer_email=${param.m_customer_email}';
		session.removeAttribute('key');
	} else {
		alert('인증키가 유효하지않습니다. 다시 시도해주세요');
		location.href='/ShoppingMall/m_customerSignUpPage.customer';
	}
</script>