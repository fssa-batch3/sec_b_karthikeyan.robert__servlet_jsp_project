<%@ page import="in.fssa.knfunding.model.User"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.knfunding.model.Request"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>KN funding</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/assets/images/icon_logo.jpg">
<link rel="stylesheet" href="<%=request.getContextPath()%>//assets/css/Main_page_style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>//assets/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap"
	rel="stylesheet">
	

</head>

<%
User user = (User) session.getAttribute("user");
System.out.print(user); 
%>


<header>
	<a href="<%=request.getContextPath()%>/Main_page.jsp"> <img src="<%=request.getContextPath()%>/assets/images/logo.png"
		alt="image" class="logo">
	</a>
	<div class="search_input_logo">
		<!-- <input class="search_box" placeholder="Search Campaigns & Petitions"></input>
            <button class="search_button">
                <img src="./assets/images/search_logo.png" alt="image" class="search_logo">
            </button> -->
	</div>
	<div class="profile_logo">
		<ul class="LoginRegister">
			<li class="Login login_register dropdownn"><a class="AboutUS"
				href="<%=request.getContextPath()%>/knfunding_details/AL_about_us.jsp"> About us </a>
				<!-- <div class="dropdownn-content">
                    <a href="../project/knfunding_details/AL_about_us.html">Who we are</a>
                    <a href="../project/knfunding_details/AL_about_us.html">What we do</a>
       
                </div> --></li>
			<li class="Login login_register">Contact us</li>
			<!-- <li class="Login login_register">
                    Register
                </li>
                <li class="Login">
                    <a href="./project/payment login page/login_page.html" class="login_register" id="">Login</a>
                </li> -->

		</ul>

		<div class="profile_name">
			<!-- KARTHIKEYAN -->
			<%=user.getFullName()%>
		</div>
		
		<div class="logo_profile">
			<div class="dropdown">
				<img src="<%=request.getContextPath()%>/assets/images/user.png" alt="image" class="user_logo">
				<div class="dropdown-content">
					<a href="<%=request.getContextPath()%>/our profile/our_profile.jsp">profile</a> <a
						href="<%=request.getContextPath()%>/index.jsp">Log Out</a>

				</div>
			</div>
		</div>
		<!-- </a> -->

	</div>

</header>
<body>
	<section class="section_background">
		<div class="section">
			<h1 class="section_h1">HELP EACH OTHER BY DONATING MONEY</h1>
			<h1 class="section_h1_sub">We know you need funds, we are here to help you</h1>
			<!-- <h2 class="section_h2">
                    <b class="slogan">Start a fundraiser within 5 minutes!</b>
                </h2> -->
			<div class="button_P_F">
				<a href="<%=request.getContextPath()%>/petition/fundraiser_page_1.jsp">
					<button class="Button_fundraiser">START A FUNDRAISER</button>
				</a>

			</div>
		</div>
	</section>

	<section class="feature_heading">
		<h1 class="F_heading">FEATURED</h1>
		
	</section>
	<section class="people_profile">
	 
  
   
