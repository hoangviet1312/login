<%--
  Created by IntelliJ IDEA.
  User: hoangviet
  Date: 8/1/2018
  Time: 9:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>$Title$</title>
</head>
<body>
<h1>Home</h1>
<%
    String username = (String)session.getAttribute("username");
    if (username != null) {%>
Welcome : <%= username%>
<a href="/logout?islogout=ok">logout</a>
<%}%>
</body>
</html>
