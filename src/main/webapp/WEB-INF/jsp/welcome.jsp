<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<body>

	<c:url value="/resources/text.txt" var="url"/>
	<spring:url value="/resources/text.txt" htmlEscape="true" var="springUrl" />

	Spring URL: ${springUrl} at ${time}
	<br>
	JSTL URL: ${url}
	<br>
	Message: ${message}

	<ul>
		<li><p><b>First Name:</b>
			<%= request.getParameter("first_name")%>
		</p></li>
		<li><p><b>Last  Name:</b>
			<%= request.getParameter("last_name")%>
		</p></li>
	</ul>

	<form action = "/save_to_db" method = "GET">
		First Name: <input type = "text" name = "first_name">
		<br />
		Last Name: <input type = "text" name = "last_name" />
		<input type = "submit" value = "Submit" />
	</form>


</body>

</html>
