<%--
  Created by IntelliJ IDEA.
  User: hoangviet
  Date: 8/1/2018
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <%
        Cookie[] listCookie = request.getCookies();
        String user = "";
        String pass = "";
        int count = 0;
        if(listCookie != null){
            while(count < listCookie.length){
                if(listCookie[count].getName().equals("user")){
                    user = listCookie[count].getValue();
                }
                if(listCookie[count].getName().equals("pass")){
                    pass = listCookie[count].getValue();
                }
                count++;
            }
        }
    %>
    ${error}
    <h1>Login</h1>
    <form method="post" action="/login">
        <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input type="text" class="form-control" name="txtUsername" id="exampleInputEmail1"
                   placeholder="Enter username">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" name="txtPassword" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
