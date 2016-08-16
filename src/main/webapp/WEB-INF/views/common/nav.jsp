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
            <a class="navbar-brand pull-left" href="/">Evilcoder</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/"><i class="fa fa-home"></i> 首页</a>
                </li>
                <li ><a href="/post/search/0/0/0/1?kw="><i class="fa fa-book"></i> 文章</a>
                </li>
                <li ><a href="/note/0"><i class="fa fa-book"></i> 随手记</a>
                </li>
                <li><a href="/util/contactus"><i class="fa fa-envelope"></i> 联系我</a>
                </li>
                <li><a href="https://github.com/huangshanqi?tab=repositories"><i class="fa fa-envelope"></i> Github</a>
                </li>
                <li><a href="http://evilcoder.farbox.com"><i class="fa fa-envelope"></i> 旧版博客</a>
                </li>
<%--                <li><a href="/util/about"><i class="fa fa-user"></i> 关于</a>
                </li>--%>

                <form class="navbar-form navbar-right" method="get" action='/post/search/0/0/0/1'>
                    <input id="kw" name="kw" type="text" class="form-control col-lg-8" placeholder="站点搜索..." />
                </form>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
