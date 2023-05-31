<?php

$servername = "localhost";
$username = "yourusernamehere";
$password = "yourpasswordhere";
$dbname = "yourdbnamehere";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$email = $_POST['email'];
$password = $_POST['password'];


$stmt = $conn->prepare("INSERT INTO users (email, password) VALUES (?, ?)");
$stmt->bind_param("ss", $email, $password);

if ($stmt->execute()) {
  echo '<script>alert("You have successfully signed up"); window.location.href = "login.php";</script>'; // Redirect to login page, or you can redirect to any page you want just change the phpname.php
} else {
  echo "An error has occurred: " . $stmt->error;
}

// Close database connection
$stmt->close();
$conn->close();
?>
