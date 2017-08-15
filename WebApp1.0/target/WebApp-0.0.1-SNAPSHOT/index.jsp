<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css"/>
	</head> 
	<body>
	<div  align="center">
	<h1>Home page</h1>
	<br>
	<br>
	<p>
	
	Existing User Please Login<br>
	New User PLease Register<br>
	</p>
	</div>
	<div class="button1" align="center">
		<c:url value="/register" var="messageUrl" />
		<a href="${messageUrl}"><button type=submit>Registration</button></a>
		</div>
		<div class ="button2" align="right">
		<c:url value="/login" var="messageUrl" />
<a href="${messageUrl}"> <button type=submit>Login</button></a>
</div>
	</body>
</html>