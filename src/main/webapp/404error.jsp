<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>404 - Not Found</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/style.css">

	<style>
  /* Custom CSS for the 404 error page */
  body {
    background-color: #f4f4f4; /* Background color for the entire page */
    font-family: Arial, sans-serif; /* Specify a preferred font-family */
  }
  
  h1 {
    color: #0e6453; /* Text color for the main heading */
    font-size: 3rem;
    text-align: center;
    margin-top: 50px;
  }

  p {
    font-size: 1.5rem;
   
    text-align: center;
    margin: 10px 0;
  }

  a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff; /* Background color for the link */
    color: #fff; /* Text color for the link */
    text-decoration: none;
    border-radius: 5px;
    margin-top: 20px;
  }

  a:hover {
    background-color: #0056b3; /* Background color for the link on hover */
  }
  .errorImage{
  height:300px;
  width:300px;
  }
</style>
</head>
<body>
    <h1 style = "color:tomato;"> 404 - Page Not Found</h1>
    <div style="text-align: center;">
    	<img alt="image" class="errorImage" src="<%=request.getContextPath()%>/assets/images/error.png">
    </div>
    <p style="font-size:1.5rem; color:black;"><b>The requested page could not be found. Please check the URL or use the search bar to find what you're looking for. </b></p>
    <p style="font-size:1.5rem; margin-top:50px; color:black;"><b> But your heart is in the right place!</b> </p>
    <p> <b>Tap below to find out how your help can transform someones life. </b></p>
    <div style="text-align: center;">
    <a href="<%=request.getContextPath() %>/IndexServlet" class="login_register login_btn" style="color: var(--link-color);" >  Back to home page</a>
</div>
</body>
</html>