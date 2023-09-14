<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="../assets/css/petition_style.css">
        <link rel="stylesheet" href="../assets/css/Main_page_style.css">
        <link rel="stylesheet" href="../assets/css/style.css">
        <title>KN funding</title> 
    </head>
    
    <header>
        <a href="../Main_page.html">
            <img src="../assets/images/logo.png" alt="image" class="logo"> 
        </a>
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
                <a href="../our profile/our_profile.html">
                <div class="logo_profile">
                <img src="../assets/images/user.png" alt="image" class="user_logo"/>
                </div>
                </a> -->
            <div id="user_name" class="profile_name">
                <!-- KARTHIKEYAN -->
            </div>
            <!-- <a href="./our profile/our_profile.html"> -->
            <div class="logo_profile">
                <div class="dropdown">
                    <img src="../assets/images/user.png" alt="image" class="user_logo">
                    <div class="dropdown-content">
                        <a href="../our profile/our_profile.html">profile</a>
                        <a href="../index.html">Log Out</a>
          
                    </div>
                </div>
            </div>
            <!-- </a> -->

        </div>

    </header>
    <body>
        <div class="information_page">
            <h2 class="heading">
                Start a campaign
            </h2>
            <div class="first_page">
                <div class="info_story">
                    <img src="../assets/images/accept.png" alt="image" width="50px" height="50px" class="">
                    <div class="info_story_p">Info
                    </div>
                </div>
                <div class="dash">
                    <b>__________________________________</b>
                </div>
                <div class="info_story">
                    <img src="../assets/images/accept.png" alt="image" width="50px" height="50px" class="">
                    <div class="info_story_p">
                        Story
                    </div>
                </div>
                <div class="dash">
                    <b>__________________________________</b>
                </div>
                <div class="info_story">
                    <img src="../assets/images/right-arrow.png" alt="image" width="50px" height="50px" class="">
                    <div class="info_story_p">
                        Done
                    </div>
                </div>
            
            </div>
            <form role="form" onsubmit="fillForm3(event)">
                <div class="Info">
            
                    <div class="Basic_info">
                        Goal
                        <input type="number" class="option input_option" id="goal_achived">
            
                    </div>
                    <div class="Basic_info">
                        End date 
                        <input type="date" placeholder id="end_date" value aria-invalid="false" class="title input_option">

                    </div>
                    <div class="end_method Basic_info">
                        Campaign End Method 
                        <div class="radio">
                            <lable class="m_radio">
                                <input type="radio" value="goal_achieve" name="end_goal" id="after_g_achived">
                                After Goal Achievement
                                <span></span>
                            </lable>
                            <lable class="m_radio">
                                <input type="radio" value="end_date" name="end_goal" id="after_e_date">
                                After End Date
                                <span></span>
                            </lable>
                            <span>
                                <p style="color: tomato; font-size: smaller;">
                                    how you want to complete your Campaign
                                </p>    
                            </span>

                        </div>

                    </div>
                </div>
                <div class="back_save ">
                    <a href="../petition/fundraiser_page_2.html">
                        <button class="back">BACK</button>
                    </a>
            
                    <a href="../our profile/my_petition.html">
                        <button class="submit save save_continue"> SUBMIT</button>
                    </a>
             
                </div>
        
            </form>
        </div>
        <footer class="footer">
            <section class="footer_section1">
                <img src="../assets/images/footer_logo.png" alt="image" class="footer_logo">
            
                <div class="contact">
       
                    <a href="https://www.instagram.com/karthi_kn_offl/" class="instagram_fb"> 
                        <img src="../assets/images/instagram.png" alt="image"
                            height="40px" width="50px"> 
                    </a>
                    <a href="https://www.facebook.com/profile.php?id=100057753970924" class="instagram_fb"> 
                        <img src="../assets/images/facebook.png" alt="image"
                            height="40px" width="50px">
                    </a>
                    <a href="https://www.linkedin.com/in/karthi-keyan-b01438254/" class="instagram_fb"> 
                        <img src="../assets/images/linkedin.png" alt="image"
                            height="42px" width="50px">
                    </a>
            
                </div>
            
                <div class="footer_contact">
                    <ul class="footer_contact_list">
                        <li>
                            <h2>CONTACT INFO</h2>
                        </li>
                        <li>Global Infocity, St, Kodandarama Nagar, Perungudi, Chennai, Tamil Nadu, 600041.</li>
                        <li>+91 7010847986</li>
                        <li>karthikeyan.robert@fssa.freshworks.com</li>    

                    </ul>

                </div>
            </section>    
            <section class="footer_section2">
                <div class="copyrights">
                    <b> KN FUNDING is a Registered Trademark. © 2022 KN FUNDING. All Rights Reserved. Made by karthikeyan with 💗 </b>
                </div>
            </section>

        </footer>


        <script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>
        
        <script>function fillForm3(e) {
          e.preventDefault();
          const Goal = document.getElementById("goal_achived").value.trim();
          const endDate = document.getElementById("end_date").value.trim();
          const goalEndRatio = document.getElementById("after_g_achived").value.trim();
          const endDateRatio = document.getElementById("after_e_date").value.trim();
          const uuid = uuidv4();

          //  console.log(Goal,endDate,goalEndRatio,endDateRatio)

            const form_1 = JSON.parse(localStorage.getItem("Request_list"));

          console.log(form_1);

          console.log(form_1[form_1.length - 1]);

          form_1[form_1.length - 1].Goal = Goal;
          form_1[form_1.length - 1]["End date"] = endDate;
          form_1[form_1.length - 1]["Campaign End Method"] = goalEndRatio || endDateRatio;
          form_1[form_1.length - 1]["uuid"] = uuid;
          console.log(form_1[form_1.length - 1]);

            localStorage.setItem("Request_list", JSON.stringify(form_1));
          alert("Your request has been created");
          window.location.href = "../our profile/my_campaigns.html";
}
    </script>

    </body>

</html>