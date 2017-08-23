<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display page</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" />
</head>
<body>
<div class="header">
		<%-- <img
			src="${pageContext.request.contextPath}/resources/images/registerpic.jpg"
			width=100px height=100px alt="" /> --%>
			 <img id="banner" src="${pageContext.request.contextPath}/resources/images/banner.jpg"
			alt="banner image" /> 
			
	</div>
	<p>
	<h1>User Sucessfully Registered</h1>
	<p>Firstname:${users.firstname}</p>
	<p>Lastname:${users.lastname}</p>
	<p>Email:${users.email}</p>
	<p>Mobile:${users.mobile}</p>
	<p>Password:${users.password}</p>

<div class="menubar">
		<c:url value="/" var="home" />
		<a href="${home}"><button type="submit">Home</button></a>
		
		<button onclick="goBack()">Back</button>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>