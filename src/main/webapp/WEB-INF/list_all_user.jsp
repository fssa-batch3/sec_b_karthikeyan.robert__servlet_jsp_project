<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <style>
        /* Your CSS styling here */
    </style>
</head>
<body>

<h1>User List</h1>

<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Password</th>
        <th>Status</th>
    </tr>
    
    <c:forEach var="user" items="${userList}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.phoneNumber}</td>
            <td>${user.password}</td>
            <td>${user.active ? 'Active' : 'Inactive'}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
