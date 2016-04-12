<%@page import="com.ssh.domain.CarImage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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