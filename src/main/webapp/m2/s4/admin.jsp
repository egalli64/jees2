<%--
    Going deeper into Jakarta Enterprise Edition
    https://github.com/egalli64/jees2
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Admin homepage</title>
<%@include file="/include/link.html"%>
</head>
<body>
    <h1>${initParam.admin}</h1>
    <%@include file="/m2/include/navHome.html"%>
    
    <c:if test="${birthday}">
        <h2>Happy birthday!</h2>
    </c:if>
</body>
</html>