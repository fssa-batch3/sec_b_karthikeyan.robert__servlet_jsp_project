<%@page import="in.fssa.knfunding.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        
        h1 {
            text-align: center;
            padding: 20px;
            color: black;
        }
        
        form {
            background-color: #fff;
            padding: 40px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
            margin: 0 auto;
            width: 50%;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            cursor: pointer;
        }
        
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Update User</h1>
	
	 <%
    User user = null;
    user = (User) request.getAttribute("userDetails");
    %>
    <form action="update?id=<%=user.getId() %>" method="post">
        <label for="name">Name:</label>
        <input type="text" value="<%=user.getFullName() %>" name="name" required>
        
        <br>
        	
        <label for="email">Email ID:</label>
        <input type="email" value="<%=user.getEmail() %>" name="email" readonly>
        
        <br>
        
        <label for="phone_number">Phone Number:</label>
        <input type="text" value="<%=user.getPhoneNumber() %>" name="phone_number" readonly>
        
        <br>
        
        <label>Password:</label>
        <input type="password" value="<%=user.getPassword() %>" name="password" required readonly>
        
        <button type="submit">Save</button>
        
    </form>
</body>
</html>
