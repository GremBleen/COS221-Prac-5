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
        <input type="button" id="submit" value="Submit" style="text-align: center; margin: 5px" onclick="filterWines()">
        <div>
            <input type="button" id="addWine" value="Add Wine" style="text-align: center; margin: 5px"
                   onclick="showAddWineForm()">
            <input type="button" id="removeWine" value="Delete Wine" style="text-align: center; margin: 5px"
                   onclick="showRemoveWineForm()">
        </div>
    </div>
    <form id="addWineForm" onsubmit="addWine(); return false" style="display: none">
        <h3 style="color: black;">Rating box:</h3>
        <label for="wine-name" style="color: black;">Wine name</label>
        <input type="text" name="wine-name" id="wine-name" placeholder="Enter wine name">
        <label for="wine-type" style="color: black;">Wine type</label>
        <input type="text" name="wine-type" id="wine-type" placeholder="Enter wine type">
        <label for="wine-vintage" style="color: black;">Wine vintage</label>
        <input type="date" name="wine-vintage" id="wine-vintage" placeholder="Enter wine vintage">
        <label for="wine-quality" style="color: black;">Wine quality</label>
        <input type="number" name="wine-quality" id="wine-quality" placeholder="Enter wine quality">
        <label for="wine-price" style="color: black;">Wine price</label>
        <input type="number" name="wine-price" id="wine-price" placeholder="Enter wine price">
        <input id="submit-btn" type="submit" value="Submit" style="background-color: #F45B69;">
        <input id="cncl-btn" type="button" value="Cancel" style="background-color: #F45B69;" onclick="hideAddWineForm()">
    </form>
    <form id="removeWineForm" onsubmit="removeWine(); return false" style="display: none">
        <h3 style="color: black;">Rating box:</h3>
        <label for="wine-id" style="color: black;">Wine id</label>
        <input type="number" name="wine-id" id="wine-id" placeholder="Enter wine id">
        <label for="rating-description" style="color: black;">Rating description</label>
        <input type="text" name="rating-description" id="rating-description" placeholder="Enter rating description">
        <label for="rating" style="color: black;">Rating</label>
        <input type="number" name="rating" id="rating" placeholder="Enter rating" min="1" max="100" step="1">
        <input id="submit-btn" type="submit" value="Submit" style="background-color: #F45B69;">
        <input id="cncl-btn" type="button" value="Cancel" style="background-color: #F45B69;" onclick="hideRemoveWineForm()">
    </form>
    <table class="tableOfInfo" id="tableOfInfo" style="visibility: hidden">

    </table>
</div>

</body>
<script>
    function filterWines()
    {
        let display = document.getElementById("tableOfInfo");

        display.style.visibility = "visible";

        display.innerHTML = "<tr class = \"tableHeaderRow\">" +
            "<td style = \"color:white;\">Wine ID</td>" +
            "<td style = \"color:white;\">Name</td>" +
            "<td style = \"color:white;\">Produced By</td>" +
            "<td style = \"color:white;\">Region</td>" +
            "<td style = \"color:white;\">Information</td>" +
            "<td style = \"color:white;\">Rating</td>" +
            "</tr>" +
            "<tr><td colspan = \"6\"><hr style = \"color: white;\"></td></tr>";

        let req = new XMLHttpRequest();
        req.onreadystatechange = function ()
        {
            if (req.readyState === 4 && req.status === 200)
            {
                let data = JSON.parse(req.responseText);

                if (data.status === "error")
                {
                    display.innerHTML = "Error: " + data.message;
                    return;
                }

                for (let i = 0; i < data.data.length; i++)
                {
                    if (data.data[i].rating === null)
                    {
                        data.data[i].rating = "NA";
                    } else
                    {
                        data.data[i].rating = Math.round(data.data[i].rating * 100) / 100.00;
                    }

                    display.innerHTML += '<tr>' +
                        '<td class="colWineName">' + data.data[i].wine_id + '</td>' +
                        '<td class=\"colWineName\">' + data.data[i].wine_name + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].winery_name + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].region_name + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' +
                        'Type: ' + data.data[i].wine_type + '<br>' +
                        'Vintage: ' + data.data[i].vintage + '<br>' +
                        'Quality: ' + data.data[i].quality + '<br>' +
                        'Price:' + data.data[i].price +
                        '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].rating + '</td>' +
                        '</tr>' +
                        '<tr><td colspan = "6"><br></td></tr>' +
                        '<tr><td colspan = "6"><hr style = "color: white;"></td></tr>';
                }
            }
        };

        let winery = document.getElementById("wineries");

        if (winery.value !== "default")
        {
            let url = "../GWSAPI.php?type=getWinesByWinery&winery_id=" + winery.value;
            req.open("POST", url, false);
            req.send();
        }
    }

    function addWine()
    {
        let wine_id = document.getElementById("wine-id");
        let wine_name = document.getElementById("wine-name");
        let wine_type = document.getElementById("wine-type");
        let wine_vintage = document.getElementById("wine-vintage");
        let wine_quality = document.getElementById("wine-quality");
        let wine_price = document.getElementById("wine-price");
        let winery_id = document.getElementById("wineries");

        let req = new XMLHttpRequest();
        req.onreadystatechange = function ()
        {
            if (req.readyState === 4 && req.status === 200)
            {
                let data = JSON.parse(req.responseText);

                if (data.status === "error")
                {
                    alert(data.message);
                }
                else
                {
                    alert("Wine added!");
                }
            }
        }

        let url = "../GWSAPI.php?type=addWine" +
            + "&wine_name=" + wine_name
            + "&wine_type=" + wine_type
            + "&wine_vintage=" + wine_vintage
            + "&wine_quality=" + wine_quality
            + "&wine_price=" + wine_price
            + "&winery_id=" + winery_id;

        req.open("POST", url, false);
        req.send();
    }

    function showAddWineForm() {
        let form = document.getElementById("addWineForm");
        if (form.style.display === "none") {
            form.style.display = "block";
        } else {
            form.style.display = "none";
        }
    }

    function hideAddWineForm()
    {
        let form = document.getElementById("addWineForm");
        if (form.style.display === "block") {
            form.style.display = "none";
        } else {
            form.style.display = "none";
        }
    }

    function removeWine()
    {

    }

    function showRemoveWineForm() {
        let form = document.getElementById("removeWineForm");
        if (form.style.display === "none") {
            form.style.display = "block";
        } else {
            form.style.display = "none";
        }
    }

    function hideRemoveWineForm()
    {
        let form = document.getElementById("removeWineForm");
        if (form.style.display === "block") {
            form.style.display = "none";
        } else {
            form.style.display = "none";
        }
    }
</script>
</html>
