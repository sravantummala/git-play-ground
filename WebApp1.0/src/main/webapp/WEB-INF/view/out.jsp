<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display page</title>
</head>
<body>
	<p>
	<h1>User Sucessfully Registered</h1>
	<p>Firstname:${users.firstname}</p>
	<p>Lastname:${users.lastname}</p>
	<p>Email:${users.email}</p>
	<p>Mobile:${users.mobile}</p>
	<p>Password:${users.password}</p>


</body>
</html>