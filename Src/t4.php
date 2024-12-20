<?php
include 'includes/connect.php';
$sql = "UPDATE items SET flag = 1 where category <> 'Non-Veg';";
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
        header("location: index.php");
        ?>
    </body>
</html>