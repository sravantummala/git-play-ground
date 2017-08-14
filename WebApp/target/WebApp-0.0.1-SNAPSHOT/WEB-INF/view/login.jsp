<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<title>LOGIN PAGE</title>
<img src="${pageContext.request.contextPath }/resources/images/loginpic.jpg" />

</head>
<body>
<form action="">
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
		<td><button type="submit">submit</button></td>
	
		</tr>
	</table>
	</div>
</form>


</body>
</html>