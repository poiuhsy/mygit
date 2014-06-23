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
		<div style="margin-bottom: 20px">
			<img src="<%=request.getContextPath()%>/resources/images/common/e_join_title.png">
		</div>
		<div class="DIV_INPUT_FORM" style="margin-top: 40px">
			<div  align="center">
				<img src="<%=request.getContextPath()%>/resources/images/regist/e_join_notice.png">						
			</div>
		</div>
		<div style="width: 979px;margin-top:35px ">
			<table width="100%">
				<tr>
					<td height="1px" style="border-top: 1px solid #d0d0d0">&nbsp;</td>
				</tr>
			</table>
		</div>
		<div style="width: 979px;margin-top:40px " align="center">
			<img style="cursor: pointer;" onclick="go_main()"
				src="<%=request.getContextPath()%>/resources/images/regist/main_btn.png">
				
		</div>
	</div>
</body>
</html>