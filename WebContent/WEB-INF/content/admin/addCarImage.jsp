<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Welcome</title>
            <link rel="icon" href="Favicon.ico" />
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

        <body>
            <%@include file="../navbar.jsp"%>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-3 hidden-xs navlist">
                        <div class="nav-list">
                            <ul class="nav nav-list menu">
                                <li><a href="viewCarModelAction">车型管理</a></li>
                            </ul>
                            <ul class="nav nav-list menu">
                                <li><a href="viewUserAction">用户管理</a></li>
                            </ul>
                            <ul class="nav nav-list menu">
                                <li><a href="viewOrderRecordAction">订单管理</a></li>
                            </ul>
                            <ul class="nav nav-list active menu">
                                <li><a href="">图片上传</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-9 col-xs-12 list">
                        <button onclick="addFile()">增加图片</button>
                        <form action="addCarImageAction" method="post" enctype="multipart/form-data">
                            <input type="file" name="uploadFile" id="uploadFile">
                            <input id="carID" name="carModelId" label="车型id">
                            <input type="submit" value="上传">
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>