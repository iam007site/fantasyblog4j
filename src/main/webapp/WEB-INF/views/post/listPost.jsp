<%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 2016/4/11
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../common/head.jsp"></jsp:include>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="/resources/post/css/listPost.css">
</head>
<body>
<jsp:include page="../common/nav.jsp"></jsp:include>
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="row">
                <div class="col-md-12 post">
                    <%
                        for(int i = 0;i<15;i++){
                    %>
                    <div class="row">
                        <div class="col-md-12">
                            <h3>
                                <strong><a href="" class="post-title">Cool Share Button Effects Styles</a></strong>
                            </h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 post-header-line">
                            <span class="glyphicon glyphicon-user"></span>by <a href="#">Bhaumik</a> |
                            <span class="glyphicon glyphicon-calendar"> </span>Sept 16th, 2012 |
                            <span class="glyphicon glyphicon-comment"></span><a href="#"> 3 Comments</a> |
                            <i class="icon-share"></i><a href="#">39 Shares</a> |
                            <span class="glyphicon glyphicon-tags"></span>Tags :
                            <a href="#"><span class="label label-info">Snipp</span></a>
                            <a href="#"><span class="label label-info">Bootstrap</span></a>
                            <a href="#"><span class="label label-info">UI</span></a>
                            <a href="#"><span class="label label-info">growth</span></a>
                        </div>
                    </div>
                    <br>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</body>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>
