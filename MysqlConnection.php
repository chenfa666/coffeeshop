<?php
$connection = mysqli_connect("localhost","root","2409","coffeeshop");
if(!connection)
die("Could not connect".mysqli_connect_error());
x
$query = "select * from std_table";

$stmt = mysqli_query($connection, $query);

while($row = mysqli_fetch_array($stmt, MYSQLI_ASSOC)){
    echo $row['std_name'].'</br>';
}

?>