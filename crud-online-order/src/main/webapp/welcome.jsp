<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
	<h1>Login successful.</h1>
	<form action="UserController" method="post">
		<input type="hidden" name="method" value="logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>