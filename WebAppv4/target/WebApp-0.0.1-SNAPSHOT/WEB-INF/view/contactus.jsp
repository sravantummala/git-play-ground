<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ContactSUs</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/script.js"></script>
</head>
<body>
<div class="header">
		<%-- <img
			src="${pageContext.request.contextPath}/resources/images/registerpic.jpg"
			width=100px height=100px alt="" /> --%>
			 <img id="banner" src="${pageContext.request.contextPath}/resources/images/banner.jpg"
			alt="banner image" /> 
			
	</div>
<div class="menubar">
		<c:url value="/home" var="home" />
		<a href="${home}"><button type="submit">Home</button></a>
		
		<button onclick="goBack()">Back</button>
	</div>
	
</body>
</html>