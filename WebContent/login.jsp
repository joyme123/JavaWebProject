<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>  
    <div>  
        <form action="adminLogin" method="get">  
            用户名：<input type="text" name="admin.name"/><br/>  
            密  码：<input type="password" name="admin.pass"/><br/>  
            <input type="submit" value="登入"/>  
            <input type="reset" value="重置"/>  
        </form>  
    </div>  
    <div>  
        用户名为:${admin.name}  
    </div>  
</body>
</html>