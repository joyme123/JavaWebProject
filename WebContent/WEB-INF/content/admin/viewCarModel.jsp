<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
        <%@page import="com.ssh.domain.CarImage"%>
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
                        var data = "row" + value;
                        var door = $("#" + data).children("#doorData").html();
                        var seat = $("#" + data).children("#seatData").html();
                        $("#door" + value + " #" + door + "d").attr("selected", "true");
                        $("#seat" + value + " #" + seat + "p").attr("selected", "true");
                        $("#" + txt).slideToggle(500);
                    }

                    function showPic() {
                        layer.open({
                            type: 2,
                            title: false,
                            shadeClose: true,
                            shade: 0.8,
                            area: ["70%", '70%'],
                            content: 'viewCarImageAction?carModelId=12'
                        });
                    }
                </script>
            </head>

            <body class="admin">
                <%@include file="../navbar.jsp"%>
                    <div></div>
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
                                    <ul class="nav nav-list menu">
                                        <li><a href="dispatcherAction!goAddCarImage">图片上传</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-9 col-xs-12 list">
                                <div>
                                    <button id="create" class="btn btn-warning createbtn ">
                                        <i class="glyphicon glyphicon-plus"></i>新建
                                    </button>
                                    <div id="newform" class="header" action="addCarModelAction" method="post">
                                        <form action="addCarModelAction" method="post">
                                            <fieldset>
                                                <div>
                                                    <legend class="">添加新车</legend>
                                                </div>
                                                <div>
                                                    <label class="control-label" for="input01">车型名</label>
                                                    <input type="text" placeholder="" class="input-xlarge" name="carModel.modelName">
                                                </div>
                                                <div>
                                                    <label class="control-label">门数</label>
                                                    <select class="input-xlarge" name="carModel.doorCount">
                                                        <option value="4">4门</option>
                                                        <option value="2">2门</option>
                                                    </select>
                                                    <label class="control-label">座位数</label>
                                                    <select class="input-xlarge" name="carModel.seatCount">
                                                        <option value="2">2人</option>
                                                        <option value="5">5人</option>
                                                        <option value="7">7人</option>
                                                        <option value="9">9人</option>
                                                    </select>
                                                </div>
                                                <div>
                                                    <label class="control-label" for="input01">价格</label>
                                                    <input type="text" placeholder="" class="input-xlarge" name="carModel.price">
                                                </div>
                                                <div>
                                                    <label class="control-label" for="input01">发动机转速</label>
                                                    <input type="text" placeholder="" class="input-xlarge" name="carModel.engineSpeed">
                                                </div>
                                                <div>
                                                    <label class="control-label" for="input01">颜色 </label>
                                                    <input type="text" placeholder="" class="input-xlarge" name="carModel.color">
                                                </div>
                                                <div>
                                                    <label class="control-label" for="input01">库存</label>
                                                    <input type="text" placeholder="" class="input-xlarge" name="carModel.storage">
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
                                            <td></td>
                                            <td>编号</td>
                                            <td>车型名</td>
                                            <td>门数</td>
                                            <td>座位数</td>
                                            <td>价格</td>
                                            <td>发动机转速</td>
                                            <td>颜色</td>
                                            <td>库存</td>
                                            <td>操作</td>
                                        </tr>
                                        <s:iterator value="#request.carModelList" id="carModelList" status="cars">
                                            <tr id="row<s:property value=" #cars.getIndex() "/>">
                                                <td><a onclick="showPic()"><i
										class="glyphicon glyphicon-picture"></i></a></td>
                                                <td><s:property value="#carModelList.id" /></td>
                                                <td><s:property value="#carModelList.modelName" /></td>
                                                <td id="doorData"><s:property value="#carModelList.doorCount" /></td>
                                                <td id="seatData"><s:property value="#carModelList.seatCount" /></td>
                                                <td><s:property value="#carModelList.price" /></td>
                                                <td><s:property value="#carModelList.engineSpeed" /></td>
                                                <td><s:property value="#carModelList.color" /></td>
                                                <td><s:property value="#carModelList.storage" /></td>
                                                <td>
                                                    <a id="update<s:property value=" #cars.getIndex() "/>" class="btn btn-success tablebtn" onclick="edit(<s:property value=" #cars.getIndex() "/>)"> <i class="glyphicon glyphicon-pencil"></i>修改
                                                    </a>
                                                    <a id="delete" href="deleteCarModelAction?id=<s:property value=" #carModelList.id " />" class="btn btn-danger tablebtn"> <i class="glyphicon glyphicon-remove"></i>删除
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="nopadding" colspan="10">
                                                    <div id="detail<s:property value=" #cars.getIndex() "/>" class="detail">
                                                        <form action="editCarModelAction" method="post">
                                                            <fieldset>
                                                                <input type="hidden" value="<s:property value=" #carModelList.id " />" name="carModel.id">
                                                                <div class="clearfix">
                                                                    <!-- Text input-->
                                                                    <div class="detailitem">
                                                                        <label class="control-label" for="input01">车型名</label>
                                                                        <input type="text" placeholder="" class="input-xlarge" style="margin-left: 2em;" value="<s:property value=" #carModelList.modelName " />" name="carModel.modelName">
                                                                    </div>

                                                                    <div class="detailitem">
                                                                        <label class="control-label" for="input01">颜色</label>
                                                                        <input type="text" placeholder="" class="input-xlarge" style="margin-left: 3em;" value="<s:property value=" #carModelList.color " />" name="carModel.color">
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix">
                                                                    <div class="detailitem">
                                                                        <label class="control-label">门数</label>
                                                                        <select id="door<s:property value=" #cars.getIndex() "/>" class="input-xlarge" style="margin-left: 3em;" name="carModel.doorCount">
                                                                            <option id="4d" value="4">4门</option>
                                                                            <option id="2d" value="2">2门</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="detailitem">
                                                                        <label class="control-label">座位数</label>
                                                                        <select id="seat<s:property value=" #cars.getIndex() "/>" class="input-xlarge" style="margin-left: 2em;" name="carModel.seatCount">
                                                                            <option id="2p" value="2">2人</option>
                                                                            <option id="5p" value="5">5人</option>
                                                                            <option id="7p" value="7">7人</option>
                                                                            <option id="9p" value="9">9人</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix">
                                                                    <div class="detailitem">
                                                                        <label class="control-label" for="input01">价格</label>
                                                                        <input type="text" placeholder="" class="input-xlarge" style="margin-left: 3em;" value="<s:property value=" #carModelList.price " />" name="carModel.price">
                                                                    </div>
                                                                    <div class="detailitem">
                                                                        <label class="control-label" for="input01">发动机转速</label>
                                                                        <input type="text" placeholder="" class="input-xlarge" value="<s:property value=" #carModelList.engineSpeed " />">
                                                                    </div>
                                                                </div>
                                                                <div class="clearfix">
                                                                    <div class="detailitem">
                                                                        <label class="control-label" for="input01">库存</label>
                                                                        <input type="text" placeholder="" class="input-xlarge" style="margin-left: 3em;" value="<s:property value=" #carModelList.storage " />" name="carModel.storage">
                                                                    </div>
                                                                    <div id="submit<s:property value=" #cars.getIndex() "/>" class="btn btn-success right detailbtn" onclick="dataSubmit(<s:property value=" #cars.getIndex() " />)">提交</div>
                                                                </div>
                                                                <div class="clearfix">
                                                                    <div id="cancel<s:property value=" #cars.getIndex() "/>" class="btn btn-danger right detailbtn" onclick="cancel(<s:property value=" #cars.getIndex() "/>)">取消</div>
                                                                </div>
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
                                                    <li><a href="viewCarModelAction?page=<%=curPage - 1%>" aria-label="Previous"><span aria-hidden="true">&laquo;</span>
						</a></li>
                                                    <%
							}
						%>
                                                        <li id="pageTab1"><a href="viewCarModelAction?page=1">1</a></li>
                                                        <li id="leftDot"><a>...</a></li>
                                                        <%
							for (int i = 2; i < maxPage; i++) {
						%>
                                                            <li id="pageTab<%=i%>">
                                                                <a href="viewCarModelAction?page=<%=i%>">
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
                                                                        <a href="viewCarModelAction?page=<%=maxPage%>">
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
                                                                                <a href="viewCarModelAction?page=<%=curPage + 1%>" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
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