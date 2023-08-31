<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Request</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        .delete-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px 1px rgba(0, 0, 0, 0.1);
            margin: 0 auto;
            width: 50%;
            text-align: center;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .delete-button {
            background-color: #dc3545;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .delete-button:hover {
            background-color: #b02a37;
        }
    </style>
</head>
<body>
    <h1>Delete Request</h1>

    <div class="delete-container">
        <p>Are you sure you want to delete this request?</p>
        <form action="delete_request" method="post">
             <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
            <button class="delete-button" type="submit" value="Delete">Delete</button>
        </form>
    </div>
</body>
</html>
