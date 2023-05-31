<?php
//session_start();
//$_SESSION["loggedIn"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Wineries - GrapeVine</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="winery-body">
    <?php
    require_once("php/navbar.php")
    ?>
    <div class="winery-search">
        <input type="search" name="search" id="search-wineries" placeholder="Search for">
    </div>
    <div class="vine">
        <div class="vine-photo">
            <img src="img/vineyard.jpg" alt="wine photo" height="300" width="500">
        </div>
        <div class="vine-specification">
            <h3 class="vine-name">Winery Name</h3>
            <h4 class="Location">Location</h4>
            <table class="wine-catalog">
                <!--Which catalog? -->
            </table>
        </div>
    </div>
</body>
</html>