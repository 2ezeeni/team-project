<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="메일 전송 결과" name="title"/>
</jsp:include>

<div role="alert" class="alert alert-success mt-4" >
	이메일 주소 인증메일이 전송되었습니다. 입력하신 이메일로 들어가셔서 인증해주세요.
</div>


<%@ include file="../template/footer.jsp" %>