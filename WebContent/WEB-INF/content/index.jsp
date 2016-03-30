<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>  
    <div>  
        <s:form action="adminLogin" method="POST">  
            用户名：<s:textfield name="admin.name"/><br/>  
            密  码：<s:textfield name="admin.pass"/><br/>  
            <s:submit value="登录"/>  
            <s:submit value="注册" onclick="regist()"/>  
        </s:form>  
    </div>  
    <script>
    	function regist(){
    		targetForm=document.forms[0];
    		targetForm.action="adminLogin!regist";
    	}
    </script>
</body>
</html>