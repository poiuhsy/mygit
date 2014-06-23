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
		border: 1px solid #d0d0d0;
		padding-left: 10px
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
			<div>
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
									<td align="center" style="padding-left: 5px"><div id="tou" class="DIV_ACCESS_TERM"></div></td>
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
									<td align="center" style="padding-left: 5px"><div id="pp" class="DIV_ACCESS_TERM"></div></td>
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
									<td >
										<table>
											<tr >
												<td>
													<input class="INPUT_SETTING" type="text" style="width: 160px" id="USER_EMAIL_FIRST"/>
												</td>
												<td>@</td>
												<td><input class="INPUT_SETTING"type="text"
													style="width: 120px" id="USER_EMAIL_LAST"/>
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
											<tr>
												<td colspan="4" id="CHECK_EMAIL"  style="display: none;">
													<table>
														<tr>
															<td><img src="<%=request.getContextPath()%>/resources/images/regist/icon_speaker.png"/></td>
															<td>
																<span id="CHECK_EMAIL_TXT" style="font-size: 13px;color:red"></span> 
															
															</td>
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
										<input class="INPUT_SETTING" type="password" id="pwd" style="width: 98%;" onkeyup="input_pwd()"/>
										<span id="pwd_txt" 
										style="z-index:9;position: absolute;font-size: 12px;color: red;display: none"></span>
									</td>
								</tr>
								<tr>
									<td height="2px"></td>
								</tr>
								<tr>
									<td style="padding-left: 5px">
										<input class="INPUT_SETTING" type="password" id="check_pwd" style="width: 98%;" onkeyup="input_check_pwd()"/>
										<span id="check_pwd_txt" 
										style="z-index:9;position: absolute ;font-size: 12px;color: red;display: none"></span>
									</td>
								</tr>
								<tr>
									<td colspan="4" id="CHECK_EMAIL"  style="display: none;">
										<table>
											<tr>
												<td><img src="<%=request.getContextPath()%>/resources/images/regist/icon_speaker.png"/></td>
												<td><font color="red" id="CHECK_PASSWORD_TXT" style="font-size: 13px"></font> </td>
											</tr>
										</table>
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
	var email_check = false;
	var pass_check = false;
	var compare_pass = false;
	var select_gender = 1;
	$(document).ready(function(){
		// 이용약관 불러오기
		$.ajax({
			url : "/resources/terms/terms_of_meetin.jsp",
			type : 'post',
			dataType : "text",
			async : true,
			data : {
				"width" : $('#tou').width()-27
			},
			success : function(result) {
				$('#tou').html(result);
			}
		});
		$.ajax({
			url : "/resources/terms/privacy_policy.jsp",
			type : 'post',
			dataType : "text",
			async : true,
			data : {
				"width" : $('#pp').width()-27
			},
			success : function(result) {
				$('#pp').html(result);
			}
		});
		
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
		
		(function($) {
		    $.each(['show','hide'], function(i, val) {		    	
		        var _org = $.fn[val];	     
		        $.fn[val] = function() {        	
		            this.trigger(val);
		            _org.apply(this, arguments);
		            if($(this).attr('id')=="CHECK_EMAIL"){
		            	if($('#pwd').val()!=""){
		        			var top = $('#pwd').position().top+($('#pwd').height()/2)-4;
		        			$('#pwd_txt').css({top:top});
		            	}
		            	
		            	if($('#check_pwd').val()!=""){
		            		var top = $('#check_pwd').position().top+($('#check_pwd').height()/2)-4;
		            		$('#check_pwd_txt').css({top:top});
		            	}
		            	
		            }
		        };
		    });
		})(jQuery);
		
	});
	function input_pwd(){
		if($('#pwd').val()!=""){
			var left = "";
			var top = $('#pwd').position().top+($('#pwd').height()/2)-4;
			if($('#pwd').val().match(/^.*(?=.{8,24})(?=.*[0-9])(?=.*[a-zA-Z]).*$/)!=null){
				pass_check = true;
				left = $('#pwd').position().left+$('#pwd').width()-28;	
				$('#pwd_txt').html("진행");
			}else{
				left = $('#pwd').position().left+$('#pwd').width()-55;	
				pass_check = false;
				$('#pwd_txt').html("사용불가");
			}
			$('#pwd_txt').css({left: left,top:top});		
			$('#pwd_txt').show();
			
		}else{
			$('#check_pwd_txt').hide();	
			$('#check_pwd').val("");
			$('#pwd_txt').hide();			
		}				
	}
	function input_check_pwd(){
		if($('#pwd').val()!=""){
			if(pass_check){
				if($('#check_pwd').val()!=""){
					var left = "";
					var top = $('#check_pwd').position().top+($('#check_pwd').height()/2)-4;
					$('#check_pwd_txt').show();		
					if($('#check_pwd').val()==$('#pwd').val()){
						left = $('#check_pwd').position().left+$('#check_pwd').width()-28;			
						$('#check_pwd_txt').html("일치");
						compare_pass = true;
					}else{
						compare_pass = false;
						left = $('#check_pwd').position().left+$('#check_pwd').width()-38;	
						$('#check_pwd_txt').html("불일치");
					}
					$('#check_pwd_txt').css({left: left,top:top});
				}else{
					compare_pass = false;
					$('#check_pwd_txt').hide();
				}
			}else{
				alert("입력하신 비밀번호가 조건에 맞지 않습니다.");
				$('#check_pwd').val("");
				$('#pwd').focus();
			}		
		}else{
			alert("비밀번호를 먼저 입력해 주십시오");
			$('#check_pwd').val("");
			$('#pwd').focus();
		}
							
	}
	$('img[name=gender]').click(function(){
		var idx = $(this).attr('alt');
		if(idx==1){
			select_gender = 1;
			$('#man').attr('src','<%=request.getContextPath()%>/resources/images/regist/male_1.png');
			$('#woman').attr('src','<%=request.getContextPath()%>/resources/images/regist/female_0.png');
		}else{
			select_gender = 2;
			$('#man').attr('src','<%=request.getContextPath()%>/resources/images/regist/male_0.png');
			$('#woman').attr('src','<%=request.getContextPath()%>/resources/images/regist/female_1.png');
		}
	});
	$("#email_select li").click(function(){
		if($(this).text()=="직접입력"){
			$('#USER_EMAIL_LAST').val("");
			$('#USER_EMAIL_LAST').attr('readonly',false);
			$('#USER_EMAIL_LAST').focus();
			email_last_check();
		}else{
			$('#USER_EMAIL_LAST').val($(this).text());
			$('#USER_EMAIL_LAST').attr('readonly',true);
			if($('#USER_EMAIL_FIRST').val().replace(/\s*/gm, '')!=""){
				email_last_check();
			}else{
				$('#CHECK_EMAIL_TXT').html("이메일 형식에 맞게 입력해 주십시오.");
				$('#CHECK_EMAIL').show();
			}
		}
		
	});	
	$('#USER_EMAIL_FIRST').keyup(function(){
		if($(this).val().replace(/\s*/gm, '')!=""){
			if($('#USER_EMAIL_LAST').val().replace(/\s*/gm, '')!=""){
				email_last_check();
			}else{
				$('#CHECK_EMAIL_TXT').html("이메일 형식에 맞게 입력해 주십시오.");
				$('#CHECK_EMAIL').show();
				email_check = false;
			}
		}else{
			if($('#USER_EMAIL_LAST').val().replace(/\s*/gm, '')!=""){
				$('#CHECK_EMAIL_TXT').html("이메일 형식에 맞게 입력해 주십시오.");
				$('#CHECK_EMAIL').show();
				email_check = false;
			}else{
				$('#CHECK_EMAIL_TXT').html("");
				$('#CHECK_EMAIL').hide();
				email_check = false;
			}
		}
		
	});
	$('#USER_EMAIL_LAST').keyup(function(){
		if($(this).val().replace(/\s*/gm, '')!=""){
			if($('#USER_EMAIL_FIRST').val().replace(/\s*/gm, '')!=""){
				email_last_check();
			}else{
				$('#CHECK_EMAIL_TXT').html("이메일 형식에 맞게 입력해 주십시오.");
				$('#CHECK_EMAIL').show();
				email_check = false;
			}
		}else{
			if($('#USER_EMAIL_FIRST').val().replace(/\s*/gm, '')!=""){
				$('#CHECK_EMAIL_TXT').html("이메일 형식에 맞게 입력해 주십시오.");
				$('#CHECK_EMAIL').show();
				email_check = false;
			}else{
				$('#CHECK_EMAIL_TXT').html("");
				$('#CHECK_EMAIL').hide();
				email_check = false;
			}
			
		}
	});
	function email_last_check(){
		if($('#USER_EMAIL_LAST').val().split(".").length==2){
			//ID체크
			if($('#USER_EMAIL_LAST').val().split(".")[1].replace(/\s*/gm, '')!=""){
				if($('#USER_EMAIL_LAST').val().split(".")[1].match(/[^a-zA-Z]/)==null){
					 check_id();					 
				}else{
					$('#CHECK_EMAIL_TXT').html("이메일 형식에 맞게 입력해 주십시오.");
					$('#CHECK_EMAIL').show();
					email_check = false;
				}
			}else{
				$('#CHECK_EMAIL_TXT').html("이메일 형식에 맞게 입력해 주십시오.");
				$('#CHECK_EMAIL').show();
				email_check = false;
			}
			
		}else{
			$('#CHECK_EMAIL_TXT').html("이메일 형식에 맞게 입력해 주십시오.");
			$('#CHECK_EMAIL').show();
			email_check = false;
		}
	}
	function check_id(){
		var user_id =$('#USER_EMAIL_FIRST').val()+"@"+$('#USER_EMAIL_LAST').val();
		$.ajax({
			url : "/ajax/",
			type : 'post',
			dataType : "text",
			async : true, 
			data : {"CMD":"email_check","user_id":user_id},
			success : function(result) {
				if(Number(result)>0){
					$('#CHECK_EMAIL_TXT').html("동일한 이메일이 있습니다.");	
					email_check = false;
				}else{
					 $('#CHECK_EMAIL_TXT').html("사용 가능한 이메일 입니다.");	
					 email_check = true;
				}
				$('#CHECK_EMAIL').show();			 
			}
		});	
	}
</script>
</html>