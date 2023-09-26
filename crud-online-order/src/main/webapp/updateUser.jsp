<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
<style type="text/css">
	body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            border-radius: 5px;
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
        }
        table tr td {
            padding: 10px;
        }
        input[type="text"], input[type="password"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
</style>
</head>
<body>
	<div class="container">
	<h2>Update User</h2>
	<form action="UserController" method="post">
		<input type="hidden" name="method" value="updateUser">
		<table border="0" bgcolor="#8db6f7" align="center" cellspacing="5" cellpadding="5">
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="${searched_user.name}"></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="username" value="${searched_user.email}"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="password" value="${searched_user.password}"></td>
			</tr>			
			<tr>
				<td>Address:</td>
				<td><input type="text" name="city" value="${searched_user.address}"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Update">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>