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
    <title>evilcoder</title>
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
                                <span class="glyphicon glyphicon-user"></span>by <a href="/post/search/${post.uid}/0/0/1?kw="><c:out value="${post.username}"/></a> |
                                <span class="glyphicon glyphicon-calendar"> </span><fmt:formatDate value="${post.ctime}" type="date" /> |
                                <span class="glyphicon glyphicon-comment"></span><a href="#"> 0 评论</a> |
                                <i class="icon-share"></i><a href="#"><c:out value="${post.visitTime}"/> 浏览</a> |
                                <span class="glyphicon glyphicon-tags"></span>分类 :
                                <a href="/post/search/${query.uid}/${post.category}/0/1?kw=">
                                    <span class="label label-info" style="margin-left: 5px">
                                        <c:out value="${post.category}"/>
                                    </span>
                                </a>&nbsp;|
                                <span class="glyphicon glyphicon-tags"></span>标签 :
                                    <c:forEach items="${post.tags}" var="tag">
                                        <a href="/post/search/${query.uid}/0/${tag}/1?kw=">
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
            <div class="row">
                <nav>
                    <ul class="pager">
                       <c:choose>
                           <c:when test="${query.page gt 1}">
                               <li class="previous"><a href="/post/search/${query.uid}/${query.category}/${query.tag}/${query.page-1}?kw="><span aria-hidden="true">&larr;</span> 上一页</a></li>
                           </c:when>
                           <c:otherwise>
                               <li class="previous disabled"><a href="#"><span aria-hidden="true">&larr;</span> 上一页</a></li>
                           </c:otherwise>
                       </c:choose>
                        <c:choose>
                            <c:when test="${fn:length(posts) eq query.pageSize}">
                                <li class="next"><a href="/post/search/${query.uid}/${query.category}/${query.tag}/${query.page+1}?kw=">下一页 <span aria-hidden="true">&rarr;</span></a></li>
                            </c:when>
                            <c:otherwise>
                                <li class="next disabled"><a href="#">下一页 <span aria-hidden="true">&rarr;</span></a></li>
                            </c:otherwise>
                        </c:choose>

                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</body>
<jsp:include page="../common/footer.jsp"/>
</html>
