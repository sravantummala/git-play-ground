<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Login Page</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/script.js"></script>
</head>
<body onload='document.f.username.focus();'>
<div class="header">
		<%-- <img
			src="${pageContext.request.contextPath}/resources/images/registerpic.jpg"
			width=100px height=100px alt="" /> --%>
			 <img id="banner" src="${pageContext.request.contextPath}/resources/images/banner.jpg"
			alt="banner image" /> 
			
	</div>
	<h3 align="center">Login with Username and Password</h3>
	
	<c:if test="${param.error!=null}">
		
		<p class="error" align="center">login failed. Please fill the fields with correct credentials</p>
	
	</c:if>
	
	<form name='f' action='${pageContext.request.contextPath}/login' method='POST'>
		<table align="center" border="1">
			<tr>
				<td>User:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="Login" /></td>
			</tr>
			<!-- <input name="_csrf" type="hidden"
				value="62716aab-4c74-42bf-a86f-d44d0af9e7f0" /> -->
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				
		</table>
	</form>
	<div class="menubar">
		<c:url value="/" var="home" />
		<a href="${home}"><button type="submit">Home</button></a>		
		<button onclick="goBack()">Back</button>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>