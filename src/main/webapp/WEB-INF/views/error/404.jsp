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
    <title>about</title>
    <jsp:include page="../common/head.jsp"/>
</head>
<body>
<jsp:include page="../common/nav.jsp"/>

<div class="container">
    <div class="error-page" style="padding: 40px 15px;text-align: center;">
        <h2>Oops!</h2>
        <h1 class="404error" style="font-size :100px !important;"> 404 </h1>
        <h2>Not Found</h2>
        <div class="error-details">
            Sorry, an error has occured. Requested page not found!
        </div>

        <form class="form-inline">
            <div class="form-group">
                <label for="search">Search</label>
                <input type="text" class="form-control" id="search" placeholder="Search something else...">
            </div>
            <button type="submit" class="btn btn-primary btn-large">Serch</button>
        </form>


        <div class="error-actions" style="margin-top:15px;margin-bottom:15px;">
            <a href="{{url('/')}}" class="btn btn-primary btn-lg" style=" margin-right:10px;"><span class="glyphicon glyphicon-home"></span>
                Take Me Home </a><a href="{{url('/contact-us')}}" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-envelope"></span> Contact Support </a>
        </div>
    </div>

</div>

<jsp:include page="../common/footer.jsp"/>
</body>
</html>
