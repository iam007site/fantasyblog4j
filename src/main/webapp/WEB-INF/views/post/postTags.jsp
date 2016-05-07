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
	<title>博客标签3D云视图</title>
	<link type="text/css" rel="stylesheet" href="/resources/3dlable/css/3dlable.css">
</head>
<body style="">
<jsp:include page="../common/nav.jsp"></jsp:include>
<div class="container">
	<div id="div1">
		<c:forEach items="${popTags}" var="tag" >
			<a href="/post/search/0/0/${tag.k}/1?kw="><c:out value="${tag.k}"/>（<c:out value="${tag.v}"/>）</a>
		</c:forEach>
	</div>
</div>

</body>
<script src="/resources/3dlable/js/3dlable.js"></script>
<jsp:include page="../common/footer.jsp"/>
</html>
