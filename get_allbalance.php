<?php
$con = mysqli_connect('localhost', 'root', '','stockMarket');
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM Account");

echo "<table border='1'>
<tr>
<th>AccountNo</th>
<th>Balance</th>
<th>CustomerName</th>
<th>Type</th>
<th>Date_opened</th>
<th>Status</th>
<th>Balance</th>
<th>Customer_Id</th>

</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['Acc_no'] . "</td>";
echo "<td>" . $row['Balance'] . "</td>";
echo "<td>" . $row['Cust_Name'] . "</td>";
echo "<td>" . $row['Type'] . "</td>";
echo "<td>" . $row['Date_Opened'] . "</td>";
echo "<td>" . $row['Status'] . "</td>";
echo "<td>" . $row['Branch_Code'] . "</td>";
echo "<td>" . $row['Customer_Id'] . "</td>";

echo "</tr>";
}
echo "</table>";

mysqli_close($con);
?>