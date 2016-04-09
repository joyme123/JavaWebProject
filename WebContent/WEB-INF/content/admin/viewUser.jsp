<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<link rel="icon" href="Favicon.ico" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome</title>
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/bootstrap-table.css" rel="stylesheet">
<link href="assets/css/main.css" rel="stylesheet">
<link href="assets/css/new.css" rel="stylesheet">
<script src="assets/js/jquery-2.2.3.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-table.js"></script>
<script src="assets/js/createbtn.js"></script>
<script src="assets/js/layer/layer.js"></script>
<script>
	function edit() {
		layer
				.open({
					type : 1,
					skin : 'layer_edit', //样式类名
					closeBtn : 1, //显示关闭按钮
					shift : 2,
					shadeClose : false, //开启遮罩关闭
					content : '<form action="editOrderRecordAction" method="POST">客户姓名:<input type="text" name="user.name"/><br>客户电话:<input type="text" name="user.phoneNumber"/><br>客户邮箱:<input type="text" name="user.email"/><br>客户性别:<input type="text" name="user.sex"/><br>客户年龄:<input type="text"  name="user.age"/><br>客户地址:<input type="text"  name="user.address"/><br><input type="submit" value="修改"/><input type="reset" value="重置"/></form>'
				});
	}
</script>
</head>

<body class="admin">
	<%@include file="../navbar.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-3 navlist">
				<div class="nav-list">
					<ul class="nav nav-list menu">
						<li><a href="viewCarModelAction">车型管理</a></li>
					</ul>
					<ul class="nav nav-list active menu">
						<li><a href="">用户管理</a></li>
					</ul>
					<ul class="nav nav-list menu">
						<li><a href="viewOrderRecordAction">订单管理</a></li>
					</ul>
				</div>
			</div>
			<div class="col-xs-9 list">
				<div>
					<button id="create" class="btn btn-warning createbtn">
						<i class="glyphicon glyphicon-plus"></i>新建
					</button>
					<div id="newform" class="header">
						<form class="form-horizontal">
							<fieldset>
								<div id="legend" class="">
									<legend class="">添加新顾客</legend>
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">姓名</label> <input
										type="text" placeholder="" class="input-xlarge">
								</div>
								<div class="control-group">
									<label class="control-label">性别</label> <select
										class="input-xlarge" style="float: right;">
										<option>男</option>
										<option>女</option>
										<option>其他</option>
									</select>
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">手机号</label> <input
										type="text" placeholder="" class="input-xlarge">
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">电子邮箱</label> <input
										type="text" placeholder="" class="input-xlarge">
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">年龄</label> <input
										type="text" placeholder="" class="input-xlarge">
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">住址</label> <input
										type="text" placeholder="" class="input-xlarge">
								</div>
								<div class="controls">
									<div id="submit" class="btn btn-success">提交</div>
									<div id="cancel" class="btn btn-danger">取消</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
				<table class="table table-hover">
					<tr>
						<td>编号</td>
						<td>姓名</td>
						<td>性别</td>
						<td>手机号</td>
						<td>电子邮箱</td>
						<td>年龄</td>
						<td>住址</td>
						<td>修改</td>
					</tr>
					<s:iterator value="#request.userList" id="userList">
						<tr>
							<td><s:property value="#userList.id" /></td>
							<td><s:property value="#userList.name" /></td>
							<td><s:property value="#userList.gender" /></td>
							<td><s:property value="#userList.tel" /></td>
							<td><s:property value="#userList.email" /></td>
							<td><s:property value="#userList.age" /></td>
							<td><s:property value="#userList.address" /></td>
							<td><a id="finish" class="btn btn-success tablebtn"> <i
									class="glyphicon glyphicon-pencil"></i>修改
							</a> <a id="delete" class="btn btn-danger tablebtn"> <i
									class="glyphicon glyphicon-remove"></i>删除
							</a></td>
						</tr>
					</s:iterator>
				</table>
				<div class="footer">
					<hr>
					<p>Created by 阿夯 - 2016</p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>