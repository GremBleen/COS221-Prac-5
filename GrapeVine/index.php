<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <title>Wine</title>
</head>
<body>
<?php
require_once("php/navbar.php");
?>
<div class="container-a">
    <div class="controls">
        <div>
            <input type="search" name="search" id="search-wines" placeholder="Search for">
        </div>
        <div id="sort">
            <label for="regions">Regions: </label>
            <select name="regions" id="regions"
                    style="padding: 0.8rem; border-radius: 0.5rem; background-color: #F45B69; color:white; border-width: 0px;margin: 5px">
                <option value="default" selected="selected">Select</option>
                <option value="1">Napa Valley</option>
                <option value="2">Santa Ynez Valley</option>
                <option value="3">Barolo</option>
                <option value="4">Chianti Classico</option>
                <option value="5">Cerasuolo di Vittoria</option>
            </select>
            <br>
            <label for="wineries">Wineries: </label>
            <select name="wineries" id="wineries"
                    style="padding: 0.8rem; border-radius: 0.5rem; background-color: #F45B69; color:white; border-width: 0px; margin: 5px">
                <option value="default" selected="selected">Select</option>
                <option value="1">Kirkland Signature</option>
                <option value="2">Kuentz-Baz</option>
                <option value="3">Herdade Grande</option>
                <option value="4">Spier</option>
                <option value="5">Feudi del</option>
            </select>
            <br>
            <label for="attributes">Sort by: </label>
            <select name="attributes" id="attributes"
                    style="padding: 0.8rem; border-radius: 0.5rem; background-color: #F45B69; color:white; border-width: 0px; margin: 5px">
                <option value="default" selected="selected">Select</option>
                <option value="price">Price</option>
                <option value="quality">Quality</option>
            </select>
        </div>
        <div>
            <input type="button" id="rate" value="Rate" style="text-align: center; margin: 5px" onclick="showRatingForm()">
            <input type="button" id="submit" value="Submit" style="text-align: center; margin: 5px" onclick="filterWines()">
            <input type="button" id="reset" value="Reset" style="text-align: center; margin: 5px" onclick="reset()">
        </div>
        <form action="">
            <h3>Rating box:</h3>
            <label for="wine-id">Wine id</label>
            <input type="number" name="wine-id" id="wine-id" placeholder="enter wine id">
            <label for="rating-description">Rating description</label>
            <input type="text" name="rating-description" id="rating-description" placeholder="enter rating description">
            <label for="rating">Rating</label>
            <input type="number" name="rating" id="rating" placeholder="enter rating" min="1" max="100" step="1">
            <input id="submit-btn" type="submit" value="Submit" style="background-color: #F45B69;">
        </form>
    </div>
    <div id="wine_cards" class="wine-cards">
    </div>
