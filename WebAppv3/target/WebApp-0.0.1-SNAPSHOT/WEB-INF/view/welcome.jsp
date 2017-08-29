<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
			src="${pageContext.request.contextPath}/resources/images/registerpic.jpg"
			width=100px height=100px alt="" /> --%>
			 <img id="banner" src="${pageContext.request.contextPath}/resources/images/banner.jpg"
			alt="banner image" /> 
			
	</div>
	<div align="center">
		<h1>You Are in Welcome Page!</h1>


		<%-- <c:url value="/home" var="home" />
		<a href="${home}"><button type="submit">Home</button></a>
		
		<button onclick="goBack()">Back</button>
 --%>
	</div>
<div class="menubar">
		<c:url value="/home" var="home" />
		<a href="${home}"><button type="submit">Home</button></a>
		
		<button onclick="goBack()">Back</button>
	</div>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>