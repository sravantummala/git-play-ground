<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration page</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />

<img src="${pageContext.request.contextPath}/resources/images/registerpic.jpg" width=100px height=100px />


</head>


<body>
	<div align="center">
		<h1>Registration</h1>
		<form:form action="register" method="POST" commandName="users">


			<table>
				<tr>
					<td>Firstname</td>
					<td><form:input path="firstname" /></td>
					<td><font color="red"><form:errors  path="firstname"/></font ></td>
				</tr>
				<tr>
					<td>Lastname</td>
					<td><form:input path="lastname" /></td>
					<td><font color="red"><form:errors  path="lastname"/></font ></td>
					
				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="email" /></td>
					<td><font color="red"><form:errors  path="email"/></font ></td>
					
				</tr>
				<tr>
					<td>Mobile</td>
					<td><form:input path="mobile" /></td>
					<td><font color="red"><form:errors  path="mobile"/></font ></td>
				
				</tr>
				<tr>
					<td>Password</td>
					<td><form:input path="password" /></td>
					<td><font color="red"><form:errors  path="password"/></font ></td>
					
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><form:input path="CONFIRMpassword" /></td>
					<td><font color="red"><form:errors  path="CONFIRMpassword"/></font ></td>
				
				</tr>
				<tr>
				<tr>

					<td></td>
					<td><input type="submit" value="Register"></td>
				</tr>

				<c:url value="/home" var="home" />

				<tr>
					<td><a href="${home}"><button type="submit">Home</button></a></td>
					<td></td>
					<td><a href="${home}"><button type="submit">Back</button></a></td>

				</tr>




			</table>




		</form:form>
	</div>
</body>
</html>