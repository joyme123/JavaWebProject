<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加用户</title>
</head>
<body>
	<s:form action="addUserAction" method="POST">
		<s:textfield label="客户姓名" name="user.name"/> 
		<s:textfield label="客户电话" name="user.phoneNumber"/> 
		<s:textfield label="客户邮箱" name="user.email"/>
		<s:textfield label="客户性别" name="user.sex"/>  
		<s:textfield label="客户年龄" name="user.age"/> 
		<s:textfield label="客户地址" name="user.address"/> 
		<s:submit value="添加"/><s:reset value="重置"/>
	</s:form>
</body>
</html>