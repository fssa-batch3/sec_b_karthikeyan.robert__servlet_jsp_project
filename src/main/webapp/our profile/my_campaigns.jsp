<!DOCTYPE html>
<%@page import="in.fssa.knfunding.model.Request"%>
<%@page import="java.util.List"%>
<html lang="en">
    <head>
        <link rel="stylesheet" href="./assets/css/Main_page_style.css">
        <link rel="stylesheet" href="./assets/css/style.css">
        <!-- <link rel="stylesheet" href="../assets/css/our_profile_style.css" > -->
        <link rel="stylesheet" href="./assets/css/my_petition_style.css">
        <title>KN funding</title> 
    </head>

    <header class="profile_head">
        <div class="header_1">
            <div>
                <a href="../Main_page.html">
                    <img src="../assets/images/logo.png" alt="image" class="logo"> 
                </a>
            </div>    
            <div class="search_input_logo">
                <input class="search_box" placeholder="Search Campaigns & Petitions"></input>
                <button class="search_button">
                    <img src="../assets/images/search_logo.png" alt="image" class="search_logo">
                </button>
            </div>
            <div class="profile_logo">
            
                <!-- <div class="profile_name">
                    KARTHIKEYAN
                    </div>
            
                    <div class="logo_profile">
                    <a href="../our profile/our_profile.html">
                    <img src="../assets/images/user.png" alt="image" class="user_logo"/>
                    </a>
                    </div> -->
                <div id="user_name" class="profile_name">
                    <!-- KARTHIKEYAN -->
                </div>
                <!-- <a href="./our profile/our_profile.html"> -->
                <div class="logo_profile">
                    <div class="dropdown">
                        <img src="../assets/images/user.png" alt="image" class="user_logo">
                        <div class="dropdown-content">
                            <a href="../our profile/Profile_edit_page.html">Edit profile</a>
                            <a href="../index.html">Log Out</a>
                  
                        </div>
                    </div>
                </div>
                <!-- </a> -->

            </div>
        </div>  
        <div class="header_2">
            <ul class="profile_head_2">
                <a href="./our_profile.html" class=" profile_head_2">
                    <li> DASHBOARD</li>
                </a>
                <a href="./my_campaigns.html" class=" profile_head_2">
                    <li> MY CAMPAIGNS</li>
                </a>
                <a href="#" class=" profile_head_2">
                    <li><b> WITHDRAW AMOUNT </b></li> 
                </a>
                <!-- <a href="./my_petition.html" class=" profile_head_2"><li> MY PETITIONS</li> </a> -->
                <!-- <a  href="../../index.html" class="profile_head_2 log_out"><li><img  src="../assets/images/logout.png" alt="image" class="log_out"/></li></a> -->
    
            </ul>
        </div>  
 
    </header>

    <body>
        <div class="dashboard">
            <div class="welcome_name">
                <h2>MY CAMPAIGNS</h2>
            </div>
		       <section class="people_profile">
    <%
    

    List<Request> userRequests = (List<Request>) request.getAttribute("userRequests");
   %>
   
   <% 
    for (Request request1 : userRequests) {
%>

  
        <div class="profiles">
            <div class="profile_info">
                <div class="content">
                    <img alt="post" name="img_url" class="profile-post" style="width:100%;" src="<%= request1.getImg_url() %>">
                </div>
                <div class="content">
                    <p>
                        <b><%= request1.getTitle() %></b>
                    </p>
                    <p><%= request1.getDescription() %></p>
                </div>
                <div class="content">
                    <!-- Additional content here if needed -->
                </div>
                <div class="content_F_B">
                    <div class="funded_backers">
                        <p style="margin:5px;">
                            <b>RS.0</b>
                        </p>
                        <p style="margin:5px;">
                            raised out of
                        </p>
                        <p style="margin:5px;">
                            <b>Rs.<%= request1.getAmount() %></b>
                        </p>
                    </div>
                </div>
                <div style="display: flex; justify-content: space-evenly;">
                    <button class="edit" style="background-color: tomato;border: tomato;width: 100px;height: 30px;">
        	<a href="request/edit?id=<%= request1.getId() %>" style="text-decoration: none;color: black;font-size: 1pc;font-weight: bold;">Edit</a>
        	
        </button>
        <button class="delete" style="background-color: tomato;border: tomato;width: 100px;height: 30px;">
       		 <a href="delete_request.jsp?id=<%= request1.getId() %>" style="text-decoration: none;color: black;font-size: 1pc;font-weight: bold;">Delete</a>	
        </button>
                </div>
            </div>
        </div>
    <%
    }
    %>
