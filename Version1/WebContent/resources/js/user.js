/*
*
*
* user
*
*
*/
$(document).ready(function() {
	
});

function registGo() {
	$('#frm').attr('action','/user/regist.go');
	$('#frm').submit();
}

function login() {
	$('#frm').attr('action','/user/login.do');
	createInputHidden('frm','user_id',$('#user_id').val());
	createInputHidden('frm','user_pw',$('#user_pw').val());
	$('#frm').submit();
}