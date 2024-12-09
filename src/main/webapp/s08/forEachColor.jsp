<%-- 
    Introduction to Jakarta Enterprise Edition - JSP
    https://github.com/egalli64/jees2
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ForEach color</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" href="/jees2/css/simple.css">
</head>
<body>
    <h1>ForEach color</h1>
    <nav>
        <a href="/jees2/index.html">Home</a>
    </nav>

    <ul>
        <c:forEach var="color" items="${paramValues.colors}">
            <li>${color}</li>
        </c:forEach>
    </ul>
</body>
</html>