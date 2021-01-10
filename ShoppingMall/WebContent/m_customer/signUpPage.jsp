<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c" %>
<jsp:include page="../template/header.jsp" >
	<jsp:param value="회원가입" name="title" />
</jsp:include>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="signup-wrap">
	<form method="post">
		<table border="1">
			<thead>
				<tr>
					<th colspan="2">회원가입</th>
				</tr>
			</thead>
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
						<c:if test="${param.m_customer_email eq null}">
							<input type="text" name="m_customer_email" />
						</c:if>
						<c:if test="${param.m_customer_email ne null}">
							<input type="text" name="m_customer_email" value="${param.m_customer_email}" readonly />
						</c:if>
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<!-- 주소찾기 API 추가 -->
						<input type="text" id="sample4_postcode" placeholder="우편번호">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
						<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
						<span id="guide" style="color:#999;display:none"></span>
						<input type="text" id="sample4_detailAddress" placeholder="상세주소">
						<input type="text" id="sample4_extraAddress" placeholder="참고항목">
						<script>
						    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
						    function sample4_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {
						                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						
						                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						                var roadAddr = data.roadAddress; // 도로명 주소 변수
						                var extraRoadAddr = ''; // 참고 항목 변수
						
						                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
						                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
						                    extraRoadAddr += data.bname;
						                }
						                // 건물명이 있고, 공동주택일 경우 추가한다.
						                if(data.buildingName !== '' && data.apartment === 'Y'){
						                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                }
						                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						                if(extraRoadAddr !== ''){
						                    extraRoadAddr = ' (' + extraRoadAddr + ')';
						                }
						
						                // 우편번호와 주소 정보를 해당 필드에 넣는다.
						                document.getElementById('sample4_postcode').value = data.zonecode;
						                document.getElementById("sample4_roadAddress").value = roadAddr;
						                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
						                
						                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						                if(roadAddr !== ''){
						                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						                } else {
						                    document.getElementById("sample4_extraAddress").value = '';
						                }
						
						                var guideTextBox = document.getElementById("guide");
						                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						                if(data.autoRoadAddress) {
						                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
						                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
						                    guideTextBox.style.display = 'block';
						
						                } else if(data.autoJibunAddress) {
						                    var expJibunAddr = data.autoJibunAddress;
						                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
						                    guideTextBox.style.display = 'block';
						                } else {
						                    guideTextBox.innerHTML = '';
						                    guideTextBox.style.display = 'none';
						                }
						            }
						        }).open();
						    }
						</script>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="container">
		<button type="button" class="btn" data-toggle="collapse" data-target="#agreement"  >약관보기</button>
		<div class="collapse" id="agreement">
			Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</div>
		</div>
		<div class="service-terms">
			<div>
				<label>
					<input type="checkbox" name="m_customer_agree" value="y"/>
					약관을 읽었으며 해당 사항에 동의합니다.
				</label>
			</div>
		</div>
		<button type="button" class="btn btn-secondary">다음에 가입</button>
		<button type="button" class="btn btn-primary" id="signup-btn" >가입하기</button>
	</form>
</div>


<%@ include file="../template/footer.jsp" %>