<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加订单</title>
</head>
<body>
		<s:form action="addOrderRecordAction" method="POST">
		<s:textfield label="车型Id" name="orderRecord.carModelId"/> 
		<s:textfield label="客户Id" name="orderRecord.userId"/> 
		<s:textfield label="交易时间" name="orderRecord.time"/>
		<s:textfield label="交易金额" name="orderRecord.orderMoney"/>  
		<s:textfield label="交易折扣" name="orderRecord.discount"/> 
		<s:submit value="添加"/><s:reset value="重置"/>
	</s:form>
</body>
</html>