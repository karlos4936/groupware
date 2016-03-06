$(window).load(function() {
	var html = $("#ifrm").contents().find("body");
	
	html.find("#viewNo").text($("#no").val());
	html.find("#viewSigner1").text($("#signer1").val());
	html.find("#viewSigner2").text($("#signer2").val());
	html.find("#viewSigner3").text($("#signer3").val());
//	html.find("#isSign1").text($("#isSign1"));
});