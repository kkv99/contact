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
                // Customer details
                $cust_id = $row['Cust_ID'];
                $result_account = mysqli_query($db, "SELECT * FROM account WHERE Customer_Id = '$cust_id'");

                if ($result_account) {
                    $count_acc = mysqli_num_rows($result_account);
                    if ($count_acc > 0) {
                        echo '<body style="background-color: Grey; font-size: 40px;">';

                        // Display customer information in a Bootstrap card
                        echo '<div class="card col-4">';
                        echo '<div class="card-body">';
                        echo '<h5 class="card-title">Name: ' . $row['F_Name'] . ' ' . $row['L_Name'] . '</h5>';
                        echo '<p class="card-text">Email: ' . $row['Email'] . '</p>';
                        echo '</div>';
                        echo '</div>';

                        // Display account information in Bootstrap cards
                        while ($row_acc = mysqli_fetch_assoc($result_account)) {
                            echo '<div class="card col-4 ml-2">';
                            echo '<div class="card-body">';
                            echo '<h5 class="card-title">Account No: ' . $row_acc['Acc_no'] . '</h5>';
                            echo '<p class="card-text">Type: ' . $row_acc['Type'] . '</p>';
                            echo '</div>';
                            echo '</div>';
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
