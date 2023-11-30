<?php
include("dbconfig.php");

if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// Retrieve the user parameter from the AJAX request
if (isset($_GET['user'])) {
    $user = trim($_GET['user'], ' ');

    $result = mysqli_query($db, "SELECT * FROM customer WHERE Email = '$user'");

    if ($result) {
        // Check if there are rows in the result set
        $count_rows = mysqli_num_rows($result);
        if ($count_rows > 0) {
            // Fetch and print each row
            while ($row = mysqli_fetch_assoc($result)) {
                // Account balance & Transaction details 
                $cust_id = $row['Cust_ID'];
                $result_account = mysqli_query($db, "SELECT * FROM account WHERE Customer_Id = '$cust_id'");

                if ($result_account) {
                    $count_acc = mysqli_num_rows($result_account);
                    if ($count_acc > 0) {
                        echo '<body style="background-color: Grey; font-size: 40px;">';

                        while ($row_acc = mysqli_fetch_assoc($result_account)) {
                            echo '<div class="card col-4 border-0">';
                            echo '<div class="card-body">';
                            echo '<h5 class="card-title">Account Balance: ' . '$' . $row_acc['Balance'] . '</h5>';
                            echo '</div>';
                            echo '</div>';
                        }

                        // Display transaction details in Bootstrap cards
                        $result_account_trans = mysqli_query($db, "SELECT * FROM account a, transactions ts WHERE a.Customer_Id = '$cust_id' and ts.Cust_ID = a.Customer_Id");

                        if ($result_account_trans) {
                            $count_acc_tran = mysqli_num_rows($result_account_trans);
                            if ($count_acc_tran > 0) {
                                echo '<div class="card col-12 border-0">';
                                echo '<div class="card-body">';
                                echo '<h5 class="card-title">Transaction Details</h5>';
                                echo '<table class="table">';
                                echo '<thead>';
                                echo '<tr>';
                                echo '<th scope="col">Transaction ID</th>';
                                echo '<th scope="col">Account Number</th>';
                                echo '<th scope="col">Customer ID</th>';
                                echo '<th scope="col">Withdrawal Amount</th>';
                                echo '<th scope="col">Time</th>';
                                echo '</tr>';
                                echo '</thead>';
                                echo '<tbody>';

                                // Display account information in Bootstrap cards
                                while ($row_acc_tran = mysqli_fetch_assoc($result_account_trans)) {
                                    echo '<tr>';
                                    echo '<td>' . $row_acc_tran['Trans_ID'] . '</td>';
                                    echo '<td>' . $row_acc_tran['ACC_No'] . '</td>';
                                    echo '<td>' . $row_acc_tran['Cust_ID'] . '</td>';
                                    echo '<td>' . '$' . $row_acc_tran['WithdrawlAMT'] . '</td>';
                                    echo '<td>' . $row_acc_tran['withdrawl_time'] . '</td>';
                                    echo '</tr>';
                                }

                                echo '</tbody>';
                                echo '</table>';
                                echo '</div>';
                                echo '</div>';
                            } else {
                                echo "No transaction info found for the given email.";
                            }
                        } else {
                            echo "Error: " . mysqli_error($db);
                        }
                    } else {
                        echo "No account info found for the given email.";
                    }
                } else {
                    echo "Error: " . mysqli_error($db);
                }
            }
        } else {
            echo "No results found for the given email.";
        }
    } else {
        // Print an error message if the query fails
        echo "Error: " . mysqli_error($db);
    }
} else {
    // Handle the case where the user parameter is not set
    echo "User ID is not set.";
}

// Close the database connection
mysqli_close($db);
?>
