
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="menubar">

		<c:url value="/contactus" var="messageUrl" />
		<a href="${messageUrl}"><button type=submit>ContactUs</button></a>
		<c:url value="/aboutus" var="messageUrl" />
		<a href="${messageUrl}"><button type=submit>AboutUs</button></a>
		<%-- <c:url value="/logout" var="messageUrl" />
		<a href="${messageUrl}"><button type=submit>logout</button></a> --%>
		<c:url var="logoutUrl" value="/logout" />
		<form action="${logoutUrl}" method="post">
			<input type="submit" value="Log out" /> 
			<input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>

	</div>

</body>
</html>