<%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 2016/4/12
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>随手记</title>
    <jsp:include page="../common/head.jsp"/>
    <!-- include summernote css/js-->
    <link href="/resources/summernote0.8.1/summernote0.8.1.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../common/nav.jsp"/>

<div class="container">
    <div class="row">


        <div class="row">
            <c:if test="${show}">
                <form role="form">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="name">添加随手记(不超过500字)</label>
                                    <textarea name="content" id="summernote" class="form-control" required="required" placeholder="Message">

                                    </textarea>
                            </div>
                        </div>
                    </div>
                    <button type="button" onclick="handleNote()" class="btn btn-primary"><i class="fa fa-reply"></i> 提交随手记</button>
                </form>
            </c:if>
            <br>
            <ul id="notes">
                <c:forEach items="${notes}" var="note">
                    <div class="well well-sm">
                        <h5>
                            <a href="/note/${note.uid}"><c:out value="${note.username}"/></a> 于
                            <small> <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${note.ctime}" /></small>
                            &nbsp;记：
                        </h5>
                        <c:out value="${note.content}" default="无法显示随手记内容" escapeXml="false"/>
                    </div>
                    <hr>
                </c:forEach>
                <c:if test="${empty notes}">
                    <br>
                    <h2 >你还没有随手记哦，赶紧添加吧！</h2>
                </c:if>
            </ul>
        </div>
    </div>
</div>


</body>
<jsp:include page="../common/footer.jsp"/>
<!-- include summernote css/js-->
<script src="/resources/summernote0.8.1/summernote0.8.1.js"></script>
<script>

    function handleNote(){
        if ($('#summernote').summernote('code') == '') {
            alert("请完成表单");
        } else {
            $.ajax({
                url:"/u/note",
                type:"post",
                data:{
                    content:$('#summernote').summernote('code')
                },
                success:function (items) {
                    $('#summernote').summernote('code', "");
                    alert("随手记添加成功！");
                    $('#comments').html("");
                    location.reload();
                },
                error:function (data) {
                    alert("无法添加随手记，请稍后再试！\n记住字数不要超过500哦...");
                }
            });

        }
    }

    function initEditor(){
        $('#summernote').summernote({
            minHeight: 200
        });
    }
    $(document).ready(
            function(){
                initEditor();
            }
    );
</script>
</html>
