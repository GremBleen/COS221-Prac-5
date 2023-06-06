<?php
session_start();

$servername = "localhost";
$username = "Grem";
$password = "0504";
$dbname = "gws";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error)
{
    die("Connection failed: " . $conn->connect_error);
}
function getWinesDetails($conn)
{
    $sql = "SELECT wine.`wine_id`, `wine_name`,`wine_type`, `region_name`, `winery_name`, `vintage`,`quality`,`price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id GROUP BY wine.wine_id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {
        $wines = array();
        while ($row = $result->fetch_assoc())
        {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" => $row["winery_name"],
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
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }

}

function getAllWines($conn)
{
    $sql = "SELECT wine.`wine_id`, `wine_name`,`wine_type`, `region_name`, `winery_name`, `vintage`,`quality`,`price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id GROUP BY wine.wine_id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {
        $wines = array();
        while ($row = $result->fetch_assoc())
        {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" => $row["winery_name"],
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
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }

}

function SortWinesByPrice($conn)
{
    $sql = "SELECT wine.`wine_id`, `wine_name`,`wine_type`, `region_name`, `winery_name`, `vintage`,`quality`,`price`, `region_name`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id GROUP BY wine.wine_id ORDER BY `price` ASC";
    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {
        $wines = array();
        while ($row = $result->fetch_assoc())
        {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" => $row["winery_name"],
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
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }

}

function SortWinesByQuality($conn)
{
    $sql = "SELECT wine.`wine_id`, `wine_name`,`wine_type`, `region_name`, `winery_name`, `vintage`,`quality`,`price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id GROUP BY wine.wine_id ORDER BY `quality` ASC";
    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {
        $wines = array();
        while ($row = $result->fetch_assoc())
        {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" => $row["winery_name"],
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
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function SortWinesByRegion($conn, $region_id)
{
    $sql = "SELECT wine.`wine_id`, `wine_name`, `wine_type`, `region_name`, `winery_name`, `vintage`, `quality`, `price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id WHERE wine.`region_id` = ? GROUP BY wine.wine_id ORDER BY `wine_name` ASC";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $region_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0)
    {
        $wines = array();
        while ($row = $result->fetch_assoc())
        {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" => $row["winery_name"],
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
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function SortWinesByName($conn, $wine_name)
{
    $sql = "SELECT wine.`wine_id`, `wine_name`, `wine_type`, `region_name`, `winery_name`, `vintage`, `quality`, `price`, AVG(rating) FROM `wine` JOIN `region` ON wine.region_id = region.region_id JOIN winery ON wine.winery_id = winery.winery_id LEFT JOIN review ON wine.wine_id = review.wine_id WHERE `wine_name` LIKE ? GROUP BY wine.wine_id";
    $obj = '%' . $wine_name . '%';
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $obj);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0)
    {
        $wines = array();
        while ($row = $result->fetch_assoc())
        {
            $wine = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
                "winery_name" => $row["winery_name"],
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
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function getWinesByWinery($conn, $winery_id)
{
    $sql = "SELECT w.`wine_id`, w.`wine_name`, w.`wine_type`, r.region_name, w.`vintage`, w.`quality`, w.`price`, w.`winery_id`, wn.`winery_name`, AVG(rating) FROM `wine` AS w INNER JOIN `winery` AS wn ON w.`winery_id` = wn.`winery_id` JOIN region AS r ON w.region_id = r.region_id LEFT JOIN review ON w.wine_id = review.wine_id WHERE w.`winery_id` = ? GROUP BY w.wine_id";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $winery_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0)
    {
        $wines = array();
        while ($row = $result->fetch_assoc())
        {
            $wine = array(
                "winery_id" => $row["winery_id"],
                "winery_name" => $row["winery_name"],
                "wine_name" => $row["wine_name"],
                "wine_id" => $row["wine_id"],
                "wine_type" => $row["wine_type"],
                "region_name" => $row["region_name"],
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
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function insertReview($conn, $wine_id, $rating, $comment)
{
    if (isset($_SESSION["user_id"]) && $wine_id != null && $rating != null && $comment != null)
    {
        $user_id = $_SESSION["user_id"];
        $sql = "INSERT INTO review(wine_id, rating, designation, user_id) VALUES (?, ?, ?, ?)";

        $stmt=$conn->prepare($sql);
        $stmt->bind_param("iisi", $wine_id, $rating, $comment, $user_id);
        $stmt->execute();

        $result = $stmt->get_result();

        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000),
            "message" => $result
        ));
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "Error: Please check you are logged in and you fill in every field"
        ));
    }
}

function getAllReviews($conn)
{
    $sql = "SELECT * FROM review JOIN wine ON review.wine_id = wine.wine_id JOIN users ON review.user_id = users.user_id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {
        $data = array();
        while ($row = $result->fetch_assoc())
        {
            $td = array(
                "wine_id" => $row["wine_id"],
                "wine_name" => $row["wine_name"],
                "rating" => $row["rating"],
                "designation" => $row["designation"],
                "name" => $row["name"]
            );
            array_push($data, $td);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000),
            "data" => $data
        ));
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function getAllRatings($conn)
{
    $sql = "SELECT * FROM ratings";
    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {
        $data = array();
        while ($row = $result->fetch_assoc())
        {
            $comment = $row["comment"];

            $comment = substr($comment, 3, strlen($comment) - 6);

            $td = array(
                "rating_title" => $row["rating_title"],
                "rating" => $row["rating"],
                "comment" => $comment
            );
            array_push($data, $td);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000),
            "data" => $data
        ));
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function getAllWineries($conn)
{
    $sql = "SELECT w.winery_id, w.winery_name, l.continent, l.country, r.region_name, l.address, w.verified, AVG(rt.rating) FROM `winery` AS w JOIN location AS l ON w.location_id = l.location_id JOIN region AS r ON l.region_id = r.region_id JOIN ratings AS rt ON w.rating_id = rt.rating_id GROUP BY w.winery_id; ";
    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {
        $data = array();
        while ($row = $result->fetch_assoc())
        {
            $td = array(
                "winery_id" => $row["winery_id"],
                "winery_name" => $row["winery_name"],
                "continent" => $row["continent"],
                "country" => $row["country"],
                "region_name" => $row["region_name"],
                "address" => $row["address"],
                "verified" => $row["verified"],
                "rating" => $row["AVG(rt.rating)"]
            );
            array_push($data, $td);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000),
            "data" => $data
        ));
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function searchForWinery($conn, $winery_name)
{
    $query = "SELECT w.winery_id, w.winery_name, l.continent, l.country, r.region_name, l.address, w.verified, AVG(rt.rating) FROM `winery` AS w JOIN location AS l ON w.location_id = l.location_id JOIN region AS r ON l.region_id = r.region_id JOIN ratings AS rt ON w.rating_id = rt.rating_id WHERE w.winery_name LIKE ? GROUP BY w.winery_id;";
    $stmt = $conn->prepare($query);
    $obj = "%" . $winery_name . "%";
    $stmt->bind_param("s",$obj);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0)
    {
        $data = array();
        while ($row = $result->fetch_assoc())
        {
            $td = array(
                "winery_id" => $row["winery_id"],
                "winery_name" => $row["winery_name"],
                "continent" => $row["continent"],
                "country" => $row["country"],
                "region_name" => $row["region_name"],
                "address" => $row["address"],
                "verified" => $row["verified"],
                "rating" => $row["AVG(rt.rating)"]
            );
            array_push($data, $td);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000),
            "data" => $data
        ));
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

function addWine($conn, $wine_name, $wine_type, $wine_vintage, $wine_quality, $wine_price, $winery_id)
{
    if (isset($_SESSION["user_id"]))
    {
        $user_id = $_SESSION["user_id"];
        $query = "SELECT * FROM winery JOIN location ON winery.location_id = location.location_id JOIN region ON location.region_id = region.region_id WHERE winery_id=? AND winery.mngr_id=?";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("ii", $winery_id, $user_id);
        $stmt->execute();
        $res = $stmt->get_result();

        if ($res->num_rows > 0)
        {
            $row = $res->fetch_assoc();
            if ($row["verified"] == 0)
            {
                return json_encode(array(
                    "status" => "error",
                    "timestamp" => strval(time() * 1000),
                    "message" => "Error, your winery is not verified"
                ));
            } else
            {
                $region_id = $row["region_id"];

                $fixed_acidity = rand(0, 10);
                $volatile_acidity = rand(0, 10);
                $citric_acid = rand(0, 10);
                $residual_sugar = rand(0, 10);
                $chlorides = rand(0, 10);
                $free_sulfur_dioxide = rand(0, 10);
                $density = rand(0, 10);
                $pH = rand(0, 10);
                $sulphates = rand(0, 10);
                $alcohol = rand(0, 10);

                $sql = "INSERT INTO wine(winery_id, wine_name, wine_type, vintage, region_id, fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides, free_sulfur_dioxide, density, pH, sulphates, alcohol, quality, price)"
                    . "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("isssiddddddddddid", $winery_id, $wine_name, $wine_type, $wine_vintage, $region_id, $fixed_acidity, $volatile_acidity, $citric_acid, $residual_sugar, $chlorides, $free_sulfur_dioxide, $density, $pH, $sulphates, $alcohol, $wine_quality, $wine_price);
                $stmt->execute();

                $result = $stmt->get_result();

                return json_encode(array(
                    "status" => "success",
                    "timestamp" => strval(time() * 1000),
                    "message" => $result
                ));
            }
        } else
        {
            return json_encode(array(
                "status" => "error",
                "timestamp" => strval(time() * 1000),
                "message" => "Error: Please check you are logged in as a winery manager"
            ));
        }
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "Error: Please check you are logged in and you fill in every field"
        ));
    }
}

function removeWine($conn, $wine_id, $winery_id)
{
    if (isset($_SESSION["user_id"]))
    {
        $user_id = $_SESSION["user_id"];
        $query = "SELECT * FROM winery JOIN location ON winery.location_id = location.location_id JOIN region ON location.region_id = region.region_id WHERE winery_id=? AND winery.mngr_id=?";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("ii", $winery_id, $user_id);
        $stmt->execute();
        $res = $stmt->get_result();

        if ($res->num_rows > 0)
        {
            $row = $res->fetch_assoc();
            if ($row["verified"] == 0)
            {
                return json_encode(array(
                    "status" => "error",
                    "timestamp" => strval(time() * 1000),
                    "message" => "Error, your winery is not verified"
                ));
            } else
            {
                $sql = "DELETE FROM wine WHERE wine_id=?";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("i", $wine_id);
                $stmt->execute();
                $result = $stmt->get_result();

                return json_encode(array(
                    "status" => "success",
                    "timestamp" => strval(time() * 1000),
                    "message" => $result
                ));
            }
        } else
        {
            return json_encode(array(
                "status" => "error",
                "timestamp" => strval(time() * 1000),
                "message" => "Error: Please check you are logged in as a winery manager"
            ));
        }
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "Error: Please check you are logged in and you fill in every field"
        ));
    }
}

