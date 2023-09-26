<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<script type="text/javascript">
function validateLogin() {
	var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    if(username === "") {
    	alert("Username must be filled out");
        return false;
    }
    if (password === "") {
        alert("Password must be filled out");
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
.links-container {
        text-align: center; /* Align links to the center */
        margin-top: 20px; /* Add some space between the form and links */
    }
</style>
</head>
<body>
	<div class="container">
	<h2>Login</h2>
	<form action="LoginController" method="post" onsubmit="return validateLogin();">
		<table border="0" bgcolor="#8db6f7" align="center" cellspacing="5" cellpadding="5">
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username" id="username"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Login"></td>
			</tr>
			<tr align="right">
			    <td colspan="2"><a href="signup.jsp">Create Account</a></td>
			</tr>
		</table>
	</form>
	</div>
	<div class="links-container">
	<h2 align="center"><a href="ShowUserController">View Users</a></h2><br>
	<h2 align="center"><a href="searchUser.jsp">Search User</a></h2><br>
	<h2 align="center"><a href="deleteUser.jsp">Delete User</a></h2>
	</div>
</body>
</html>

