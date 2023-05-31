<?php
session_start();
// Establish database connection using mysqli
$servername = "localhost";
$username = "uxxxxxxxxxstudentnumber";
$password = "USEYOURPASSWORD";
$dbname = "youdatabasename";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get user input from parameters
$email = $_GET['email'];
$password = $_GET['password'];

// Query database for user with matching email and password
$stmt = $conn->prepare("SELECT COUNT(*) as count FROM users WHERE email = ? AND password = ?");
$stmt->bind_param("ss", $email, $password);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();

// Output the number of matching rows
echo json_encode(['Matching rows' => $row['count']]);

// Close database connection
$stmt->close();
$conn->close();
?>
