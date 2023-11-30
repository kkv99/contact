<?php
include("dbconfig.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $stockName = $_POST['stock_name'];
    $quantity = $_POST['quantity'];
    $price = $_POST['price'];
    $cust_id = $_POST['cust_id'];
    $total = $quantity * $price; 

    $insertQuery = "INSERT INTO stocks (stock_name, quantity, price, total, cust_id) VALUES ('$stockName', '$quantity', '$price', '$total', '$cust_id')";
    
    if (mysqli_query($db, $insertQuery)) {
        echo "Stock purchase successful!";
    } else {
        echo "Error: " . mysqli_error($db);
    }

    // Close the database connection
    mysqli_close($db);
    exit(); 
}
?>


