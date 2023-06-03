<?php
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/styles.css">
    <title>Login</title>
</head>
<body class="container">
    <div class="logo"><img src="../img/GRAPEVINE.png" alt="grapevine logo"></div>
    <div class="register">
        <h1 class="formname">Login</h1>
        <form action="php/login.php" method="post">
            <label for="username">Username</label>
            <input type="text" name="username" id="username" placeholder="Enter username" required>
            <label for="password">Password</label>
            <input type="password" name="password" id="password" placeholder="Enter password" required>
            <button type="submit" name="register" id="register">Login</button>
        </form>
        <p>Don't have an account? <a href="signup.php">Register</a></p>
    </div>
</body>
</html>