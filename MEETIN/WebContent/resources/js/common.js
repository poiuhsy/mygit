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
