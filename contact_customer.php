<?php
    $con = mysqli_connect('localhost', 'root', '','stockMarket');

    
    if (mysqli_connect_errno())
        {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
    $Accno = $_GET['AccountNumber'];
    

    $result = mysqli_query($con,"SELECT Balance FROM Account where Acc_no=$Accno");
    
    while($row = mysqli_fetch_array($result))
        {
        echo '<body style="background-color:Grey";font-size: 40px;">';
        echo "<tr>";
    
        echo "<b>". "Account balance is ". "</b>";
        echo "<td>" . $row['Balance'] . "</td>";
        
        echo "</tr>";
        }

?>