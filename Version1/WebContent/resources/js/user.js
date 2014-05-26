/*
*
*
* user
*
*
*/
function login() {
	$('#frm').attr('action','/user/login.do');
	createInputHidden('frm','user_id',$('#user_id').val());
	createInputHidden('frm','user_pw',$('#user_pw').val());
	$('#frm').submit();
}
function logout(userid) {
	$('#frm').attr('action','/user/logout.do');
	createInputHidden('frm','user_id',userid);
	$('#frm').submit();
}

function registGo() {
	$('#frm').attr('action','/user/regist.go');
	$('#frm').submit();
}
function registDo() {
	$('#frm').attr('action','/user/regist.do');
	createInputHidden('frm','id',$('#id').val());
	createInputHidden('frm','pw',$('#pw').val());
	createInputHidden('frm','nm',$('#nm').val());
	createInputHidden('frm','phone',$('#phone').val());
	$('#frm').submit();
}

function changeGo() {
	$('#frm').attr('action','/user/change.go');
	$('#frm').submit();
}
function changeDo() {
	$('#frm').attr('action','/user/change.do');
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