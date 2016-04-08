<%--
  Created by IntelliJ IDEA.
  User: huangshanqi
  Date: 2016/4/6
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login page</title>
</head>
<body>
<h1>It's login page</h1>
<form action="/login" method="post" accept-charset="utf-8">
    <input name="username" type="text" placeholder="请输入用户名.." required/><br/>
    <input name="password" type="password" placeholder="请输入密码...." required/><br/>
    <button type="submit" name="登录" value="登录">登录</button><br/>
</form>
</body>
</html>
