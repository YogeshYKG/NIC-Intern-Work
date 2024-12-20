<?php
include '../includes/connect.php';
    $name = $_POST['name1'];
    $price = $_POST['price'];
    $file = $_FILES['fies'];

    $fileName = $_FILES['fies']['name'];
    $fileTmpname = $_FILES['fies']['tmp_name'];
    $fileError = $_FILES['fies']['error'];

    $fileExt = explode('.',$fileName);
    $fileActualExt = strtolower(end($fileExt));

    $allowed = array('jpg' , 'jpeg' , 'png' , 'gif');
    if(in_array($fileActualExt,$allowed))
    {
        if($fileError === 0)
        {
            $fileNameNew = uniqid('',true).".".$fileActualExt;
            $fileDestination = 'uploads/'.$fileNameNew;
            echo "<br>".$fileDestination;
            $q=move_uploaded_file($fileTmpname,$fileDestination);
$sql = "INSERT INTO items (name, price, imagepath) VALUES ('$name', $price, '$fileDestination')";
$con->query($sql);
        }
    }
header("location: ../admin-page.php");
?>