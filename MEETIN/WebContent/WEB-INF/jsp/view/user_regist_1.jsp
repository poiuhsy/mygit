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
				<table width="900px" border="0">
					<tr>
						<td>
							<table>
								<tr>
									<th align="left">프로필 사진 등록(선택)</th>
								</tr>
								<tr>
									<td>
										<table>
											<tr>
												<td>
													<img src="" width="120px" height="120px"/>
												</td>
												<td valign="bottom">												
													이쁜 사진 올려주세요<br>
													10MB 까지<br>
													<input type="button" value="등록">
													<input type="button" value="삭제">
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr><td height="10px">&nbsp;</td></tr>
								<tr>
									<th align="left">기본알 선택(선택)</th>
								</tr>
								<tr>
									<td>
										<input type="radio" name="egg" value="001"/>
										<input type="radio" name="egg" value="002"/>
										<input type="radio" name="egg" value="003"/>
										<input type="radio" name="egg" value="004"/>
										<input type="radio" name="egg" value="005"/>
									</td>
								</tr>
							</table>
						</td>
						<td>
							<table>
								<tr>
									<th align="left">기본알 테마 미리보기</th>
								</tr>
								<tr>
									<td align="center" colspan="2">
										${name}님의 프로필
									</td>
								</tr>
								<tr>
									<td></td>
									<td><img src="" width="125px" height="125px"> </td>
									<td><img src="" width="125px" height="125px"> </td>
								</tr>
							</table>
							
						</td>
					</tr>
				</table>						
			</div>
		</div>
		<div>
			<input type="button" value="건너뛰기" onclick="skip_page()"/>
			<input type="button" value="다음단계" onclick="next_regist_step3()"/>
		</div>
	</div>
	<form id="frm" action="" method="post">
		
	</form>
</body>
<script type="text/javascript">
	
</script>
</html>