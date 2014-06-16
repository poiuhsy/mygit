<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/style/user_regist.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/user.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/login.js"></script>
<script type="text/javascript">
	isLogin(0);
</script>
<title>회원가입</title>
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