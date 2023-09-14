<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="../../assets/css/payment_page_style.css">
        <link rel="stylesheet" href="../../assets/css/Main_page_style.css">
        <link rel="stylesheet" href="../../assets/css/style.css">
        <link rel="stylesheet" href="../../assets/css/Inside_profile_style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rajdhani&display=swap" rel="stylesheet">
       
        <title>KN funding</title> 
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
    
    </header>
    <body>

        <sevtion class="profile_heading">
            <h1 class="heading" id="title_card"> 
                <!-- Help Sportsman Adithya Who Was Stabbed Multiple Times -->
            </h1>

        </sevtion>
        <sevtion class="profile_heading2">
            <h2 class="heading">
                <ul class="backers_count">
                    <a class="about_backer" href="../after_login_inside_profile/AL_inside_profile_1.html">
                        <li>About</li>
                    </a>
                    <a class=" about_backer" href="../after_login_backer/AL_backer_1.html">
                        <li>Backers (0)</li>
                    </a>
                </ul>
            </h2>

        </sevtion>
        <section class="payment_section">
           
            <div class="payment_left">
                <div class="left_row_1">
                    <p>
                        You are contributing to Adithya Who Was Stabbed Multiple Times
                    </p>
                </div>
                <div class="left_row_2">
                    <p>
                        Filling up all the three details below is mandatory!
                    </p>
                     
                </div>
        <form id="donar_detail_form" role="form" onsubmit="donatedDetails(event)" >
                <div class="left_row_3">
                    <input placeholder="Full Name" required class="mandatory_input" id="dName">
                    <input placeholder="Email" required class="mandatory_input" id="dEmail">
                    <input placeholder="Phone" required class="mandatory_input" id="dPhone">
                </div>
                <div class="left_row_4">
                    <p class="left_row_4_para">Contribution Appearance</p>
                    <p>
                        Choose a name to be displayed publicly next to your contribution
                        on the Backer list of the campaign page or choose to be an Anonymous wellwisher.
                    </p>
                </div>
                <div class="left_row_5">
                    <lable class="fullname_anonymous">
                        <input type="radio" id="show_name_yes" name="contributor_name_display" value="full_name" checked="checked">
                        Full Name
                    </lable>
                    <lable class="fullname_anonymous">
                        <input type="radio" id="wellwisher" name="contributor_name_display" value="anonymous">
                        Well-Wisher
                    </lable>
                </div>
                

            </div>
            
            <div class="payment_right">
                <div class="right_row_1">
                    <p>Summary</p>
                </div> 
                <div class="right_row_2">
                    <button class="onetime">
                        One Time
                    </button>
                </div>
                <div class="right_row_3">
                    <p class="row_3_para">Campaingn Contribution</p>
                    <p class="amount_symbol">₹</p>
                    
                    <p id="Amount">
                        
                        <!-- <img src="../../assets/images/rupee.png" alt="image" class="" width="15px" height="15px"> -->
                        <!-- 1000 -->
                    </p>
                    
                </div>
                <div class="right_row_4">
                    <input id="KNfunding_tip" type="checkbox" >
                    Service Tips (Optional)
                    <select id="tip" name="tipamount" class="d-none">
                        <option value="5">5%</option>
                        <option value="8">8%</option>
                        <option value="10">10%</option>
                        <option value="12">12%</option>
                    </select>
                </div>       
                <div class="right_row_5">
                    <p>
                        KN Funding is self-funded which charges minimal fee to campaigners &
                        relies on the generosity of contributors like you to operate our services.
                    </p>
                </div>
                <div class="right_row_6">
                    <p>Total</p>
                    <p class="Total_amount_symbol">₹
                    </p>
                    <p id="totalAmount">

                    </p>
                </div>
                <div class="right_row_7">
                    <p>
                        You acknowledge and agree to Terms of Use and Privacy Policy. You accept to receive 
                        occasional emails about our campaigns. You can unsubscribe at any time. 
                        You can only contribute in INR for this campaign. Foreign contributions are not allowed.
                    </p>
                </div>
                <div class="right_row_8">
                    
                        <button class="contribute_button" type="submit" id="conform_d">
                            
                            <b class="contribute" onclick="donatedDetailsTwo(event)">DONATE</b>
                        </button>
                    
                </div>
        </form>

            </div>

        </section>

        <section class="footer">
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
        </section>

        <script>

            //user name
            const userId = JSON.parse(localStorage.getItem("userId"));
            const user_list = JSON.parse(localStorage.getItem("user_list"));
            

            function login_data(e) {
              return e.number == userId;
            }
            user_data = user_list.find(login_data);
            document.querySelector("#user_name").innerText = user_data.name;


            //title
            const urlParams = new URLSearchParams(window.location.search);
            const puid = urlParams.get("puid");

            let details = JSON.parse(localStorage.getItem("Request_list"));
            let unique_detail = details.filter(e => e.uuid == puid);


            const user_id=JSON.parse(localStorage.getItem("userId"));
            
            document.querySelector("h1#title_card").innerText = unique_detail[0]["title"];

            //amount

            const out = document.getElementById("totalAmount");
            console.log(out);

           const urlParamss = new URLSearchParams(window.location.search);
        //    const  puid= urlParamss.get("puid");

           let  amt= urlParamss.get("amount");

        //    const userId=JSON.parse(localStorage.getItem("userId"));

            // console.log(amt);
            // console.log( document.getElementById('Amount'))
            document.getElementById('Amount').innerHTML = amt;
            amt = parseInt(amt)
            console.log(amt)

            const tipper=document.getElementById("KNfunding_tip");
            let tip = document.getElementById("tip") ;

            let value = tip.value;
            let finalPercentage = 0;
            tip.addEventListener("change", function(event){
                value = event.target.value;
                let tipAmount = tipAmt(amt,value);
                finalPercentage =  tipAmount ;
                console.log(finalPercentage);
                out.innerHTML = amt + finalPercentage;
            });

            let totalamt=document.getElementById("totalAmount");

            function tipAmt(amount,percentage){
                return Math.floor(((amount/100)*percentage));
            }
        

            tipper.addEventListener('change', function(event) {
                if(event.target.checked){
                    tip.classList.remove("d-none");
                    finalPercentage =  tipAmt(amt,value);
                    console.log(finalPercentage);
                    out.innerHTML = amt + finalPercentage;
                }
                else{
                    tip.classList.add("d-none");
                    finalPercentage = 0;
                    console.log(finalPercentage)
                    out.innerHTML = amt + finalPercentage;
                }
            });

            
            out.innerHTML =amt + finalPercentage;






        //   const donateValue = JSON.parse(localStorage.getItem("donar_deatils")) || [];

        //   console.log(donateValue);



            
        // function donatedDetailsTwo(e) {
        //     e.preventDefault();
        //     const donateValue = JSON.parse(localStorage.getItem("donar_deatils")) || [];

        //         const name = document.getElementById("dName").value.trim();
        //         const email = document.getElementById("dEmail").value.trim();
        //         const phone = document.getElementById("dPhone").value.trim();
        //         const show_name = document.getElementById("show_name_yes").checked;
        //         const totalAmount = document.getElementById("totalAmount").value = amt + finalPercentage;

        //         if(name.value === "" || email.value ==="" || phone.value === ""){   
        //            alert("Please fil the deatils !");
        //         } 
        //         else {
        //                 donateValue.push({ 
        //                 name,
        //                 email,
        //                 phone,
        //                 show_name,
        //                 totalAmount,
        //                 "user_id":userId,
        //                 "DonateForId":puid,   
        //             })
        //         }
                    
        //   localStorage.setItem("donar_deatils", JSON.stringify(donateValue));
        //   alert("completed");
        //   window.location.href = "../../our profile/our_profile.html";
        // }
        function donatedDetailsTwo(e) {
        e.preventDefault();
        const donateValue = JSON.parse(localStorage.getItem("donar_deatils")) || [];

        const name = document.getElementById("dName").value.trim();
        const email = document.getElementById("dEmail").value.trim();
        const phone = document.getElementById("dPhone").value.trim();
        const show_name = document.getElementById("show_name_yes").checked;
        const totalAmount = document.getElementById("totalAmount").value = amt + finalPercentage;   

        if (name === "" || email === "" || phone === "") {
            alert("Please fill in the details!");
        } 
        else {
            donateValue.push({
            name: name,
            email: email,
            phone: phone,
            show_name: show_name,
            totalAmount: totalAmount,
            user_id: userId,
            DonateForId: puid,
            });
            localStorage.setItem("donar_deatils", JSON.stringify(donateValue));
            alert("Completed!");
            window.location.href = "../../our profile/our_profile.html";
        }

       
        }



               

            



            
            // const tipper = document.getElementById("KNfunding_tip");
            // const tipDropdown = document.getElementById("tip");
            // const totalAmountInput = document.getElementById("totalAmount");
            // const billAmountInput = document.getElementById("billAmount");

            // tipper.addEventListener("change", () => {
            
            // });







        </script>

    </body>
    

</html>