<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.inputArea {
		margin: 10px;
	}
	
	select {
		width: 100px;
	}
	
	label {
		display: inline-block;
		width: 70px;
		padding: 5px;
	}
	input {
		width: 150px;
	}
	textarea {
		width: 400px;
		height: 180px;
	}
	
	.select_img image{
		margin: 20px 0;
	}
	
</style>
<script type="text/javascript">

	$('#image').change(function(){
		if (this.files && this.files[0]) {
			var reader = new FileReader;
			reader.onload = function(data) {
				$(".select_img img").attr("src",data.target.result).width(500);
			}
			reader(this.files[0]);
		}
	});
	
</script>
</head>
<body>

	[sale]~12.30
	<h3>상품 패키지 이름</h3>
	<h6>상품 패키지 구성</h6>
	<div class = "inputArea">
		<label for = "Images" >이미지</label>
		<input type = "file" id = "image" name = "file" /><br/>
		상품 단품이름 <br/>
		<div class = "select_img"><img src = "" /></div>
		상품 단품이름 <br/>
		<div class = "select_img"><img src = "" /></div>
		상품 단품이름 <br/>
		<div class = "select_img"><img src = "" /></div>
	</div>
	
	상품 패키지 구성
	각각 가격, 총가격, 할인율
	
	<div class = "inputArea">
		<label for = "Images" >이미지</label>
		<input type = "file" id = "image" name = "file" /><br/>
		상품 단품이름 <br/>
		<div class = "select_img"><img src = "" /></div>
		상품 단품이름 <br/>
		<div class = "select_img"><img src = "" /></div>
		상품 단품이름 <br/>
		<div class = "select_img"><img src = "" /></div>
	</div>
	
	<div class = "inputArea">
		<label for = "Images" >이미지</label>
		<input type = "file" id = "image" name = "file" /><br/>
		상품 단품이름 <br/>
		<div class = "select_img"><img src = "" /></div>
		상품 단품이름 <br/>
		<div class = "select_img"><img src = "" /></div>
		상품 단품이름 <br/>
		<div class = "select_img"><img src = "" /></div>
	</div>
	
</body>
</html>