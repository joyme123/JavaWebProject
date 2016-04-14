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

<body>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner" role="listbox">
			<s:iterator value="#request.carImageList" id="carImageList"
				status="images">
				<s:property value="carImageList.imgUrl" />
			</s:iterator>




			<%
				CarImage carImage = (CarImage) request.getAttribute("carImage");
				String str = carImage.getImgUrl();
				String[] url = str.split("\\|");
				for (int i = 0; i < url.length; i++) {
					if (i == 0) {
			%>
			<div class="item active">
				<img src='<%=application.getContextPath() + url[i]%>'>
			</div>
			<%
				} else {
			%>
			<div class="item">
				<img src='<%=application.getContextPath() + url[i]%>'>
			</div>
			<%
				}
				}
			%>

		</div>
		<p><%=url.length%></p>
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
</body>

</html>