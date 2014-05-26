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
<title>Insert title here</title>
</head>
<body>
<input type="text" value="id" id="id">
<input type="password" value="pass" id="pw">
<input type="text" value="name" id="nm">
<input type="text" value="phone" id="phone">
<input type="button" onclick="registDo()" value="회원가입">
<form id="frm" action="" method="post">
</form>
</body>
</html>