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

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/script.js"></script>

<img
	src="${pageContext.request.contextPath}/resources/images/registerpic.jpg"
	width=100px height=100px />


</head>


<body>
	<div align="center">
		<h1>Registration</h1>
		<form:form action="register" method="post" commandName="users">


			<table >
				<tr>
					<td>Firstname</td>
					<td><form:input path="firstname" /></td>
					  <td style="color: red; font-style: italic;"><form:errors  
       path="firstname" />  
     </td>  

				</tr>
				
				<tr>
					<td>Lastname</td>
					<td><form:input path="lastname" /></td>
					  <td style="color: red; font-style: italic;"><form:errors  
       path="lastname" />  
     </td>  


				</tr>
				<tr>
					<td>Email</td>
					<td><form:input path="email" /></td>
					  <td style="color: red; font-style: italic;"><form:errors  
       path="email" />  
     </td>  


				</tr>
				<tr>
					<td>Mobile</td>
					<td><form:input path="mobile" /></td>
					  <td style="color: red; font-style: italic;"><form:errors  
       path="mobile" />  
     </td>  


				</tr>
				<tr>
					<td>Password</td>
					<td><form:input path="password" /></td>
					  <td style="color: red; font-style: italic;"><form:errors  
       path="password" />  
     </td>  


				</tr>
				<%-- <tr>
					<td>Confirm Password</td>
					<td><form:input path="password" /></td>


				</tr> --%>
				
				
				
						</table>	
						<br>
								
					<td><input type="submit" value="Register"></td>
				
			




		</form:form>
	</div>
	<br>
	<br>
	<div align="center">
      			<c:url value="/home" var="home" />
				<a href="${home}"><button type="submit">Home</button></a>
				<td >
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				<td >
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				<td >
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				<button onclick="goBack()">Back</button>	
	</div>
	
		
	

</body>
</html>