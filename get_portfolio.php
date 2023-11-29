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
<th>StockName</th>
<th>CompanyName</th>
<th>LatestPrice</th>
<th>Quantity</th>
<th>CostPrice</th>
<th>Status</th>
<th>CurentWorth</th>


</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['StockName'] . "</td>";
echo "<td>" . $row['CompanyName'] . "</td>";
echo "<td>" . $row['LatestPrice'] . "</td>";
echo "<td>" . $row['Quantity'] . "</td>";
echo "<td>" . $row['Date_Opened'] . "</td>";
echo "<td>" . $row['CostPrice'] . "</td>";
echo "<td>" . $row['CurentWorth'] . "</td>";


echo "</tr>";
}
echo "</table>";

mysqli_close($con);
?>