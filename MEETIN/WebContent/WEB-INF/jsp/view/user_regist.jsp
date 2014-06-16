<%@page import="com.meetin.data.User"%>
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
						<td width="410px" align="left" valign="top">
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
									<th align="right"><input type="checkbox" name="meetin_term" id="meetin_term">밋인
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
									<th align="right"><input type="checkbox" name="private_term" id="private_term">개인정보
										수집 및 이용에 동의합니다.</th>
								</tr>
							</table>
						</td>
						<td width="80px">&nbsp;</td>
						<td width="410px" align="left" valign="top">
							<table style="text-align: left" border="0">
								<tr>
									<th style="text-align: left">이름</th>
								</tr>
								<tr>
									<td style="padding-left: 5px">
										<input type="text" id="name" style="width: 98%"/>
									</td>
								</tr>
								<tr>
									<th style="text-align: left">이메일</th>
								</tr>
								<tr>
									<td>
										<table>
											<tr>
												<td>
													<input type="text" style="width: 120px" id="USER_EMAIL_FIRST"/>
												</td>
												<td>@</td>
												<td><input type="text" style="width: 120px" id="USER_EMAIL_LAST"/></td>
												<td>
													<select>
														<option value="">선 택</option>
														<option value="naver.com">naver.com</option>
														<option value="hanmail.net">hanmail.net</option>
													</select>
												</td>
											</tr>
										</table>						
									</td>
								</tr>
								<tr>
									<th style="text-align: left">비밀번호</th>
								</tr>
								<tr>
									<td style="padding-left: 5px">
										<input type="password" id="pwd" style="width: 98%" onkeyup="input_pwd()"/>
										<span id="pwd_txt" style="position: absolute;font-size: 11px;color: red;display: none"></span>
									</td>
								</tr>
								<tr>
									<td style="padding-left: 5px">
										<input type="password" id="check_pwd" style="width: 98%" onkeyup="input_check_pwd()"/>
										<span id="check_pwd_txt" style="position: absolute;font-size: 11px;color: red;display: none"></span>
									</td>
								</tr>
								<tr>
									<th style="text-align: left">생년월일</th>
								</tr>
								<tr>
									<td>
										<table width="100%">
											<tr>
												<td>
													<input type="radio" name="gender" value="1" id="man">남자 &nbsp;
													<input type="radio" name="gender" value="2" id="woman">여자
												</td>
												<td width="12px">&nbsp;</td>
												<td align="right">
													<%!
														private String fillZero(int iValue, int len) {
															String sValue = "00" + iValue; 
															return sValue.substring(sValue.length() - len); 
														}
													%>
													<select id="year">
														<option value="">년도</option>
														<%
									                		SimpleDateFormat YYYY = new SimpleDateFormat("yyyy");
									                		int Year = Integer.parseInt(YYYY.format(new Date()));
									                		for (int i=1952;i<Year+1;i++) {
									                		%>
									                			<option value="<%=i%>"><%=i%>년</option>
									                		<%
									                		}
								                		%>
													</select>
													<select id="month">
														<option value="">월</option>
														<%for (int i=1;i<13;i++) {%>
									                		<option value="<%=fillZero(i, 2)%>"><%=fillZero(i, 2)%>월</option>
									                		
									                	<%}%>
													</select>
													<select id="day">
														<option value="">일</option>
														<%for (int i=1;i<32;i++) {%>
									                		<option value="<%=fillZero(i, 2)%>"><%=fillZero(i, 2)%>일</option>
									                		
									                	<%}%>
													</select>
												</td>
											</tr>
										</table>
									</td>
								</tr>
									
							</table>
						</td>
					</tr>
				</table>						
			</div>
		</div>
		<div class="DIV_USER_INFO">
			<input type="button" value="다음단계" onclick="next_regist_step2()"/>
		</div>
	</div>

	<form id="frm" action="" method="post">
		
	</form>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		var left = $('#pwd').position().left+$('#pwd').width()-25;
		var top = $('#pwd').position().top+($('#pwd').height()/2-3);
		$('#pwd_txt').css({left: left,top:top});				
	});
	function input_pwd(){
		if($('#pwd').val()!=""){
			$('#pwd_txt').show();
			$('#pwd_txt').html("진행");
		}else{
			$('#pwd_txt').hide();
		}		
	}
	function input_check_pwd(){
		if($('#check_pwd').val()!=""){
			$('#check_pwd_txt').show();		
			if($('#check_pwd').val()==$('#pwd').val()){
				var left = $('#check_pwd').position().left+$('#check_pwd').width()-25;
				var top = $('#check_pwd').position().top+($('#check_pwd').height()/2-3);
				$('#check_pwd_txt').css({left: left,top:top});
				
				$('#check_pwd_txt').html("일치");
			}else{
				var left = $('#check_pwd').position().left+$('#check_pwd').width()-30;
				var top = $('#check_pwd').position().top+($('#check_pwd').height()/2-3);
				$('#check_pwd_txt').css({left: left,top:top});
				$('#check_pwd_txt').html("불일치");
			}
		}else{
			$('#check_pwd_txt').hide();
		}
		
	}
</script>
</html>