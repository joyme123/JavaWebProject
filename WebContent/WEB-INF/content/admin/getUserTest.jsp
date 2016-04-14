<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="assets/js/jquery-2.2.3.min.js"></script>
<title>测试通过ajax获取用户名的页面</title>
</head>
<body>
	<form id="userForm">
		<input type="text" name="id">
		<input type="submit" value="提交" id="getBtn">
	</form>
	<script>
		$("#getBtn").click(function(){
			$.post("getUserByIdAction",$("#userForm").serializeArray(),
				function(data,statusText){
					alert(data);
				
				},"html");
		});
	</script>
</body>
</html>