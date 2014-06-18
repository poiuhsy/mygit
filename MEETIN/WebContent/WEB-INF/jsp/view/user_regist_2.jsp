<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	href="<%=request.getContextPath()%>/resources/style/user_regist.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/user.js"></script>
<title>회원가입</title>
<c:if test="${sessionScope.login != null}">
		<script type="text/javascript">
			alert("로그인 중에는 이용할 수 업읍니다.");
			location.replace("/");
		</script>
</c:if>
</head>
<body>

	<div class="DIV_WRAP">
		<div class="DIV_LOGO">
			<font style="font-size: 30px; color: #ff6725; font-weight: bolder;">밋인
				BETA</font>
		</div>
		<div class="DIV_TITLE">
			<font style="font-size: 20px; color: #a0a0a0; font-weight: bolder;">이메일로
				가입하기</font>
		</div>
		<div class="DIV_INPUT_FORM">
			<div  align="center">
				이메일을 확인해주세요~!!						
			</div>
		</div>
		<div>
			<input type="button" value="메인으로" onclick="go_main()"/>
		</div>
	</div>
</body>
<script type="text/javascript">
	
</script>
</html>