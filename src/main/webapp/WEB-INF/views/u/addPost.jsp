<%--
  Created by IntelliJ IDEA.
  User: huangshanqi
  Date: 2016/4/8
  Time: 21:52
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
    <title>发博文</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/resources/bootstrap3.3.5/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="/resources/bootstrap3.3.5/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <%--    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>--%>
    <script src="/resources/jquery2.1.4/jquery-2.1.4.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <%--<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>--%>
    <script src="/resources/bootstrap3.3.5/js/bootstrap.min.js"></script>

    <!-- include summernote css/js-->
    <link href="/resources/summernote0.8.1/summernote0.8.1.css" rel="stylesheet">
    <script src="/resources/summernote0.8.1/summernote0.8.1.js"></script>

    <!-- tagsinput-->
    <script src="/resources/jquerytagsinput/jquery.tagsinput.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/resources/jquerytagsinput/jquery.tagsinput.min.css" />
    <!-- tagsinput-->



</head>
<body style="padding-top: 20px">
<div class="container-fluid">
    <div class="row-fluid">
        <div class="col-md-9">
            <div class="well well-sm">
                <form class="form-horizontal" action="" method="post">
                    <fieldset>
                        <legend class="text-center">新建博文</legend>

                        <!-- Name input-->
                        <div class="form-group">
                            <label class="col-md-1 control-label" for="title">标题</label>
                            <div class="col-md-11">
                                <input id="title" name="title" type="text" placeholder="write you blog title here..." class="form-control">
                            </div>
                        </div>

                        <!-- Email input-->
                        <div class="form-group">
                            <label class="col-md-1 control-label" for="category">分类</label>
                            <div class="col-md-2">
                                <div class="btn-group" id="category">
                                    <button class="btn">选择分类</button> <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">分类一</a>
                                        </li>
                                        <li>
                                            <a href="#">分类二</a>
                                        </li>
                                        <li>
                                            <a href="#">分类三</a>
                                        </li>
                                        <li class="divider">
                                        </li>
                                        <li>
                                            <a href="#">新建分类</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- content body -->
                        <div class="form-group">
                            <label class="col-md-1 control-label" for="summernote">详情</label>
                            <div class="col-md-11">
                                <div class="form-control" id="summernote"><p>Please write your blog here...</p></div>
                            </div>

                        </div>

                        <!-- Form actions -->
                        <div class="form-group">
                            <div class="col-md-12 text-center" style="width: 50%">
                                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
        <div class="col-md-3">
            <div class="well well-sm">
                <h1>fafafasfgsff</h1>
            </div>

        </div>
    </div>
</div>



<script>
    $(document).ready(function() {
        $('#summernote').summernote({
            minHeight:400
        });
        //$('#tags').tagsInput();
    });
/*    function setEditorContent(){
        var tags = $('#tags').val();
        alert("text"+tags);
        var markupStr = $('#summernote').summernote('code');
        alert(markupStr);
        $('#editor').val(markupStr);
        $('#postForm').submit();
    }*/

</script>
</body>
</html>
