<?php
include("dbconfig.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $stockName = $_POST['stock_name'];
    $quantity = $_POST['quantity'];
    $price = $_POST['price'];
    $cust_id = trim($_POST['custName']);
    $total = $quantity * $price;

    $sql_cust = "SELECT * FROM customer WHERE email = '$cust_id'";
    $row_cust = mysqli_fetch_array(mysqli_query($db, $sql_cust));
    $customer_id = $row_cust['Cust_ID'];

    $insertQuery = "INSERT INTO stocks (stock_name, quantity, price, total, cust_id) VALUES ('$stockName', '$quantity', '$price', '$total', '$customer_id')";

    if (mysqli_query($db, $insertQuery)) {
        echo "success";
    } else {
        echo "danger";
    }
    // Close the database connection
    mysqli_close($db);
}
?>
