<%--
    Going deeper into Jakarta Enterprise Edition
    https://github.com/egalli64/jees2
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Coders</title>
<%@include file="/include/link.html"%>
</head>
<body>
    <header>
        <h1>Coders</h1>
        <%@include file="/m2/include/navHome.html"%>
    </header>

    <table>
        <tr>
            <th>id</th>
            <th>first name</th>
            <th>last name</th>
            <th>hired</th>
            <th>salary</th>
        </tr>
        <c:forEach var="coder" items="${coders}">
            <tr>
                <td>${coder.id}</td>
                <td>${coder.firstName}</td>
                <td>${coder.lastName}</td>
                <td>${coder.hired}</td>
                <td>${coder.salary}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>