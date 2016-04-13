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
                                <ul class="nav nav-list menu">
                                    <li><a href="dispatcherAction!goAddCarImage">图片上传</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xs-9 list">
                            <div>
                                <button id="create" class="btn btn-warning createbtn">
                                    <i class="glyphicon glyphicon-plus"></i>新建
                                </button>
                                <div id="newform" class="header">
                                    <form class="form-horizontal" action="addUserAction" method="post">
                                        <fieldset>
                                            <div id="legend" class="">
                                                <legend class="">添加新顾客</legend>
                                            </div>
                                            <div class="control-group">
                                                <!-- Text input-->
                                                <label class="control-label" for="input01">姓名</label>
                                                <input type="text" placeholder="" class="input-xlarge">
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label">性别</label>
                                                <select class="input-xlarge" style="float: right;">
                                                    <option>男</option>
                                                    <option>女</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                            <div class="control-group">
                                                <!-- Text input-->
                                                <label class="control-label" for="input01">手机号</label>
                                                <input type="text" placeholder="" class="input-xlarge">
                                            </div>
                                            <div class="control-group">
                                                <!-- Text input-->
                                                <label class="control-label" for="input01">电子邮箱</label>
                                                <input type="text" placeholder="" class="input-xlarge">
                                            </div>
                                            <div class="control-group">
                                                <!-- Text input-->
                                                <label class="control-label" for="input01">年龄</label>
                                                <input type="text" placeholder="" class="input-xlarge">
                                            </div>
                                            <div class="control-group">
                                                <!-- Text input-->
                                                <label class="control-label" for="input01">住址</label>
                                                <input type="text" placeholder="" class="input-xlarge">
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
                                <s:iterator value="#request.userList" id="userList" status="users">
                                    <tr id="row<s:property value=" #users.getIndex() "/>" onmouseover="show('row',<s:property value=" #users.getIndex() "/>)">
                                        <td><s:property value="#userList.id" /></td>
                                        <td><s:property value="#userList.name" /></td>
                                        <td><s:property value="#userList.gender" /></td>
                                        <td><s:property value="#userList.tel" /></td>
                                        <td><s:property value="#userList.email" /></td>
                                        <td><s:property value="#userList.age" /></td>
                                        <td><s:property value="#userList.address" /></td>
                                        <td>
                                            <a id="update<s:property value=" #users.getIndex() "/>" class="btn btn-success tablebtn" onclick="edit(<s:property value=" #users.getIndex() "/>)"> <i class="glyphicon glyphicon-pencil"></i>修改
                                            </a>
                                            <a id="delete" href="deleteUserAction?id=<s:property value=" #userList.id " />" class="btn btn-danger tablebtn"> <i class="glyphicon glyphicon-remove"></i>删除
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="nopadding" colspan="8">
                                            <div id="detail<s:property value=" #users.getIndex() "/>" class="detail">
                                                <form action="editUserAction" method="post">
                                                    <fieldset>
                                                        <div class="clearfix">
                                                            <div class="detailitem">
                                                                <label class="control-label" for="input01">姓名</label>
                                                                <input type="text" placeholder="" class="input-xlarge" style="margin-left: 2em;" value="<s:property value=" #userList.name " />">
                                                            </div>
                                                            <div class="detailitem">
                                                                <label class="control-label" for="input01">性别</label>
                                                                <input type="text" placeholder="" class="input-xlarge" style="margin-left: 2em;" value="<s:property value=" #userList.name " />">
                                                            </div>
                                                        </div>
                                                        <div class="clearfix">
                                                            <div class="detailitem">
                                                                <label class="control-label" for="input01">手机号</label>
                                                                <input type="text" placeholder="" class="input-xlarge" style="margin-left: 1em;" value="<s:property value=" #userList.name " />">
                                                            </div>
                                                            <div class="detailitem">
                                                                <label class="control-label" for="input01">电子邮箱</label>
                                                                <input type="text" placeholder="" class="input-xlarge" style="margin-left: 0em;" value="<s:property value=" #userList.name " />">
                                                            </div>
                                                        </div>
                                                        <div class="clearfix">
                                                            <div class="detailitem">
                                                                <label class="control-label" for="input01">年龄</label>
                                                                <input type="text" placeholder="" class="input-xlarge" style="margin-left: 2em;" value="<s:property value=" #userList.name " />">
                                                            </div>
                                                            <div class="detailitem">
                                                                <label class="control-label" for="input01">住址</label>
                                                                <input type="text" placeholder="" class="input-xlarge" style="margin-left: 2em;" value="<s:property value=" #userList.name " />">
                                                            </div>
                                                        </div>
                                                        <div class="clearfix">
                                                            <div id="submit<s:property value=" #users.getIndex() "/>" class="btn btn-success right detailbtn">提交</div>
                                                        </div>
                                                        <div class="clearfix">
                                                            <div id="cancel<s:property value=" #users.getIndex() "/>" class="btn btn-danger right detailbtn" onclick="cancel(<s:property value=" #users.getIndex() "/>)">取消</div>
                                                        </div>
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
                                            <li class="disabled">
                                                <a aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a>
                                            </li>
                                            <%
						} else {
					%>
                                                <li><a href="viewUserAction?page=<%=curPage - 1%>" aria-label="Previous"><span aria-hidden="true">&laquo;</span>
					</a></li>
                                                <%
						}
					%>
                                                    <li id="pageTab1"><a href="viewUserAction?page=1">1</a></li>
                                                    <li id="leftDot"><a>...</a></li>
                                                    <%
						for (int i = 2; i < maxPage; i++) {
					%>
                                                        <li id="pageTab<%=i%>">
                                                            <a href="viewUserAction?page=<%=i%>">
                                                                <%=i%>
                                                            </a>
                                                        </li>
                                                        <%
						}
					%>
                                                            <li id="rightDot"><a>...</a></li>
                                                            <%
						if (maxPage != 1) {
					%>
                                                                <li id="pageTab<%=maxPage%>">
                                                                    <a href="viewUserAction?page=<%=maxPage%>">
                                                                        <%=maxPage%>
                                                                    </a>
                                                                </li>
                                                                <%
						}
						if (curPage == maxPage) {
					%>
                                                                    <li class="disabled">
                                                                        <a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                                                                        </a>
                                                                    </li>
                                                                    <%
						} else {
					%>
                                                                        <li>
                                                                            <a href="viewUserAction?page=<%=curPage + 1%>" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                                                                            </a>
                                                                        </li>
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