<?php
   include("dbconfig.php");
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      $myusername = mysqli_real_escape_string($db,$_POST['username']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
      
      $sql_cust = "SELECT * FROM customer WHERE email = '$myusername'";
      $sql_emp = "SELECT * FROM employee WHERE email = '$myusername'";
      $result_cust = mysqli_query($db,$sql_cust);
      $result_emp = mysqli_query($db,$sql_emp);
      $row_cust = mysqli_fetch_array($result_cust);
      $row_emp = mysqli_fetch_array($result_emp);

      if(!is_null($row_cust)){
        $passwordhash_cust = $row_cust['Password'];
      } else if (!is_null($row_emp)){
        $passwordhash_emp = $row_emp['Password'];
      }
      
      $count_cust = mysqli_num_rows($result_cust);
      $count_emp = mysqli_num_rows($result_emp);

      if($count_cust == 1 && password_verify($mypassword, $passwordhash_cust)){
        $location = "location: customer.html?user=". ' ' . $myusername;
      } else if ($count_emp == 1 && password_verify($mypassword, $passwordhash_emp)){
        $location = "location: employee_main.html?user=". ' ' . $myusername;
      } else {
        $location = "location: login.html?user=". ' ' . $myusername;
      }

      header($location);
   } 
?>