</section>
	

	<h1 class="F_heading">EXPLORE CAUSES</h1>

	<section class="explore_section">
		<div class="explore">

			<div class="Explore_column">
				<div class="animal_welfare choise">
					<a
						href="<%=request.getContextPath()%>/After_login_pages/after_login_choiceinside/AL_choice_inside.jsp"
						class="explore_button"> <b class="choise_name"> Animal
							Welfare </b>
					</a>
				</div>
				<div class="education choise">
					<a
						href="<%=request.getContextPath()%>/After_login_pages/after_login_choiceinside/AL_choice_inside.jsp"
						class="explore_button"> <b class="choise_name"> Education
					</b>
					</a>
				</div>
			</div>
			<div class="Explore_column ">
				<div class="children_welfar choise">
					<a
						href="<%=request.getContextPath()%>/After_login_pages/after_login_choiceinside/AL_choice_inside.jsp"
						class="explore_button"> <b class="choise_name"> Children </b>
					</a>
				</div>
				<div class="medical_causes choise">
					<a
						href="<%=request.getContextPath()%>/After_login_pages/after_login_choiceinside/AL_choice_inside.jsp"
						class="explore_button"> <b class="choise_name"> Medical
							Causes </b>
					</a>
				</div>
			</div>
			<div class="Explore_column ">
				<div class="natural_disaster choise">
					<a
						href="<%=request.getContextPath()%>/After_login_pages/after_login_choiceinside/AL_choice_inside.jsp"
						class="explore_button"> <b class="choise_name"> Natural
							Disaster</b>
					</a>
				</div>
				<div class="temple_welfare choise">
					<a
						href="<%=request.getContextPath()%>/After_login_pages/after_login_choiceinside/AL_choice_inside.jsp"
						class="explore_button"> <b class="choise_name"> Temple</b>
					</a>
				</div>
			</div>

		</div>
	</section>
	<section>
		<div class="container_box">
			<div class="whychooseus_div">
				<h2 class="whyChoose_US">WHY CHOOSE US ?</h2>

			</div>
			<div class="box_column">
				<div class="why-choose-us-box">
					<div class="icon">
						<!-- <i class="fa fa-lock"></i> -->
						<img
							src="https://cdn.iconscout.com/icon/free/png-512/free-lock-2693963-2235835.png?f=avif&w=512"
							alt="image" width="40px" height="40px">
					</div>
					<div class="title">
						<h4>SECURE</h4>
					</div>
					<div class="desc">
						<p>Your transaction and data is secured. The website is
							Encrypted, hosted on a secure cloud.</p>
					</div>
				</div>
				<div class="why-choose-us-box">
					<div class="icon">
						<!-- <i class="fa fa-lock"></i> -->
						<img
							src="https://cdn.iconscout.com/icon/free/png-512/free-history-watch-time-manage-visit-cache-46265.png?f=avif&w=512"
							alt="image" width="40px" height="40px">
					</div>
					<div class="title">
						<h4>FLEXIBLE</h4>
					</div>
					<div class="desc">
						<p>Contribute any amount as per your wish. There are no fixed
							amount requirements on campaigns.</p>
					</div>
				</div>
				<div class="why-choose-us-box">
					<div class="icon">
						<!-- <i class="fa fa-lock"></i> -->
						<img
							src="https://cdn.iconscout.com/icon/free/png-512/free-thumbs-up-44-624869.png?f=avif&w=512"
							alt="image" width="40px" height="40px">
					</div>
					<div class="title">
						<h4>EASY</h4>
					</div>
					<div class="desc">
						<p>Start your own fundraiser & petition or simply, support
							other campaigns in just a click.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer">

		<section class="footer_section1">
			<div class="con_info">
				<img src="<%=request.getContextPath()%>/assets/images/footer_logo.png" alt="image"
					class="footer_logo">



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
						<li class="abus"><a
							href="<%=request.getContextPath()%>/knfunding_details/AL_about_us.jsp" class="aboutUS">About
								us</a></li>
						<li class="abus"><a href="#" class="aboutUS">How It Works</a></li>


					</ul>
				</div>
				<div class="footer_contact">
					<ul class="footer_contact_list">
						<li>
							<h2>OUR POLICIES</h2>
						</li>
						<li class="abus"><a
							href="<%=request.getContextPath()%>/knfunding_details/AL_terms_and_contition_page.jsp"
							class="aboutUS">Terms of Use</a></li>
						<li class="abus"><a
							href="<%=request.getContextPath()%>/knfunding_details/AL_privacy_policy.jsp"
							class="aboutUS">Privacy Policy</a></li>
						<li class="abus"><a
							href="<%=request.getContextPath()%>/knfunding_details/AL_verification.jsp"
							class="aboutUS">Verified Accounts</a></li>


					</ul>
				</div>
			</div>
			<div class="contact">

				<a href="https://www.instagram.com/karthi_kn_offl/"
					class="instagram_fb"> <img
					src="<%=request.getContextPath()%>/assets/images/instagram.png" alt="image"
					height="40px" width="50px">
				</a> <a href="https://www.facebook.com/profile.php?id=100057753970924"
					class="instagram_fb"> <img
					src="<%=request.getContextPath()%>/assets/images/facebook.png" alt="image"
					height="40px" width="50px">
				</a> <a href="https://www.linkedin.com/in/karthi-keyan-b01438254/"
					class="instagram_fb"> <img
					src="<%=request.getContextPath()%>/assets/images/linkedin.png" alt="image"
					height="42px" width="50px">
				</a>

			</div>
			<!-- </section>
            <section class="footer_section2"> -->
			<div class="copyrights">
				<b> KN FUNDING is a Registered Trademark. © 2022 KN FUNDING.
					All Rights Reserved. Made by karthikeyan with 💗 </b>
			</div>
			<div class="Disclaimer">
				<b>Disclaimer:</b> Please note that contributing through KN funding
				will not always be a tax exempt charitable donation. KN funding does
				not guarantee that your Fundraisers will be fully or partially
				funded nor does it guarantee that the petitions will achieve all
				their goals. KN funding is an internet platform to connect
				individuals, non-profits and contributors to collaborate on the
				published campaigns & petitions. KN funding does not take any
				responsibility for any promises made by campaign owners,
				petitioners, community members & creators on its platform. Please
				read the Terms of Use & Privacy Policy prior performing any
				transactions on our platform.
			</div>
		</section>

	</footer>

	<script>

            //user name

      //      const userId = JSON.parse(localStorage.getItem("userId"));
      //      const user_list = JSON.parse(localStorage.getItem("user_list"));
            
       //     function login_data(e) {
       //       return e.number == userId;
       //    }
           //     user_data = user_list.find(login_data);
       //     document.querySelector("#user_name").innerText = user_data.name;


