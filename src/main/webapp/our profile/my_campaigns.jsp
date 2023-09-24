<!DOCTYPE html>
<%@page import="in.fssa.knfunding.model.User"%>
<%@page import="in.fssa.knfunding.model.Donation"%>
<%@page import="in.fssa.knfunding.service.DonationService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.fssa.knfunding.service.RequestService"%>
<%@page import="in.fssa.knfunding.model.Request"%>
<%@page import="java.util.List"%>
<html lang="en">
    <head>
        <link rel="stylesheet" href="./assets/css/Main_page_style.css">
        <link rel="stylesheet" href="./assets/css/style.css">
        <!-- <link rel="stylesheet" href="../assets/css/our_profile_style.css" > -->
        <link rel="stylesheet" href="./assets/css/my_petition_style.css">
        <title>KN funding</title> 
        
        <style>
    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        border: 2px solid black;
        padding: 8px;
        text-align: left;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }


    .edit button, .delete button {
        border: none;
        padding: 5px 10px;
        cursor: pointer;
    }

    .edit button {
        background-color: tomato;
        color: black;
    }

    .delete button {
        background-color: tomato;
        color: black;
    }
</style>
        
    </head>

    <header class="profile_head">
        <div class="header_1">
            <div>
                <a href="<%=request.getContextPath()%>/Main_page.html">
                    <img src="<%=request.getContextPath()%>/assets/images/logo.png" alt="image" class="logo"> 
                </a>
            </div>    
            
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
                <!-- <a href="./our profile/our_profile.html"> -->
                <div class="logo_profile">
                    <div class="dropdown">
                        <img src="<%=request.getContextPath()%>/assets/images/user.png" alt="image" class="user_logo">
                        <div class="dropdown-content">
                            <a href="<%=request.getContextPath()%>/user/edit?id=<%= user.getId() %>" >
                                Edit profile  
                            </a>
                            
                            
                            <a href="<%=request.getContextPath()%>/logout">Log Out</a>
                  
                        </div>
                    </div>
                </div>
                <!-- </a> -->

            </div>
        </div>  



        <div class="header_2">
            <ul class="profile_head_2">
                <a href="<%=request.getContextPath()%>/our profile/our_profile.jsp" class=" profile_head_2">
                    <li><b> DASHBOARD </b></li>
                </a>
                <a href="<%=request.getContextPath()%>/user_requests" class=" profile_head_2">
                    <li> <b>MY CAMPAIGNS</b></li>
                </a>
                <a href="#" class=" profile_head_2">
                    <li><b> WITHDRAW AMOUNT </b></li> 
                </a>
    
            </ul>
        </div>  
 
       
 
    </header>

    <body>
        <div class="dashboard">
            <div class="welcome_name">
                <h2>MY CAMPAIGNS</h2>
            </div>
		       <section class="people_profile">
    
   
    <table>
    <tr>
        
        <th>Title</th>
        <th>Description</th>
        <th>Category</th>
        <th>Received Amount</th>
        <th>Amount</th>
        <th>Edit</th>
        <th>Delete</th>	
    </tr>
    <%
    List<Request> userRequests = (List<Request>) request.getAttribute("userRequests");

    // Loop through the userRequests in reverse order
    for (int i = userRequests.size() - 1; i >= 0; i--) {
        Request request1 = userRequests.get(i);
        
        // Rest of your code here
%>
    
   
    <tr>
    <%
    
        int requestId = request1.getId();
        DonationService donationService = new DonationService();
        List<Donation> donationList = donationService.getDonationByRequestId(requestId);
        int totalAmount = 0;
        for (Donation donation : donationList) {
            totalAmount += donation.getDonation_amount();
        }
%>
        
        <td><%= request1.getTitle() %></td>
        <td><%= request1.getDescription() %></td>
        <td><%=request1.getCategory_name() %></td>
        <td><%= totalAmount %></td>
        <td><%= request1.getAmount() %></td>
        
        
        <td class="edit">
        	<button class="edit" style="background-color: tomato;border: tomato;width: 100px;height: 30px;">
        	<a href="request/edit?id=<%= request1.getId() %>" style="text-decoration: none;color: black;font-size: 1pc;font-weight: bold;">Edit</a>
        	
        </button>
        </td>
        <td class="delete">
       		  <button class="delete" style="background-color: tomato;border: tomato;width: 100px;height: 30px;">
       		 <a href="delete_request.jsp?id=<%= request1.getId() %>" style="text-decoration: none;color: black;font-size: 1pc;font-weight: bold;">Delete</a>	
        </button>
        </td>
    </tr>
    <%
        }
    
    %>
</table>
</section>
		        

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