<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${pageContext.request.contextPath}/resources/css/style.css" />
<title>LOGIN PAGE</title>
<img
	src="${pageContext.request.contextPath }/resources/images/loginpic.jpg"
	alt="login" />

</head>
<body>
	<form action="/welcome">
		<div align="center">
			<table>
				<tr>
					<td>Email</td>
					<td><input type=text></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type=text></td>
				</tr>
				<tr>
					<td></td>
				</tr>

			</table>
		</div>
	</form>
	<div align="center">
	<tr>
		<c:url value="/welcome" var="messageUrl" />
		<a href="${messageUrl}">
			<button type=submit>Login</button>
		</a>
		</tr>
<tr>
<td>
		<c:url value="/home" var="messageUrl" />
		<a href="${messageUrl}">
			<button type=submit>Home</button>
		</a>

</td>
<td>
</td>
<td>
		<c:url value="/register" var="messageUrl" />
		<a href="${messageUrl}">
			<button type=submit>Register</button>
		</a>
		
</td>
</tr>


	</div>


</body>
</html>