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
	<title>evilcoder</title>
	<link type="text/css" rel="stylesheet" href="/resources/common/css/401.css">
</head>
<body style="">
<jsp:include page="../common/nav.jsp"></jsp:include>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="error-template">
				<h1>
					Oops!</h1>
				<h2>
					404 Page Not Found</h2>
				<div class="error-details">
					出错啦，你请求的页面不存在！博客文章迁移中，你可以去首页逛逛啊└(^o^)┘
				</div>
				<div class="error-actions">
					<a href="/" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
						回首页 </a><a href="/util/contactus" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-envelope"></span> 意见反馈 </a>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
<jsp:include page="../common/footer.jsp"/>
</html>
