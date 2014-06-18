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
<title>모임 정보</title>
</head>

<body>
	<table>
		<tr><td>모임번호:</td><td>${meeting.MEETING_SQ }</td></tr>
		<tr><td>카테고리:</td><td>${meeting.CATE_NM }</td></tr>
		<tr><td>모임이름:</td><td>${meeting.MEETING_NM }</td></tr>
		<tr><td>모임날짜:</td><td>${meeting.MEETING_DT }</td></tr>
	</table>
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
	<form id="frm" action="" method="post"></form>
</body>
</html>