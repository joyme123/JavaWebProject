$(document).ready(function () {
    $("#create").click(function () {
        $('#newform').slideToggle();
    });
    $('#submit').click(function () {
        $('#newform form').submit();
        $('#newform').slideUp();
        alert("提交成功");
    });
    $('#cancel').click(function () {
        $('#newform').slideUp();
    });
});
function edit(value) {
    var txt = "detail" + value;
    $("#" + txt).slideToggle(500);
}

function cancel(value) {
    var txt = "detail" + value;
    $("#" + txt).slideUp(500);
}