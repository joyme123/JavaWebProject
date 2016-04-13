<%@page import="com.ssh.domain.CarImage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查看汽车图片</title>
</head>
<body>
<%
	CarImage carImage=(CarImage)request.getAttribute("carImage");
	String str=carImage.getImgUrl();
	String[] url=str.split("\\|");
	for(int i=0;i<url.length;i++){
		out.println("<img src='"+application.getContextPath()+url[i]+"'>");
	}
%>
</body>
</html>