function getAttractionsByRegionId($conn, $region_id)
{
    $query = "SELECT attraction_name, description FROM local_attractions WHERE region_id=?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i",$region_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0)
    {
        $data = array();
        while ($row = $result->fetch_assoc())
        {
            $td = array(
                "attraction_name" => $row["attraction_name"],
                "description" => $row["description"]
            );
            array_push($data, $td);
        }
        return json_encode(array(
            "status" => "success",
            "timestamp" => strval(time() * 1000),
            "data" => $data
        ));
    } else
    {
        return json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "No data found"
        ));
    }
}

header('Content-Type: application/json');
if (isset($_GET['type']))
{
    $type = $_GET['type'];
    if ($type === 'getAllWines')
    {
        echo getAllWines($conn);
    } else if ($type === 'getWinesDetails')
    {
        echo getWinesDetails($conn);
    } else if ($type === 'SortWinesByPrice')
    {
        echo SortWinesByPrice($conn);
    } else if ($type === 'SortWinesByQuality')
    {
        echo SortWinesByQuality($conn);
    } else if ($type === 'SortWinesByRegion')
    {
        $region_id = $_GET['region_id'];
        echo SortWinesByRegion($conn, $region_id);
    } else if ($type === 'SortWinesByName')
    {
        $wine_name = $_GET['wine_name'];
        echo SortWinesByName($conn, $wine_name);
    } else if ($type === 'getWinesByWinery')
    {
        $winery_id = $_GET['winery_id'];
        echo getWinesByWinery($conn, $winery_id);
    } else if ($type === "getAllReviews")
    {
        echo getAllReviews($conn);
    } else if ($type === "getAllRatings")
    {
        echo getAllRatings($conn);
    } else if ($type === "insertReview")
    {
        $wine_id = $_GET["wine_id"];
        $rating = $_GET["rating"];
        $comment = $_GET["comment"];

        echo insertReview($conn, $wine_id, $rating, $comment);
    } else if ($type === "getAllWineries")
    {
        echo getAllWineries($conn);
    } else if ($type === "searchForWinery")
    {
        $winery_name = $_GET["winery_name"];
        echo searchForWinery($conn, $winery_name);
    } else if ($type === "addWine")
    {
        $wine_name = $_GET["wine_name"];
        $wine_type = $_GET["wine_type"];
        $wine_vintage = $_GET["wine_vintage"];
        $wine_quality = $_GET["wine_quality"];
        $wine_price = $_GET["wine_price"];
        $winery_id = $_GET["winery_id"];
        echo addWine($conn, $wine_name, $wine_type, $wine_vintage, $wine_quality, $wine_price, $winery_id);
    }
    else if ($type === "removeWine")
    {
        $wine_id = $_GET["wine_id"];
        $winery_id = $_GET["winery_id"];
        echo removeWine($conn, $wine_id, $winery_id);
    }
    else if($type === "getAttractionsByRegionId")
    {
        $region_id = $_GET["region_id"];
        echo getAttractionsByRegionId($conn, $region_id);
    }
    else
    {
        echo json_encode(array(
            "status" => "error",
            "timestamp" => strval(time() * 1000),
            "message" => "Invalid type"
        ));
    }
} else
{
    echo json_encode(array(
        "status" => "error",
        "timestamp" => strval(time() * 1000),
        "message" => "Type parameter not specified"
    ));
}
?>
