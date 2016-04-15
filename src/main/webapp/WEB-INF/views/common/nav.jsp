<%--
  Created by IntelliJ IDEA.
  User: huangshanqi
  Date: 2016/4/10
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand pull-left" href="/">Fantasyblog4j</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/"><i class="fa fa-home"></i> Home</a>
                </li>
                <li ><a href="/post/search/0/0/0/1?kw="><i class="fa fa-book"></i> Posts</a>
                </li>
                <c:if test="${requestScope.}">
                    <li ><a href="/u/post"><i class="fa fa-book"></i> Add post</a>
                    </li>
                </c:if>
                <li><a href="/util/contactus"><i class="fa fa-envelope"></i> Contact</a>
                </li>
                <li><a href="/util/about"><i class="fa fa-user"></i> About</a>
                </li>

                <form class="navbar-form navbar-right">
                    <input type="text" class="form-control col-lg-8" placeholder="Search...">
                </form>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
