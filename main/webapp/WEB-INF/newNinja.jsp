<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>New Ninja</title>
</head>
<body>
<h1>Add a Ninja to a dojo!</h1>
	<form:form method="post" action="/ninjas/create" modelAttribute="ninja">
	<form:label path="dojo">Dojo: </form:label>
	<form:errors path="dojo"/>
	<form:select path="dojo">
	<c:forEach var="oneD" items="${allDojos}">
	<option value="${oneD.id}">${oneD.name}</option>
	</c:forEach>
	</form:select>
	<p>
	<form:label path="firstName">First Name: </form:label>
	<form:errors path="firstName"/>
	<form:input path="firstName"/>
	<p>
		<p>
	<form:label path="lastName">Last Name: </form:label>
	<form:errors path="lastName"/>
	<form:input path="lastName"/>
	<p>
		<p>
	<form:label path="age">Age: </form:label>
	<form:errors path="age"/>
	<form:input path="age"/>
	<p>
	<button>Create Ninja</button>
	</form:form>
</body>
</html>