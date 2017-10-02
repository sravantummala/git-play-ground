<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
		<html>
		<head>
<meta charset="utf-8">
<title>Welcome</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />
</head>
		
		
		<body>
			<jsp:include page="banner.jsp"></jsp:include>
		
	<div align="center">
		<h1>You Are in Welcome Page!</h1>


	</div>
	
	<jsp:include page="menubar.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>