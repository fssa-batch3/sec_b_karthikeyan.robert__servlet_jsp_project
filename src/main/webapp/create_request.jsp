<%@page import="in.fssa.knfunding.service.UserService"%>
<%@page import="in.fssa.knfunding.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    
<title>KN funding</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/assets/images/icon_logo.jpg">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/Main_page_style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style.css"> 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap"
	rel="stylesheet">
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
</head><header>
	<a href="<%=request.getContextPath()%>/Main_page.jsp"> <img
		src="<%=request.getContextPath()%>/assets/images/logo.png" alt="image"
		class="logo">
	</a>
	
	<div class="profile_logo">
		<ul class="LoginRegister">
			 <li class="Login">
                <a href="<%=request.getContextPath()%>/Main_page.jsp" class="login_register login_btn" id="">Home</a>
           		 </li>
		</ul>
		<%
		User user = (User) session.getAttribute("user");
		%>


		<div class="profile_name">
			<!-- KARTHIKEYAN -->
			<%=user.getFullName()%>
		</div>

		<div class="logo_profile">
			<div class="dropdown">
				<img src="<%=request.getContextPath()%>/assets/images/user.png"
					alt="image" class="user_logo">
				<div class="dropdown-content">
					<a href="<%=request.getContextPath()%>/our profile/our_profile.jsp">profile</a>
					<a href="<%=request.getContextPath()%>/logout">Log Out</a>

				</div>
			</div>
		</div>
		<!-- </a> -->

	</div>

</header>
<body>

<h1>Create Request</h1>

<div class="container">
    <form action="create_request" method="post" id = "requestForm" onsubmit="return validateForm()">
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
        <input type="number" name="amount" required min="10000" max="1000000">
        
        
        
        <button type="submit">Create Request</button>
    </form>
</div>
<footer class="footer">

		<section class="footer_section1">
			<div class="con_info">
				<img
					src="<%=request.getContextPath()%>/assets/images/footer_logo.png"
					alt="image" class="footer_logo">



				<div class="footer_contact">
					<ul class="footer_contact_list">
						<li>
							<h2>CONTACT INFO</h2>
						</li>
						<li>Global Infocity, St, Kodandarama Nagar, Perungudi,
							Chennai, Tamil Nadu, 600041.</li>
						<li>+91 7010847986</li>
						<li>karthikeyan.robert@fssa.freshworks.com</li>

					</ul>

				</div>
				<div class="footer_contact">
					<ul class="footer_contact_list">
						<li>
							<h2>GET STARTED</h2>
						</li>
						<li class="abus"><a
							href="<%=request.getContextPath()%>/knfunding_details/AL_about_us.jsp"
							class="aboutUS">About us</a></li>
						<li class="abus"><a href="#" class="aboutUS">How It Works</a></li>


					</ul>
				</div>
				<div class="footer_contact">
					<ul class="footer_contact_list">
						<li>
							<h2>OUR POLICIES</h2>
						</li>
						<li class="abus"><a
							href="<%=request.getContextPath()%>/knfunding_details/AL_terms_and_contition_page.jsp"
							class="aboutUS">Terms of Use</a></li>
						<li class="abus"><a
							href="<%=request.getContextPath()%>/knfunding_details/AL_privacy_policy.jsp"
							class="aboutUS">Privacy Policy</a></li>
						<li class="abus"><a
							href="<%=request.getContextPath()%>/knfunding_details/AL_verification.jsp"
							class="aboutUS">Verified Accounts</a></li>


					</ul>
				</div>
			</div>
			<div class="contact">

				<a href="https://www.instagram.com/karthi_kn_offl/"
					class="instagram_fb"> <img
					src="<%=request.getContextPath()%>/assets/images/instagram.png"
					alt="image" height="40px" width="50px">
				</a> <a href="https://www.facebook.com/profile.php?id=100057753970924"
					class="instagram_fb"> <img
					src="<%=request.getContextPath()%>/assets/images/facebook.png"
					alt="image" height="40px" width="50px">
				</a> <a href="https://www.linkedin.com/in/karthi-keyan-b01438254/"
					class="instagram_fb"> <img
					src="<%=request.getContextPath()%>/assets/images/linkedin.png"
					alt="image" height="42px" width="50px">
				</a>

			</div>
			<!-- </section>
            <section class="footer_section2"> -->
			<div class="copyrights">
				<b> KN FUNDING is a Registered Trademark. © 2022 KN FUNDING.
					All Rights Reserved. Made by karthikeyan with 💗 </b>
			</div>
			<div class="Disclaimer">
				<b>Disclaimer:</b> Please note that contributing through KN funding
				will not always be a tax exempt charitable donation. KN funding does
				not guarantee that your Fundraisers will be fully or partially
				funded nor does it guarantee that the petitions will achieve all
				their goals. KN funding is an internet platform to connect
				individuals, non-profits and contributors to collaborate on the
				published campaigns & petitions. KN funding does not take any
				responsibility for any promises made by campaign owners,
				petitioners, community members & creators on its platform. Please
				read the Terms of Use & Privacy Policy prior performing any
				transactions on our platform.
			</div>
		</section>

	</footer>
	
<script>
    function validateForm() {
    	event.preventDefault();
    	console.log("inside validate forms");
    	// Get the values of the input fields
        var title = document.getElementsByName("title")[0].value.trim();
        
        var description = document.getElementsByName("description")[0].value.trim();
        
        var amount = document.getElementsByName("amount")[0].value.trim();
        var imgUrl = document.getElementsByName("img_url")[0].value.trim();

        // Check if any of the fields are empty
        if (title.length === 0 || description.length === 0 || amount.length === 0 || imgUrl.length === 0) {
            alert("All fields are required.");
            return false; // Prevent form submission
        }

        // Validate the "amount" field to ensure it's a positive number
       // if (isNaN(amount) || parseFloat(amount) > 2500 || parseFloat(amount) <=1000000) {
       //     alert("Amount must between 2500 to 1000000");
         //   return false; // Prevent form submission
        //	}
        
        let form = document.getElementById("requestForm");
        form.submit();

        // Continue with other form field validations here...

        return true; // Allow form submission if all validations pass
    }
</script>


</body>
</html>
