const signUp = (e) => {
  e.preventDefault();
  const name = document.getElementById("name").value;
  const email = document.getElementById("email").value;
  const number = document.getElementById("number").value;
  const password = document.getElementById("password").value;
  const conform_password = document.getElementById("conform_password").value;
  const user_list = JSON.parse(localStorage.getItem("user_list")) || [];
  const exist =
    user_list.length &&
    JSON.parse(localStorage.getItem("user_list")).some(
      (data) => data.email.toLowerCase() == email.toLowerCase()
    );
  if (!exist) {
    user_list.push({ name, email, number, password, conform_password });
    localStorage.setItem("user_list", JSON.stringify(user_list));
    console.log(localStorage.getItem("user_list"));
    document.querySelector("form").reset();
    document.getElementById("email").focus();
    alert("Account created Successfully");
    location.href = "../login_page.jsp";
  } else {
    alert("Sorry the User already Exist!! \n Try with different Email");
    document.querySelector("form").reset();
  }
};

function myFunctions() {
  document.getElementById("loginName").innerHTML = userlist3.name;
}

document
  .querySelector(".login_button_a")
  .addEventListener("click", myFunctions);

function signIn(e) {
  e.preventDefault();

  (email = document.getElementById("email").value),
    (number = document.getElementById("number").value),
    (password = document.getElementById("password").value);

  const user_list = JSON.parse(localStorage.getItem("user_list")) || [];

  const exist =
    user_list.length &&
    JSON.parse(localStorage.getItem("user_list")).some(
      (data) =>
        data.email.toLowerCase() == email &&
        data.number.toLowerCase() == number &&
        data.password == password
    );

  if (!exist) {
    alert("Incorrect login credentials");
  } else {
    localStorage.setItem("userId", JSON.stringify(number));
    localStorage.setItem("LoginValidate", "True");
    alert("Your login in successful");
    location.href = "../Main_page.jsp";
  }
}
