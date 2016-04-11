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