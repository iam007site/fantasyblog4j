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
    <title><c:out value="${post.title}"></c:out></title>
    <jsp:include page="../common/head.jsp"></jsp:include>

    <!-- Add custom CSS here -->
    <link href="/resources/post/css/postDetail.css" rel="stylesheet">
    <link href="/resources/fontawesome/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../common/nav.jsp"></jsp:include>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="row">
            <div class="col-md-9">

                <!-- the actual blog post: title/author/date/content -->
                <h1><a href="/post/detail/${post.pid}"><c:out value="${post.title}"></c:out></a></h1>
                <div class="row">
                    <div class="col-md-12 post-header-line">
                        <span class="glyphicon glyphicon-user"></span>by <a href="#"><c:out value="${post.username}"></c:out></a> |
                        <span class="glyphicon glyphicon-calendar"></span><fmt:formatDate value="${post.ctime}" type="date"/>|
                        <span class="glyphicon glyphicon-comment"></span><a href="#">3 Comments</a> |
                        <i class="icon-share"></i><a href="#">39 Shares</a> |
                        <span class="glyphicon glyphicon-tags"></span>Tags :
                        <c:forEach items="${post.tags}" var="tag">
                            <a href="#">
                                <span class="label label-info" style="margin-left: 5px">
                                    <c:out value="${post.category}"></c:out>
                            </span>
                            </a>
                        </c:forEach>
                    </div>
                </div>
                <hr>
<%--                <p>
                    <i class="fa fa-share"></i>
                    shares:
                    <a href="">
                    <span class="btn btn-success badge badge-info">
                           14
                    </span>
                    </a>
                    <i class="fa fa-comment"></i>
                    Comments:
                    <a href="">
                    <span class="btn btn-success badge badge-info">
                           7
                    </span>
                    </a>
                    <i class="fa fa-folder-open"></i>
                    Views:
                    <a href="">
                    <span class="btn btn-success badge badge-info">
                           <c:out value="${post.visitTime}"></c:out>
                    </span>
                    </a>
                    <i class="fa fa-tags"></i>
                    Category:
                    <a href="">
                    <span class="btn btn-success badge badge-info">
                           <c:out value="${post.category}"></c:out>
                    </span>
                    </a>
                    <span>&nbsp;&nbsp;&nbsp;</span>
                    <i class="fa fa-tags"></i>
                    Tags:
                    <c:forEach var="tag" items="${post.tags}">
                        <a href="">
                        <span class="btn btn-success badge badge-info">
                           <c:out value="${tag}"></c:out>
                        </span>
                        </a>
                    </c:forEach>
                </p>--%>

                <div class="container">
                    <br>
                    <c:out value="${post.content}" default="无法显示博文" escapeXml="false"></c:out>
                    <br>
                </div>
                <p><h4>I like the post? Like this!</h4></p>
                <a href="#" class="btn btn-success" data-url="">Like</a>


                <div class="g-plusone" data-annotation="inline" data-width="300" data-href=""></div>
                <br/>
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
                    <h4><i class="fa fa-search"></i> Blog Search...</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
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
                    <h4><i class="fa fa-tags"></i> Popular Tags:</h4>
                    <div class="row">
                        <c:forEach items="${popTags}" var="map">
                            <label class="col-md-6">
                            <span style="margin: 4px" class="btn btn-success badge badge-info">
                                <c:out value="${map.k}"></c:out>(<c:out value="${map.v}"></c:out>)
                            </span>
                            </label>
                        </c:forEach>

                    </div>
                </div>
                <!-- /well -->
                <div class="well">
                    <h4><i class="fa fa-thumbs-o-up"></i> Follow me!</h4>
                    <ul>
                        <p><a title="Facebook" href=""><span class="fa-stack fa-lg"><i
                                class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-facebook fa-stack-1x"></i></span></a>
                            <a title="Twitter" href=""><span class="fa-stack fa-lg"><i
                                    class="fa fa-square-o fa-stack-2x"></i><i
                                    class="fa fa-twitter fa-stack-1x"></i></span></a>
                            <a title="Google+" href=""><span class="fa-stack fa-lg"><i
                                    class="fa fa-square-o fa-stack-2x"></i><i
                                    class="fa fa-google-plus fa-stack-1x"></i></span></a> <a title="Linkedin"
                                                                                             href=""><span
                                    class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i
                                    class="fa fa-linkedin fa-stack-1x"></i></span></a> <a title="GitHub" href=""><span
                                    class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i
                                    class="fa fa-github fa-stack-1x"></i></span></a> <a title="Bitbucket" href=""><span
                                    class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i
                                    class="fa fa-bitbucket fa-stack-1x"></i></span></a></p>
                    </ul>
                </div>
                <!-- /well -->
                <!-- /well -->
                <div class="well">
                    <h4><i class="fa fa-fire"></i> Popular Posts:</h4>
                    <ul>
                        <li><a href="">WPF vs. Windows Forms-Which is better?</a></li>
                        <li><a href="">How to create responsive website with Bootstrap?</a></li>
                        <li><a href="">The best Joomla! templates 2014</a></li>
                        <li><a href="">ASP .NET cms list</a></li>
                        <li><a href="">C# Hello, World! program</a></li>
                        <li><a href="">Java random generator</a></li>
                    </ul>
                </div>
                <!-- /well -->

                <!-- /well -->
                <div class="well">
                    <h4><i class="fa fa-book"></i> Featured books:</h4>
                    <div class="row">

                        <div class="col-lg-12">
                            <div class="cuadro_intro_hover " style="background-color:#cccccc;">
                                <p style="text-align:center; margin-top:20px;">
                                    <img src="http://placehold.it/500x330" class="img-responsive" alt="">
                                </p>
                                <div class="caption">
                                    <div class="blur"></div>
                                    <div class="caption-text">
                                        <h3 style="border-top:2px solid white; border-bottom:2px solid white; padding:10px;">
                                            Book 1</h3>
                                        <p>Loren ipsum dolor si amet ipsum dolor si amet ipsum dolor...</p>
                                        <a class=" btn btn-default" href="#"><span class="fa fa-plus"> INFO</span></a>

                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-12">
                            <div class="cuadro_intro_hover " style="background-color:#cccccc;">
                                <p style="text-align:center; margin-top:20px;">
                                    <img src="http://placehold.it/500x330" class="img-responsive" alt="">
                                </p>
                                <div class="caption">
                                    <div class="blur"></div>
                                    <div class="caption-text">
                                        <h3 style="border-top:2px solid white; border-bottom:2px solid white; padding:10px;">
                                            Book 2</h3>
                                        <p>Loren ipsum dolor si amet ipsum dolor si amet ipsum dolor...</p>
                                        <a class=" btn btn-default" href="#"><span class="fa fa-plus"> INFO</span></a>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- /well -->

            </div>
        </div>

        <hr>
    </div>
</div>
<!-- /.container -->
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
