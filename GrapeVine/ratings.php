<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ratings - GrapeVine</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<?php
require_once("php/navbar.php")
?>
<table class="tableOfInfo" id="tableOfInfo">
    
</table>
<tr><td colspan = "3"><hr style = "color: white;"></td></tr>
<script>
    function loadRatings() {
        let display = document.getElementById("tableOfInfo");

        display.innerHTML = "<tr class = \"tableHeaderRow\">" +
            "<td style = \"color:white;\">Rating title</td>" +
            "<td style = \"color:white;\">Rating</td>" +
            "<td style = \"color:white;\">Comment</td>" +
            "</tr>" +
            "<tr><td colspan = \"3\"><hr style = \"color: white;\"></td></tr>";

        let req = new XMLHttpRequest();
        req.onreadystatechange = function () {
            if (req.readyState === 4 && req.status === 200) {
                let data = JSON.parse(req.responseText);

                for (let i = 0; i < data.data.length; i++) {
                    display.innerHTML += '<tr>' +
                        '<td class="colWineName">' + data.data[i].rating_title + '</td>' +
                        '<td class=\"colWineName\">' + data.data[i].rating + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].comment + '</td>' +
                        '</tr>'+
                        '<tr><td colspan = "3"><br></td></tr>'+
                        '<tr><td colspan = "3"><hr style = "color: white;"></td></tr>';
                }
            }
        };

        req.open("POST", "../GWSAPI.php?type=getAllRatings", false);
        req.send();
    }

    loadRatings();
</script>
</body>
</html>