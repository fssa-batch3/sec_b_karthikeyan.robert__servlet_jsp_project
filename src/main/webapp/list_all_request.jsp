<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.knfunding.model.Request"%>
<%@page import="in.fssa.knfunding.service.RequestService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>List All Requests</title>
    <style>
    /*
     background: linear-gradient(45deg, #FF6B6B, #FF8E53, #FFCA3A, #8AFF53, #53FFB8, #6B66FF, #C53BFF);
            background-size: 600% 100%;
            animation: rainbow-bg 5s linear infinite;
            
            */
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
        
        table {
            border-collapse: collapse;
            width: 80%;
            margin: auto;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        tr:hover {
            background-color: #f0f0f0;
        }
        
        .category1 {
            background-color: #ffc107;
            color: #333;
        }
        
        .category2 {
            background-color: #17a2b8;
            color: #fff;
        }
        
        .category3 {
            background-color: #28a745;
            color: #fff;
        }
        
        .category4 {
            background-color: #dc3545;
            color: #fff;
        }

        /* Additional rainbow color background styling */
        
        /*
        tr:nth-child(odd) {
            background: linear-gradient(45deg, #FF6B6B, #FF8E53, #FFCA3A, #8AFF53, #53FFB8, #6B66FF, #C53BFF);
            background-size: 600% 100%;
            animation: rainbow-bg 5s linear infinite;
        }
        */
        @keyframes rainbow-bg {
            0% { background-position: 0 0; }
            100% { background-position: 600% 0; }
        }
        
        tr:hover {
            transform: scale(1.02);
            transition: transform 0.3s ease-in-out;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }
        
         

        .edit a {
           display: inline-block;
            padding: 3px 10px;
            text-decoration: none;
            color: white;
            background-color: #007bff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        
        .delete a {
            display: inline-block;
            padding: 3px 10px;
            text-decoration: none;
            color: white;
            background-color: #007bff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        </style>
</head>
<body>

<h1>List All Requests</h1>

<%

    List<Request> requestList = (List<Request>) request.getAttribute("requestList");
%>

<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Description</th>
        <th>Category Id</th>
        <th>Amount</th>
        <th>Status</th>
        <th>Edit</th>
        <th>Delete</th>	
    </tr>
    
    <%
        for (Request request1 : requestList) {
    %>
    <tr>
        <td><%= request1.getId() %></td>
        <td><%= request1.getTitle() %></td>
        <td><%= request1.getDescription() %></td>
        <td><%= request1.getCategoryId() %></td>
        <td><%= request1.getAmount() %></td>
        <td><%= request1.isActive() ? "Active" : "Inactive" %></td>
        
        
        <td class="edit">
        	<a href="request/edit?id=<%= request1.getId() %>">Edit</a>
        	
        </td>
        <td class="delete">
       		 <a href="delete_request.jsp?id=<%= request1.getId() %>">Delete</a>	
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>

