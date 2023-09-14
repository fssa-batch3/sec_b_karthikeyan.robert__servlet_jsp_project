<!DOCTYPE html>
<html lang="en">
    <head>
        <title>KN funding</title>
        <link rel="stylesheet" href="../../assets/css/style.css"> 
        <link rel="stylesheet" href="../../assets/css/Main_page_style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap" rel="stylesheet">
    
    </head>
    
    <header>
        <a href="./Main_page.html">
            <img src="../../assets/images/logo.png" alt="image" class="logo"> 
        </a>
        <div class="search_input_logo">
            <input class="search_box" placeholder="Search Campaigns & Petitions"></input>
            <button class="search_button">
                <img src="../../assets/images/search_logo.png" alt="image" class="search_logo">
            </button>
        </div>
        <div class="profile_logo">
        
            <div class="profile_logo">
    
                <div id="user_name" class="profile_name">
                    <!-- KARTHIKEYAN -->
                </div>
                <!-- <a href="./our profile/our_profile.html"> -->
                <div class="logo_profile">
                    <div class="dropdown">
                        <img src="../../assets/images/user.png" alt="image" class="user_logo">
                        <div class="dropdown-content">
                            <a href="../../our profile/our_profile.html">profile</a>
                            <a href="../../../index.html">Log Out</a>
               
                        </div>
                    </div>
                </div>
                <!-- </a> -->
    
            </div>
    
        </div>
    
    </header>

    <body>
        <section class="feature_heading">
            <h1 class="F_heading"> PROFILES</h1>
        </section>
        <section class="people_profile">
         
         
        </section>
        <footer class="footer">
            <section class="footer_section1">
                <img src="../../assets/images/footer_logo.png" alt="image" class="footer_logo">
            
                <div class="contact">
       
                    <a href="https://www.instagram.com/karthi_kn_offl/" class="instagram_fb"> 
                        <img src="../../assets/images/instagram.png" alt="image"
                            height="40px" width="50px"> 
                    </a>
                    <a href="https://www.facebook.com/profile.php?id=100057753970924" class="instagram_fb"> 
                        <img src="../../assets/images/facebook.png" alt="image"
                            height="40px" width="50px">
                    </a>
                    <a href="https://www.linkedin.com/in/karthi-keyan-b01438254/" class="instagram_fb"> 
                        <img src="../../assets/images/linkedin.png" alt="image"
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

        <script>
            //user name
            const userId = JSON.parse(localStorage.getItem("userId"));
            const user_list = JSON.parse(localStorage.getItem("user_list"));

            function login_data(e) {
              return e.number == userId;
            }
            user_data = user_list.find(login_data);
            document.querySelector("#user_name").innerText = user_data.name;




            //cards
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
  a_profile_info.setAttribute("href",`../../../project/After_login_pages/after_login_inside_profile/AL_inside_profile_1.html?puid=${show_cart[i].uuid}`);
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


  a_donate_btn = document.createElement("a");
  a_donate_btn.setAttribute("href",`../../../project/After_login_pages/after_login_inside_profile/AL_inside_profile_1.html?puid=${show_cart[i].uuid}`);
  div_DAYS_left.append(a_donate_btn);

  donate_btn = document.createElement("button");
  donate_btn.innerText = "DONATE";
  donate_btn.setAttribute("class", "donate_btn");
  a_donate_btn.append(donate_btn);
}
        </script>

    </body>
    <!-- <a href=""></a> -->

</html>