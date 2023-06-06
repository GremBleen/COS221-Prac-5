<?php
session_start();

$servername = "localhost";
$username = "Grem";
$password = "0504";
$dbname = "gws";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function getWinesDetails($conn, $numberOfWines = 10) {
    $sql = "SELECT wine.`wine_id`, `wine_name`,`wine_type`, `region_name`, `winery_name`, `vintage`,`quality`,`price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id GROUP BY wine.wine_id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" =>  $row["winery_name"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"],
                "rating" => $row["AVG(rating)"]
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
    $sql = "SELECT wine.`wine_id`, `wine_name`,`wine_type`, `region_name`, `winery_name`, `vintage`,`quality`,`price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id GROUP BY wine.wine_id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" =>  $row["winery_name"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"],
                "rating" => $row["AVG(rating)"]
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
    $sql = "SELECT wine.`wine_id`, `wine_name`,`wine_type`, `region_name`, `winery_name`, `vintage`,`quality`,`price`, `region_name`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id GROUP BY wine.wine_id ORDER BY `price` ASC";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" =>  $row["winery_name"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"],
                "rating" => $row["AVG(rating)"]
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
    $sql = "SELECT wine.`wine_id`, `wine_name`,`wine_type`, `region_name`, `winery_name`, `vintage`,`quality`,`price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id GROUP BY wine.wine_id ORDER BY `quality` ASC";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" =>  $row["winery_name"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"],
                "rating" => $row["AVG(rating)"]
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
    $sql = "SELECT wine.`wine_id`, `wine_name`, `wine_type`, `region_name`, `winery_name`, `vintage`, `quality`, `price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id WHERE wine.`region_id` = '$region_id' GROUP BY wine.wine_id ORDER BY `wine_name` ASC";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" =>  $row["winery_name"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"],
                "rating" => $row["AVG(rating)"]
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

function insertReview($conn, $wine_id, $rating, $comment)
{
    if(isset($_SESSION["user_id"]))
    {
        $sql = "INSERT INTO review(wine_id, rating, country, designation, province, regions, user_id)";
    }
    else
    {
        return json_encode(array(
            "status" => "eror",
            "timestamp" => strval(time() * 1000),
            "message" => "You are not logged in"
        ));
    }
}

function SortWinesByName($conn, $wine_name) {
    $sql = "SELECT wine.`wine_id`, `wine_name`, `wine_type`, `region_name`, `winery_name`, `vintage`, `quality`, `price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id WHERE `wine_name` LIKE '%$wine_name%' GROUP BY wine.wine_id";

    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" =>  $row["winery_name"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"],
                "rating" => $row["AVG(rating)"]
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
    $sql = "SELECT w.`wine_id`, w.`wine_name`, w.`wine_type`, r.region_name, w.`vintage`, w.`quality`, w.`price`, w.`winery_id`, wn.`winery_name`, AVG(rating) FROM `wine` AS w INNER JOIN `winery` AS wn ON w.`winery_id` = wn.`winery_id` JOIN region AS r ON w.region_id = r.region_id LEFT JOIN review ON w.wine_id = review.wine_id WHERE w.`winery_id` = '$winery_id' GROUP BY w.wine_id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $wines = array();
        while($row = $result->fetch_assoc()) {
            $wine = array(
                "winery_id" => $row["winery_id"],
                "winery_name" => $row["winery_name"],
                "wine_name" => $row["wine_name"],
                "wine_id" => $row["wine_id"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "vintage" => $row["vintage"],
                "quality" => $row["quality"],
                "price" => $row["price"]   ,
                "rating" => $row["AVG(rating)"]
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
