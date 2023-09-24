<!DOCTYPE html>
<%@page import="in.fssa.knfunding.model.User"%>
<html lang="en">

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
	 <meta charset="UTF-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link href="https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap" rel="stylesheet">
      
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/icon_logo.jpg">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/about_us.css">

        
<style type="text/css">
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


    
    <section class="categories-wrap"> 
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="section-title"> Verified Accounts </h2>
                    </div>
                       
                    <div class="row">
                        
                        <div class="col-md-12">
                        
                            <p style="text-align: justify;">
                                The verified badge 
                                <img alt="" src="https://www.crowdkash.com/assets/images/verified-icon.png" style="width: 20px; height: 20px;"> 
                                on KN funding lets people know that an account of the campaigner  is authentic. Campaigners 
                                    will be verified at the sole discretion of KN funding. KN funding will verify the individual campaigners 
                                  or organizational campaigners ;  on the basis of the following criteria</p>
                        <ul>
                            <li style="text-align: justify;">The duration of his/ her association with the platform</li>
                            <li style="text-align: justify;">The number of campaigns raised</li>
                            <li style="text-align: justify;">The amount raised by the campaigner in the last 6 months</li>
                            <li style="text-align: justify;">Transparency displayed by the campaigner regarding usage of funds raised through the KN funding platform.</li>
                            <li style="text-align: justify;">Accounts associated with a prominently recognized individual or brand.</li>
                        </ul>
                        
                            <p style="text-align: justify;">Your account must be active with a record of adherence to the KN funding Rules. This means:-</p>
                            <p style="text-align: justify;"><b><u>Complete</u></b>: You must have a profile name, and a profile image</p>
                            <p style="text-align: justify;"><b><u>Active use</u></b>: You must have logged into the account in the last six months</p>
                            <p style="text-align: justify;"><b><u>Security</u></b>: The account must have a confirmed email address and a phone number</p><ul>
                        </ul>
                        <p style="text-align: justify;">
                                Once the campaigner is informed that they can be listed as a verified campaigner, 
                                they will have to fill the verification form and attach the requisite documents. The documents will not, in any case, 
                                be used for any purpose other than specified above by KN funding. The verified KN fundinger will have the following privileges:-</p>
                        <ul>
                            <li style="text-align: justify;">Verified Badge&nbsp;
                                <!-- <span style="background-color: rgb(255, 255, 255); font-size: 14px; letter-spacing: 0.3px; text-align: start; border-style: initial; border-color: initial; border-image: initial;"> -->
                                <img title="KN funding Verified Account" src="https://www.crowdkash.com/assets/images/verified-icon.png" 
                                style="border: 0px; vertical-align: top; width: 18px; height: 18px; border-radius: 50%; 
                                display: inline-block; margin-top: 0px; margin-right: 10px;">
                            </span></li><li style="text-align: justify;">Increases trust factor between Campaigners &amp; Supporters</li>
                            <li style="text-align: justify;">Signifies to supporters that your account is legitimate</li>
                            <li style="text-align: justify;">Adds credibility to published Campaigns &amp; Petitions</li>
                            <li style="text-align: justify;">Verified account's Campaigns &amp; Petitions rank higher in search results</li>
                            <li style="text-align: justify;">Quicker approval of Campaigns &amp; Petitions</li>
                            <li style="text-align: justify;">Freemium digital marketing services from KN funding</li>
                            <li style="text-align: justify;">Verified tick helps widen your reach</li>
                            <li style="text-align: justify;">Faster withdrawal of funds</li>
                            <li style="text-align: justify;">Early access to special features</li>
                            <li style="text-align: justify;">Dedicated Key Account Manager</li>
                            <li style="text-align: justify;">Campaigns &amp; Petitions are featured on Homepage</li>
                        </ul>
                        <p style="text-align: justify;">The verified badge may increase the chances of your campaign and petition getting better response. 
                            Over a period of your association with KN funding, the badge may add authenticity and weightage to your campaigns and petitions.</p>
                        <p style="text-align: justify;">Please note, we may suspend accounts that use imagery of, or similar to, 
                            the verification badge in a manner that may mislead the public about the account’s verification status.</p>
                        <p style="text-align: justify;">In accordance with the KN funding Terms of Service, 
                            KN funding may remove the verified badge and verified status of a KN funding account at any time and without notice.</p>
                        <p style="text-align: justify;">Individuals or Organizations who wish to verify their accounts may send an expression 
                            of interest on email to causes@KN funding.com with a covering letter.<br></p>
                    </div>
                </div>
            </div>
    </section> 
    

    </body>
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
                        <b> KN FUNDING is a Registered Trademark. © 2022 KN FUNDING. All Rights Reserved. Made by karthikeyan
                            with 💗 </b>
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