<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function fn_authen(f){
		if(f.authenticate.value == null || f.authenticate.value != '${authenNum}'}) {
			alert('인증번호를 확인하세요');
			return;;
		} 
		if(f.authenticate.value == '${authenNum}') {
			opener.window.location = ''; // 부모한테 parameter 값 넘기기
			close();
		}
	}
</script>
<body>

	<h3>이메일 인증</h3>
	<form>
		<input type="text" name="authenticate" maxlength="6" />
		<input type="button" value="확인" onclick="fn_authen(this.form)" />
	</form>

</body>
</html>