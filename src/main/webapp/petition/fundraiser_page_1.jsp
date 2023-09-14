<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="stylesheet" href="../assets/css/petition_style.css">
        <link rel="stylesheet" href="../assets/css/Main_page_style.css">
        <link rel="stylesheet" href="../assets/css/style.css">
        <title>KN funding</title>
        <link rel="icon" type="image/x-icon" href="./project/assets/images/logo.png">
    </head>

    <header>
        <a href="../Main_page.html">
            <img src="../assets/images/logo.png" alt="image" class="logo"> 
        </a>
        <div class="search_input_logo">
            <input class="search_box" placeholder="Search Campaigns & Petitions"></input>
            <button class="search_button">
                <img src="../assets/images/search_logo.png" class="search_logo">
            </button>
        </div>
        <div class="profile_logo">
            <!-- <div class="profile_name">
                KARTHIKEYAN
                </div>
                <a href="../our profile/our_profile.html">
                <div class="logo_profile">
                <img src="../assets/images/user.png" alt="image" class="user_logo" />
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
                Start a Campaign
            </h2>
            <div class="first_page">
                <div class="info_story">
                    <img src="../assets/images/right-arrow.png" alt="image" width="50px" height="50px"
                        class="">
                    <div class="info_story_p">Info
                    </div>
                </div>
                <div class="dash">
                    <b>__________________________________</b>
                </div>
                <div class="info_story">
                    <img src="../assets/images/rec.png" alt="image" width="50px" height="50px" class="">
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

            <form role="form" onsubmit="form_1(event)">
                <div class="Info">
                    <div class="Basic_info">
                        Short Description 
                        <textarea class="basic input_option" 
                            id="short_description" 
                            pattern="[\d]{9}" 
                            required="'required'" 
                            minlength="100" 
                            maxlength="300" 
                            autocomplete="off"   
                            required 
                            placeholder="write short description min characters = 100, max characters = 200"
                            value="Yogakshetram is a traditional lifestyle project. With hundreds of Ayurvedic herbs around, a Gaushala of indigenous cow breeds, and natural farming, Yogakshetram is planning to build Shiva Temple in traditional style. Please donate. Om Namah Shivaay"
                        ></textarea>
                    </div>
                    <div class="Basic_info">
                        *Category
                        <input type="text" list="count" placeholder="eg.chidren welfare" class="option input_option" id="category">

                        <datalist id="count">
                            <option>Animal welfare</option>
                            <option>Children</option>
                            <option>Education</option>
                            <option>Temple & Culture</option>
                            <option>Medical causes</option>
                            <option>Natural Disaster </option>

                        </datalist>
                    </div>
                    <div class="Basic_info">
                        *Title
                        <input 
                            placeholder="*keep your title within 200 characters" 
                            class="title input_option" 
                            id="title" 
                            pattern="{3,200}"
                            
                        >
                        <!-- [A-Za-z\s] -->
                    </div>
                    <div class="Basic_info">
                        Campaigner Name 
                        <input 
                            type="text" 
                            placeholder="*requester name" 
                            class="name input_option" 
                            id="campaigner_name" 
                            pattern="[A-Za-z\s]{3,20}"
                            
                        >

                    </div>

                </div>
                <div class="continue">
                    <center>
                        <button class="save_continue" type="submit"> Save & Continue</button>
                    </center>
                </div>
            </form>

        </div>
        <footer class="footer">
            <section class="footer_section1">
                <img src="../assets/images/footer_logo.png" alt="image" class="footer_logo">

                <div class="contact">

                    <a href="https://www.instagram.com/karthi_kn_offl/" class="instagram_fb">
                        <img src="../assets/images/instagram.png" alt="image" height="40px" width="50px">
                    </a>
                    <a href="https://www.facebook.com/profile.php?id=100057753970924" class="instagram_fb">
                        <img src="../assets/images/facebook.png" alt="image" height="40px" width="50px">
                    </a>
                    <a href="https://www.linkedin.com/in/karthi-keyan-b01438254/" class="instagram_fb">
                        <img src="../assets/images/linkedin.png" alt="image" height="42px" width="50px">
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
                    <b> KN FUNDING is a Registered Trademark. © 2022 KN FUNDING. All Rights Reserved. Made by karthikeyan
                        with 💗 </b>
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


        // function publish(){
        // let post_title = document.getElementById("title").value;
        // let post_subtitle = document.getElementById("sub_title").value;
        // let post_tags = document.getElementById("post_tags").value;
        // let post_text = document.getElementById("text-input").innerText;

        // let people_profile
        //     if ( JSON.parse(localStorage.getItem("people_profile"))) {
        //         people_profile = JSON.parse(localStorage.getItem("people_profile"))
        //     }
        //     else {
        //         people_profile =new Array()
        //     }
        // people_profile.push({
        //     "href": string,
        //     "image": string,
        //     "pf_text_1": string,
        //     "pf_text_2": string,
        //     "persentage": string,
        //     "pb_text_1": string,
        //     "pb_text_2": string,
        //     "content_head": string,
        //     "content": string,
        //     "days_left": string,
        //     "uuid":string
        //     })
        //         localStorage.setItem("people_profile", JSON.stringify(people_profile));
        //         alert("Successfully Posted :white_check_mark:");
        //         window.location.href = "../home/3_home.html";
        // };

        function form_1(e) {
          e.preventDefault();
          const short_decp = document.getElementById("short_description").value.trim();
          const category = document.getElementById("category").value.trim();
          const title = document.getElementById("title").value.trim();
          const requester_name = document.getElementById("campaigner_name").value.trim();

          const form_1 = JSON.parse(localStorage.getItem("Request_list")) || [];

          const exist =form_1.length && JSON.parse(localStorage.getItem("Request_list")).some(
      (data) => data.title.toLowerCase() == title.toLowerCase()
    );
          if (!exist) {
            form_1.push({
              shortdecp: short_decp,
              category,
              title,
              req_name: requester_name,
              Description: "",
              "Featured Image": "",
              Goal: "",
              "End date": "",
              "Campaign End Method": "",
              colected_amt: 0,
            });
            localStorage.setItem("Request_list", JSON.stringify(form_1));

            console.log(localStorage.getItem("Request_list"));

            document.querySelector("form").reset();

            document.getElementById("title").focus();

            alert("form 1 completed");
            location.href = "./fundraiser_page_2.html";
          } else {
            alert("Try with different title");
            document.querySelector("form").reset();
          }
        }
    </script>

    </body>

</html>