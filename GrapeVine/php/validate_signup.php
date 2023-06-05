<?php
session_start();
function encryptPassword($input)
{
    $salt = '$5$rounds=5000$' . bin2hex(random_bytes(8)) . '$';
    return crypt($input, $salt);
}

// Establish database connection using mysqli
$servername = "localhost";
$username = "uxxxxxxxx";
$password = "dbpassword";
$dbname = "GWS";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get user input from parameters
$email = $_POST['email'];
$name = $_POST['name'];
$pw = encryptPassword($_POST['password']);

// Check if there is already a user in the database with that email
$query = "SELECT * FROM users WHERE email = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("s", $email);
$stmt->execute();

$rs = $stmt->get_result();

if ($rs->num_rows == 0) {
    // Insert into database
    $query = "INSERT INTO users (email, name, password) VALUES (?, ?, ?)";
    $stmt2 = $conn->prepare($query);
    $stmt2->bind_param("sss", $email, $name, $pw);

    try{
        $stmt2->execute();
        $stmt2->close();

        session_unset();
        session_destroy();
        session_start();

        $_SESSION["signUp"] = true;

        header("Location: login.php");
    }
    catch(mysqli_sql_exception $e)
    {
        $stmt2->close();
        $_SESSION['signupError']=1;
        header("Location:" . $_SERVER["HTTP_REFERER"]);
    }
}
else
{
    $_SESSION['signupError'] = 2;
    header("Location:" . $_SERVER["HTTP_REFERER"]);
}


// Close database connection
$stmt->close();
$conn->close();
exit();
?>