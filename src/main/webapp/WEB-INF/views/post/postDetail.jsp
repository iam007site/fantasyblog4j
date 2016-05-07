<%--
  Created by IntelliJ IDEA.
  User: huangshanqi
  Date: 2016/4/9
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title><c:out value="${post.title}"/></title>
    <meta name="description" content="${post.title}">
    <jsp:include page="../common/head.jsp"/>

    <!-- Add custom CSS here -->
    <link href="/resources/post/css/postDetail.css" rel="stylesheet">
    <link href="/resources/fontawesome/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../common/nav.jsp"/>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="row">
            <div class="col-md-9">

                <!-- the actual blog post: title/author/date/content -->
                <h1><a href="/post/detail/${post.pid}"><c:out value="${post.title}"/></a></h1>
                <div class="row">
                    <div class="col-md-12 post-header-line">
                        <span class="glyphicon glyphicon-user"></span>by <a href="/post/search/${post.uid}/0/0/1?kw="><c:out value="${post.username}"/></a> |
                        <span class="glyphicon glyphicon-calendar"></span><fmt:formatDate value="${post.ctime}" type="date"/>|
                        <span class="glyphicon glyphicon-comment"></span><a href="#">0 评论</a> |
                        <i class="icon-share"></i><a href="#"><c:out value="${post.visitTime}"/> 浏览</a> |
                        <span class="glyphicon glyphicon-tags"></span>分类 :
                        <a href="/post/search/${post.uid}/${post.category}/0/1?kw=">
                                <span class="label label-info" style="margin-left: 5px">
                                    <c:out value="${post.category}"/>
                            </span>
                        </a> &nbsp;|
                        <span class="glyphicon glyphicon-tags"></span>标签 :
                        <c:forEach items="${post.tags}" var="tag">
                            <a href="/post/search/${post.uid}/0/${tag}/1?kw=">
                                <span class="label label-info" style="margin-left: 5px">
                                    <c:out value="${tag}"/>
                            </span>
                            </a>
                        </c:forEach>
                    </div>
                </div>
                <hr>
                <div class=" well" >
                    <br>
                    <c:out value="${post.content}" default="无法显示博文" escapeXml="false"/>
                    <br>
                </div>
                <p><i>Do you like the post? </i> &nbsp;&nbsp;&nbsp;<a href="#" class="btn btn-success" data-url="">Like</a></p>
                <hr>

                <!-- the comment box -->
                <div class="well">
                    <h4><i class="fa fa-paper-plane-o"></i> Leave a Comment:</h4>
                    <form role="form">
                        <div class="form-group">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary"><i class="fa fa-reply"></i> Submit</button>
                    </form>
                </div>
                <hr>

                <!-- the comments -->
                <h3><i class="fa fa-comment"></i> User One says:
                    <small> 9:41 PM on August 24, 2014</small>
                </h3>
                <p>Excellent post! Thank You the great article, it was useful!</p>

                <h3><i class="fa fa-comment"></i> User Two says:
                    <small> 9:47 PM on August 24, 2014</small>
                </h3>
                <p>Excellent post! Thank You the great article, it was useful!</p>

            </div>

            <div class="col-md-3">
                <div class="well">
                    <h4><i class="fa fa-search"></i> 站点搜索...</h4>
                    <div class="input-group">
                        <input type="text" class="form-control" id="search-input">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                    <!-- /input-group -->
                </div>
                <!-- /well -->
                <div class="well">
                    <h4><i class="fa fa-tags"></i> 热门标签:</h4>
                    <div class="row">
                        <c:forEach items="${popTags}" var="map">
                            <a href="/post/search/${post.uid}/0/${map.k}/1?kw=">
                                <span class="btn btn-info btn-sm" style="margin-left: 5px ;margin-top:2px">
                                    <c:out value="${map.k}"/>(&nbsp;<c:out value="${map.v}"/>&nbsp;)
                                </span>
                            </a>
                        </c:forEach>

                    </div>
                </div>
                <!-- /well -->
                <!-- /well -->
                <div class="well">
                <h4><i class="fa fa-fire"></i> 热门文章:</h4>
                <ul>
                    <c:forEach items="${popPosts}" var="popPost" >
                        <li ><a href="/post/detail/${popPost.id}" class="limit-length"><c:out value="${popPost.title}"/></a></li>
                    </c:forEach>
                </ul>
                </div>
                <!-- /well -->

                <!-- /well -->
                <div class="well">
                    <h4><i class="fa fa-fire"></i> 最新文章:</h4>
                    <ul>
                        <c:forEach items="${newPosts}" var="newPost" >
                            <li ><a href="/post/detail/${newPost.id}" class="limit-length"><c:out value="${newPost.title}"/></a></li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- /well -->
            </div>
        </div>
    </div>
</div>
<!-- /.container -->
</body>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script>
    $(document).ready(function(){
        $(".limit-length").each(function () {
            if ($(this).text().length > 30) {
                $(this).text($(this).text().substring(0, 30));
                $(this).html($(this).html() + '...');
            }
        });
    }
    );

    $(function(){
        $('#search-input').bind('keypress',function(event){
            var searchText = $("#search-input").val();
            if(event.keyCode == "13" && searchText != "")
            {
                location.href = "/post/search/0/0/0/1?kw="+searchText;
            }
        });
    });

</script>
</html>
