<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="Resource/js/public/jquery.min.js"></script>
<script type="text/javascript" src="Resource/js/layer/layer.js"></script>
<title>查看订单</title>
</head>
	<script>
	function edit(){
		layer.open({
			  type: 1,
			  skin: 'layer_edit', //样式类名
			  closeBtn: 1, //显示关闭按钮
			  shift: 2,
			  shadeClose: false, //开启遮罩关闭
			  content: '<form action="editOrderRecordAction" method="POST">客户姓名:<input type="text" name="user.name"/><br>客户电话:<input type="text" name="user.phoneNumber"/><br>客户邮箱:<input type="text" name="user.email"/><br>客户性别:<input type="text" name="user.sex"/><br>客户年龄:<input type="text"  name="user.age"/><br>客户地址:<input type="text"  name="user.address"/><br><input type="submit" value="修改"/><input type="reset" value="重置"/></form>'
			});
	}

	</script>
<body>
	<s:iterator value="#request.orderRecordList" id="orderRecordList">
		订单号:<s:property  value="#orderRecordList.id"/>
		车型id:<s:property  value="#orderRecordList.carModelId"/>
		用户id:<s:property value="#orderRecordList.userId"/>
		时间:<s:property value="#orderRecordList.time"/>
		金额:<s:property value="#orderRecordList.orderMoney"/>
		折扣:<s:property value="#orderRecordList.discount"/>
		<button type="button" onclick="edit()">编辑</button>
		<s:a href="deleteOrderRecordAction?id=%{#orderRecordList.id}">删除</s:a>
		<br>
	</s:iterator>
	总页数:<s:property value="#request.pageCount"/>
	<a href="dispatcherAction!goIndex">返回管理员面板</a>
</body>
</html>