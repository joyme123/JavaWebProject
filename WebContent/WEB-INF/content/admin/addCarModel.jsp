<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix ="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加车型</title>
</head>
<body>
        <s:form action="addCarModelAction" method="POST">  
           	 <s:textfield label="车型名" name="carModel.modelName"/>
          	 <s:textfield label="车长" name="carModel.length"/>
          	 <s:textfield label="车宽" name="carModel.width"/>
         	 <s:textfield label="车高" name="carModel.height"/>
         	 <s:textfield label="轴距" name="carModel.wheelBase"/>
         	 <s:textfield label="前轮距" name="carModel.frontWheelTrack"/>
         	 <s:textfield label="后轮距" name="carModel.rearWheelTrack"/>
         	 <s:textfield label="最小离地距离" name="carModel.minimumDistance"/>
        	 <s:textfield label="风阻系数" name="carModel.dragCoefficient"/><br/>
        	 <s:textfield label="最小转弯直径" name="carModel.minimumTurningDiameter"/>
        	 <s:textfield label="允许总重量" name="carModel.allowMaxWeight"/>
        	 <s:textfield label="门数" name="carModel.doorCount"/>
        	 <s:textfield label="座位数" name="carModel.seatCount"/>
        	 <s:textfield label="后备箱容积" name="carModel.trunkVolume"/>
        	 <s:textfield label="油箱容积" name="carModel.fuelTankVolume"/>
        	 <s:textfield label="颜色" name="carModel.color"/>
        	 <s:textfield label="库存" name="carModel.stock"/>
        	 <s:textfield label="定价" name="carModel.price"/>
            <s:submit value="添加"/>  
            <s:reset value="重置"/>  
        </s:form>  
</body>
</html>