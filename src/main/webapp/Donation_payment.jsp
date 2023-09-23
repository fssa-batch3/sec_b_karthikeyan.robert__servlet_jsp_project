<!DOCTYPE html>
<%@page import="in.fssa.knfunding.model.User"%>
<html>
<head>
<meta charset="UTF-8">
<title>Create Donation</title>
<style>
/* Style for the form container */
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

h1 {
	text-align: center;
	padding: 20px;
}

form {
	max-width: 400px;
	margin: 0 auto;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

/* Style for form labels */
label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

/* Style for form inputs */
input[type="text"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

/* Style for the submit button */
input[type="submit"] {
	background-color: #007BFF;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>

<body>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	User user = (User) session.getAttribute("user");

	%>

	<h1>Donation</h1>
	<form action="Donate?requestId=<%=id%>" method="post" id="amount" onsubmit="return validateAmount()">
	
	<input type="hidden" name="id" value="<%=id%>">
			
		<label for="donor_name">Donor Name:</label> 
		<input type="text"
			id="donor_name" name="donorName" readonly value="<%=user.getFullName()%>">
			<br> <br> 
			 <label for="email">Email:</label> <input type="text" id="email" name="email" readonly value="<%=user.getEmail()%>"><br>
		<br> 
		<label for="mobile_no">Mobile Number:</label>
		 <input
			type="number" id="mobile_no" name="mobile_no" readonly value="<%=user.getPhoneNumber()%>"><br> <br>
			
		<label for="donation_amount">Donation Amount:</label>
		 <input
			type="number" id="donation_amount" name="donation_amount" required min="250" max="10000"><br>
		<br>

		<button type="submit">Submit</button>
	</form>
	
	
	
	
	<script>
		function validateAmount() {
			
		    const amountInput = document.getElementById("amount");
		    const amountValue = amountInput.value.trim(); 
		    
		    
		    if (/^0/.test(amountValue) || !/^[1-9][0-9]*$/.test(amountValue)) {
		    	
		        alert("Amount must be a positive integer without leading zeros.");
		        amountInput.focus();
		        return false; 
		    }
	
		    
		    const amount = parseInt(amountValue);
		    if (amount < 250 || amount > 10000) {
		    	
		        alert("Amount must be grater that 250");
		        amountInput.focus();
		        return false; 
		    }
	
		    return true; 
		}

	</script>
	
</body>
</html>