<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About US</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/script.js"></script>
</head>
<body>
<jsp:include page="banner.jsp"></jsp:include>
<jsp:include page="menubar.jsp"></jsp:include>
<%-- <div class="menubar">
		<c:url value="/" var="home" />
		<a href="${home}"><button type="submit">Home</button></a>
		
		<button onclick="goBack()">Back</button>
		<c:url value="/applogout" var="messageUrl" />
		<a href="${messageUrl}"><button type=submit>logout</button></a>
	</div> --%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>