<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Page</title>
<script type="text/javascript">
function validateForm() {
	var name = document.getElementById("name").value;
	var email = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	if(name === "") {
		alert("Name must be filled out!");
		return false;
	}
	if(!validateEmail(email)) {
		alert("Invalid email address!");
		return false;
	}
	if(password === "") {
		alert("Password must be filled out!");
		return false
	}
	if(!isPasswordValid(password)) {
		alert("Invalid password format");
		return false;
	}
	return true;
}
function validateEmail(email) {
	var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	return emailPattern.test(email);
}
function isPasswordValid(password) {
	if(password.length < 9) {
		return false;
	}
	if(!/[A-Z]/.test(password)) {
		return false;
	}
	if(!/[!@#$%^&*]/.test(password)) {
		return false;
	}
	if(!/^(?=.*[0-9])(?=.*[A-Z])/.test(password)) {
		return false;
	}
	return true;
}
</script>
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
	<h2>Sign Up</h2>
	<form action="UserController" method="post" onsubmit="return validateForm();">
		<input type="hidden" name="method" value="createUser">
		<table border="0" bgcolor="#8db6f7" align="center" cellspacing="5" cellpadding="5">
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="username" id="username"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="password" id="password"></td>
			</tr>			
			<tr>
				<td>Address:</td>
				<td><input type="text" name="city" id="city"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Signup">
				</td>
			</tr>
			<tr align="right">
			    <td colspan="2"><a href="login.jsp">Login</a></td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>