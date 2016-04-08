<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查看车型</title>
<script type="text/javascript" src="Resource/js/public/jquery.min.js"></script>
<script type="text/javascript" src="Resource/js/layer/layer.js"></script>
</head>
	<script>
	function edit(){
		layer.open({
			  type: 1,
			  skin: 'layer_edit', //样式类名
			  closeBtn: 1, //显示关闭按钮
			  shift: 2,
			  shadeClose: false, //开启遮罩关闭
			  content: '<form action="editCarModelAction" method="POST">'+
			  '车型名:<input type="text" name="carModel.modelName"/><br>'+
			  '车长:<input type="text" name="carModel.length"/><br>'+
			  '车宽:<input type="text" name="carModel.width"/><br>'+
			  '车高:<input type="text" name="carModel.height"/><br>'+
		      '轴距:<input type="text" name="carModel.wheelBase"/><br>'+
		      '前轮距:<input type="text" name="carModel.frontWheelTrack"/><br>'+
		      '后轮距:<input type="text" name="carModel.rearWheelTrack"/><br>'+
		      '最小离地距离:<input type="text" name="carModel.minimumDistance"/><br>'+
		      '风阻系数:<input type="text" name="carModel.dragCoefficient"/><br/>'+
		      '最小转弯直径:<input type="text" name="carModel.minimumTurningDiameter"/><br>'+
		      '允许总重量:<input type="text" name="carModel.allowMaxWeight"/><br>'+
		      '门数:<input type="text" name="carModel.doorCount"/><br>'+
		      '座位数:<input type="text" name="carModel.seatCount"/><br>'+
		      '后备箱容积:<input type="text" name="carModel.trunkVolume"/><br>'+
		      '油箱容积:<input type="text" name="carModel.fuelTankVolume"/><br>'+
		      '颜色:<input type="text" name="carModel.color"/><br>'+
		      '库存:<input type="text" name="carModel.stock"/><br>'+
		      '定价:<input type="text" name="carModel.price"/><br>'+
		      '<input type="submit" value="修改"/><input type="reset" value="重置"/>'+
		      '</form>'
			});
	}

	</script>
<body>
	<s:iterator value="#request.carModelList" id="carModelList">
		车型名:<s:property  value="#carModelList.modelName"/>
		剩下的参数用同样的格式获取
		库存:<s:property  value="#carModelList.stock"/>
		<button type="button" onclick="edit()">编辑</button>
		<s:a href="deleteCarModelAction?id=%{#carModelList.id}">删除</s:a>
		<br>
	</s:iterator>
	总页数:<s:property value="#request.pageCount"/>
	<a href="dispatcherAction!goIndex">返回管理员面板</a>
</body>
</html>