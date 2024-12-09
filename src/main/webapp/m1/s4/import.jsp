<%-- 
    Going deeper into Jakarta Enterprise Edition
    https://github.com/egalli64/jees2
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="IT">
<head>
<meta charset="UTF-8">
<title>Import with an accent</title>
<%@include file="/include/link.html"%>
</head>
<body>
    <%@include file="/include/navHome.html"%>

    <h1>Import a HTML fragment</h1>

    <h2>By c:import with charEncoding</h2>
    <c:import url="fragment/accent.html" charEncoding="UTF-8" />

    <h2>By include directive</h2>
    <%@include file="fragment/accent.html"%>
</body>
</html>