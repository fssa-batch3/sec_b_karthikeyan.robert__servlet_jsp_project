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
                    <img src="../assets/images/right-arrow.png" alt="image" width="50px" height="50px" class="">
                    <div class="info_story_p">
                        Story
                    </div>
                </div>
                <div class="dash">
                    <b>__________________________________</b>
                </div>
                <div class="info_story">
                    <img src="../assets/images/rec.png" alt="image" width="50px" height="50px" class="">
                    <div class="info_story_p">
                        Done
                    </div>
                </div>
            
            </div>
            <form role="form" onsubmit="fillForm2(event)">
                <div class="Info">
            
                    <div class="Basic_info">
                        Description
                        <textarea class="basic input_option" id="descripition" margin-right="-100px";> </textarea>   
                    </div>
                    <div class="featured_image">
                        <lable class="image_title">Featured Image</lable>
                        <div class="image_button">
                    
                            <input placeholder="choose an image" type="url" name="featured_image" class="choose_image  title input_option" id="customfile" accept="image/*">
                            <!-- value="https://www.crowdkash.com/uploads/images/1638536539dhy33-5e5b8399-ec62-4be8-a635-eb24a724099a.jpeg"  -->
                            
                        </div>    

                    </div>
                </div>
                <div class="back_save ">
                    <a href="../petition/fundraiser_page_1.html">
                        <button class="back">BACK</button>
                    </a>
            
                    <!-- <a href="../petition/fundraiser_page_3.html"> -->
                    <button type="submit" class="save save_continue"> Save & Continue</button>
                    <!-- </a> -->
             
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
        <script>// let form_2 = JSON.parse(localStorage.getItem('Request_list'))

        function fillForm2(e) {
          e.preventDefault();
        
          const desc = document.getElementById("descripition").value.trim();
          const featImg = document.getElementById("customfile").value.trim();

          const form_1 = JSON.parse(localStorage.getItem("Request_list"));

          //    let lastItem = form_1[form_1.length - 1]

          console.log(form_1);

          //    console.log(lastItem)

          form_1[form_1.length - 1].Description = desc;
          form_1[form_1.length - 1]["Featured Image"] = featImg;

  //    console.log(desc,featImg)

          console.log(form_1);

          localStorage.setItem("Request_list", JSON.stringify(form_1));
          alert("form 2 completed");
          window.location.href = "../petition/fundraiser_page_3.html";
        }
    </script>

    </body>

</html>