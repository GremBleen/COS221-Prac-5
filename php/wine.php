
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/styles.css">
    <title>Wine</title>
</head>
<body>
    <?php
    require_once("navbar.php");
    ?>
    <div class="container-a">
        <div class="controls">
            <div>
                <input type="search" name="search" id="search-wines" placeholder="Search for">
            </div>
            <div id="filter">
                <label for="attributes">Filter by:</label>
                <select name="attributes" id="attributes" style="padding: 0.8rem; border-radius: 0.5rem; background-color: #F45B69; color:white; border-width: 0px;">
                    <option value="V">V</option>
                    <option value="S">S</option>
                    <option value="O">O</option>
                    <option value="A">A</option>
                </select>
            </div>
        </div>
        <div class="wine-cards">
            <div class="wine">
                <div class="wine-photo">
                    <img src="../img/pexels-kenneth-2912108.jpg" alt="wine photo" height="340" width="200">
                </div>
                <div class="specification">
                    <h3 class="wine-name">Wine Name</h3>
                    <h4 class="producers">Produced by winery</h4>
                    <h4 class="region">Region</h4>
                    <ul>
                        <li>attribute 1</li>
                        <li>attribute 2</li>
                    </ul>
                    <h4 class="rating">Rating</h4>
                </div>
            </div>
            <div class="wine">
                <div class="wine-photo">
                    <img src="../img/pexels-kenneth-2912108.jpg" alt="wine photo" height="340" width="200">
                </div>
                <div class="specification">
                    <h3 class="wine-name">Wine Name</h3>
                    <h4 class="producers">Produced by winery</h4>
                    <h4 class="region">Region</h4>
                    <ul>
                        <li>attribute 1</li>
                        <li>attribute 2</li>
                    </ul>
                    <h4 class="rating">Rating</h4>
                </div>
            </div>
            <div class="wine">
                <div class="wine-photo">
                    <img src="../img/pexels-kenneth-2912108.jpg" alt="wine photo" height="340" width="200">
                </div>
                <div class="specification">
                    <h3 class="wine-name">Wine Name</h3>
                    <h4 class="producers">Produced by winery</h4>
                    <h4 class="region">Region</h4>
                    <ul>
                        <li>attribute 1</li>
                        <li>attribute 2</li>
                    </ul>
                    <h4 class="rating">Rating</h4>
                </div>
            </div>
            <div class="wine">
                <div class="wine-photo">
                    <img src="../img/pexels-kenneth-2912108.jpg" alt="wine photo" height="340" width="200">
                </div>
                <div class="specification">
                    <h3 class="wine-name">Wine Name</h3>
                    <h4 class="producers">Produced by winery</h4>
                    <h4 class="region">Region</h4>
                    <ul>
                        <li>attribute 1</li>
                        <li>attribute 2</li>
                    </ul>
                    <h4 class="rating">Rating</h4>
                </div>
            </div>
            <div class="wine">
                <div class="wine-photo">
                    <img src="../img/pexels-kenneth-2912108.jpg" alt="wine photo" height="340" width="200">
                </div>
                <div class="specification">
                    <h3 class="wine-name">Wine Name</h3>
                    <h4 class="producers">Produced by winery</h4>
                    <h4 class="region">Region</h4>
                    <ul>
                        <li>attribute 1</li>
                        <li>attribute 2</li>
                    </ul>
                    <h4 class="rating">Rating</h4>
                </div>
            </div>
        </div>
    </div>
</body>
</html>