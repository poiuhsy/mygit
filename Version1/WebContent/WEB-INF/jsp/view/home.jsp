<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/style/div.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/user.js"></script>
<title>메인</title> 
</head>
<body>
<!--img prefix  http://poiuhsy.cdn1.cafe24.com/ -->
<div class="DIV_LOGIN_SECTION" align="center">
	<p>로그인 정보 입력</p>
	<table>
		<tr><th>아이디</th><td><input type="text" id="user_id"></td></tr>
		<tr><th>비밀번호</th><td><input type="password" id="user_pw"></td></tr>
		<tr><td colspan="2" align="center"><input type="button" value="로그인" onclick="login()"><input type="button" value="회원가입" onclick="registGo()"></td></tr>
	</table>
</div>
<form id="frm" action="" method="post">
</form>
</body>
</html>