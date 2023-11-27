<?php
    // Establish a connection to the database
    $con = mysqli_connect('localhost', 'root', '', 'TSUInv');

    // Retrieve form data
    $txtId = $_POST['customerid'];
    $txtFirstname = $_POST['firstname'];
    $txtLastname = $_POST['lastname'];
    $txtCity = $_POST['city'];
    $txtContactnumber = $_POST['contactnumber'];
    $txtEmail = $_POST['email'];
    $txtDateofbirth = $_POST['dateofbirth'];
    $txtZip = $_POST['Zip'];

    // Prepare SQL query
    $sql = "INSERT INTO `customer` (`Cust_ID`, `F_Name`, `L_Name`, `City`, `Contact_Number`, `Email`, `Date_of_Birth`, `Zip`)
            VALUES ('$txtId', '$txtFirstname', '$txtLastname', '$txtCity', '$txtContactnumber', '$txtEmail', '$txtDateofbirth', '$txtZip')";

    // Execute SQL query
    $rs = mysqli_query($con, $sql);

    // Check if the query was successful
    if ($rs) {
        echo "Contact Records Inserted";
    } else {
        echo "Error inserting contact records: " . mysqli_error($con);
    }

    // Close the database connection
    mysqli_close($con);
?>
