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

$(window).load(function() {
	$("#text").click(function() {
		var param = "" + 
		"<div style='min-width: 21cm; max-width: 21cm; min-height: 29.7cm; max-height: 29.7cm; text-align: center; background: white;'>" +
			"<div style='width: calc(100% - 60mm); min-height: 876.851px; padding: 35mm 30mm 30mm 30mm; '>" +
				"<table style='width: 100%; min-height: 876.851px; border: 1px solid white; background: #ffffff; border-collapse: collapse;' class='__se_tbl'>" +
					"<tbody>" +
						"<tr>" +
							"<td style='border: 1px solid black; width: 70px; height: 30px;'>문서번호</td>" +
							"<td style='border: 1px solid black; width: 120px; height: 30px;' id='viewNo'></td>" +
							"<td></td>" +
							"<td rowspan='4' style='border: 1px solid black; width: 40px;'>결재</td>" +
							"<td rowspan='2' style='border: 1px solid black; width: 70px;' id='viewSigner1'>" + $("#signer1").val() + "</td>" +
							"<td rowspan='2' style='border: 1px solid black; width: 70px;' id='viewSignerName2'>" + $("#signerName2").val() + "</td>" +
							"<td rowspan='2' style='border: 1px solid black; width: 70px;' id='viewSignerName3'>" + $("#signerName3").val() + "</td>" +
						"</tr>" +
						"<tr>" +
							"<td style='border: 1px solid black; width: 70px; height: 30px;'>기안자</td>" +
							"<td style='border: 1px solid black; width: 120px; height: 30px;' id='viewDrafter'>" + $("#drafter").val() + "</td>" +
							"<td></td>" +
						"</tr>" +
						"<tr>" +
							"<td style='border: 1px solid black; width: 70px; height: 30px;'>기안일자</td>" +
							"<td style='border: 1px solid black; width: 120px; height: 30px;' id='viewRegdate'></td>" +
							"<td></td>" +
							"<td rowspan='2' style='border: 1px solid black; width: 70px;'></td>" +
							"<td rowspan='2' style='border: 1px solid black; width: 70px;'></td>" +
							"<td rowspan='2' style='border: 1px solid black; width: 70px;'></td>" +
						"</tr>" +
						"<tr>" +
							"<td style='border: 1px solid black; width: 70px; height: 30px;'>결재일자</td>" +
							"<td style='border: 1px solid black; width: 120px; height: 30px;' id='viewSigndate'></td>" +
							"<td></td>" +
						"</tr>" +
						"<tr>" +
							"<td></td>" +
						"</tr>" +
						"<tr>" +
							"<td colspan='7' style='height: 30px;'></td>" +
						"</tr>" +
						"<tr>" +
							"<td colspan='7' style='height: 70px; font-weight: bolder; font-size: 30pt;'>" + $("#title").val() + "</td>" +
						"</tr>" +
						"<tr>" +
							"<td colspan='7' style='height: 20px;'></td>" +
						"</tr>" +
						"<tr>" +
							"<td colspan='7' style='border: 1px solid black; height: 30px;'>본문</td>" +
						"</tr>" +
						"<tr>" +
							"<td colspan='7' style='border: 1px solid black; height: 100%; text-align: left; padding: 20px;'>내용 입력</td>" +
						"</tr>" +
					"</tbody>" +
				"</table>" +
			"</div>" +
		"</div>"
		
		var inputarea = $("iframe").contents().find("#se2_iframe").contents().find("body");
		
		inputarea.html(param);
	});
});