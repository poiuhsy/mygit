<%@page import="com.meetin.data.uploadConfig"%>
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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/style/upload.css">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/jquery.form.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/user.js"></script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/upload.js"></script>
<title>회원가입</title>
<style type="text/css">
div#mybutton {
   overflow: hidden;
   position: relative;
   width: 40px;
   height: 26px;
}
div#mybutton img{
   cursor: pointer;
}
input#myfile {
   height: 26px;
   cursor: pointer;
   position: absolute;
   top: 0px;
   right: 0px;
   font-size: 20px;
   z-index: 2;
   opacity: 0.0; /* Standard: FF gt 1.5, Opera, Safari */
   filter: alpha(opacity = 0); /* IE lt 8 */
   -ms-filter: "alpha(opacity=0)"; /* IE 8 */
   -khtml-opacity: 0.0; /* Safari 1.x */
   -moz-opacity: 0.0; /* FF lt 1.5, Netscape */
}
label{
	cursor: pointer;
}
</style>
<c:choose>
	<c:when test="${name!= null}">
		<c:if test="${sessionScope.login != null}">
			<script type="text/javascript">
				alert("로그인 중에는 이용할 수 업읍니다.");
				location.replace("/");
			</script>
		</c:if>
	</c:when>
	<c:otherwise>	
		<script type="text/javascript">
			location.replace("/");
		</script>
	</c:otherwise>
