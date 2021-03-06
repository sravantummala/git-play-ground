<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration page</title>
<!-- <spring:url value="/resources/css/main.css" var="mainCss" /> -->

<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" />
<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/script.js"></script>



<body>
	<jsp:include page="banner.jsp"></jsp:include>


	<div align="center">
		<h1>Registration</h1>
		<form:form action="register" method="post" commandName="users">
		<table>
			<tr>
				<td>Firstname</td>
				<td><form:input path="firstname"/></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="firstname" /></td>
			</tr>

			<tr>
				<td>Lastname</td>
				<td><form:input path="lastname" /></td>
				<td style="color: red; font-style: italic;">
				<form:errors
						path="lastname" /></td>
			</tr>

			<tr>
				<td>Email</td>
				<td><form:input path="email" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="email" /></td>
			</tr>

			<tr>
				<td>Mobile</td>
				<td><form:input path="mobile" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="mobile" /></td>
			</tr>

			<%-- <tr>
				<td>Password</td>
				<td><form:input type="text" path="password" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="password" /></td>
			</tr> --%>
			
			<tr>
				<td>Password :</td>
				<td><form:password path="password" />
				</td>
				<td style="color: red; font-style: italic;"><form:errors path="password" />
				</td>
			</tr>

			<tr>
				<td>Confirm Password :</td>
				<td><form:password path="confirmpassword" />
				</td>
				<td style="color: red; font-style: italic;"><form:errors path="confirmpassword"/>
				</td>
			</tr>
				<%-- <tr>
					<td>Confirm Password</td>
					<td><form:input type="text" path="password" /></td>
					<td style="color: red; font-style: italic;"><form:errors
						path="password" /></td>
				</tr> --%>

			</table>

			
			<div align="center">
				<input type="submit" value="Sign Up" />
			</div>
	
		</form:form>


	</div>
	
	<div class="menubar">
		<c:url value="/" var="home" />
		<a href="${home}"><button type="submit">Home</button></a>		
		<button onclick="goBack()">Back</button>
	</div>
	
<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>