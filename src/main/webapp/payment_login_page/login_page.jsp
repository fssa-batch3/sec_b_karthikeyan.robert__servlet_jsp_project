<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/login_style.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap" rel="stylesheet">
        <title>KN funding</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/logo.png">
    </head>

    <header>
        <a href="<%=request.getContextPath()%>/index.jsp">
            <img src="<%=request.getContextPath()%>/assets/images/logo.png" alt="image" class="logo"> 
        </a>
        <div class="search_input_logo">
            <!-- <input class="search_box" placeholder="Search Campaigns & Petitions"></input>
            <button class="search_button">
                <img src="./project/assets/images/search_logo.png" alt="image"
                    class="search_logo"></button> -->
            <!-- <ul>
                <li>About US</li>
                <li>Contact US</li>

            </ul>         -->

        </div>
        <ul class="Login_Register">
            <li class="Login login_register dropdownn">
                <a class="AboutUS" href="<%=request.getContextPath()%>/knfunding_details/BL_about_us.jsp" >  About us </a>
                <!-- About us
                <div class="dropdownn-content">
                    <a href="#">Who we are</a>
                    <a href="#">What we do</a>
       
                </div> -->
            </li>
            <li class="Login login_register">
               <a class="AboutUS" href="#"> Contact us</a>
            </li>
            <!-- <li class="Login login_register">
                <a href="../../project/payment login page/Register_page.html" class="AboutUS">Register </a>
            </li> -->
            <li class="Login">
                <a href="<%=request.getContextPath()%>/payment login page/login_page.html" class="login_register login_btn" id="">Login to start a fundraiser</a>
            </li>

        </ul>

    </header>
    <body>
    
    
        <section class="section_right_left">
            <div class="login_left login_or_register">
                <form action="<%=request.getContextPath()%>/Login" role="form" method="post">
                    <div class="title">
                        <h1 class="title_h1">LOG IN</h1>
                    </div>
                    <div class="input">
                
                        <input pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="email" type="text" id="email" required="true" placeholder="Email id" class="input_1">
                 
                    </div>
                    
                    <div class="input">
            
                
                        <input 
                            id = "password"
                    		name="password"
                            title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
                            type="password"
                            placeholder="password*"
                            required="true" 
                            class="input_1">

                    </div>
                            <%
    String errorMessage = (String)request.getAttribute("errorMessage");
    if(errorMessage != null){
    	out.println(errorMessage);
    }
    %>
                    <div class="login_button_a">
                        <button type="submit" class="login_button_a"> LOGIN</button>    
                    </div>
                </form>
                <!-- <a href="../Main_page.html" class="login_button_a" >Login</a> -->
            </div>

            <div class="createaccount login_or_register"> 
                <div class="title">
                    <h1>REGISTER</h1>

                </div>
                <div class="content">
                    <p>IF YOU STILL DON'T HAVE A KN FUNDING.COM ACCOUNT, USE THIS OPTION 
                        TO ACCESS THE REGISTRATION FORM.
                    </p>
                    <P>
                        BY GIVING US YOUR DETAILS, FUNDRAISING IN KN FUNDING.COM WILL BE FASTER AND AN GOOD EXPERIENCE
                    </P>
                </div>
                <div class="create_account">
                    <button>
                        <a href="<%=request.getContextPath()%>/payment_login_page/Register_page.jsp" class="create_account">CREATE ACCOUNT</a>
                    </button>   

                </div>
            </div>

        </section>

        <section>
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
        </section>
    
        <script src="<%=request.getContextPath()%>/assets/script.js"></script>

    </body>

</html>
