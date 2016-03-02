var num = 0;

function getReturnValue(returnValue) {
	if(num == 2) {
		$("#signerName2").val(returnValue.name);
		$("#signer2").val(returnValue.id);
	}
	else if(num == 3) {
		$("#signerName3").val(returnValue.name);
		$("#signer3").val(returnValue.id);
	}
	$(".signerName").blur();
}

function openNewWindow() {
	var url = "../member/selectSigner.do";
 	var name = "_blank";
 	var specs = "menubar=no,status=no,toolbar=no";
 	var newWindow = window.open(url, name, specs);
 	newWindow.focus();
}

$(document).ready(function() {
	$(".signerName").focus(function() {
	 	if(this.id == "signerName2")
	 		num = 2;
	 	else
	 		num = 3;
	 	openNewWindow();
	});
	
	$("#title").keyup(function() {
		
	});
});