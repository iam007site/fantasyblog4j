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
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../common/head.jsp"/>
    <title>文章管理</title>
    <link type="text/css" rel="stylesheet" href="/resources/post/css/listPost.css">
</head>
<body>
<jsp:include page="../common/nav.jsp"></jsp:include>
<div class="container">

    <div class="panel panel-primary">
        <!-- Default panel contents -->
        <div class="panel-heading">文章管理</div>
        <div class="panel-body"></div>
        <table class="table table-bordered table-hover table-responsive">
            <thead>
            <tr>
                <th class="col-md-1">id</th>
                <th class="col-md-5">文章标题</th>
                <th class="col-md-1">分类</th>
                <th class="col-md-1">状态</th>
                <th class="col-md-2">修改时间</th>
                <th class="col-md-2">文章管理</th>
            </tr>
            </thead>
            <tbody>
            <c:choose>
                <c:when test="${not empty list}">
                    <c:forEach var="item" items="${list}">
                        <tr>
                            <td><c:out value="${item.id}"></c:out></td>
                            <td><c:out value="${item.title}"></c:out></td>
                            <td><c:out value="${item.category}"></c:out></td>
                            <td>
                                <c:choose>
                                    <c:when test="${item.state eq 0}">
                                        已发布
                                    </c:when>
                                    <c:otherwise>
                                        草稿
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td><fmt:formatDate value="${item.mtime}"
                                                type="both" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                            <td>
                                <a href="/u/post/edit?pid=${item.id}">修改</a>
                                &nbsp;
                                <a href="/u/post/preview?pid=${item.id}">预览</a>
                                &nbsp;
                                <a href="/u/post/delete?pid=${item.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <h1 style="text-align: center;">你还没发布过文章呢！</h1>
                </c:otherwise>
            </c:choose>

            </tbody>
        </table>
    </div>
    <br> <br>

    <nav>
        <ul class="pager">
            <c:choose>
                <c:when test="${page gt 1}">
                    <li class="previous"><a href="/u/post/manager/${page-1}"><span aria-hidden="true">&larr;</span> 上一页</a></li>
                </c:when>
                <c:otherwise>
                    <li class="previous disabled"><a href="#"><span aria-hidden="true">&larr;</span> 上一页</a></li>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${fn:length(list) eq pageSize}">
                    <li class="next"><a href="/u/post/manager/${page+1}">下一页 <span aria-hidden="true">&rarr;</span></a></li>
                </c:when>
                <c:otherwise>
                    <li class="next disabled"><a href="#">下一页 <span aria-hidden="true">&rarr;</span></a></li>
                </c:otherwise>
            </c:choose>

        </ul>
    </nav>

</div>
</body>
<jsp:include page="../common/footer.jsp"/>

</html>
