function createInputHidden(frmId, keyName, value) {
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", keyName);
	input.setAttribute("value", value);
	
	document.getElementById(frmId).appendChild(input);
}

function go_detail(meeting_sq) {
	$('#frm').attr("action","/meet");
	createInputHidden("frm","m_sq",meeting_sq);
	$('#frm').attr("method","get");
	$('#frm').submit();
}
function go_main(){
	location.href = "/";
}
function only_eng(str){
	if(str.match(/[^a-zA-Z]/)!=null){
		return false;
	}else{
		return true;
	}
}
function get_term(idx) {
	window.open("/terms/"+idx, "_blank");
}
