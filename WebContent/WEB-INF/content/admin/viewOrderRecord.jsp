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
<script type="text/javascript">
                function edit(value) {
                    var txt = "detail" + value;
                    var date = "20" + $("#" + txt + " #date").attr("value");
                    if (date.charAt(6) == "-")
                        date = date.substring(0, 5) + "0" + date.substring(5, date.length);
                    if (date.length == 9)
                        date = date.substring(0, 8) + "0" + date.substring(8, date.length);
                    $("#" + txt + " #date").attr("value", date);
                    $("#" + txt).slideToggle(500);
                }
            </script>
</head>

<body class="admin">
	<%@include file="../navbar.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 hidden-xs navlist">
				<ul class="nav nav-list menu">
					<li><a href="viewCarModelAction">车型管理</a></li>
				</ul>
				<ul class="nav nav-list menu">
					<li><a href="viewUserAction">用户管理</a></li>
				</ul>
				<ul class="nav nav-list active menu">
					<li><a href="">订单管理</a></li>
				</ul>
				<ul class="nav nav-list menu">
					<li><a href="dispatcherAction!goAddCarImage">图片上传</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-xs-12 list">
				<div>
					<button id="create" class="btn btn-warning createbtn">
						<i class="glyphicon glyphicon-plus"></i>新建
					</button>
					<div id="newform" class="header" style="width: 400px;">
						<form class="form-horizontal" action="addOrderRecordAction"
							method="post">
							<fieldset>
								<div id="legend" class="">
									<legend>添加新订单</legend>
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">用户编号</label> <input
										type="text" placeholder="" class="input-xlarge"
										name="orderRecord.userID">
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">用户名</label> <input
										disabled="disabled" type="text" placeholder=""
										class="input-xlarge" name="orderRecord.userName" value="null">
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">商品编号</label> <input
										type="text" placeholder="" class="input-xlarge"
										name="orderRecord.carID">
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">商品名</label> <input
										disabled="disabled" type="text" placeholder=""
										class="input-xlarge" name="orderRecord.carName" value="null">
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">价格</label> <input
										type="text" placeholder="" class="input-xlarge"
										name="orderRecord.price">
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">折扣</label> <input
										type="text" placeholder="" class="input-xlarge"
										name="orderRecord.discount">
								</div>
								<div class="control-group">
									<!-- Text input-->
									<label class="control-label" for="input01">订单时间</label> <input
										type="date" placeholder="" class="input-xlarge"
										style="height: 26px;" name="orderRecord.time">
								</div>
								<div class="control-group" style="height: 75px;">
									<!-- Text input-->
									<label class="control-label" for="input01">备注</label>
									<textarea class="input-xlarge" rows="3" cols="30"
										style="float: right; resize: none;" name="orderRecord.note"></textarea>
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
						<td>订单编号</td>
						<td>用户编号</td>
						<td>用户名</td>
						<td>商品编号</td>
						<td>商品名</td>
						<td>折扣</td>
						<td>金额</td>
						<td>时间</td>
						<td>备注</td>
						<td>订单选项</td>
					</tr>
					<s:iterator value="#request.orderRecordList" id="orderRecordList"
						status="orders">
						<tr id="row<s:property value=" #orders.getIndex() "/>">
							<td><s:property value="#orderRecordList.id" /></td>
							<td><s:property value="#orderRecordList.userID" /></td>
							<td><s:property value="#orderRecordList.userName" /></td>
							<td><s:property value="#orderRecordList.carID" /></td>
							<td><s:property value="#orderRecordList.carName" /></td>
							<td><s:property value="#orderRecordList.discount" /></td>
							<td><s:property value="#orderRecordList.price" /></td>
							<td><s:property value="#orderRecordList.time" /></td>
							<td><s:property value="#orderRecordList.note" /></td>
							<td><a id="update<s:property value=" #orders.getIndex() "/>"
								class="btn btn-success tablebtn"
								onclick="edit(<s:property value=" #orders.getIndex() "/>)">
									<i class="glyphicon glyphicon-pencil"></i>修改
							</a> <a id="delete"
								href="deleteOrderRecordAction?id=<s:property value=" #orderRecordList.id " />"
								class="btn btn-danger tablebtn"> <i
									class="glyphicon glyphicon-remove"></i>删除
							</a></td>
						</tr>
						<tr>
							<td class="nopadding" colspan="10">
								<div id="detail<s:property value=" #orders.getIndex() "/>"
									class="detail">
									<form action="editOrderRecordAction" method="post">
										<fieldset>
											<input type="hidden"
												value="<s:property value=" #orderRecordList.id " />"
												name="orderRecord.id">
											<div class="clearfix">
												<div class="detailitem">
													<label class="control-label" for="input01">用户ID</label> <input
														type="text" placeholder="" class="input-xlarge"
														style="margin-left: 1em;"
														value="<s:property value=" #orderRecordList.userID " />"
														name="orderRecord.userID">
												</div>
												<div class="detailitem">
													<label class="control-label" for="input01">用户名</label> <input
														type="text" placeholder="" class="input-xlarge"
														style="margin-left: 1em;"
														value="<s:property value=" #orderRecordList.userName " />"
														name="orderRecord.userName">
												</div>
											</div>
											<div class="clearfix">
												<div class="detailitem">
													<label class="control-label" for="input01">车型ID</label> <input
														type="text" placeholder="" class="input-xlarge"
														style="margin-left: 1em;"
														value="<s:property value=" #orderRecordList.carID " />"
														name="orderRecord.carID">
												</div>
												<div class="detailitem">
													<label class="control-label" for="input01">车型名</label> <input
														type="text" placeholder="" class="input-xlarge"
														style="margin-left: 1em;"
														value="<s:property value=" #orderRecordList.carName " />"
														name="orderRecord.carName">
												</div>
											</div>
											<div class="clearfix">
												<div class="detailitem">
													<label class="control-label" for="input01">折扣</label> <input
														type="text" placeholder="" class="input-xlarge"
														style="margin-left: 2em;"
														value="<s:property value=" #orderRecordList.discount " />"
														name="orderRecord.discount">
												</div>
												<div class="detailitem">
													<label class="control-label" for="input01">金额</label> <input
														type="text" placeholder="" class="input-xlarge"
														style="margin-left: 2em;"
														value="<s:property value=" #orderRecordList.price " />"
														name="orderRecord.price">
												</div>
											</div>
											<div class="clearfix">
												<div class="detailitem">
													<label class="control-label" for="input01">备注</label>
													<textarea class="input-xlarge" rows="3" cols="30"
														type="text" class="input-xlarge"
														style="resize: none; margin-left: 2em;"
														name="orderRecord.note"><s:property
															value=" #orderRecordList.note " /></textarea>
												</div>
												<div class="detailitem">
													<label class="control-label" for="input01">时间</label> <input
														id="date" type="date" placeholder="" class="input-xlarge"
														style="margin-left: 2em;"
														value="<s:property value=" #orderRecordList.time " />"
														name="orderRecord.time">
												</div>
											</div>

											<div id="cancel<s:property value=" #orders.getIndex() "/>"
												class="btn btn-danger right detailbtn"
												onclick="cancel(<s:property value=" #orders.getIndex() "/>)">取消</div>
											<div id="submit<s:property value=" #orders.getIndex() "/>"
												class="btn btn-success right detailbtn"
												onclick="dataSubmit(<s:property value=" #orders.getIndex() " />)">提交</div>
										</fieldset>
									</form>
								</div>
							</td>
						</tr>
					</s:iterator>
				</table>
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
					<ul class="pagination pages right">
						<%
							if (curPage == 1) {
						%>
						<li class="disabled"><a aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span></a></li>
						<%
							} else {
						%>
						<li><a href="viewOrderRecordAction?page=<%=curPage - 1%>"
							aria-label="Previous"><span aria-hidden="true">&laquo;</span>
						</a></li>
						<%
							}
						%>
						<li id="pageTab1"><a href="viewOrderRecordAction?page=1">1</a></li>
						<li id="leftDot"><a>...</a></li>
						<%
							for (int i = 2; i < maxPage; i++) {
						%>
						<li id="pageTab<%=i%>"><a
							href="viewOrderRecordAction?page=<%=i%>"> <%=i%>
						</a></li>
						<%
							}
						%>
						<li id="rightDot"><a>...</a></li>
						<%
							if (maxPage != 1) {
						%>
						<li id="pageTab<%=maxPage%>"><a
							href="viewOrderRecordAction?page=<%=maxPage%>"> <%=maxPage%>
						</a></li>
						<%
							}
							if (curPage == maxPage) {
						%>
						<li class="disabled"><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
						<%
							} else {
						%>
						<li><a href="viewOrderRecordAction?page=<%=curPage + 1%>"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
						<%
							}
						%>
					</ul>
				</nav>
				<script type="text/javascript">
                                    $(document).ready(function () {
                                        var current = <%=curPage%>;
                                        var max = <%=maxPage%>;
                                        if (current > 4) {
                                            for (var i = 2; i < current - 2; i++) {
                                                var pageTab = "pageTab" + i;
                                                $("#" + pageTab).remove();
                                            }
                                        } else {
                                            $("#leftDot").remove();
                                        }
                                        if (current < max - 3) {
                                            for (var i = max - 1; i > current + 2; i--) {
                                                var pageTab = "pageTab" + i;
                                                $("#" + pageTab).remove();
                                            }
                                        } else {
                                            $("#rightDot").remove();
                                        }
                                        var currentPage = "pageTab" + current;
                                        $("#" + currentPage).attr("class", "active");
                                        $("#" + currentPage).children().attr("href", "");
                                    });
                                </script>
				<div class="footer">
					<hr>
					<p>Created by 阿夯 - 2016</p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>