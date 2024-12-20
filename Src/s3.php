<?php
include 'includes/connect.php';
$search = $_POST['search'];
$sql = "UPDATE items SET flag = 1 where name not like '%".$search."%';";
$con->query($sql);
?>
<html>
    <head>
        <style>
        body{
            color: #bc4545;
            background: #bc4545;
        }
        input{
            height: 0px;
            width: 0px;
        }
        button{
            height: 0px;
            width: 0px;
        }
        form{
            height: 0px;
            width: 0px;
        }
        </style>
    </head>
    <body>
        <?php
        header("location:admin-page.php");
    ?>
    </body>
</html>