</section>
		        

        </div>

        <footer class="footer">
            <section class="footer_section1">
            <div class="con_info">
                <img src="../../project/assets/images/footer_logo.png" alt="image" class="footer_logo">

                

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
                        <li class="abus"><a href="#" class="aboutUS">About us</a></li>
                        <li class="abus"><a href="#" class="aboutUS">How It Works</a></li>
                        

                    </ul>
                </div>
                <div class="footer_contact">
                    <ul class="footer_contact_list">
                        <li>
                            <h2>OUR POLICIES</h2>
                        </li>
                        <li class="abus"><a href="#" class="aboutUS">Terms of Use</a></li>
                        <li class="abus"><a href="#" class="aboutUS">Privacy Policy</a></li>
                        <li class="abus"><a href="#" class="aboutUS">Verified Accounts</a></li>
                        

                    </ul>
                </div>
            </div>
                <div class="contact">

                    <a href="https://www.instagram.com/karthi_kn_offl/" class="instagram_fb">
                        <img src="../../project/assets/images/instagram.png" alt="image" height="40px" width="50px">
                    </a>
                    <a href="https://www.facebook.com/profile.php?id=100057753970924" class="instagram_fb">
                        <img src="../../project/assets/images/facebook.png" alt="image" height="40px" width="50px">
                    </a>
                    <a href="https://www.linkedin.com/in/karthi-keyan-b01438254/" class="instagram_fb">
                        <img src="../../project/assets/images/linkedin.png" alt="image" height="42px" width="50px">
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

        <script>
        
        const show_cart = JSON.parse(localStorage.getItem("Request_list"));
        console.log(show_cart);

        div_profiles_row_one = document.createElement("div");
        div_profiles_row_one.setAttribute("class", "profiles_row_one");
        console.log(div_profiles_row_one);
        document.querySelector("section.people_profile").append(div_profiles_row_one);

        for (i = 0; i < show_cart.length; i++) {
            div_profiles = document.createElement("div");
          div_profiles.setAttribute("class", "profiles");
          div_profiles_row_one.append(div_profiles);

            a_profile_info = document.createElement("a");
          a_profile_info.setAttribute("class", "profile_info");
          a_profile_info.setAttribute("href", show_cart[i].href);
          div_profiles.append(a_profile_info);

        div_content_1 = document.createElement("div");
          div_content_1.setAttribute("class", "content");
          a_profile_info.append(div_content_1);

          img = document.createElement("img");
          img.setAttribute("src", show_cart[i]["Featured Image"]);
          img.setAttribute("alt", "image");
          img.setAttribute("width", "300px");
          img.setAttribute("height", "200px");
          div_content_1.append(img);

          div_progressa = document.createElement("div");
          div_progressa.setAttribute("class", "progressa");
          div_profiles.append(div_progressa);

          div_progressab = document.createElement("div");
          div_progressab.setAttribute("class", "progressab");
          div_progressab.setAttribute("style", "background-color: rgb(178, 222, 75);");
          div_progressa.append(div_progressab);

          div_content_F_B = document.createElement("div");
          div_content_F_B.setAttribute("class", "content_F_B");
          div_profiles.append(div_content_F_B);

          div_funded_backers_1 = document.createElement("div");
          div_funded_backers_1.setAttribute("class", "funded_backers");
          div_content_F_B.append(div_funded_backers_1);

          div_para_funded = document.createElement("p");
          div_para_funded.innerText = "FUNDED";
          div_funded_backers_1.append(div_para_funded);

          div_funded_amount = document.createElement("p");
          div_funded_amount.innerText = "0";
          div_funded_backers_1.append(div_funded_amount);

          div_persentage = document.createElement("div");
          div_persentage.setAttribute("class", "persentage");
          div_content_F_B.append(div_persentage);

  h1_persentage_space = document.createElement("h1");
          h1_persentage_space.setAttribute("class", "persentage_space");
          h1_persentage_space.innerText = "0%";
          div_persentage.append(h1_persentage_space);

          div_funded_backers_2 = document.createElement("div");
          div_funded_backers_2.setAttribute("class", "funded_backers");
          div_content_F_B.append(div_funded_backers_2);

          div_para_backers = document.createElement("p");
          div_para_backers.innerText = "BACKERS";
          div_funded_backers_2.append(div_para_backers);

  div_para_backers_amt = document.createElement("p");
          div_para_backers_amt.innerText = "0";
          div_funded_backers_2.append(div_para_backers_amt);

  div_content_2 = document.createElement("div");
          div_content_2.setAttribute("class", "content");
          div_profiles.append(div_content_2);
        
          p_para = document.createElement("p");
          div_content_2.append(p_para);

          b_bold = document.createElement("b");
          b_bold.innerText = show_cart[i].title;
          p_para.append(b_bold);

          p = document.createElement("p");
          p.innerText = show_cart[i].shortdecp;
          div_content_2.append(p);

          div_DAYS_left = document.createElement("div");
          div_DAYS_left.setAttribute("class", "DAYS_left");
          div_profiles.append(div_DAYS_left);

        //   p_days_left_p = document.createElement("p");
        //   p_days_left_p.setAttribute("class", "days_left_p");
        //   div_DAYS_left.append(p_days_left_p);

        //   b_boldd = document.createElement("b");
        //   b_boldd.innerText = show_cart[i]["End date"];
        //   p_days_left_p.append(b_boldd);

        a_donate_btn = document.createElement("a");
            a_donate_btn.setAttribute(
                    "href",
                    "../payment login page/card_details.html"
                );
            div_DAYS_left.append(a_donate_btn);

            donate_btn = document.createElement("button");
            donate_btn.innerText = "DONATE";
            donate_btn.setAttribute("class", "donate_btn");
            a_donate_btn.append(donate_btn);


            //user name

            const userId = JSON.parse(localStorage.getItem("userId"));
            const user_list = JSON.parse(localStorage.getItem("user_list"));

            function login_data(e) {
              return e.number == userId;
            }
            user_data = user_list.find(login_data);
            document.querySelector("#user_name").innerText = user_data.name;


        }
    </script>
    </body>

</html>