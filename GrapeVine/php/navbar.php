<?php
session_start();
?>
<div class="topnav">
    <div style="width:100%;">
        <a href="index.php" class="topnavlink">Wines</a>
        <a href="wineries.php" class="topnavlink">Wineries</a>
        <a href="reviews.php" class="topnavlink">Reviews</a>
        <a href="ratings.php" class="topnavlink">Ratings</a>
        <a href="manageWineries.php" class="topnavlink">Manage Wineries</a>
        <a href="localAttractions.php" class = "topnavlink">Local Attractions</a>
    </div>
    <br>
    <div style="width:100%;">
        <?php
        if (isset($_SESSION["name"])) {
            echo "<p style=\"font-size: 15px; color:#FFFFFF; \">Hello " . $_SESSION["name"] . "</p>";
            echo "<a href = \"php/logout.php\" class = \"topnavlogin\">Logout</a>";
        } else {
            echo "<a href = \"php/signup.php\" class = \"topnavlogin\">Signup</a>";
            echo "<a href = \"php/login.php\" class = \"topnavlogin\">Login</a>";
        }
        ?>
    </div>
</div>
