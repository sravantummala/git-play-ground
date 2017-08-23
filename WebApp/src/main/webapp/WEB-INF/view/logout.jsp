<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
 
 <h1>You have been logged out</h1>

<jsp:include page="menubar.jsp"></jsp:include>
<div class="menubar">
		<c:url value="/" var="home" />
		<a href="${home}"><button type="submit">Home</button></a>
		
		<button onclick="goBack()">Back</button>
		<c:url value="/j_spring_security_logout" var="messageUrl" />
		<a href="${messageUrl}"><button type=submit>logout</button></a>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>