
function createInputHidden(frmId, nameKey, nameVal) {
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", nameKey);
	input.setAttribute("value", nameVal);
	
	document.getElementById(frmId).appendChild(input);
}