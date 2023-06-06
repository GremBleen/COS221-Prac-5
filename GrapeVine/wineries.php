<!DOCTYPE html>
<html lang="en">
<head>
    <title>Wineries</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<?php
require_once("php/navbar.php")
?>
<div class="container-a">
    <div class="controls">
        <div>
            <input type="search" name="search" id="search-wineries" placeholder="Search for">
        </div>
        <div>
            <input type="button" id="submit" value="Submit" style="text-align: center; margin: 5px"
                   onclick="filterWineries()">
            <input type="button" id="reset" value="Reset" style="text-align: center; margin: 5px" onclick="reset()">
        </div>
    </div>
    <table class="tableOfInfo" id="tableOfInfo">

    </table>
</div>
</body>
<script>
    function loadWineries()
    {
        let display = document.getElementById("tableOfInfo");
        display.innerHTML = "";

        display.innerHTML = "<tr class = \"tableHeaderRow\">" +
            "<td style = \"color:white;\">Winery ID</td>" +
            "<td style = \"color:white;\">Winery Name</td>" +
            "<td style = \"color:white;\">Continent</td>" +
            "<td style = \"color:white;\">Country</td>" +
            "<td style = \"color:white;\">Region</td>" +
            "<td style = \"color:white;\">Address</td>" +
            "<td style = \"color:white;\">Verified</td>" +
            "<td style = \"color:white;\">Rating</td>" +
            "</tr>" +
            "<tr><td colspan = \"8\"><hr style = \"color: white;\"></td></tr>";

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
                    } else
                    {
                        data.data[i].rating = Math.round(data.data[i].rating * 100) / 100.00;
                    }

                    display.innerHTML += '<tr>' +
                        '<td class="colWineName">' + data.data[i].winery_id + '</td>' +
                        '<td class=\"colWineName\">' + data.data[i].winery_name + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].continent + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].country + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].region_name + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].address + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].verified + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].rating + '</td>' +
                        '</tr>' +
                        '<tr><td colspan = "8"><br></td></tr>' +
                        '<tr><td colspan = "8"><hr style = "color: white;"></td></tr>';
                }
            }
        };

        req.open("POST", "../GWSAPI.php?type=getAllWineries", false);
        req.send();
    }

    loadWineries();

    function filterWineries()
    {
        let display = document.getElementById("tableOfInfo");
        display.innerHTML = "";

        display.innerHTML = "<tr class = \"tableHeaderRow\">" +
            "<td style = \"color:white;\">Winery ID</td>" +
            "<td style = \"color:white;\">Winery Name</td>" +
            "<td style = \"color:white;\">Continent</td>" +
            "<td style = \"color:white;\">Country</td>" +
            "<td style = \"color:white;\">Region</td>" +
            "<td style = \"color:white;\">Address</td>" +
            "<td style = \"color:white;\">Verified</td>" +
            "<td style = \"color:white;\">Rating</td>" +
            "</tr>" +
            "<tr><td colspan = \"8\"><hr style = \"color: white;\"></td></tr>";

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
                    } else
                    {
                        data.data[i].rating = Math.round(data.data[i].rating * 100) / 100.00;
                    }

                    display.innerHTML += '<tr>' +
                        '<td class="colWineName">' + data.data[i].winery_id + '</td>' +
                        '<td class=\"colWineName\">' + data.data[i].winery_name + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].continent + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].country + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].region_name + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].address + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].verified + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].rating + '</td>' +
                        '</tr>' +
                        '<tr><td colspan = "8"><br></td></tr>' +
                        '<tr><td colspan = "8"><hr style = "color: white;"></td></tr>';
                }
            }
        };

        let winery = document.getElementById("search-wineries");

        if (winery.value === "")
        {
            return;
        }

        let url = "../GWSAPI.php?type=searchForWinery&winery_name=" + winery.value;
        req.open("POST", url, false);
        req.send();
    }

    function reset()
    {
        let name = document.getElementById("search-wineries");
        name.value = "";

        let sel = document.querySelectorAll("select");
        for (let i = 0; i < sel.length; i++)
        {
            sel[i].value = "default";
        }
        loadWineries();
    }

</script>
</html>