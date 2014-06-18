/*
*
*
* user
*
*
*/
function validateEncryptedForm() {
    var userid = $('#user_id').val();
    var password = $('#user_pw').val();
    var url = location.href;
    if (!userid || !password) {
        alert("ID/��й�ȣ�� �߸� �Է��ϼ̽��ϴ�.");
        return false;
    }
    try {
    	$.ajax({
    		url : "/rsa/",
    		type : 'post',
    		dataType : "text",
    		async : true, 
    		data : {"url":url},
    		success : function(result) {
    			var rsaPublicKeyModulus = result.split(",")[0];
    		    var rsaPublicKeyExponent = result.split(",")[1];
    		    login(userid,password, rsaPublicKeyModulus, rsaPublicKeyExponent);
    		}
    	});	
     
    } catch(err) {
        alert(err);
    }
    return false;
}

function login(userid, password, rsaPublicKeyModulus, rsaPpublicKeyExponent) {
	var rsa = new RSAKey();
	rsa.setPublic(rsaPublicKeyModulus, rsaPpublicKeyExponent);
	var securedUserid = rsa.encrypt(userid);
	var securedPassword = rsa.encrypt(password);
	$.ajax({
		url : "/ajax/",
		type : 'post',
		dataType : "text",
		async : true, 
		data : {"CMD":"login","user_id":securedUserid,"user_pw":securedPassword},
		success : function(result) {
			if(result!="null"){
				location.replace('/user/login.do');
			}else{
				alert("아이디와 비밀번호를 다시 확인 해주세요.\n밋인 회원이 아닐 수 도 있습니다.");
			}
		}
	});			
}
function logout(userid) {
	$('#frm').attr('action','/user/logout.do');
	createInputHidden('frm','user_id',userid);
	$('#frm').submit();
}
function registGo() {
	location.href = "/user/regist.go";			
}
function next_regist_step2(){
	if(!$('#private_term').is(':checked')){
		alert("개인정보 수집 약관에 동의해 주세요.");
	}else if(!$('#meetin_term').is(':checked')){
		alert("밋인 이용 약관에 동의해 주세요.");
	}else{
		if($('#USER_EMAIL_FIRST').val().replace(/\s*/gm, '')=="" || $('#USER_EMAIL_LAST').val().replace(/\s*/gm, '')==""){
			alert("이메일을 형식에 맞게 입력해 주세요");
		}else if($('#name').val().replace(/\s*/gm, '')==""){
			alert("이름을 입력해 주세요");
		}else if($('#check_pwd').val()!=$('#pwd').val()){
			alert("비밀번호가 일치하지 않습니다.");
		}else if($('input[name=gender]:checked').length<0){
			alert("성별을 선택 해 주세요");
		}else if($('#year').val()=="" || $('#month').val()=="" || $('#day').val()=="" ){
			alert("생년월일을 입력해 주세요");
		}else{
			//$.ajax({
			//	url : "/session/",
			//	type : 'post',
			//	dataType : "text",
			//	async : true, 
			//	data : {"KEY":"email|pwd|name|gender|birthdate","CMD":"add",
			//		   "VAL":$('#USER_EMAIL_FIRST').val()+"@"+$('#USER_EMAIL_LAST').val()+"|"+$('#pwd').val()+"|"+$('#name').val()
			//		   +"|"+$('input[type=radio]:checked').val()+"|"+$('#year').val()+$('#month').val()+$('#day').val()
			//	},
			//	success : function(result) {
			//		location.href = "/user/regist.do?step=1";
			//	}
			//});		
			$('#frm').attr('action','/user/regist_1.go');
			createInputHidden('frm','step',"1");
			createInputHidden('frm','email',$('#USER_EMAIL_FIRST').val()+"@"+$('#USER_EMAIL_LAST').val());
			createInputHidden('frm','pwd',$('#pwd').val());
			createInputHidden('frm','nm',$('#name').val());
			createInputHidden('frm','gender',$('input[type=radio]:checked').val());	
			createInputHidden('frm','birthdate',$('#year').val()+$('#month').val()+$('#day').val());	
			$('#frm').submit();	
			
		}	
	}
}
function next_regist_step3(){
	//location.href = "/user/regist.do?step=2&my_image=&egg="+$('input[type=radio]:checked').val();		
	$('#frm').attr('action','/user/regist.do');
	createInputHidden('frm','step',"2");
	createInputHidden('frm','my_image',"");
	createInputHidden('frm','egg',$('input[type=radio]:checked').val());	
	$('#frm').submit();	
}
function skip_page(){
	location.href = "/user/regist.do?step=2";	
	//$('#frm').attr('action','/user/regist.do');
	//createInputHidden('frm','step',"2");	
	//$('#frm').submit();	
}
function registDo() {
	$('#frm').attr('action','/user/regist.do');
	$('#frm').submit();				
}
function modifyGo(id) {
	$('#frm').attr('action','/user/modify.go');
	createInputHidden('frm','id',id);
	$('#frm').submit();
}
function modifyDo(id) {
	$('#frm').attr('action','/user/modify.do');
	createInputHidden('frm','id',id);
	createInputHidden('frm','nm',$('#nm').val());
	createInputHidden('frm','phone',$('#phone').val());
	$('#frm').submit();
}

function withdrawalGo() {
	$('#frm').attr('action','/user/withdrawal.go');
	$('#frm').submit();
}
function withdrawalDo() {
	$('#frm').attr('action','/user/withdrawal.do');
	$('#frm').submit();
}