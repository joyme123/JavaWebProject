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

function showPic() {
    layer.open({
        title: false,
        content: "<img src=\"http://m.img.dj129.com/img/aHR0cDovL3AzLnNvLnFoaW1nLmNvbS9zZHIvXzI0MF8vdDAxZmVmZmUxYWM0ZDFlZjAyZC5qcGc=.jpg\">",
        btn: false,
        shadow: 0.5,
        shadeClose: true
    });
}