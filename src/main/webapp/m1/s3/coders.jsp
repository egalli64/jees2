<%-- 
    Going deeper into Jakarta Enterprise Edition
    https://github.com/egalli64/jees2
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- !!! What is doing SQL code in the presentation layer? !!!  -->
<sql:query dataSource="jdbc/hron" var="coders">
    SELECT employee_id, first_name, last_name, hired, salary
    FROM employee
    WHERE department_id = 6
</sql:query>
<title>Coders</title>
<%@include file="/include/link.html"%>
</head>
<body>
    <h1>Coders by JSTL (don't do this in production!)</h1>
    <%@include file="/include/navHome.html"%>

    <table>
        <tr>
            <th>id</th>
            <th>first name</th>
            <th>last name</th>
            <th>hired</th>
            <th>salary</th>
        </tr>
        <c:forEach var="cur" items="${coders.rows}">
            <tr>
                <td>${cur.EMPLOYEE_ID}</td>
                <td>${cur.FIRST_NAME}</td>
                <td>${cur.LAST_NAME}</td>
                <td>${cur.HIRED}</td>
                <td>${cur.SALARY}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>