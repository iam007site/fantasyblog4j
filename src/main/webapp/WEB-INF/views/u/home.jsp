<%--
  Created by IntelliJ IDEA.
  User: huangshanqi
  Date: 2016/4/6
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>home page</title>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="/resources/bootstrap3.3.5/css/bootstrap-3.3.5.css" rel="stylesheet">
    <script src="/resources/jquery2.1.4/jquery-2.1.4.js"></script>
    <script src="/resources/bootstrap3.3.5/js/bootstrap-3.3.5.js"></script>

    <!-- include summernote css/js-->
    <link href="/resources/summernote0.8.1/summernote0.8.1.css" rel="stylesheet">
    <script src="/resources/summernote0.8.1/summernote0.8.1.js"></script>
</head>
<body>
<h1>welcome <c:out value="${username}"/></h1>
<form action="/u/post" enctype="multipart/form-data" method="post" id="postForm">
    <input name="editor" id="editor" placeholder="富文本内容"/>
</form>
<div id="summernote"><p>Hello Summernote</p></div>
<button type="button" name="提交" onclick="setEditorContent()">提交</button>
<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
    function setEditorContent(){
        var markupStr = $('#summernote').summernote('code');
        alert(markupStr);
        $('#editor').val(markupStr);
        $('#postForm').submit();
    }

</script>
</body>
</html>
