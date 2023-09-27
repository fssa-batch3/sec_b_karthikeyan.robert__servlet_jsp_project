<!DOCTYPE html>
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
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/Register_page_style.css">
        
	<style>
	.error{
		color:red;
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
                <!-- About us
                <div class="dropdownn-content">
                    <a href="#">Who we are</a>
                    <a href="#">What we do</a>
       
                </div> -->
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
    
        <div id="login" class="center">
            <div class="container">
                <div class="title">Register </div>
               <form action="<%=request.getContextPath()%>/createUser" method="post" role="form" onsubmit="return validateForm()">
    <div class="data">
        <div class="input">
            <label for="name">Full Name</label>
            <input type="text" id="name" required="true" name="name" placeholder="Full Name*" class="placeholder">
            <span id="nameError" class="error"></span>
        </div>
        <div class="input">
            <label for="email">Email Id</label>
            <input type="text" id="email" name="email" required="true" placeholder="Email id* " class="placeholder">
            <span id="emailError" class="error"></span>
        </div>
        <div class="input">
            <label for="phoneNumber">Phone Number</label>
            <input type="tel" id="number" required="true"  name="phoneNumber" maxlength="10" placeholder="Phone number* " class="placeholder"> 
            <span id="phoneNumberError" class="error"></span>
        </div>
        
        <div class="input">
            <label for="password">Password</label>
            <input id="password" name="password" type="password" placeholder="Password*"  required="true" class="placeholder">
            <span id="passwordError" class="error"></span>
        </div>
        <div class="input">
            <label for="conform_password"> Confirm Password</label>
            <input id="confirm_password" name="confirm_password" type="password" placeholder="Confirm Password*" required="true" class="placeholder">
            <span id="confirmPasswordError" class="error"></span>
        </div>
        <div class="create_account">
            <button type="submit" class="create_account">
                REGISTER 
            </button>
        </div>
    </div>  
</form>
            </div>
        </div>
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
        <!-- <script> -->

        <!-- // function getData(){
            //     event.preventDefault();

            // const name = document.getElementById("name").value 
            // const email = document.getElementById("email").value 
            // const number = document.getElementById("number").value
            // const password = document.getElementById("password").value 
            // const conform_password =document.getElementById("conform_password").value 

            // console.log(name)       
            // console.log(email)
            // console.log(number)
            // console.log(password)
            // console.log(conform_password)

            // localStorage.setItem("name" , name)
            // localStorage.setItem("email" , email)
            // localStorage.setItem("number" , number)
            // localStorage.setItem("password" , password)
            // localStorage.setItem("conform_password" , conform_password )

            // window.location.href ="../Main_page.html"

            // }     -->
        <!-- <script type="text/javascript">
            const signup = e => {
            let formData = JSON.parse(localStorage.getItem('formData')) || [];

            formData.push({
            name: document.getElementById('name').value,
            number: document.getElementById("number").value, 
            email: document.getElementById('email').value,
            password: document.getElementById('password').value,
            conform_password: document.getElementById('conform_password').value,

            });

            localStorage.setItem('formData', JSON.stringify(formData));
            //console.log(localStorage.getItem("formData"));
            dispData();
            e.preventDefault();
            
            } -->
           
     <!--    <script src="/assets/script.js"></script> -->
     <script>
    function validateForm() {
        const nameInput = document.getElementById("name");
        const emailInput = document.getElementById("email");
        const phoneNumberInput = document.getElementById("number");
        const passwordInput = document.getElementById("password");
        const confirmPasswordInput = document.getElementById("confirm_password");

        const nameError = document.getElementById("nameError");
        const emailError = document.getElementById("emailError");
        const phoneNumberError = document.getElementById("phoneNumberError");
        const passwordError = document.getElementById("passwordError");
        const confirmPasswordError = document.getElementById("confirmPasswordError");

        const nameRegex = /^[a-zA-Z0-9]+$/;
        const emailRegex = /^[a-z0-9._%+-]+@[gmail]+\.[com]{3,}$/;
        const phoneNumberRegex = /^[6789][0-9]{9}$/;
        const passwordRegex = /^(?=.*\d)(?=.*[a-z]).{8,}$/;

        let valid = true;

        if (!nameRegex.test(nameInput.value)) {
            nameError.textContent = "*Invalid name";
            valid = false;
        } else {
            nameError.textContent = "";
        }

        if (!emailRegex.test(emailInput.value)) {
            emailError.textContent = "*Invalid email";
            valid = false;
        } else {
            emailError.textContent = "";
        }

        if (!phoneNumberRegex.test(phoneNumberInput.value)) {
            phoneNumberError.textContent = "*Invalid phone number";
            valid = false;
        } else {
            phoneNumberError.textContent = "";
        }

        if (!passwordRegex.test(passwordInput.value)) {
            passwordError.textContent = "*Invalid password";
            valid = false;
        } else {
            passwordError.textContent = "";
        }

        if (passwordInput.value !== confirmPasswordInput.value) {
            confirmPasswordError.textContent = "*Passwords do not match";
            valid = false;
        } else {
            confirmPasswordError.textContent = "";
        }

        return valid;
    }
    
    
   
    
</script>

    </body>

</html>
