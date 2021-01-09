<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="이메일인증" name="title"/>
</jsp:include>

<style>
	h2{
		text-align: center;
		margin-top: 150px;
	}
	.email-auth-box{
		width: 600px;
		height: 400px;
		margin: 30px auto;
	}
	#email-form {
		border-top: 3px solid black;
		border-bottom: 3px solid black;
		padding: 20px 0;
		height: 150px;
	}
	label {
		display: inline-block;
		width: 200px;
		height: 40px;
		line-height: 40px;
		text-align: center;
	}
	#auth-btn{
		display: block;
		margin: 10px auto;
		width: 150px;
		background: black;
		color: white;
		height: 50px;
		border-radius: 5px;
	}
	input[name="m_customer_email"]{
		height:40px;
		width : 300px;
		padding-left: 10px;
	}
</style>
<script>
	$(function(){
		fn_emailAuthentication();
	})
	
	function fn_emailAuthentication(){
		$('#auth-btn').click(function(){
			// pop-up방식으로 할 필요가 없을 것 같다.
			// let popUp = window.open('/ShoppingMall/m_customer/emailPopup.jsp', '이메일 인증', 'width=500,height=600,resizable=false, top=500, left=600');
			
			if($('#email').val() == null || $('#email').val()=='') {
				alert('이메일을 입력해주세요!');
				$('#email').focus();
				return;
			}
			// Todo 입력한 이메일이 DB상에 존재하는지 확인 코드
			
			// controller로 command가 필요한 방식으로 데이터를 넘겨서 command에서 처리
			// location.href='/ShoppingMall/emailAuthentication.customer?m_customer_email=';
			$('#email-form').attr('action','/ShoppingMall/emailAuthentication.customer').submit();
		});
	}
</script>


<h2>이메일 인증</h2>
<div class="email-auth-box">
	<form id="email-form" method="post">
		<label for="email">본인 이메일 입력</label>
		<input type="text" id="email" name="m_customer_email" placeholder="example12@shoppingmall.com"/>
		
		<input type="button" id="auth-btn" value="이메일 인증하기"/>
	</form>
</div>

<%@ include file="../template/footer.jsp" %>