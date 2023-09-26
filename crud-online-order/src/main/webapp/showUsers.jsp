<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Page</title>
</head>
<body bgcolor="white">
        <table border="0" width="60%" bgcolor="#c8e8fa" align="center" cellspacing="5" cellpadding="5">                
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Address</th>
<!--                 <th colspan="2">Do Modifications</th> -->
            <tr>
            <c:forEach items="${userList}" var="user" >
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.name}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.password}"/></td>
                    <td><c:out value="${user.address}"/></td>
<%--                     <td align="center"><a href="DeleteUserController?id=${user.id}">Delete</a></td> --%>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>