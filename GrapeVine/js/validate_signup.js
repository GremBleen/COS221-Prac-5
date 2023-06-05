const back = document.getElementById("back");
const submit = document.getElementById("submit");

back.addEventListener("click", function(){
    window.location.href = "../index.php";
});

const email = document.getElementById("email");
const name = document.getElementById("name");
const password = document.getElementById("password");

var emailValid = false;
var nameValid = false;
var passwordValid = false;

email.addEventListener("change", function () {
    let r = /^([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$/;
    if (r.test(email.value)) {
        email.style.border = "none";
        emailValid = true;
    } else {
        email.style.border = "1px solid #F45B69";
        emailValid = false;
    }
});

name.addEventListener("change", function(){
    let r = /^(?!\s*$)[A-Za-z\s]+$/;
    if(r.test(name.value))
    {
        name.style.border = "none";
        nameValid = true;
    }
    else
    {
        name.style.border = "1px solid #F45B69";
        nameValid = false;
    }
});

password.addEventListener("change", function () {
    let r = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*\W)[A-Za-z0-9\W]{9,}$/;
    if (r.test(password.value)) {
        password.style.border = "none"
        passwordValid = true;
    } else {
        password.style.border = "1px solid #F45B69";
        passwordValid = false;
    }
});

submit.addEventListener("click", function(event){
   if(!emailValid||!nameValid||!passwordValid)
   {
       let err = "Error with the following:\n"
       event.preventDefault();
       if (!emailValid) {
           email.style.border = "1px solid #F45B69";
           email.value="";
           err+="email\n";
       }
       if(!nameValid)
       {
           name.style.border = "1px solid #F45B69";
           name.value="";
           err+="name\n";
       }
       if (!passwordValid) {
           password.style.border = "1px solid #F45B69";
           password.value="";
           err+="name\n";
       }
       alert(err);
   }
});