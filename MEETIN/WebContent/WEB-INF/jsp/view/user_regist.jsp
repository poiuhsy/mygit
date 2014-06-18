<%@page import="com.meetin.data.User"%>
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
	href="<%=request.getContextPath()%>/resources/style/selectbox.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/style/user_regist.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/user.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/selectbox.js"></script>
<title>회원가입</title>
<style type="text/css">
	.INPUT_SETTING{
		height: 40px;
		border:none;
		border: 1px solid #d0d0d0
	}
	select{

	}
</style>
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
		<div class="DIV_INPUT_FORM" >
			<div  align="center" >
				<table width="979px">
					<tr>
						<td width="460px" align="left" valign="top">
							<table class="TB_ACCESS_TERM" border="0" cellpadding="2">
								<tr>
									<td align="left"><font
										style="font-size: 14px; color: #53515c; font-weight: bold;">밋인 이용약관 동의
										<font style="font-size: 13px; color: #ff4e50;">(필수)</font></font></td>
								</tr>
								<tr>
									<td align="center" style="padding-left: 5px"><textarea class="TA_ACCESS_TERM"
											disabled="disabled"></textarea></td>
								</tr>
								<tr>
									<td align="right">
										<input type="checkbox" name="meetin_term" id="meetin_term">
										<font style="font-size: 13px; color: #53515c;">밋인 이용약관에 동의합니다.</font>										
									</td>
								</tr>
							</table>
							<table class="TB_ACCESS_TERM" style="margin-top: 10px">
								<tr>
									<td align="left"><font
										style="font-size: 14px; color: #53515c; font-weight: bold;">개인정보 수집 및 이용에 대한 안내
										<font style="font-size: 13px; color: #ff4e50;">(필수)</font></font></td>
								</tr>
								<tr>
									<td align="center" style="padding-left: 5px"><textarea class="TA_ACCESS_TERM"
											disabled="disabled"></textarea></td>
								</tr>
								<tr>
									<td align="right" >
										<input type="checkbox" name="private_term" id="private_term">										
										<font style="font-size: 13px; color: #53515c;">개인정보 수집 및 이용에 동의합니다.</font>
									</td>									
								</tr>
							</table>
						</td>
						<td width="69px">&nbsp;</td>
						<td width="460px" align="left" valign="top">
							<table style="text-align: left" border="0" width="460px">
								<tr>
									<th style="text-align: left">
										<font style="font-size: 14px; color: #53515c; font-weight: bold;">
											이름
										</font>
									</th>
								</tr>
								<tr>
									<td style="padding-left: 5px">
										<input class="INPUT_SETTING" type="text" id="name" style="width: 98%"/>
									</td>
								</tr>
								<tr><td height="8"></td></tr>
								<tr>
									<th align="left"><font
										style="font-size: 14px; color: #53515c; font-weight: bold;">이메일</font></th>
								</tr>
								<tr>
									<td height="80">
										<table height="80">
											<tr>
												<td>
													<input class="INPUT_SETTING" type="text" style="width: 160px" id="USER_EMAIL_FIRST"/>
												</td>
												<td>@</td>
												<td><input class="INPUT_SETTING"type="text"
													style="width: 120px;padding-left: 10px" id="USER_EMAIL_LAST"/>
												</td>
												<td>										
													<div class="selectbox" value="130">    
														<button type="button" 
														style="background-image: url('<%=request.getContextPath()%>/resources/images/common/box_btn.png') ">
														<span class="SELECT_TXT" >직접입력</span>
														</button>   
														<ul id="email_select">       
															<li value="직접입력"><span style="cursor: pointer;">직접입력</span></li>
														    <li value="naver.com"><span style="cursor: pointer;">naver.com</span></li>        
														    <li value="hanmail.net"><span style="cursor: pointer;">hanmail.net</span></li>          
														 </ul>
													 </div>
												</td>
											</tr>
											<tr id="CHECK_EMAIL"  >
												<td colspan="4">
													<table>
														<tr>
															<td><img src="<%=request.getContextPath()%>/resources/images/regist/icon_speaker.png"/></td>
															<td><font color="red" id="EHCK_EMAIL_TXT" style="font-size: 13px">중복된 이메일</font> </td>
														</tr>
													</table>
												</td>
											</tr>
										</table>						
									</td>
								</tr>
								<tr><td height="8"></td></tr>
								<tr>
									<th align="left"><font
										style="font-size: 14px; color: #53515c; font-weight: bold;">비밀번호</font></th>
								</tr>
								<tr>
									<td style="padding-left: 5px">
										<input class="INPUT_SETTING" type="password" id="pwd" style="width: 98%" onkeyup="input_pwd()"/>
										<span id="pwd_txt" style="position: absolute;font-size: 12px;color: red;display: none"></span>
									</td>
								</tr>
								<tr>
									<td style="padding-left: 5px">
										<input class="INPUT_SETTING" type="password" id="check_pwd" style="width: 98%" onkeyup="input_check_pwd()"/>
										<span id="check_pwd_txt" style="position: absolute;font-size: 12px;color: red;display: none"></span>
									</td>
								</tr>
								<tr><td height="8"></td></tr>
								<tr>
									<th align="left"><font
										style="font-size: 14px; color: #53515c; font-weight: bold;">성별/생년월일</font></th>
								</tr>
								<tr>
									<td>
										<table width="100%">
											<tr>
												<td>
													<table cellspacing="0" cellpadding="0">
														<tr>
															<td>													
																<img id="man" style="cursor: pointer;" name="gender" onmouseover="select_gender(1)"
																src="<%=request.getContextPath()%>/resources/images/regist/male_1.png" alt="1">														
															</td>
															<td>
																<img id="woman" style="cursor: pointer;" name="gender" onmouseover="select_gender(2)"
																src="<%=request.getContextPath()%>/resources/images/regist/female_0.png" alt="2">
															</td>
														</tr>
													</table>
												</td>
												<td width="12px">&nbsp;</td>
												<td align="right">
													<%!
														private String fillZero(int iValue, int len) {
															String sValue = "00" + iValue; 
															return sValue.substring(sValue.length() - len); 
														}
													%>
													<table>
														<tr>
															<td>
																<div class="selectbox" value="100">    
																	<button type="button" 
																	style="background-image: url('<%=request.getContextPath()%>/resources/images/common/box_btn.png') ">
																	<span class="SELECT_TXT" id="year">년도</span>
																	</button>  
																	<ul>      																   		 
																	    <%
														                	SimpleDateFormat YYYY = new SimpleDateFormat("yyyy");
														                	int Year = Integer.parseInt(YYYY.format(new Date()));
														                	for (int i=1952;i<Year+1;i++) {
														                	%>
														                		<li value="<%=i%>"><span style="cursor: pointer;"><%=i%>년</span></li> 
														                	<%
														                	}
											                			%>          
																	 </ul>
																 </div>
															</td>
															<td>
																<div class="selectbox" value="85">    
																	<button type="button" 
																	style="background-image: url('<%=request.getContextPath()%>/resources/images/common/box_btn.png') ">
																	<span class="SELECT_TXT" id="month">월</span>
																	</button>   
																	   <ul>       
																	     	<%
														                		for (int i=1;i<13;i++) {
														                		%>
														                			<li value="<%=fillZero(i, 2)%>"><span style="cursor: pointer;"><%=fillZero(i, 2)%>월</span></li> 
														                		<%
														                		}
											                				%>          
																	   </ul>
																 </div>
															</td>
															<td>
																<div class="selectbox" value="85">    
																	<button type="button" 
																	style="background-image: url('<%=request.getContextPath()%>/resources/images/common/box_btn.png') ">
																	<span class="SELECT_TXT" id="day">일</span>
																	</button>   
																	   <ul>       
																	     	<%
														                		for (int i=1;i<32;i++) {
														                		%>
														                			<li value="<%=fillZero(i, 2)%>"><span style="cursor: pointer;"><%=fillZero(i, 2)%>일</span></li> 
														                		<%
														                		}
											                				%>          
																	   </ul>
																 </div>
															</td>
														</tr>
													</table>
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
		<div style="width: 979px;margin-top:40px ">
			<table width="100%">
				<tr>
					<td height="1px" style="border-top: 1px solid #d0d0d0">&nbsp;</td>
				</tr>
			</table>
		</div>
		<div  style="width: 979px;margin-top:80px" align="center">
			<img style="cursor: pointer;" onclick="next_regist_step2()"
			src="<%=request.getContextPath()%>/resources/images/regist/next_btn.png"/>
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
		
		//버젼 체크
		var rv = "";
		if (navigator.appName == 'Microsoft Internet Explorer') {
			var ua = navigator.userAgent;
			var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
			if (re.exec(ua) != null)
				rv = parseFloat(RegExp.$1);
		}
		if (rv <= 8) {
			$('input[type=text][type=password]').css('line-height','30px');
		}
		//
		
	});
	function input_pwd(){
		if($('#pwd').val()!=""){
			$('#pwd_txt').show();
			$('#pwd_txt').html("진행");
		}else{
			$('#pwd_txt').hide();
		}		
		$('#check_pwd_txt').hide();	
		$('#check_pwd').val("");
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
				var left = $('#check_pwd').position().left+$('#check_pwd').width()-35;
				var top = $('#check_pwd').position().top+($('#check_pwd').height()/2-3);
				$('#check_pwd_txt').css({left: left,top:top});
				$('#check_pwd_txt').html("불일치");
			}
		}else{
			$('#check_pwd_txt').hide();
		}	
	}
	$('img[name=gender]').click(function(){
		var idx = $(this).attr('alt');
		if(idx==1){
			$('#man').attr('src','<%=request.getContextPath()%>/resources/images/regist/male_1.png');
			$('#woman').attr('src','<%=request.getContextPath()%>/resources/images/regist/female_0.png');
		}else{
			$('#man').attr('src','<%=request.getContextPath()%>/resources/images/regist/male_0.png');
			$('#woman').attr('src','<%=request.getContextPath()%>/resources/images/regist/female_1.png');
		}
	});
	$("#email_select li").click(function(){
		if($(this).text()=="직접입력"){
			$('#USER_EMAIL_LAST').val("");
			$('#USER_EMAIL_LAST').attr('readonly',false);
			$('#USER_EMAIL_LAST').focus();
		}else{
			$('#USER_EMAIL_LAST').val($(this).text());
			$('#USER_EMAIL_LAST').attr('readonly',true);
		}
		
	});	
	$('#USER_EMAIL_FIRST').change(function(){
		
	});
	$('#USER_EMAIL_LAST').change(function(){
		
	});
</script>
</html>