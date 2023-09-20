<!DOCTYPE html>
<%@page import="in.fssa.knfunding.model.User"%>
<html lang="en">
    <head>
        <title>KN funding</title>
        <link rel="icon" type="image/x-icon" href="./project/assets/images/logo.png">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/Main_page_style.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/our_profile_style.css">
    </head>

    <header class="profile_head">
        <div class="header_1">
            <div>
                <a href="<%=request.getContextPath()%>/Main_page.html">
                    <img src="<%=request.getContextPath()%>/assets/images/logo.png" alt="image" class="logo"> 
                </a>
            </div>    
            <!-- <div class="search_input_logo">
                <input class="search_box" placeholder="Search Campaigns & Petitions"></input>
                <button class="search_button">
                    <img src="../assets/images/search_logo.png" alt="image" class="search_logo">
                </button>
            </div> -->
            <div class="profile_logo">
                <ul class="LoginRegister">
                    <li class="Login login_register dropdownn">
                      <a class="AboutUS" href="<%=request.getContextPath()%>/knfunding_details/AL_about_us.jsp" >  About us </a>
                        <!-- <div class="dropdownn-content">
                            <a href="../project/knfunding_details/AL_about_us.html">Who we are</a>
                            <a href="../project/knfunding_details/AL_about_us.html">What we do</a>
               
                        </div> -->
                    </li>
                    <li class="Login login_register">
                        Contact us
                    </li>
                        <!-- <li class="Login login_register">
                            Register
                        </li>
                        <li class="Login">
                            <a href="./project/payment login page/login_page.html" class="login_register" id="">Login</a>
                        </li> -->
            
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
        <div id="myPopup" class="popup">
            
            <form class="form-horizontal popup-content" action=>
               
                <div class="edit_profile_pop">

                    <div class="edit_profile_font">
                        EDIT PROFILE
                    </div>
                    
                    <button class="close_btn">
                        <img src="<%=request.getContextPath()%>/assets/images/close.png" alt="image"
                        class="close_btn_img" >
                    </button>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-3 control-label">Full name:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" id="name"
                              value="<%= user.getFullName() %>" readonly required>
                            
                            
                            
                        <!-- <input type="text" id="textInput" required> -->

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Email:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="email"  value="<%= user.getEmail() %>" readonly required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label">Mobile Number:</label>
                    <div class="col-md-8">
                        <input class="form-control" type="number"  value="<%= user.getPhoneNumber() %>" readonly required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <input type="button" class="btn-primary button-79" value="Edit">
                        <!-- <input type="submit" class="btn-secondary" value="submit"> -->
                        <button type="submit" class="btn-secondary button-79">Submit</button>
                        <span></span>
                        <input type="reset" class="btn-teritary button-79" value="Delete">
                    </div>
                </div>
            </form>
            
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
                <h2 class="welcome">Welcome,</h2>
                <span id="welcome_user_name" class="welcome_user_name">
                <%=user.getFullName()%>
                </span>
        
            </div>
            <div class="welcome_tagline">
                 You are now a part of KN funding Family...!
            </div>
            <div class="history_1">
                <div class="column_1">
                
                    <h3>LAST 10 PAYMENTS</h3>
                  
                </div>
                <div class="column_2">
                    <table class="payment_list">
                        <tr class="listhead list_heading">
                            <th class="list_content">Campaign Title</th>
                            <th class="list_content_name">name</th>
                            <th class="list_content_amount">amount</th>
                            <th class="list_content">Date</th>
                        
                        </tr>
                        <tr class="list_heading">
                            <td class="list_content"> temple & Culture </td>
                            <td class="list_content name">ajun</td>
                            <td class="list_content amount"> 20000 </td>
                            <td class="list_content"> 11/05/2023 </td>
                        
                        </tr>  
                        <tr class="list_heading">
                            <td class="list_content"> Education welfar</td>
                            <td class="list_content name"> tommy</td>
                            <td class="list_content amount"> 30000 </td>
                            <td class="list_content"> 01/05/2023</td>
                        
                        </tr>  
                        <tr class="list_heading">
                            <td class="list_content"> medical causes</td>
                            <td class="list_content name"> sandy</td>
                            <td class="list_content amount"> 40000 </td>
                            <td class="list_content"> 21/04/2023</td>
                        
                        </tr>  
                        <tr class="list_heading">
                            <td class="list_content"> natural disaster </td>
                            <td class="list_content name">anbu </td>
                            <td class="list_content amount"> 20000 </td>
                            <td class="list_content"> 19/04/2023</td>
                        
                        </tr>  
                        <tr class="list_heading">
                            <td class="list_content"> children welfar</td>
                            <td class="list_content name"> mathi</td>
                            <td class="list_content amount"> 10000 </td>
                            <td class="list_content"> 11/04/2023</td>
                        
                        </tr>  
                        <tr class="list_heading">
                            <td class="list_content"> temple & culture</td>
                            <td class="list_content name"> sr.vignesh</td>
                            <td class="list_content amount"> 10000 </td>
                            <td class="list_content"> 01/04/2023</td>
                        
                        </tr>  
                     
                    </table>

                </div>
            </div>

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
                            <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/AL_terms_and_contition_page.html" class="aboutUS">Terms of Use</a></li>
                            <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/AL_privacy_policy.html" class="aboutUS">Privacy Policy</a></li>
                            <li class="abus"><a href="<%=request.getContextPath()%>/knfunding_details/AL_verification.html" class="aboutUS">Verified Accounts</a></li>
                            
    
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

        <script>
            

       

        //EDIT popup

       

        // function login_data(e) {
        //     return e.number == userId;
        // }
        // user_data = user_list.find(login_data);

  
		/** 
        const sumbit = document.querySelector("form");
        sumbit.addEventListener("submit", findReadonly1)

        const save = document.querySelector(".btn-secondary")
        save.addEventListener("click", saveUpdate)

        function findReadonly(e) {
            let name_field = document.getElementById("name");
            name_field.removeAttribute("readonly");
            name_field.focus();
            // document.getElementById("name").setAttribute("required");
            // document.getElementById("email").setAttribute("required");

        } 
        function findReadonly1(e) {
            document.getElementById("name").setAttribute("readonly", "true");
        } 
        const editThing = document.querySelector(".btn-primary");
        editThing.addEventListener("click", findReadonly);

        function saveUpdate(e) {
           
            let user_name = document.getElementById("name").value.trim();
            let user_email = document.getElementById("email").value.trim();

            if(!user_name || !user_email){
                alert("Please fill the input fields properly!!");
            }
            else{
                user_data["name"] = user_name;
            // user_data["number"] = user_number;
            user_data["email"] = user_email;

            localStorage.setItem('user_list', JSON.stringify(user_list));
            alert("Updated successfully");
            // window.location.href = "../Myprofile/6_profile.html"
            // console.log(user_list);
            e.preventDefault();
            location.reload();
            }

        }

        const dataDelete = document.querySelector(".btn-teritary");
        dataDelete.addEventListener("click", delData)
        function delData(e) {
            if (confirm("Are you sure?")) {
                let userId = JSON.parse(localStorage.getItem("userId"));
                let user_list = JSON.parse(localStorage.getItem("user_list"));

                function login_data(e) {
                    return e.number == userId;
                }

                user_data = user_list.find(login_data);

                const indexOfUser = user_list.indexOf(user_data);

                user_list.splice(indexOfUser, 1);
                localStorage.setItem('user_list', JSON.stringify(user_list));
                // window.location.href = "../../index.html";
            };
        }

        //user_name 

        // function login_data(e) {
        //     return e.number == userId;
        // }
        // user_data = user_list.find(login_data);
        // document.querySelector("#user_name").innerText = user_data["name"];

        myButton.addEventListener("click", function () {
                myPopup.classList.add("show");
            });
            closePopup.addEventListener("click", function () {
                myPopup.classList.remove("show");
            });
            window.addEventListener("click", function (event) {
                if (event.target == myPopup) {
                    myPopup.classList.remove("show");
                }
            });

            
            let edit_button = document.querySelector(".button-79");
            edit_button.addEventListener("click",() => {
            	document.getElementById("full_name_field").removeAttribute("readonly")
            }) **/
            
</script>

    </body>

</html>