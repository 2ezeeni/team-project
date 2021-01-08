<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c" %>
<jsp:include page="../template/header.jsp" >
	<jsp:param value="회원가입" name="title" />
</jsp:include>

<div class="signup-wrap">
	<form method="post">
		<table border="1">
			<caption>회원가입</caption>
			<tbody>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="m_customer_id" />
						<span id="idCheck" ></span> 
						<span class="required-message" ></span>
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="m_customer_pw" />
						<span id="pwCheck"></span>
						<span class="required-message" ></span>
					</td>
				</tr>
				<tr>
					<td>비밀번호확인</td>
					<td>
						<input type="password" name="m_customer_pw2" />
						<span id="pwCheck2"></span>
						<span class="required-message" ></span>
					</td>
				</tr>
				<tr>
					<td>성명</td>
					<td>
						<input type="text" name="m_customer_name" />
						<span class="required-message" ></span>
					</td>
				</tr>
				<tr>
					<td>휴대폰 번호</td>
					<td>
						<input type="text" name="m_customer_phone" />
						<span class="required-message" ></span>
					</td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td>
						<input type="text" name="birth-year" maxlenth="4" placeholder="년 예)1992" />
						<select name="birth-month">
							<c:forEach var="month" begin="1" end="12" step="1" >
								<option value="${month}">${month}</option>
							</c:forEach>
						</select>월
						<input type="text" name="birth-day" maxlength="2" placeholder="일"/>
						<span class="required-message" ></span>
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
						<c:if test="${m_customer_email eq null}">
							<input type="text" name="m_customer_email" />
						</c:if>
						<c:if test="${m_customer_email ne null}">
							<input type="text" name="m_customer_email" value="${m_customer_email}" readonly />
						</c:if>
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<!-- 주소찾기 API 추가 -->
					</td>
				</tr>
			</tbody>
		</table>
		<a href="">약관보기</a>
		<div class="service-terms">
			<div>
				<input type="checkbox" name="m_customer_agree" value="y"/>
			</div>
			<div>
				약관을 읽었으며 해당 사항에 동의합니다.
			</div>
		</div>
		<input type="button" value="다음에 가입" />
		<input type="button" value="가입하기" id="signup-btn" />
	</form>
</div>


<%@ include file="../template/footer.jsp" %>