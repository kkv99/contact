<?php
include("dbconfig.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $stockName = $_POST['stock_name_sell'];
    $quantity = $_POST['quantity_sell'];
    $price = $_POST['price_sell'];
    $cust_email = trim($_POST['custName_sell']);

    $sql_cust = "SELECT * FROM customer WHERE email = '$cust_email'";
    $row_cust = mysqli_fetch_array(mysqli_query($db, $sql_cust));
    $customer_id = $row_cust['Cust_ID'];

    $sql_acc = "SELECT * FROM account WHERE Customer_Id = '$customer_id'";
    $row_acc = mysqli_fetch_array(mysqli_query($db, $sql_acc));
    $acc_no = $row_acc['Acc_no'];

    $checkStockQuery = "SELECT * FROM stocks WHERE cust_id = '$customer_id' AND stock_name = '$stockName' AND quantity >= $quantity";
    $result_check = mysqli_query($db, $checkStockQuery);

    if ($result_check && mysqli_num_rows($result_check) > 0) {
        
        $total = $quantity * $price;

        // Start a transaction
        mysqli_begin_transaction($db);

        $sellQuery = "UPDATE stocks SET quantity = quantity - $quantity WHERE cust_id = '$customer_id' AND stock_name = '$stockName'";
        if (mysqli_query($db, $sellQuery)) {
            // Insert the transaction information into the transactions table
            $transactionQuery = "INSERT INTO transactions (Cust_ID, stock_name, quantity, price, ACC_No, WithdrawlAMT, withdrawl_time) 
                                    VALUES ('$customer_id', '$stockName', $quantity, $price, $acc_no, $total, CURRENT_TIMESTAMP())";
            if (mysqli_query($db, $transactionQuery)) {
                mysqli_commit($db);
                // Respond with success message
                echo "Stocks sold successfully!";
            } else {
                // Rollback the transaction in case of an error
                mysqli_rollback($db);
                
                echo "Error adding transaction: " . mysqli_error($db);
            }
        } else {
            // Rollback the transaction in case of an error
            mysqli_rollback($db);
            
            echo "Error updating stocks: " . mysqli_error($db);
        }
    } else {
        echo "Insufficient stocks to sell.";
    }

    // Close the database connection
    mysqli_close($db);
    exit();
} else {
    // Handle the case where the request method is not POST
    echo "Invalid request method.";
}
?>
