<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 

  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<input type = "button" value = "전체보기" />
	<input type = "button" value = "오늘의 신상 " /><br/><br/>
	
	총 00 개의 상품이 있습니다. <br/><br/><br/>
	
	<input type = "image" a href = "" /><br/>
	
	상품이름 <br/>
	가격 <br/>
	주목 폭주<br/><br/>
	
	<input type = "image" a href = "" /><br/>
	
	상품이름 <br/>
	가격 <br/>
	주목 폭주<br/><br/>
	
	<input type = "image" a href = "" /><br/>
	
	상품이름 <br/>
	가격 <br/>
	주목 폭주 <br/><br/>
	<br/><br/>
	
	
	<tbody>
		<tfoot class="paging">
		<tr>
			<td colspan="5">
				<c:if test="${pageVo.beginPage <= pageVo.pagePerBlock}">
					이전&nbsp;
				</c:if>
				<c:if test="${pageVo.beginPage > pageVo.pagePerBlock}">
					<a href="?page=${pageVo.beginPage - 1}">이전&nbsp;</a>
				</c:if>
				<c:forEach var="page" begin="${pageVo.beginPage}" end="${pageVo.endPage}" step="1">
					<c:if test="${page eq pageVo.page}">
						<span class="disable">${page}&nbsp;</span>
					</c:if>
					<c:if test="${page ne pageVo.page}">
						<a href="?page=${page}">${page}&nbsp;</a>
					</c:if>
				</c:forEach>
				<c:if test="${pageVo.endPage >= pageVo.totalPage}">
					다음
				</c:if>
				<c:if test="${pageVo.endPage < pageVo.totalPage}">
					<a href=?page=${pageVo.endPage + 1}">다음</a>
				</c:if>
			</td>
		</tr>
	</tfoot>
	</tbody>
	
	
	

 </body>
</html>