<?php
// Establish connection to MySQL database
$servername = "localhost";
$username = "root"; // Replace with your MySQL username
$password = ""; // Replace with your MySQL password
$dbname = "Eudermi"; // Replace with your MySQL database name
$Cus_Id= 1;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and bind SQL statement
$stmt = $conn->prepare("INSERT INTO customized (Cus_ID,Ingredient, Quantities, Price) VALUES (?,?, ?, ?)");
$stmt->bind_param("ssdi",$Cus_Id, $ingredients, $quantity, $total_price);

// Set parameters and execute
$preservatives = isset($_POST['preservatives']) ? implode(", ", $_POST['preservatives']) : "";
$availability = isset($_POST['availability']) ? implode(", ", $_POST['availability']) : "";
$ingredients = $preservatives . ($preservatives && $availability ? ", " : "") . $availability;
$quantity = $_POST['quantity'];
$total_price = $_POST['total_price'];

$stmt->execute();

$stmt->close();
$conn->close();
header("Location: Order.html");
exit(); 
?>
