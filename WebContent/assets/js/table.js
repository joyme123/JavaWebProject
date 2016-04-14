$(document).ready(function() {
	$("#create").click(function() {
		$('#newform').slideToggle();
	});
	$('#submit').click(function() {
		if ($('#userNamebyID').val() == "null") {
			alert("用户不存在!");
		} else if ($('#carNamebyID').val() == "null") {
			alert("车型不存在!");
		} else {
			$('#newform form').submit();
			$('#newform').slideUp();
			alert("提交成功");
		}
	});
	$('#cancel').click(function() {
		$('#newform').slideUp();
	});
});
function dataSubmit(value) {
	var txt = "detail" + value;
	if ($('#userNamebyID' + value).val() == "null") {
		alert("用户不存在!");
	} else if ($('#carNameEditByID' + value).val() == "null") {
		alert("车型不存在!");
	} else {
		$("#" + txt).slideUp(500);
		$("#" + txt).children("form").submit();
		alert("更改成功");
	}
}

function cancel(value) {
	var txt = "detail" + value;
	$("#" + txt).slideUp(500);
}

function addFile() {
	if (true) {
		$("#carID")
				.before(
						"<input type=\"file\"  class=\"form-control file\" name = \"uploadFile\" id = \"uploadFile\">");
	}
}