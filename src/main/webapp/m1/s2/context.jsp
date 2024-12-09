<%-- 
    Going deeper into Jakarta Enterprise Edition
    https://github.com/egalli64/jees2
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accessing to a context parameter</title>
<%@include file="/include/link.html"%>
</head>
<body>
    <h1>Accessing a context parameter</h1>
    <%@include file="/include/navHome.html"%>
    <!-- see WEB-INF/web.xml -->
    <p>The administrator name is ${initParam.admin}!</p>
</body>
</html>