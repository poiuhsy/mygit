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
    if (!userid || !password) {
        alert("ID/비밀번호를 잘못 입력하셨습니다.");
        return false;
    }

    try {
        var rsaPublicKeyModulus = $('#rsaPublicKeyModulus').val();
        var rsaPublicKeyExponent = $('#rsaPublicKeyExponent').val();
        login(userid,password, rsaPublicKeyModulus, rsaPublicKeyExponent);
    } catch(err) {
        alert(err);
    }
    return false;
}

function login(userid, password, rsaPublicKeyModulus, rsaPpublicKeyExponent) {
	var rsa = new RSAKey();
	rsa.setPublic(rsaPublicKeyModulus, rsaPpublicKeyExponent);
	
	// rsa 암호화
    var securedUserid = rsa.encrypt(userid);
    var securedPassword = rsa.encrypt(password);
    
	$('#frm').attr('action','/user/login.do');
	createInputHidden('frm','user_id',securedUserid);
	createInputHidden('frm','user_pw',securedPassword);
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