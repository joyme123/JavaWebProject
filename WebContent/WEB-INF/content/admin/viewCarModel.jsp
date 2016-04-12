<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<link rel="icon" href="Favicon.ico" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome</title>
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/bootstrap-table.css" rel="stylesheet">
<script src="assets/js/jquery-2.2.3.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-table.js"></script>
<script src="assets/js/table.js"></script>
<script src="assets/js/layer/layer.js"></script>
<link href="assets/css/main.css" rel="stylesheet">
<link href="assets/css/new.css" rel="stylesheet">
</head>

<body class="admin">
	<%@include file="../navbar.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 hidden-xs navlist">
				<div class="nav-list">
					<ul class="nav nav-list active menu">
						<li><a href="">车型管理</a></li>
					</ul>
					<ul class="nav nav-list menu">
						<li><a href="viewUserAction">用户管理</a></li>
					</ul>
					<ul class="nav nav-list menu">
						<li><a href="viewOrderRecordAction">订单管理</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-9 col-xs-12 list">
				<div>
					<button id="create" class="btn btn-warning createbtn ">
						<i class="glyphicon glyphicon-plus"></i>新建
						<table class="table table-hover"></table>
					</button>
					<div id="newform" class="header">
						<form>
							<fieldset>
								<div>
									<legend class="">添加新车</legend>
								</div>
								<div>
									<label class="control-label" for="input01">车型名</label> <input
										type="text" placeholder="" class="input-xlarge">
								</div>
								<div>
									<label class="control-label">门数</label> <select
										class="input-xlarge">
										<option>4门</option>
										<option>2门</option>
									</select> <label class="control-label">座位数</label> <select
										class="input-xlarge">
										<option>2人</option>
										<option>5人</option>
										<option>7人</option>
										<option>9人</option>
									</select>
								</div>
								<div>
									<label class="control-label" for="input01">后备箱容积</label> <input
										type="text" placeholder="" class="input-xlarge">
								</div>
								<div>
									<label class="control-label" for="input01">发动机转速</label> <input
										type="text" placeholder="" class="input-xlarge">
								</div>
								<div>
									<label class="control-label" for="input01">颜色 </label> <input
										type="text" placeholder="" class="input-xlarge">
								</div>
								<div>
									<label class="control-label" for="input01">库存</label> <input
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
				<div>
					<table class="table table-hover">
						<tr>
							<td>编号</td>
							<td>车型名</td>
							<td>门数</td>
							<td>座位数</td>
							<td>后备箱容积</td>
							<td>发动机转速</td>
							<td>颜色</td>
							<td>库存</td>
							<td>操作</td>
						</tr>
						<s:iterator value="#request.carModelList" id="carModelList"
							status="cars">
							<tr>
								<td><s:property value="#carModelList.id" /></td>
								<td><s:property value="#carModelList.modelName" /></td>
								<td><s:property value="#carModelList.modelName" /></td>
								<td><s:property value="#carModelList.modelName" /></td>
								<td><s:property value="#carModelList.modelName" /></td>
								<td><s:property value="#carModelList.modelName" /></td>
								<td><s:property value="#carModelList.modelName" /></td>
								<td><s:property value="#carModelList.modelName" /></td>
								<td><a id="update<s:property value=" #cars.getIndex() "/>"
									class="btn btn-success tablebtn"
									onclick="edit(<s:property value=" #cars.getIndex() "/>)"> <i
										class="glyphicon glyphicon-pencil"></i>修改
								</a> <a id="delete"
									href="deleteCarModelAction?id=<s:property value=" #carModelList.id " />"
									class="btn btn-danger tablebtn"> <i
										class="glyphicon glyphicon-remove"></i>删除
								</a></td>
							</tr>
							<tr>
								<td class="nopadding" colspan="9">
									<div id="detail<s:property value=" #cars.getIndex() "/>"
										class="detail">
										<form>
											<fieldset>
												<div class="clearfix">
													<!-- Text input-->
													<div class="detailitem">
														<label class="control-label" for="input01">车型名</label> <input
															type="text" placeholder="" class="input-xlarge"
															style="margin-left: 2em;"
															value="<s:property value=" #carModelList.modelName " />">
													</div>

													<div class="detailitem">
														<label class="control-label" for="input01">颜色</label> <input
															type="text" placeholder="" class="input-xlarge"
															style="margin-left: 3em;"
															value="<s:property value=" #carModelList.modelName " />">
													</div>
												</div>
												<div class="clearfix">
													<div class="detailitem">
														<label class="control-label">门数</label> <select
															class="input-xlarge" style="margin-left: 3em;">
															<option>4门</option>
															<option>2门</option>
														</select>
													</div>
													<div class="detailitem">
														<label class="control-label">座位数</label> <select
															class="input-xlarge" style="margin-left: 2em;">
															<option>2人</option>
															<option>5人</option>
															<option>7人</option>
															<option>9人</option>
														</select>
													</div>
												</div>
												<div class="clearfix">
													<div class="detailitem">
														<label class="control-label" for="input01">后备箱容积</label> <input
															type="text" placeholder="" class="input-xlarge"
															value="<s:property value=" #carModelList.modelName " />">
													</div>
													<div class="detailitem">
														<label class="control-label" for="input01">发动机转速</label> <input
															type="text" placeholder="" class="input-xlarge"
															value="<s:property value=" #carModelList.modelName " />">
													</div>
												</div>
												<div class="clearfix">
													<div class="detailitem">
														<label class="control-label" for="input01">库存</label> <input
															type="text" placeholder="" class="input-xlarge"
															style="margin-left: 3em;"
															value="<s:property value=" #carModelList.modelName " />">
													</div>
													<div id="submit<s:property value=" #cars.getIndex() "/>"
														class="btn btn-success right detailbtn">提交</div>
												</div>
												<div id="cancel<s:property value=" #cars.getIndex() "/>"
													class="btn btn-danger right detailbtn"
													onclick="cancel(<s:property value=" #cars.getIndex() "/>)">取消</div>
											</fieldset>
										</form>
									</div>
								</td>
							</tr>
						</s:iterator>
					</table>
				</div>
				<%
					String temp = request.getParameter("page");
					int curPage;
					int maxPage;
					maxPage = (int) request.getAttribute("pageCount");
					if (temp == null) {
						curPage = 1;
					} else {
						curPage = Integer.parseInt(temp);
					}
				%>
				<nav>
					<ul class="pager">
						<%
							if (curPage == 1) {
						%>
						<li class="disabled"><a>上一页</a></li>
						<%
							} else {
						%>
						<li><a href="viewCarModelAction?page=<%=curPage - 1%>">上一页</a></li>
						<%
							}
						%>
						<%
							if (curPage == maxPage) {
						%>
						<li class="disabled"><a>下一页</a></li>
						<%
							} else {
						%>
						<li><a href="viewCarModelAction?page=<%=curPage + 1%>">下一页</a></li>
						<%
							}
						%>
					</ul>
				</nav>
				<div class="footer">
					<hr>
					<p>Created by 阿夯 - 2016</p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>