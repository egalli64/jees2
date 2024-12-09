<%--
    Going deeper into Jakarta Enterprise Edition
    https://github.com/egalli64/jees2
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Error page</title>
<%@include file="/include/link.html"%>
<link rel="stylesheet" href="500.css">
</head>
<body>
    <h1>Internal error</h1>
    <%@include file="/include/navHome.html"%>

    <div id="warn">
        <p>Exception: ${pageContext.exception["class"]}</p>
        <p>Message: ${pageContext.exception["message"]}</p>
    </div>

    <p>For more details, ask ${initParam.admin} to show you the Web Server log</p>
</body>
</html>