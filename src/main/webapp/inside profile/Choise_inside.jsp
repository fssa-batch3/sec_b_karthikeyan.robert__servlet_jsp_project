<!DOCTYPE html>
<%@page import="in.fssa.knfunding.service.RequestService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.fssa.knfunding.model.Donation"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.knfunding.service.DonationService"%>
<%@page import="in.fssa.knfunding.model.Request"%>
<%@page import="in.fssa.knfunding.model.User"%>
<html lang="en">
   <head>
        <meta charset="UTF-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap" rel="stylesheet">
        <title>KN funding</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/icon_logo.jpg">
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
        <a href="<%=request.getContextPath()%>/index.jsp">
            <img src="<%=request.getContextPath()%>/assets/images/logo.png" alt="image" class="logo"> 
        </a>
        <div class="search_input_logo">
            
        </div>
        <ul class="Login_Register">
            <li class="Login login_register dropdownn">
                <a class="AboutUS" href="<%=request.getContextPath()%>/knfunding_details/BL_about_us.jsp" >  About us </a>
               
            </li>
            <li class="Login login_register">
               <a class="AboutUS" href="#"> Contact us</a>
            </li>
          
            <li class="Login">
                <a href="<%=request.getContextPath()%>/payment_login_page/login_page.jsp" class="login_register login_btn" id="">Login to start a fundraiser</a>
            </li>

        </ul>

    </header>

    <body>
        <section class="feature_heading">
            <h1 class="F_heading"> PROFILES</h1>
        </section>
        <section class="people_profile">
        	<%
    RequestService requestService = new RequestService();
    List<Request> requestList;

    try {
        requestList = requestService.getAllRequests();
    } catch (Exception e) {
        e.printStackTrace();
        requestList = new ArrayList<>();
    }
%>

<%
    for (int i = requestList.size() - 1; i >= 0; i--) {
        Request request1 = requestList.get(i);
        int requestId = request1.getId();
        DonationService donationService = new DonationService();
        List<Donation> donationList = donationService.getDonationByRequestId(requestId);
        int totalAmount = 0;
        int donorsCount = donationList.size();
        for (Donation donation : donationList) {
            totalAmount += donation.getDonation_amount();
        }
%>

<div class="profiles" style="<%= totalAmount >= request1.getAmount() ? "display: none;" : "" %>">
    <div class="profile_info">
        <div class="content">
            <img alt="post" name="img_url" class="profile-post" style="width: 100%;" src="<%=request1.getImg_url()%>">
        </div>
       <!--  <div class="content_F_B">
            
        </div>
        -->
         <div class="content">
         
            <div class="progress-bar">
                <div class="progress" id="progress<%= requestId %>"></div> 
            </div>
            <div class="funded_backers">
                <p style="margin: 5px;">
                    <b>RS.<%= totalAmount %></b>
                </p>
                <p style="margin: 5px;">raised out of</p>
                <p style="margin: 5px;">
                    <b>Rs.<%=request1.getAmount()%></b>
                </p>
            </div>
        </div>
        
        <div class="content">
            <div  style="display: flex; justify-content: space-between; border-bottom: 1px solid gray; margin-bottom:10px; ">
            <p >
                 <b>Catergory : <%=request1.getCategory_name() %></b>
                 
            </p>
            <p><b>|</b></p>
            
             <p > <b><%= donorsCount %> Donors  </b>
                </p>
           </div> 
            <p>
                <b><%=request1.getTitle()%></b>
            </p>
            <p>
                <%=request1.getDescription()%>
            </p>
        </div>
       
        <div>
            <button class="donate_btn">
                <a style="text-decoration: none; color: black;"
                   href="<%=request.getContextPath()%>/payment_login_page/login_page.jsp">
                    Donate
                </a>
            </button>
        </div>
    </div>
</div>

<% } %>


  
         
        </section>
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
                        <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/BL_about_us.jsp" class="aboutUS">About us</a></li>
                        <li class="abus"><a href="#" class="aboutUS">How It Works</a></li>
                        

                    </ul>
                </div>
                <div class="footer_contact">
                    <ul class="footer_contact_list">
                        <li>
                            <h2>OUR POLICIES</h2>
                        </li>
                        <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/BL_terms_and_conditions_page.jsp" class="aboutUS">Terms of Use</a></li>
                        <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/BL_privacy_policy.jsp" class="aboutUS">Privacy Policy</a></li>
                        <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/BL_verified_account.jsp" class="aboutUS">Verified Accounts</a></li>
                        
                        
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
                        with love </b>
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

	

	<script>
	function updateProgressBar(totalAmount, targetAmount, progressBarId) {
	    const progress = (totalAmount / targetAmount) * 100;
	    const progressBar = document.querySelector('#' + progressBarId);
	    if (progressBar) {
	        if (progress <= 100) {
	            progressBar.style.width = progress + '%';
	        } else {
	            progressBar.style.width = '100%'; 
	        }
progressBar.innerText = Math.min(Math.floor(progress), 200) + '%'; 
	        
	        if (progress > 70 && progress <= 90) { 
	            progressBar.style.backgroundColor = 'blue';
	        }
	        else if(progress >= 91 && progress <= 200){
	        	progressBar.style.backgroundColor = 'green';
	        }
	        else {
	            progressBar.style.backgroundColor = 'tomato';
	        }
	    }
	}


    <%
    for (int i = requestList.size() - 1; i >= 0; i--) {
        Request request1 = requestList.get(i);
        int requestId = request1.getId();
        DonationService donationService = new DonationService();
        List<Donation> donationList = donationService.getDonationByRequestId(requestId);
        int totalAmount = 0;
        for (Donation donation : donationList) {
            totalAmount += donation.getDonation_amount();
        }
    %>

    let totalAmount<%= requestId %> = <%= totalAmount %>;
    let targetAmount<%= requestId %> = <%= request1.getAmount() %>;
    updateProgressBar(totalAmount<%= requestId %>, targetAmount<%= requestId %>, 'progress<%= requestId %>');

    <% } %>
</script>

    </body>


</html>