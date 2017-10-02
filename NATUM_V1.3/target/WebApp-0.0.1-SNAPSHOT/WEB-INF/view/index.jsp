<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>

<head>
<meta charset="utf-8">
<title>Welcome</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<jsp:include page="banner.jsp"></jsp:include>
	
	<!-- Main content -->

	<div align="center">
		<h1>Home page</h1>

		<p>
			Existing User Please Login <br> New User Please Register <br>
		</p>
	</div>
	
	

	<jsp:include page="menubar.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
