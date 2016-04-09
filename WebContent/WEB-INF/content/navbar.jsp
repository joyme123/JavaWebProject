<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<div class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="index">擎天柱</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<%
					if (session.getAttribute("name") == null) {
				%>
				<li id="login"><a href="login">登录</a></li>
				<%
					} else {
				%>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">管理中心<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="viewCarModelAction">车型管理</a></li>
						<li><a href="viewUserAction">用户管理</a></li>
						<li><a href="viewOrderRecordAction">订单管理</a></li>
					</ul></li>
				<li><a href="logoutAdminAction"><span
						class="glyphicon glyphicon-remove"></span> 退出</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
</div>