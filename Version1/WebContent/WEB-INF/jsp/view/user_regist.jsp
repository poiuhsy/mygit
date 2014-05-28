<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<div class="DIV_ACCESS_TERM" align="center">
				<table class="TB_ACCESS_TERM">
					<tr>
						<th align="left"><font
							style="font-size: 15px; color: #a0a0a0; font-weight: bold;">밋인
								이용약관 동의(필수)</font></th>
					</tr>
					<tr>
						<td align="center"><textarea class="TA_ACCESS_TERM"
								disabled="disabled"></textarea></td>
					</tr>
					<tr>
						<th align="right"><input type="checkbox" name="meetin_term">밋인
							이용약관에 동의합니다.</th>
					</tr>
				</table>
				<table class="TB_ACCESS_TERM">
					<tr>
						<th align="left"><font
							style="font-size: 15px; color: #a0a0a0; font-weight: bold;">개인정보
								수집 및 이용에 대한 안내(필수)</font></th>
					</tr>
					<tr>
						<td align="center"><textarea class="TA_ACCESS_TERM"
								disabled="disabled"></textarea></td>
					</tr>
					<tr>
						<th align="right"><input type="checkbox" name="private_term">개인정보
							수집 및 이용에 동의합니다.</th>
					</tr>
				</table>
			</div>
			<div class="DIV_USER_INFO"></div>
		</div>
	</div>

	<input type="text" value="id" id="id">
	<input type="password" value="pass" id="pw">
	<input type="text" value="name" id="nm">
	<input type="text" value="phone" id="phone">
	<input type="button" onclick="registDo()" value="회원가입">
	<form id="frm" action="" method="post"></form>
</body>
</html>