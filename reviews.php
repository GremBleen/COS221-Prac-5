<?php
//session_start();
//$_SESSION["loggedIn"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Reviews - GrapeVine</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<?php
require_once("php/navbar.php")
?>
<div id="rev" style="display: flex; flex-direction: column; align-items:center; ">
    <h1>Want to Leave a Review?</div>
    <form class="entities-list">
        <label for="attributes" style="font-size: large; margin-bottom: 0.5rem;">Select entity:</label>
        <select name="attributes" id="attributes" style="padding: 0.8rem; border-radius: 0.5rem; background-color: #F45B69; color:white; border-width: 0px;">
            <option value="V">V</option>
            <option value="S">S</option>
            <option value="O">O</option>
            <option value="A">A</option>
        </select>
        <label for="points" style="font-size: large; margin-bottom: 0.5rem; margin-top: 0.5rem;">between 1 and 5:</label>
        <input type="number" id="nnumber-review" min="1" max="5">
        <button type="submit" name="review" id="s-review">Submit</button>
    </form>
</div>

</body>
</html>