<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>coming soon!</h1>

<table>

<tr>
<th>Firstname</th>
<td>Lastname</td>
<td>Email</td>
</tr>

<c:forEach var="tempCustomers" items="${customers }">

<tr>
<th> ${tempCustomers.firstname} </th>
<th> ${tempCustomers.lastname} </th>
<th> ${tempCustomers.email} </th>

</tr>
</c:forEach>

</table>


</body>
</html>