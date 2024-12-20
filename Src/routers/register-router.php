<?php
include '../includes/connect.php';
$name = htmlspecialchars($_POST['name']);
$username = htmlspecialchars($_POST['username']);
$password = htmlspecialchars($_POST['password']);
    $file = $_FILES['fies'];
    $fileName = $_FILES['fies']['name'];
    $fileTmpname = $_FILES['fies']['tmp_name'];
    $fileError = $_FILES['fies']['error'];
    $fileExt = explode('.',$fileName);
    $fileActualExt = strtolower(end($fileExt));
    $allowed = array('jpg' , 'jpeg' , 'png' , 'gif');
    $phone = $_POST['phone'];
function number($length) {
    $result = '';

    for($i = 0; $i < $length; $i++) {
        $result .= mt_rand(0, 9);
    }
    return $result;
}
            $fileNameNew = uniqid('',true).".".$fileActualExt;
            $fileDestination = 'upload/'.$fileNameNew;
            move_uploaded_file($fileTmpname,$fileDestination);
            $sql = "INSERT INTO users (name, username, password, contact,Image) VALUES ('$name', '$username', '$password', $phone , '$fileDestination');";
            if($con->query($sql)==true){
                $user_id =  $con->insert_id;
                $sql = "INSERT INTO wallet(customer_id) VALUES ($user_id)";
                if($con->query($sql)==true){
                    $wallet_id =  $con->insert_id;
                    $cc_number = number(16);
                    $cvv_number = number(3);
                    $sql = "INSERT INTO wallet_details(wallet_id, number, cvv) VALUES ($wallet_id, $cc_number, $cvv_number)";
                    $con->query($sql);
                }
                }
                header("location: ../login.php");
                ?>