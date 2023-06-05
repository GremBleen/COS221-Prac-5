const back = document.getElementById("back");
const submit = document.getElementById("submit");

back.addEventListener("click", function () {
    window.location.href = "../index.php";
});

const email = document.getElementById("email");
const password = document.getElementById("password");

var emailValid = false;
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

password.addEventListener("change", function () {
    if (password.value != "") {
        password.style.border = "none"
        passwordValid = true;
    } else {
        password.style.border = "1px solid #F45B69";
        passwordValid = false;
    }
});

submit.addEventListener("click", function (event) {
    if (!emailValid || !passwordValid) {
        event.preventDefault();
        if (!emailValid) {
            email.style.border = "1px solid #F45B69";
        }
        if (!passwordValid) {
            password.style.border = "1px solid #F45B69";
        }
        alert("Error with Email-Password combination");
        password.value = "";
    }
});