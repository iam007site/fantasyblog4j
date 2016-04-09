<%--
  Created by IntelliJ IDEA.
  User: huangshanqi
  Date: 2016/4/9
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="huangshanqi">
    <title>Blog Post</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/bootstrap3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <script src="/resources/jquery2.1.4/jquery-2.1.4.js"></script>
    <script src="/resources/bootstrap3.3.5/js/bootstrap.min.js"></script>

    <!-- Add custom CSS here -->
    <link href="/resources/post/css/postDetail.css" rel="stylesheet">
    <link href="/resources/fontawesome/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="">Blog Post</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li><a href=""><i class="fa fa-home"></i> Home</a>
                </li>
                <li class="active"><a href=""><i class="fa fa-book"></i> Posts</a>
                </li>
                <li><a href=""><i class="fa fa-envelope"></i> Contact</a>
                </li>
                <li><a href=""><i class="fa fa-user"></i> About</a>
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

<div class="container">

    <div class="row">
        <div class="col-lg-8">

            <!-- the actual blog post: title/author/date/content -->
            <h1><a href="">Blog Post Template for Bootstrap</a></h1>
            <p class="lead"><i class="fa fa-user"></i> by <a href="">Super User</a>
            </p>
            <hr>
            <p><i class="fa fa-calendar"></i> Posted on August 24, 2014 at 9:00 PM</p>
            <p><i class="fa fa-tags"></i> Tags: <a href=""><span class="badge badge-info">Bootstrap</span></a> <a
                    href=""><span class="badge badge-info">Web</span></a> <a href=""><span
                    class="badge badge-info">CSS</span></a> <a href=""><span class="badge badge-info">HTML</span></a>
            </p>

            <hr>
            <img src="http://placehold.it/900x300" class="img-responsive">
            <hr>
            <p class="lead">Welcome to Bootstrap Blog Template! This is a blog template example, built with Bootstrap.
                Contains "tools" that would be needed in a post.</p>
            <p>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum
                dolor.</p>
            <p>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum
                dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem
                ipsum dolor.</p>
            <p>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum
                dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem
                ipsum dolor.</p>
            <p>Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum
                dolor. Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem
                ipsum dolor.</p>
            <br/>

            <blockquote>
                <p>„Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.”</p>
                <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
            </blockquote>
            <p><h4>I like the post? Like this!</h4></p>
            <a href="#" class="btn-success" data-url="">Like</a>


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

        <div class="col-lg-4">
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
                    <div class="col-lg-6">
                        <ul class="list-unstyled">
                            <li><a href=""><span class="badge badge-info">Windows 8</span></a>
                            </li>
                            <li><a href=""><span class="badge badge-info">C#</span></a>
                            </li>
                            <li><a href=""><span class="badge badge-info">Windows Forms</span></a>
                            </li>
                            <li><a href=""><span class="badge badge-info">WPF</span></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <ul class="list-unstyled">
                            <li><a href=""><span class="badge badge-info">Bootstrap</span></a>
                            </li>
                            <li><a href=""><span class="badge badge-info">Joomla!</span></a>
                            </li>
                            <li><a href=""><span class="badge badge-info">CMS</span></a>
                            </li>
                            <li><a href=""><span class="badge badge-info">Java</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /well -->
            <div class="well">
                <h4><i class="fa fa-thumbs-o-up"></i> Follow me!</h4>
                <ul>
                    <p><a title="Facebook" href=""><span class="fa-stack fa-lg"><i
                            class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-facebook fa-stack-1x"></i></span></a>
                        <a title="Twitter" href=""><span class="fa-stack fa-lg"><i
                                class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-twitter fa-stack-1x"></i></span></a>
                        <a title="Google+" href=""><span class="fa-stack fa-lg"><i
                                class="fa fa-square-o fa-stack-2x"></i><i
                                class="fa fa-google-plus fa-stack-1x"></i></span></a> <a title="Linkedin" href=""><span
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
<!-- /.container -->

</body>
</html>
