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
    <script src="/resources/jquery2.1.4/jquery-2.1.4.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="/resources/bootstrap3.3.5/js/bootstrap.min.js"></script>

    <!-- include summernote css/js-->
    <link href="/resources/summernote0.8.1/summernote0.8.1.css" rel="stylesheet">
    <script src="/resources/summernote0.8.1/summernote0.8.1.js"></script>

    <!-- tagsinput-->
    <script src="/resources/jquerytagsinput/jquery.tagsinput.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/resources/jquerytagsinput/jquery.tagsinput.min.css"/>
    <!-- tagsinput-->

    <!--bootstrap select-->
    <script src="/resources/bootstrap3.3.5/js/bootstrap-select-1.10.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/resources/bootstrap3.3.5/css/bootstrap-select-1.10.0.min.css">
    <!--bootstrap select-->

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
                                <input id="title" name="title" type="text" placeholder="write you blog title here..."
                                       class="form-control">
                            </div>
                        </div>

                        <!-- 分类-->
                        <div class="form-group">
                            <label class="col-md-1 control-label" for="category">分类</label>
                            <div class="col-md-2">
                                <input name="category" id="category" value="" type="text" class="form-control">
                            </div>
                            <div class="col-md-9">
                                <span class="text-center">或点击右边热门分类进行选择！</span>
                            </div>
                        </div>

                        <!-- 标签-->
                        <div class="form-group">
                            <label class="col-md-1 control-label" for="tags">标签</label>
                            <div class="col-md-9">
                                <input name="tags" id="tags" value="" />
                            </div>
                            <div class="col-md-2">
                                <span class="text-center">或点击热门选择标签</span>
                            </div>
                        </div>

                        <!-- 详情 -->
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
            <!-- /well -->
            <div class="well">
                <h4><i class="fa fa-tags"></i> 热门分类 :</h4>
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="list-unstyled">
                            <li class="category-select" value="lajflajf"><span class="badge badge-info">Windows 8</span></li>
                            <li class="category-select" value="lajflajf"><span class="badge badge-info">C#</span></li>
                            <li class="category-select" value="lajflajf"><span class="badge badge-info">Windows Forms</span></li>
                            <li class="category-select" value="lajflajf"><span class="badge badge-info">WPF</span></li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <ul class="list-unstyled">
                            <li ><span class="category-select badge badge-info">Bootstrap</span></li>
                            <li ><span class="category-select badge badge-info">Joomla!</span></li>
                            <li ><span class="category-select badge badge-info">CMS</span></li>
                            <li ><span class="category-select badge badge-info">Java</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /well -->

            <!-- /well -->
            <div class="well">
                <h4><i class="fa fa-tags"></i> 热门标签:</h4>
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="list-unstyled">
                            <li class="tags-select"><span class="badge badge-info">Windows 8</span></li>
                            <li class="tags-select"><span class="badge badge-info">C#</span></li>
                            <li class="tags-select"><span class="badge badge-info">Windows Forms</span></li>
                            <li class="tags-select"><span class="badge badge-info">WPF</span></li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <ul class="list-unstyled">
                            <li ><span class="category-select badge badge-info">Bootstrap</span></li>
                            <li ><span class="category-select badge badge-info">Joomla!</span></li>
                            <li ><span class="category-select badge badge-info">CMS</span></li>
                            <li ><span class="category-select badge badge-info">Java</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /well -->

        </div>
    </div>
</div>


<script>
    $(document).ready(function () {
        $('#summernote').summernote({
            minHeight: 400
        });
        $('#tags').tagsInput({
            'height':'50px',
            'width':'100%'
        });
        $('.category-select').onclick(function(e){
            var text = e.target.value();
            alert(text);
            $('#category').value(text);
        });
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
