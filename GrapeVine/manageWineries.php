<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <title>Manage Wineries</title>
</head>
<body>
<?php
require_once("php/navbar.php");
?>

<div class="container-a">
    <div class="controls">
        <label for="wineries">Regions: </label>
        <select name="wineries" id="wineries"
                style="padding: 0.8rem; border-radius: 0.5rem; background-color: #F45B69; color:white; border-width: 0px;margin: 5px">
            <option value="default" selected="selected">Select</option>
            <option value="1">Napa Valley</option>
            <option value="2">Santa Ynez Valley</option>
            <option value="3">Barolo</option>
            <option value="4">Chianti Classico</option>
            <option value="5">Cerasuolo di Vittoria</option>
        </select>
    </div>
</div>

</body>
</html>
