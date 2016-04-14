<%@page import="java.util.List"%>
<%@page import="com.ssh.domain.CarImage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title>查看汽车图片</title>
<link href="assets/css/main.css" rel="stylesheet">
<link href="assets/css/bootstrap.css" rel="stylesheet">
<script src="assets/js/jquery-2.2.3.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</head>

<body style="overflow: hidden;">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner" role="listbox">
			<%
				List carImage = (List) request.getAttribute("carImageList");
				if (carImage == null) {
			%>
			<div class="item active">
				<img style="width: 100%; height: 100%;" src="assets/img/404.gif">
			</div>
			<%
				} else {
					for (int i = 0; i < carImage.size(); i++) {
						CarImage temp = (CarImage) carImage.get(i);
						String url = temp.getImgUrl();
						if (i == 0) {
			%>
			<div class="item active">
				<img style="width: 100%;"
					src="<%=application.getContextPath() + url%>">
			</div>
			<%
				} else {
			%>
			<div class="item">
				<img style="width: 100%;"
					src="<%=application.getContextPath() + url%>">
			</div>
			<%
				}
					}
				}
			%>

		</div>
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
</body>

</html>