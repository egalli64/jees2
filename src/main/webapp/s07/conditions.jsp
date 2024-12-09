<%-- 
    Introduction to Jakarta Enterprise Edition - JSP
    https://github.com/egalli64/jees2
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSTL conditions</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" href="/jees2/css/simple.css">
</head>
<body>
    <h1>Conditional code based on parameters x and y</h1>

    <nav>
        <a href="/jees2/index.html">Home</a>
    </nav>

    <h2>Core if</h2>
    <c:if test="${not empty param.x}">
        <p>Parameter x is ${param.x}</p>
    </c:if>
    <c:if test="${not empty param.y}">
        <p>Parameter y is ${param.y}</p>
    </c:if>
    <c:if test="${empty param.x and empty param.y}">
        <p>Both x and y are missing</p>
    </c:if>

    <h2>Core choose-when</h2>
    <c:choose>
        <c:when test="${not empty param.x}">
            <p>Parameter x is ${param.x}</p>
        </c:when>
        <c:when test="${not empty param.y}">
            <p>There's no x, but y is ${param.y}</p>
        </c:when>
        <c:otherwise>
            <p>Both x and y are empty / not passed parameter!</p>
        </c:otherwise>
    </c:choose>
</body>
</html>