// request cards

     //   const show_cart = JSON.parse(localStorage.getItem("Request_list"));

      //  console.log(show_cart);

      //  div_profiles_row_one = document.createElement("div");
      //  div_profiles_row_one.setAttribute("class", "profiles_row_one");
      //  console.log(div_profiles_row_one);
     //   document.querySelector("section.people_profile").append(div_profiles_row_one);

     //   for (i = 0; i < show_cart.length; i++) {
       // div_profiles = document.createElement("div");
        //div_profiles.setAttribute("class", "profiles");
        // div_profiles_row_one.append(div_profiles);

       // a_profile_info = document.createElement("a");
        //a_profile_info.setAttribute("class", "profile_info");
        //a_profile_info.setAttribute("href",`../project/After_login_pages/after_login_inside_profile/AL_inside_profile_1.html?puid=${show_cart[i].uuid}`);
     //   div_profiles.append(a_profile_info);

       // div_content_1 = document.createElement("div");
      //  div_content_1.setAttribute("class", "content");
      //  a_profile_info.append(div_content_1);

      //  img = document.createElement("img");
      //  img.setAttribute("src", show_cart[i]["Featured Image"]);
        // img.setAttribute("alt", "image");
      //  img.setAttribute("width", "300px");
       // img.setAttribute("height", "200px");
      //  div_content_1.append(img);

      //  div_progressa = document.createElement("div");
      //  div_progressa.setAttribute("class", "progressa");
      //  div_profiles.append(div_progressa);

     //   const donar_deatils=JSON.parse(localStorage.getItem("donar_deatils"));
     //   let find_donate=donar_deatils.filter((e)=>e.DonateForId===show_cart[i].uuid);
    //    let colected=0;
     //       if(find_donate.length!==0){
     //   for(let j=0;j<find_donate.length;j++){
      //      colected+=find_donate[j].totalAmount;
      //  }
      //  }
      //  let percentage=Math.floor(colected/show_cart[i].Goal*100);
        
    //    div_progressab = document.createElement("div");
    //    div_progressab.setAttribute("class", "progressab");
   //     div_progressab.innerText=percentage+"%";
    //    div_progressab.setAttribute("style", `background-color: tomato;`);
    //    div_progressa.append(div_progressab);

     //   div_progressab.style.width = `${percentage}%`;
     //   if (percentage > 90 && percentage <= 100) {
      //      div_progressab.style.backgroundColor = "green";
      //      } else if (percentage > 1 && percentage < 90) {
       //         div_progressab.style.backgroundColor = "tomato";
        //    }

    //    div_content_F_B = document.createElement("div");
     //   div_content_F_B.setAttribute("class", "content_F_B");
     //   div_profiles.append(div_content_F_B);

      //  div_funded_backers_1 = document.createElement("div");
     //   div_funded_backers_1.setAttribute("class", "funded_backers");
     //   div_content_F_B.append(div_funded_backers_1);

     //   div_para_funded = document.createElement("p");
     //   div_para_funded.innerText = "FUNDED";
     //   div_funded_backers_1.append(div_para_funded);

        //    div_funded_amount = document.createElement("p");
        //    div_funded_amount.innerText = "₹"+colected ;
        //    div_funded_backers_1.append(div_funded_amount);

        //    div_persentage = document.createElement("div");
        //    div_persentage.setAttribute("class", "persentage");
        //    div_content_F_B.append(div_persentage);

        //    h1_persentage_space = document.createElement("h1");
        //   h1_persentage_space.setAttribute("class", "persentage_space");
    //    h1_persentage_space.innerText = percentage+"%";
        //   div_persentage.append(h1_persentage_space);

        //     div_funded_backers_2 = document.createElement("div");
        //      div_funded_backers_2.setAttribute("class", "funded_backers");
        //     div_content_F_B.append(div_funded_backers_2);

        //     div_para_backers = document.createElement("p");
        //     div_para_backers.innerText = "BACKERS";
        //     div_funded_backers_2.append(div_para_backers);

        //     div_para_backers_amt = document.createElement("p");
   //     div_para_backers_amt.innerText = find_donate.length;
        //     div_funded_backers_2.append(div_para_backers_amt);

        //      div_content_2 = document.createElement("div");
        //      div_content_2.setAttribute("class", "content");
        //     div_profiles.append(div_content_2);

        //     p_para = document.createElement("p");
        //    div_content_2.append(p_para);

        //    b_bold = document.createElement("b");
        //   b_bold.innerText = show_cart[i].title;
        //    p_para.append(b_bold);

        //   p = document.createElement("p");
        //    p.innerText = show_cart[i].shortdecp;
        //    div_content_2.append(p);

        //   div_DAYS_left = document.createElement("div");
        //   div_DAYS_left.setAttribute("class", "DAYS_left");
        //  div_profiles.append(div_DAYS_left);


        //   a_donate_btn = document.createElement("a");
        //   a_donate_btn.setAttribute("href",`../project/After_login_pages/after_login_inside_profile/AL_inside_profile_1.html?puid=${show_cart[i].uuid}`);
        //    div_DAYS_left.append(a_donate_btn);

        //   donate_btn = document.createElement("button");
        //   donate_btn.innerText = "DONATE";
        //   donate_btn.setAttribute("class", "donate_btn");
        //  a_donate_btn.append(donate_btn);
        // }
            //progressBAR

            

            // let goal_amt = document.getElementById("goal").innerText;


            // let colected_percentage=Math.floor((t_amount/goal_amt)*100);


            // console.log(colected_percentage);



            // const progressval = colected_percentage;
            // const elm = document.getElementsByClassName("progressab")[0];
            // elm.style.width = `${progressval}%`;

            // elm.innerText = `${progressval}%`;

            // if (progressval > 95 && progressval <= 100) {
            //   elm.style.backgroundColor = "green";
            // } else if (progressval > 50 && progressval < 90) {
            //   elm.style.backgroundColor = "tomato";
            // }

            

    </script>

</body>



</html>