<?php
$servername = "localhost";
$username = "u12345678";
$password = "OF3ISTXY3YUFAOAF2OK7L6RUUPP7ZVVM";
$dbname = "u12345678_GWS";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function getWinesDetails($conn, $numberOfWines = 10) {
    $sql = "SELECT  `wine_name`,`wine_type`,`vintage`,`quality`,`price` FROM `wine` LIMIT $numberOfWines";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"]              
            );
            array_push($wines, $wine);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000), 
            "data" => $wines
        ));
    } else {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }

}

function getAllWines($conn) {
    $sql = "SELECT * FROM `wine`";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"]              
            );
            array_push($wines, $wine);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000), 
            "data" => $wines
        ));
    } else {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }

}

function SortWinesByPrice($conn,$numberOfWines = 25) {
    $sql = "SELECT  `wine_name`,`wine_type`,`vintage`,`quality`,`price` FROM `wine` ORDER BY `price` ASC";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"]              
            );
            array_push($wines, $wine);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000), 
            "data" => $wines
        ));
    } else {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }

}

function SortWinesByQuality($conn,$numberOfWines = 25){
    $sql = "SELECT  `wine_name`,`wine_type`,`vintage`,`quality`,`price` FROM `wine` ORDER BY `quality` ASC";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"]              
            );
            array_push($wines, $wine);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000), 
            "data" => $wines
        ));
    } else {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function SortWinesByRegion($conn, $region_id, $numberOfWines = 25) {
    $sql = "SELECT `region_id`, `wine_name`, `wine_type`, `vintage`, `quality`, `price` FROM `wine` WHERE `region_id` = '$region_id' ORDER BY `wine_name` ASC LIMIT $numberOfWines";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "region_id" => $row["region_id"], 
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"]              
            );
            array_push($wines, $wine);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000), 
            "data" => $wines
        ));
    } else {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function SortWinesByName($conn, $wine_name) {
    $sql = "SELECT `region_id`, `wine_name`, `wine_type`, `vintage`, `quality`, `price` FROM `wine` WHERE `wine_name` LIKE '%$wine_name%'";

    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"]              
            );
            array_push($wines, $wine);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000), 
            "data" => $wines
        ));
    } else {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function getWinesByWinery($conn, $winery_id){
    $sql = "SELECT w.`wine_name`, w.`wine_type`, w.`vintage`, w.`quality`, w.`price`, w.`winery_id`, wn.`winery_name` FROM `wine` AS w INNER JOIN `winery` AS wn ON w.`winery_id` = wn.`winery_id` WHERE w.`winery_id` = '$winery_id'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "winery_id" => $row["winery_id"],
                "winery_name" => $row["winery_name"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"]              
            );
            array_push($wines, $wine);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000), 
            "data" => $wines
        ));
    } else {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

header('Content-Type: application/json');
if (isset($_GET['type'])) {
    $type = $_GET['type'];
    if ($type === 'getAllWines') {
        echo getAllWines($conn);
    } else if ($type === 'getWinesDetails') {
        echo getWinesDetails($conn);
    } else if ($type === 'SortWinesByPrice') {
        echo SortWinesByPrice($conn);
    } else if ($type === 'SortWinesByQuality') {
        echo SortWinesByQuality($conn);
    } else if ($type === 'SortWinesByRegion') {
        $region_id = $_GET['region_id'];
        echo SortWinesByRegion($conn, $region_id);
    } else if($type === 'SortWinesByName') {
        $wine_name = $_GET['wine_name'];
        echo SortWinesByName($conn, $wine_name);
    } else if($type === 'getWinesByWinery') {
        $winery_id = $_GET['winery_id'];
        echo getWinesByWinery($conn, $winery_id);
    }
        else {
        echo json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "Invalid type"
        ));
    }
} else {
    echo json_encode(array(
        "status" => "error",
        "timestamp" => strval(time() * 1000),
        "message" => "Type parameter not specified"
    ));
}
?>
