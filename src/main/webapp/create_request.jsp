<%@page import="in.fssa.knfunding.service.UserService"%>
<%@page import="in.fssa.knfunding.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Request</title>
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
            color: #333;
        }
        
        .container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 40px;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        
        input[type="number"]{
        	width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
       
        
        textarea {
            resize: vertical;
        }
        
        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h1>Create Request</h1>

<div class="container">
    <form action="create_request" method="post">
        <label for="title">Title:</label>
        <input type="text" name="title" required>
        
        <label for="description">Description:</label>
        <textarea name="description" required></textarea>

        <div class="Basic_info">
		    <label for="categoryId">Category</label>
				    <select name="categoryId" class="option input_option" required>
				   		<option value="None" >None</option>
				        <option value="4">Animal welfare</option>
				        <option value="5">Children</option>
				        <option value="2">Education</option>
				        <option value="3">Temple & Culture</option>
				        <option value="1">Medical causes</option>
				        <option value="6">Natural Disaster</option>
				        
				    </select>
				    
		</div> 
		
        <label for="img_url">Image:</label>
        <input type="text" name="img_url" required>
        
        <%
		// Retrieve the user ID from the session and store it in the 'user_id' variable
		HttpSession session2 = request.getSession(false);
		int user_id = -1; // Default value if user_id is not found in the session
		
		if (session2 != null) {
		    Object userIdAttribute = session.getAttribute("user_id");
		    if (userIdAttribute instanceof Integer) {
		        user_id = (int) userIdAttribute;
		    }
		}
		%>
        
        <label for="amount">Amount:</label>
        <input type="number" name="amount" required>
        
        
        
        <button type="submit">Create Request</button>
    </form>
</div>

</body>
</html>
