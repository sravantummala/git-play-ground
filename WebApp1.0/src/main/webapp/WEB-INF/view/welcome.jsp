<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome page</title>
  <link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />

  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/script.js"></script>
  
</head>
<body>
<div align="center">
<h1>You Are in Welcome Page!</h1>

${users.email}
<c:url value="/home" var="home" />
				<td><a href="${home}"><button type="submit">Home</button></a></td>
				<td width="200px">
				</td>
				
<button onclick="goBack()">Back</button>

</div>

</body>
</html>