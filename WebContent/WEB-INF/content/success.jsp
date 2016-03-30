<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Spring Page Redirection</title>
</head>
<body>
	页面访问次数:${applicationScope.counter}<br>
	${sessionScope.admin},您已经登录!<br>
	<s:property value="tip"/>
</body>
</html>