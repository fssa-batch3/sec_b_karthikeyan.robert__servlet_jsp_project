<%@page import="java.util.List"%>
<%@page import="in.fssa.knfunding.model.Request"%>
<%@page import="in.fssa.knfunding.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Request</title>
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
   <h1>Update Requests</h1>
    
    <%
        Request requestDetails = null;
    	requestDetails = (Request) request.getAttribute("requestDetails");
    
    %>
    <form action="update" method="post">
    
        <input type="hidden" name="id" value="<%= requestDetails.getId() %>">
        
        <label for="title">Title:</label>
        <input type="text" value="<%= requestDetails.getTitle() %>" name="title" required readonly>
        
        <br>
        
        <label for="description">Description:</label>
        <input type="text" value="<%= requestDetails.getDescription() %>" name="description">
        
        <br>
        
        <label for="category_id">Category Id:</label>
        <input type="number" value="<%= requestDetails.getCategoryId() %>" name="category_id" >
        
        <br>
        
        <label>Amount:</label>
        <input type="number" value="<%= requestDetails.getAmount() %>" name="amount" required>
        
        <button type="submit">Save</button>
    </form>
    <br>
    
</body>
</html>
