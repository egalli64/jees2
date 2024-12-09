<%-- 
    Introduction to Jakarta Enterprise Edition - JSP
    https://github.com/egalli64/jees2
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>EL Implicit Objects</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" href="/jees2/css/simple.css">
</head>
<body>
    <h1>EL Implicit Objects</h1>
    <nav>
        <a href="/jees2/index.html">Home</a>
    </nav>

    <h2>The page context</h2>
    <p>Method used for the request: ${pageContext.request.method}</p>

    <h2>Accessing parameters</h2>
    <p>Name: ${param.name}</p>
    <p>First color: ${paramValues.colors[0] ne null ? paramValues.colors[0] : "N/A"}</p>
    <p>Second color: ${paramValues.colors[1] ne null ? paramValues.colors[1] : "N/A"}</p>
    <%-- Same as above, using empty just to check null --%>
    <p>Third color: ${empty paramValues.colors[2] ? "N/A" : paramValues.colors[2]}</p>

    <h2>Accessing an attribute straight from the request scope</h2>
    <p>Example: ${requestScope.example}</p>
</body>
</html>