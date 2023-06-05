<!DOCTYPE html>
<html lang="en">
<head>
    <title>Signup - GrapeVine</title>
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
                    <h1 style="display:block; text-align: center; color: #114B5F; font-size: 56px;">Register</h1>
                    <hr style="color: #114B5F; width: 100%">
                    <form action="validate_signup.php" method="post">
                        <table style="width:300px;">
                            <tr>
                                <td colspan="2">
                                    <label for="email" style="color: #114B5F; display: block; text-align: left;">Email</label>
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
                                    <label for="name" style="color: #114B5F; display: block; text-align: left;">Username</label>
                                    <input type="text" name="name" id="name" class="input">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div class="tooltip">
                                        <label for="password"
                                               style="color:#114B5F; display: block; text-align: left;">Password</label>
                                        <span class="tooltiptext">Must include: A-Z, a-z, 0-9, special characters and have a length greater than 9 characters</span>
                                    </div>
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
                                    <input type="submit" id="submit" class="inputbtn" value="Signup"
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
if (isset($_SESSION["signupError"]) && ($_SESSION["signupError"]==1||$_SESSION["signupError"]==2)) {
    if($_SESSION["signupError"]==1)
    {
        echo "<script>alert(\"Account could not be created at the present time\");document.getElementById(\"email\").value=\"\";document.getElementById(\"name\").value = \"\";document.getElementById(\"password\").value=\"\";</script>";
    }
    else
    {
        echo "<script>alert(\"An account with that email already exists\");document.getElementById(\"email\").value=\"\";document.getElementById(\"name\").value = \"\";document.getElementById(\"password\").value=\"\";</script>";
    }
    $_SESSION["signupError"] = 0;
}
?>
<script src="../js/validate_signup.js"></script>
</body>
</html>

