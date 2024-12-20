<?php
include 'includes/connect.php';
$search = $_POST['Search11'];
$sql = "UPDATE items SET flag = 1 where category not like '%".$search."%';";
mysqli_query($con,$sql);
header("location: index.php");			
?>