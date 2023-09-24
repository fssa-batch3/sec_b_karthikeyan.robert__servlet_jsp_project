<%@page import="in.fssa.knfunding.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>KN funding</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/assets/images/icon_logo.jpg">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/Main_page_style.css">
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/our_profile_style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style.css"> 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap"
	rel="stylesheet">
<style type="text/css">
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
   .footer{
   	margin-top:300px;
   }
.box {
  width: 40%;
  margin: 0 auto;
  background: rgba(255,255,255,0.2);
  padding: 35px;
  border: 2px solid #fff;
  border-radius: 20px/50px;
  background-clip: padding-box;
  text-align: center;
}
/* CSS for the progress bar */
.progress-bar {
    width: 100%;
    background-color: #f2f2f2;
    height: 20px;
    margin-top: 10px;
}

.progress {
    width: 0;
    height: 100%;
    background-color: #4CAF50; /* Green color for the progress bar */
}

.button {
  font-size: 1em;
  padding: 10px;
  color: #fff;
  border: 2px solid #06D85F;
  border-radius: 20px/50px;
  text-decoration: none;
  cursor: pointer;
  transition: all 0.3s ease-out;
}
.button:hover {
  background: #06D85F;
}

.overlay {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  margin: 70px auto;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 30%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close {
  position: absolute;
  top: 20px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: #06D85F;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
}

@media screen and (max-width: 700px){
  .box{
    width: 70%;
  }
  .popup{
    width: 70%;
  }
}
</style>

</head>



<header>
	<a href="<%=request.getContextPath()%>/Main_page.jsp"> <img
		src="<%=request.getContextPath()%>/assets/images/logo.png" alt="image"
		class="logo">
	</a>
	
	<div class="profile_logo">
		<ul class="LoginRegister">
			 <li class="Login">
                <a href="<%=request.getContextPath()%>/create_request.jsp" class="login_register login_btn" id="">Start a fundraiser</a>
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
    <h1>Delete Request</h1>

    <div class="delete-container">
        <p>Are you sure you want to delete this request?</p>
        <form action="delete_request" method="post">
             <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
            <button class="delete-button" type="submit" value="Delete">Delete</button>
        </form>
    </div>
    <footer class="footer">
            <section class="footer_section1">
                <div class="con_info">
                    <img src="<%=request.getContextPath()%>/assets/images/footer_logo.png" alt="image" class="footer_logo">
    
                    
    
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
                            <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/AL_about_us.jsp" class="aboutUS">About us</a></li>
                            <li class="abus"><a href="#" class="aboutUS">How It Works</a></li>
                            
    
                        </ul>
                    </div>
                    <div class="footer_contact">
                        <ul class="footer_contact_list">
                            <li>
                                <h2>OUR POLICIES</h2>
                            </li>
                            <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/AL_terms_and_contition_page.jsp" class="aboutUS">Terms of Use</a></li>
                            <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/AL_privacy_policy.jsp" class="aboutUS">Privacy Policy</a></li>
                            <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/AL_verification.jsp" class="aboutUS">Verified Accounts</a></li>
                            
    
                        </ul>
                    </div>
                </div>
                    <div class="contact">
    
                        <a href="https://www.instagram.com/karthi_kn_offl/" class="instagram_fb">
                            <img src="<%=request.getContextPath()%>/assets/images/instagram.png" alt="image" height="40px" width="50px">
                        </a>
                        <a href="https://www.facebook.com/profile.php?id=100057753970924" class="instagram_fb">
                            <img src="<%=request.getContextPath()%>/assets/images/facebook.png" alt="image" height="40px" width="50px">
                        </a>
                        <a href="https://www.linkedin.com/in/karthi-keyan-b01438254/" class="instagram_fb">
                            <img src="<%=request.getContextPath()%>/assets/images/linkedin.png" alt="image" height="42px" width="50px">
                        </a>
    
                    </div>
                <!-- </section>
                <section class="footer_section2"> -->
                    <div class="copyrights">
                        <b> KN FUNDING is a Registered Trademark. Â© 2022 KN FUNDING. All Rights Reserved. Made by karthikeyan
                            with ð </b>
                    </div>
                    <div class="Disclaimer">
                        <b>Disclaimer:</b> Please note that contributing through KN funding will not always be a tax exempt charitable donation. 
                        KN funding does not guarantee that your Fundraisers will be fully or partially funded nor does it guarantee that the petitions will achieve all their goals. 
                        KN funding is an internet platform to connect individuals, non-profits and contributors to collaborate on the published campaigns & petitions. 
                        KN funding does not take any responsibility for any promises made by campaign owners, petitioners, community members & creators on its platform. 
                        Please read the Terms of Use & Privacy Policy prior performing any transactions on our platform.
                    </div>
                    </section>
    

        </footer>
</body>
 
</html>