</div>
<script>
    function showRatingForm() {
        let form = document.querySelector("form");
        if (form.style.display === "none") {
            form.style.display = "block";
        } else {
            form.style.display = "none";
        }
    }

    function loadWines()
    {
        let display = document.getElementById("wine_cards");

        display.innerHTML = "";

        let req = new XMLHttpRequest();
        req.onreadystatechange = function ()
        {
            if (req.readyState === 4 && req.status === 200)
            {
                let data = JSON.parse(req.responseText);

                for (let i = 0; i < data.data.length; i++)
                {
                    if (data.data[i].rating === null)
                    {
                        data.data[i].rating = "NA";
                    }
                    else
                    {
                        data.data[i].rating = Math.round(data.data[i].rating * 100) / 100.00;
                    }

                    display.innerHTML += '<div class="wine">' +
                        '<div><h4 class="wine-name">' + data.data[i].wine_name + '</h4></div>' +
                        '<h4 class="producers">Winery: ' + data.data[i].winery_name + '</h4>' +
                        '<br>' +
                        '<h4 class="region">Region: ' + data.data[i].region_name + '</h4>' +
                        '<ul>' +
                        '<li>Type: ' + data.data[i].wine_type + '</li>' +
                        '<li>Vintage: ' + data.data[i].vintage + '</li>' +
                        '<li>Quality: ' + data.data[i].quality + '</li>' +
                        '<li>Price:' + data.data[i].price + '</li>' +
                        '</ul>' +
                        '<h4 class="rating">Rating: ' + data.data[i].rating  + '</h4>' +
                        '</div>';
                }
            }
        };

        req.open("POST", "../GWSAPI.php?type=getAllWines", false);
        req.send();
    }

    loadWines();

    function filterWines()
    {
        let display = document.getElementById("wine_cards");

        display.innerHTML = "";

        let req = new XMLHttpRequest();
        req.onreadystatechange = function ()
        {
            if (req.readyState === 4 && req.status === 200)
            {
                let data = JSON.parse(req.responseText);

                if(data.status === "error")
                {
                    display.innerHTML = "Error: " + data.message;
                    return;
                }

                for (let i = 0; i < data.data.length; i++)
                {
                    if (data.data[i].rating === null)
                    {
                        data.data[i].rating = "NA";
                    }
                    else
                    {
                        data.data[i].rating = Math.round(data.data[i].rating * 100) / 100.00;
                    }

                    display.innerHTML += '<div class="wine">' +
                        '<div><h4 class="wine-name">' + data.data[i].wine_name + '</h4></div>' +
                        '<h4 class="producers">Winery: ' + data.data[i].winery_name + '</h4>' +
                        '<br>' +
                        '<h4 class="region">Region: ' + data.data[i].region_name + '</h4>' +
                        '<ul>' +
                        '<li>Type: ' + data.data[i].wine_type + '</li>' +
                        '<li>Vintage: ' + data.data[i].vintage + '</li>' +
                        '<li>Quality: ' + data.data[i].quality + '</li>' +
                        '<li>Price:' + data.data[i].price + '</li>' +
                        '</ul>' +
                        '<h4 class="rating">Rating: ' + data.data[i].rating  + '</h4>' +
                        '</div>';
                }
            }
        };

        let name = document.getElementById("search-wines");
        let region = document.getElementById("regions");
        let winery = document.getElementById("wineries");
        let sort = document.getElementById("attributes");

        if (name.value !== "")
        {
            let url = "../GWSAPI.php?type=SortWinesByName&wine_name=" + name.value;
            req.open("POST", url, false);
            req.send();
        }
        else if (region.value !== "default")
        {
            let url = "../GWSAPI.php?type=SortWinesByRegion&region_id=" + region.value;
            req.open("POST", url, false);
            req.send();
        }
        else if(winery.value !== "default")
        {
            let url = "../GWSAPI.php?type=getWinesByWinery&winery_id=" + winery.value;
            req.open("POST", url, false);
            req.send();
        }
        else if(sort.value !== "default")
        {
            if (sort.value === "price")
            {
                let url = "../GWSAPI.php?type=SortWinesByPrice";
                req.open("POST", url, false);
                req.send();
            }
            else if (sort.value === "quality")
            {
                let url = "../GWSAPI.php?type=SortWinesByQuality";
                req.open("POST", url, false);
                req.send();
            }
        }
    }

    function wineReview()
    {
        let display = document.getElementById("wine_cards");

        display.innerHTML = "";

        let req = new XMLHttpRequest();
        req.onreadystatechange = function ()
        {
            if (req.readyState === 4 && req.status === 200)
            {
                let data = JSON.parse(req.responseText);

                if(data.status === "error")
                {
                    display.innerHTML = "Error: " + data.message;
                    return;
                }

                for (let i = 0; i < data.data.length; i++)
                {
                    if (data.data[i].rating === null)
                    {
                        data.data[i].rating = "NA";
                    }
                    else
                    {
                        data.data[i].rating = Math.round(data.data[i].rating * 100) / 100.00;
                    }

                    display.innerHTML += '<div class="wine">' +
                        '<div><h4 class="wine-name">' + data.data[i].wine_name + '</h4></div>' +
                        '<h4 class="producers">Winery: ' + data.data[i].winery_name + '</h4>' +
                        '<br>' +
                        '<h4 class="region">Region: ' + data.data[i].region_name + '</h4>' +
                        '<ul>' +
                        '<li>Type: ' + data.data[i].wine_type + '</li>' +
                        '<li>Vintage: ' + data.data[i].vintage + '</li>' +
                        '<li>Quality: ' + data.data[i].quality + '</li>' +
                        '<li>Price:' + data.data[i].price + '</li>' +
                        '</ul>' +
                        '<h4 class="rating">Rating: ' + data.data[i].rating  + '</h4>' +
                        '</div>';
                }
            }
        };

        let name = document.getElementById("search-wines");

        if (name.value !== "")
        {
            let url = "../GWSAPI.php?type=SortWinesByName&wine_name=" + name.value;
            req.open("POST", url, false);
            req.send();
        }
    }

    function reset()
    {
        let name = document.getElementById("search-wines");
        name.value = "";

        let sel = document.querySelectorAll("select");
        for (let i = 0; i < sel.length; i++)
        {
            sel[i].value = "default";
        }
        loadWines();
    }
</script>
</body>
</html>