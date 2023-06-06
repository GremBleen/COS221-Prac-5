<?php
session_start();
// Establish database connection using mysqli
$servername = "localhost";
$username = "Grem";
$password = "0504";
$dbname = "GWS";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get user input from parameters
$email = $_POST['email'];
$password = $_POST['password'];

// Query database for user with matching email and password

$query = "SELECT password FROM users WHERE email=?;";

$stmt = $conn->prepare($query);
$stmt->bind_param("s", $email);
$stmt->execute();

$result = $stmt->get_result();

if ($stmt->affected_rows == 1) {
    $p = $result->fetch_assoc()['password'];
    $salt = substr($p, 0, 32);
    $hashTest = crypt($password, $salt);

    if ($hashTest == $p) {
        $query = "SELECT name FROM users WHERE email = ?";
        $stmt2 = $conn->prepare($query);
        $stmt2->bind_param("s", $email);
        $stmt2->execute();

        $result = $stmt2->get_result();

        $row = $result->fetch_assoc();

        $stmt2->close();

        session_unset();
        session_destroy();
        session_start();

        //Set Session Variables
        $_SESSION["name"] = $row["name"];
        $_SESSION["email"] = $email;
        header("Location: ../index.php");
    } else {
        $_SESSION["loginError"] = true;
        header("Location:" . $_SERVER["HTTP_REFERER"]);
    }
} else {
    $_SESSION["loginError"] = true;
    header("Location:" . $_SERVER["HTTP_REFERER"]);
}

// Close database connection
$stmt->close();
$conn->close();
exit();
?>