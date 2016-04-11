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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
                    <c:forEach items="${posts}" var="post">
                        <div class="row">
                            <div class="col-md-12">
                                <h3>
                                    <strong><a href="/post/detail/${post.pid}" class="post-title"><c:out value="${post.title}"/></a></strong>
                                </h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 post-header-line">
                                <span class="glyphicon glyphicon-user"></span>by <a href="#"><c:out value="${post.username}"/></a> |
                                <span class="glyphicon glyphicon-calendar"> </span>2015-04-11<%--<fmt:formatDate value="${post.ctime}" type="date"/>--%> |
                                <span class="glyphicon glyphicon-comment"></span><a href="#"> 3 Comments</a> |
                                <i class="icon-share"></i><a href="#">39 Shares</a> |
                                <span class="glyphicon glyphicon-tags"></span>Category :
                                <a href="#">
                                <span class="label label-info" style="margin-left: 5px">
                                    <c:out value="${post.category}"/>
                                </span
                                </a>
                                <span class="glyphicon glyphicon-tags"></span>Tags :
                                    <c:forEach items="${post.tags}" var="tag">
                                        <a href="#">
                                            <span class="label label-info" style="margin-left: 5px">
                                                <c:out value="${tag}"/>
                                            </span>
                                        </a>
                                    </c:forEach>
                            </div>
                        </div>
                        <br>
                    </c:forEach>
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