</c:choose>	
</head>
<body>
	<div class="DIV_WRAP">
		<div style="margin-bottom: 20px">
			<img src="<%=request.getContextPath()%>/resources/images/common/e_join_title.png">
		</div>
		<div class="DIV_INPUT_FORM">
			<div>
				<table width="979px" border="0">
					<tr>
						<td valign="top" width="460px">
							<table>
								<tr>
									<td align="left"><font
										style="font-size: 14px; color: #53515c; font-weight: bold;">프로필 사진 등록
										<font style="font-size: 13px; color: #ff4e50;">(선택)</font></font></td>
								</tr>
								<tr>
									<td>
										<div style="width:460px;border: 1px solid #d0d0d0">
											<table style="margin-left: 10px;margin-top: 10px;margin-bottom: 8px">
												<tr>
													<td>
														<img id="profile_l"  width="157px" height="157px"
														src="<%=request.getContextPath()%>/resources/images/regist/base_img_l.png"/>
													</td>
													<td valign="bottom">
														<table>
															<tr>
																<td align="left"><font style="font-size: 13px; color: #a5a5a5;">- 예쁜 사진으로 올려주세요</font></td>
															</tr>
															<tr>
																<td align="left"><font style="font-size: 13px; color: #a5a5a5;">- 10MB 이하의 용랑만 업로드가 가능하니다.</font></td>
															</tr>
															<tr>
																<td align="left">
																	<table>
																		<tr>
																			<td valign="top">
																				<form id="frmFile" name="frmFile" method="post" enctype="multipart/form-data">
            														 			  <div id="mybutton">
                 																	 <input type="file" id="myfile" name="upload" />             																	
                 																	 <img style="cursor: pointer;"
																						src="<%=request.getContextPath()%>/resources/images/regist/photo1_btn.png"/>
               																		</div>
          																		</form>
																			</td>
																			<td valign="bottom">
																				<img style="cursor: pointer;" onclick="delete_profile()"
																			src="<%=request.getContextPath()%>/resources/images/regist/photo2_btn.png"/>
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
									</td>
								</tr>
								<tr><td height="10px">&nbsp;</td></tr>
								<tr>
									<td align="left"><font
										style="font-size: 14px; color: #53515c; font-weight: bold;">기본알 선택
										<font style="font-size: 13px; color: #ff4e50;">(선택)</font></font></td>
								</tr>
								<tr>
									<td>
										<div style="width:460px;border: 1px solid #d0d0d0">
											<table style="margin-top: 8px;margin-bottom: 8px" border="0">
												<tr>
													<td width="92px" align="center">
													<label for="E001"><img 
														src="http://poiuhsy.cdn1.cafe24.com/resources/images/egg/E001.png"></label>
													</td>
													<td width="92px" align="center">
														<label for="E002">
															<img src="http://poiuhsy.cdn1.cafe24.com/resources/images/egg/E002.png">														
														</label>
													</td>
													<td width="92px" align="center">
														<label for="E003">
															<img src="http://poiuhsy.cdn1.cafe24.com/resources/images/egg/E003.png">
														</label>
													</td>
													<td width="92px" align="center">
														<label for="E004">
															<img src="http://poiuhsy.cdn1.cafe24.com/resources/images/egg/E004.png">
														</label>
														
													</td>
													<td width="92px" align="center">
														<label for="E005">
															<img src="http://poiuhsy.cdn1.cafe24.com/resources/images/egg/E005.png">
														</label>
													</td>
												</tr>
												<tr>	
													<td align="center"><input type="radio" id="E001" name="egg" value="001" checked="checked"/></td>
													<td align="center"><input type="radio" id="E002" name="egg" value="002"/></td>
													<td align="center"><input type="radio" id="E003" name="egg" value="003"/></td>
													<td align="center"><input type="radio" id="E004" name="egg" value="004"/></td>
													<td align="center"><input type="radio" id="E005" name="egg" value="005"/></td>										
												</tr>
											</table>
										</div>
										
										
									</td>
								</tr>
							</table>
						</td>
						<td width="49px">&nbsp;</td>
						<td valign="top" width="460px" align="left">
							<font style="font-size: 14px; color: #53515c; font-weight: bold;">기본알 테마 미리보기</font>
							<div style="width: 460px;border: 1px solid #d0d0d0;margin-top: 7px" align="center">									
								<div style="margin-top: 30px;" align="center">
									<table  width="440">
										<tr>
											<td width="120px">&nbsp;</td>
											<td valign="middle" align="center" width="200px">
												<font
													style="font-size: 14px; color: #53515c; font-weight: bold;">${name}
													<font style="font-size: 13px;color: #53515c; font-weight: bold;">님의 프로필</font> 
												</font>
											</td>
											<td valign="middle" align="center" width="120px">
												<img 
												src="<%=request.getContextPath()%>/resources/images/regist/profile_1.png"/>
											</td>
										</tr>
									</table>
									
								</div>
								<table style="margin-top: 12px;margin-bottom:30px ">						
									<tr>
										<td>
											<img id="profile_s"  width="137px" height="137px"
											src="<%=request.getContextPath()%>/resources/images/regist/base_img_s.png"/>
									    </td>
										<td>
											<img 
											src="<%=request.getContextPath()%>/resources/images/egg/example.png"/>
										</td>
									</tr>
									<tr>
										<td colspan="2"><img src="<%=request.getContextPath()%>/resources/images/regist/profile_2.png"/></td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>						
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
			<table>
				<tr>
					<td>
						<img style="cursor: pointer;" onclick="skip_page()"
							src="<%=request.getContextPath()%>/resources/images/regist/pre_btn.png">
					</td>
					<td>
						<img style="cursor: pointer;" onclick="next_regist_step3()"
							src="<%=request.getContextPath()%>/resources/images/regist/next_btn.png">
					</td>
				</tr>
			</table>
		</div>
	</div>
	<form id="frm" action="" method="post">
		
	</form>
</body>
<script type="text/javascript">
	
	$(function() {
		var frm = $('#frmFile');
		var option={
				dataType : 'json' , 
				success : function(json, msg){
					$.each(json, function(index){	
						$('#profile_l').attr('src','<%=uploadConfig.getSaveDir()%>/regist/'+this.sysFilename);	
						$('#profile_s').attr('src','<%=uploadConfig.getSaveDir()%>/regist/'+this.sysFilename);	
					});				
				},
				error : function(xhr, status, exception){
					alert("파일전송에 실패하였습니다. \n"+"5M이하의 사진을 업로드해주십시오.");
					return false;
				}			
		};	
		frm.ajaxForm(option);
		frm.submit(function(){return false;});	
	});
	$('#myfile').change(function(){
		var frm = $('#frmFile');
		frm.attr('action','/upload/regist');
		
		frm.submit();
	});
	function delete_profile(){
		$('#profile_l').attr('src','<%=request.getContextPath()%>/resources/images/regist/base_img_l.png');
		$('#profile_s').attr('src','<%=request.getContextPath()%>/resources/images/regist/base_img_l.png');
	}
	$('input[name=egg]').change(function(){
		
	});
</script>
</html>