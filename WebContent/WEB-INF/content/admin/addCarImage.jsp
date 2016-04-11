<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
   <s:form action="addCarImageAction" method="post"  enctype="multipart/form-data">  
       <s:file name="file" label="文件1"></s:file>  
       <s:file name="file" label="文件2"></s:file>  
       <s:file name="file" label="文件3"></s:file>  
       <s:file name="file" label="文件4"></s:file>  
       <s:submit value="上传"></s:submit>  
    </s:form>  
</body>
</html>