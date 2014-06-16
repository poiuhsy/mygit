<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/user.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div>
		<p>회원번호 : ${user.user_sq}</p>
		<input type="text" id="id" value="${user.user_id}" disabled="disabled"><br> <input
			type="text" id="nm" value="${user.user_nm }"><br> <input
			type="text" id="phone" value="${user.user_phone }"><br>
		<input type="button" value="변경" onclick="modifyDo('${user.user_id}')">
	</div>
<form id="frm" action="" method="post">
</form>
</body>
</html>