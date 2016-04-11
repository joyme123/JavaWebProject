<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="icon" href="Favicon.ico" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="assets/css/bootstrap.css" rel="stylesheet">
<script src="assets/js/jquery-2.2.3.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<link href="assets/css/login.css" rel="stylesheet">
</head>
<body>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="assets/img/s1.jpg">
			</div>
			<div class="item">
				<img class="second-slide" src="assets/img/s2.jpg">
			</div>
			<div class="item">
				<img class="third-slide" src="assets/img/s3.jpg">
			</div>
			<div class="item">
				<img class="fourth-slide" src="assets/img/s4.jpg">
			</div>
		</div>
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
	<div class="loginbox">
		<form action="loginAdminAction" method="POST">
			<h1 class="login">login</h1>
			<p>
				<label for="username">用户名</label> <input class="textfield"
					type="text" name="admin.name" placeholder="  昵称或邮箱">
			</p>
			<p>
				<label for="password">密码</label> <input id="password"
					class="textfield" type="password" name="admin.pass"
					placeholder="  密码">
			</p>
			<label for="showPassword" class="checklabel">显示密码</label> <input
				type="checkbox" id="showPassword">
			<div class="clearfix"></div>
			<p>
				<input class="loginbtn" type="submit" name="submit" value="登陆">
				<a class="returnbtn" href="index.html">返回</a>
			</p>
		</form>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#showPassword").click(function() {
				if ($("#showPassword").is(":checked")) {
					$("#password").attr("type", "text");
				} else {
					$("#password").attr("type", "password");
				}
			});
		});
	</script>
</body>

</html>