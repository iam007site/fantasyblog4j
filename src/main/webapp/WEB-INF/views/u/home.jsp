<%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 2016/4/12
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理页</title>
    <jsp:include page="../common/head.jsp"/>
</head>
<body>
<jsp:include page="../common/nav.jsp"/>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <a class="btn btn-info btn-lg" href="/u/post" target="_blank">发博文</a>
            &nbsp;&nbsp;
            <a class="btn btn-info btn-lg" href="/note/${uid}" target="_blank">随手记</a>
            &nbsp;&nbsp;
            <a class="btn btn-info btn-lg" href="#" target="_blank">文章管理</a>
        </div>

    </div>
</div>

<jsp:include page="../common/footer.jsp"/>
</body>
</html>
