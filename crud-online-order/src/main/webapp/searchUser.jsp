<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Page</title>
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
	<h2>Search User</h2>
	<form action="UserController" method="post">
		<input type="hidden" name="method" value="searchUser">
		<table border="0" bgcolor="#8db6f7" align="center" cellspacing="5" cellpadding="5">
			<tr>
				<td>Enter Email of User:</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr align="center">
			    <td colspan="2"><input type="submit" value="Search"></td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>