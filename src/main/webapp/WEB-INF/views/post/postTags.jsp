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
	<title>博客标签3D标签云</title>
	<link type="text/css" rel="stylesheet" href="/resources/3dlable/css/3dlable.css">
</head>
<body style="">
<jsp:include page="../common/nav.jsp"></jsp:include>
<div class="container">
	<div id="div1">
		<a href="http://www.miaov.com">JS课程</a>
		<a href="http://www.miaov.com/course_outline_1.html.php" class="red">教程</a>
		<a href="http://www.miaov.com">试听</a>
		<a href="http://www.miaov.com">精品</a>
		<a href="http://www.miaov.com" class="blue">妙味课堂</a>
		<a href="http://blog.miaov.com/722.html">SEO</a>
		<a href="http://www.miaov.com" class="red">特效</a>
		<a href="http://www.miaov.com/course.html.php" class="yellow">JavaScript</a>
		<a href="http://www.miaov.com/course_detail_1.html.php">miaov</a>
		<a href="http://www.miaov.com/course_detail_2.html.php" class="red">CSS</a>
		<a href="http://www.miaov.com/course_detail_3.html.php">求职</a>
		<a href="http://www.miaov.com/course_detail_2.html.php" class="blue">面试题</a>
		<a href="http://www.miaov.com/contact.html.php">继承</a>
		<a href="http://www.miaov.com/" class="red">妙味课堂</a>
		<a href="http://www.miaov.com/about.html.php" class="blue">OOP</a>
		<a href="http://www.miaov.com/work.html.php">XHTML</a>
		<a href="http://www.miaov.com/message.html.php" class="blue">setInterval</a>
		<a href="http://blog.miaov.com/">W3C</a>
		<a href="http://blog.miaov.com/716.html">石川</a>
		<a href="http://www.miaov.com/" class="yellow">妙味课堂</a>
		<a href="http://blog.miaov.com/676.html">blue</a>
	</div>
</div>

</body>
<jsp:include page="../common/footer.jsp"/>
<script src="/resources/3dlable/js/3dlable.js"></script>
</html>
