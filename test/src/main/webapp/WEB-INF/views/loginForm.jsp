<%@ page
	language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>

<title>Login Form</title>

<script>

function login() {
	form.submit();
}

</script>

</head>
<body>

<c:if test="${not empty param.fail}">
	${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
	<spring:message code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
</c:if>
<c:remove scope="session" var="SPRING_SECURITY_LAST_EXCEPTION" />

<form name="form" action="/test/loginProc" method="post">
	<input type="text" id="username" name="username" value="user" />
	<input type="text" id="password" name="password" value="1234" />
</form>
<input type="button" onclick="login()" value="Login" />

</body>
</html>
