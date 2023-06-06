<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <title>Local Attractions</title>
</head>

<body>
    <?php
    require_once("php/navbar.php");
    ?>
    <div class="container-a">
        <div class="controls">
            <label for="regions">Regions: </label>
            <select name="regions" id="regions"
                style="padding: 0.8rem; border-radius: 0.5rem; background-color: #F45B69; color:white; border-width: 0px; margin: 5px">
                <option value="default" selected="selected">Select</option>
                <option value="1">Napa Valley</option>
                <option value="2">Santa Ynez Valley</option>
                <option value="3">Barolo</option>
                <option value="4">Chianti Classico</option>
                <option value="5">Cerasuolo di Vittoria</option>
            </select>
        </div>
        <table class="tableOfInfo" id="tableOfInfo" style="visibility: hidden">

        </table>
    </div>

    <script>
    const region = document.getElementById("regions");
    const display = document.getElementById("tableOfInfo");

    region.addEventListener("change", function() {
        if (region.value === "default") {
            display.style.visibility = "hidden";
        } else {
            display.style.visibility = "visible";

            display.innerHTML = "<tr class = \"tableHeaderRow\">" +
                "<td style = \"color:white;\">Name</td>" +
                "<td style = \"color:white;\">Description</td>" +
                "</tr>"+
                "<tr><td colspan = \"2\"><hr style = \"color:white;\"></td><tr>";

            let req = new XMLHttpRequest();
            req.onreadystatechange = function() {
                if (req.readyState === 4 && req.status === 200) {
                    let data = JSON.parse(req.responseText);

                    if (data.status === "error") {
                        display.innerHTML = "Error: " + data.message;
                        return;
                    }

                    for (let i = 0; i < data.data.length; i++) {
                        display.innerHTML += "<tr>" +
                            "<td style = \"color:white;\">" + data.data[i].attraction_name + "</td>" +
                            "<td style = \"color:white;\">" + data.data[i].description + "</td>" +
                            "</tr>"+
                            "<tr><td colspan = \"2\"><hr style = \"color:white;\"></td><tr>";
                    }

                }
            };
            let url = "../GWSAPI.php?type=getAttractionsByRegionId&region_id=" + region.value;
            req.open("POST", url, false);
            req.send();
        }
    });
    </script>
</body>

</html>