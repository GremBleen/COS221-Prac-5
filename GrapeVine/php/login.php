<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login - GrapeVine</title>
    <link rel="stylesheet" href="../css/login_signup.css">
</head>
<body>
<div class="center">
    <table style="width: 66.66%;">
        <tr>
            <td>
                <img src="../img/grapeVine.png" class="img">
            </td>
            <td>
                <div style="width:33.33%">
                    <h1 style="display:block; text-align: center; color: #114B5F; font-size: 56px;">Login</h1>
                    <hr style="color: #114B5F; width: 100%">
                    <form action="validate_login.php" method="post">
                        <table style="width:300px;">
                            <tr>
                                <td colspan="2">
                                    <label for="email"
                                           style="color: #114B5F; display: block; text-align: left;">Email</label>
                                    <input type="text" name="email" id="email" class="input">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <label for="password"
                                           style="color:#114B5F; display: block; text-align: left;">Password</label>
                                    <input type="password" name="password" id="password" class="input">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="button" id="back" class="inputbtn" value="Back"
                                           style="width: 75px; height: 30px; border: none; border-radius: 5px; background-color: #F45B69; color: #FFFFFF;">
                                </td>
                                <td>
                                    <input type="submit" id="submit" class="inputbtn" value="Login"
                                           style="width: 75px; height:30px; border: none; border-radius: 5px; background-color: #F45B69; color: #FFFFFF;">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </td>
        </tr>
    </table>
</div>
<?php
session_start();
if (isset($_SESSION["loginError"]) && $_SESSION["loginError"]) {
    echo "<script>alert(\"Error with Email-Password combination\");document.getElementById(\"password\").value=\"\";document.getElementById(\"password\").style.border = \"1px solid #F45B69\";</script>";
    $_SESSION["loginError"] = false;
}
if(isset($_SESSION["signUp"])&&$_SESSION["signUp"])
{
    echo "<script>alert(\"Successfully Registered, you may now log in\");</script>";
    $_SESSION["signUp"] = false;
}
?>
<script src="../js/validate_login.js"></script>
</body>
</html>

