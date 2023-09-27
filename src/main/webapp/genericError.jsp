<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>

<!-- Add your CSS link here -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/style.css">

<style>
    /* Custom CSS for the error page */
    body {
        background-color: #f4f4f4; /* Background color for the entire page */
        font-family: Arial, sans-serif; /* Specify a preferred font-family */
        text-align: center;
        margin: 0;
        padding: 0;
    }

    .error-container {
        padding: 100px 0;
    }

    h1 {
        font-size: 36px;
        color: #333; /* Text color for the error message */
    }

    p {
        font-size: 18px;
        color: #777; /* Text color for the error description */
    }

    a {
        text-decoration: none;
        background-color: #007bff; /* Background color for the "Back to home page" link */
        color: #fff; /* Text color for the link */
        padding: 10px 20px; /* Adjust padding as needed */
        border-radius: 5px; /* Add rounded corners to the link */
    }

    a:hover {
        background-color: #0056b3; /* Background color on hover */
    }
</style>
</head>
<body>
    <div class="error-container">
        <h1>An error occurred</h1>
        <p>We're sorry, but an error occurred while processing your request. Please try again later.</p>
       <a href="<%=request.getContextPath() %>/IndexServlet" class="login_register login_btn" style="color: var(--link-color); font-size: 1.5rem;">Back to home page</a>
    </div>
</body>
</html>
