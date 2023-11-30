<?php
    // Establish a connection to the database
    include("dbconfig.php");

    // Retrieve form data
    $txtFirstname = $_POST['firstname'];
    $txtLastname = $_POST['lastname'];
    $txtCity = $_POST['City'];
    $txtPassword = $_POST['Password'];
    $txtContactnumber = $_POST['contactNo'];
    $txtEmail = $_POST['Email'];
    $txtDateofbirth = $_POST['dateofbirth'];
    $txtZip = $_POST['Zip'];
    $txtAccounttype = $_POST['Accounttype'];
    $txtbalance = $_POST['Accountbalance'];
    $txtEmpName = trim($_POST['empName']," ");

    $hash = password_hash($txtPassword, PASSWORD_BCRYPT);
    $cust_name = $txtFirstname . ' ' . $txtLastname;

    // Prepare SQL query
    $sql = "INSERT INTO `customer` ( `F_Name`, `L_Name`, `City`, `Contact_Number`, `Email`, `Date_of_Birth`, `Zip`, `Password`)
           VALUES ('$txtFirstname', '$txtLastname', '$txtCity', '$txtContactnumber', '$txtEmail', '$txtDateofbirth', '$txtZip', '$hash')";
    
    // Execute SQL query
    $rs = mysqli_query($db, $sql);
    $last_id = mysqli_insert_id($db);
    if ($rs) {
      echo " New Contact record created successfully. Last inserted ID is: " . $last_id;

      $sql_emp = "SELECT * FROM employee WHERE email = '$txtEmpName'";
      $row_emp = mysqli_fetch_array(mysqli_query($db,$sql_emp));
      $B_Code = $row_emp['B_Code'];

      $sql_account= "INSERT INTO `account` (`Balance`, `Cust_Name`, `Type`, `Date_Opened`, `Status`, `Branch_Code`, `Customer_Id`) 
                     VALUES ('$txtbalance', '$cust_name', '$txtAccounttype', CURRENT_DATE(), 'Active', '$B_Code', '$last_id')";

      $ac = mysqli_query($db, $sql_account);
      $last_acc_id = mysqli_insert_id($db);
      echo " New account record created successfully. Last inserted ID is: " . $last_acc_id;
      
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($db);
    }
    
    // Close the database connection
    mysqli_close($db);
?>
