<div class="topnav">
    <div style="width:100%;">
        <a href="index.php">Wines</a>
        <a href="wineries.php">Wineries</a>
        <a href="reviews.php">Reviews</a>
    </div>
    <br>
    <div style="width:100%;">
        <?php
        if (isset($_SESSION["loggedIn"]) && $_SESSION["loggedIn"]) {
            echo "<form method=\"post\"action=\"php/logout.php\"><button type=\"submit\" style=\"width:auto; background-color:transparent; color:#FFFFFF; font-size:16px; border:none; padding: 5px 16px; cursor:pointer; margin:auto;\" name=\"logout\" id=\"logout\">Logout</button></form>";
            echo "<p style=\"font-size: 15px; color:#FFFFFF; \">Hello " . $_SESSION["username"] . "</p>";
        } else {
            echo "<button id=\"signup\" style=\"width:auto; background-color:transparent; color:#FFFFFF; font-size:15px; border:none; padding: 5px 16px; cursor:pointer; margin:auto;\">Sign Up</button>";
            echo "<button id=\"login\" style=\"width:auto; background-color:transparent; color:#FFFFFF; font-size:15px; border:none; padding: 5px 16px; cursor:pointer; margin:auto;\">Login</button>";
        }
        ?>
    </div>
</div>
