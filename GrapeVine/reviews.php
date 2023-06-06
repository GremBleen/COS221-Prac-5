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
<table class="tableOfInfo" id="tableOfInfo">
    
</table>
<tr><td colspan = "6"><hr style = "color: white;"></td></tr>
<script>
    function loadReviews() {
        let display = document.getElementById("tableOfInfo");

        display.innerHTML = "<tr class = \"tableHeaderRow\">" +
            "<td style = \"color:white;\">Wine ID</td>" +
            "<td style = \"color:white;\">Wine Name</td>" +
            "<td style = \"color:white;\">Rating</td>" +
            "<td style = \"color:white;\">Review</td>" +
            "<td style = \"color:white;\">Review by</td>" +
            "</tr>"+
            "<tr><td colspan = \"5\"><hr style = \"color: white;\"></td></tr>";

        let req = new XMLHttpRequest();
        req.onreadystatechange = function () {
            if (req.readyState === 4 && req.status === 200) {
                let data = JSON.parse(req.responseText);

                for (let i = 0; i < data.data.length; i++) {
                    display.innerHTML += '<tr>' +
                        '<td class="colWineName">' + data.data[i].wine_id + '</td>' +
                        '<td class=\"colWineName\">' + data.data[i].wine_name + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].rating + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].designation + '</td>' +
                        '<td style = "vertical-align: top; color: white;">' + data.data[i].name + '</td>' +
                        '</tr>'+
                        '<tr><td colspan = "5"><br></td></tr>'+
                        '<tr><td colspan = "5"><hr style = "color: white;"></td></tr>';
                }
            }
        };

        req.open("POST", "../GWSAPI.php?type=getAllReviews", false);
        req.send();
    }
</script>
</body>
</html>