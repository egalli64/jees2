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
<title>JSTL loops</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" href="/jees2/css/simple.css">
</head>
<body>
    <h1>JSTL loops</h1>
    <nav>
        <a href="/jees2/index.html">Home</a>
    </nav>

    <h2>Plain forEach on a Java Bean</h2>
    <table>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
            </tr>
        </c:forEach>
    </table>
    <hr>

    <h2>A more complicated forEach</h2>
    <c:forEach var="value" items="${values}" begin="0" end="11" step="3" varStatus="status">
        <p>
            ${status.count}: ${value}
            <c:if test="${status.first}">(first element)</c:if>
            <c:if test="${status.last}">(last element)</c:if>
            <c:if test="${not(status.first or status.last)}">(index is ${status.index})</c:if>
        </p>
    </c:forEach>
    <hr>

    <h2>For each token in a CSV string</h2>
    <ol>
        <c:forTokens var="token" items="${names}" delims=",">
            <li>${token}</li>
        </c:forTokens>
    </ol>
</body>
</html>