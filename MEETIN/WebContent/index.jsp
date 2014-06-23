<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<%
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-cache");
	response.addHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	
%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/style/home.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/rsa/jsbn.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/rsa/rsa.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/rsa/prng4.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/rsa/rng.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/user.js"></script>
<title>메인</title>
</head>
<body>
	<!--img prefix  http://poiuhsy.cdn1.cafe24.com/ -->
	<div>
		<!-- 로그인 안한 상태 -->
		<c:if test="${sessionScope.login == null}">
			<div class="DIV_LOGIN_SECTION" align="center">				
				<p>로그인 정보 입력</p>
				<table>
					<tr>
						<th>아이디</th>
						<td><input type="text" id="user_id"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" id="user_pw"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="button"
							value="로그인" onclick="validateEncryptedForm()"><input
							type="button" value="회원가입" onclick="registGo()"></td>
					</tr>
				</table>
			</div>
		</c:if>
		<!-- 로그인 되어 있는 상태 -->
		<c:if test="${sessionScope.login != null}">
			<font style="font-size: 15px; color: blue;">${sessionScope.login.USER_NM}</font>
			<font style="font-size: 12px;">님 환영합니다.</font>
			<input type="button" value="로그아웃" onclick="logout()">
			<input type="button" value="회원정보 변경"
				onclick="modifyGo('${sessionScope.login.USER_ID}')">
			<input type="button" value="회원 탈퇴"
				onclick="withdrawalGo('${sessionScope.login.USER_ID}')">  
		</c:if>
		<div style="margin-top: 50px;">
			<table width="500px">
				<tr>
					<th>모임번호</th>
					<th>카테고리</th>
					<th>모임이름</th>
					<th>모임날짜</th>
				</tr>
				<c:forEach var="meeting" items="${meetings}">
					<tr onclick="go_detail('${meeting.MEETING_SQ}')"
						style="cursor: pointer;">
						<td align="center">${meeting.MEETING_SQ }</td>
						<td align="center">${meeting.CATE_NM}</td>
						<td align="center">${meeting.MEETING_NM }</td>
						<td align="center">${meeting.MEETING_DT }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<input type="button" value="홈페이지 이용약관" onclick="get_term('1')">
			<input type="button" value="개인정보 취급방침" onclick="get_term('2')">
		</div>
	</div>
	<form id="frm" action="" method="post">
		
	</form>
</body>
</html>