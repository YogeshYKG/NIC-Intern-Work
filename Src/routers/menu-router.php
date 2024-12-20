<?php
include '../includes/connect.php';
	foreach ($_POST as $key => $value)
	{
		if(preg_match("/[0-9]+_name/",$key)){
			if($value != ''){
			$key = strtok($key, '_');
			$value = htmlspecialchars($value);
			$sql = "UPDATE items SET name = '$value' WHERE id = $key;";
			$con->query($sql);
			}
		}
		if(preg_match("/[0-9]+_price/",$key)){
			$key = strtok($key, '_');
			$sql = "UPDATE items SET price = $value WHERE id = $key;";
			$con->query($sql);
		}
		if(preg_match("/[0-9]+_hide/",$key)){
			if($_POST[$key] == 1){
			$key = strtok($key, '_');
			$sql = "UPDATE items SET deleted = 0 WHERE id = $key;";
			$con->query($sql);
			} else{
			$key = strtok($key, '_');
			$sql = "UPDATE items SET deleted = 1 WHERE id = $key;";
			$con->query($sql);			
			}
		}
		if(preg_match("/[0-9]+_hire/",$key)){
			if($_POST[$key] == 1){
			$key = strtok($key, '_');
			$sql = "UPDATE items SET category = 'Breakfast' WHERE id = $key;";
			$con->query($sql);
			} 
			else{
				if($_POST[$key] == 2){
					$key = strtok($key, '_');
					$sql = "UPDATE items SET category = 'Lunch' WHERE id = $key;";
					$con->query($sql);
					}
				else{
				if($_POST[$key] == 3){
					$key = strtok($key, '_');
					$sql = "UPDATE items SET category = 'Dinner' WHERE id = $key;";
					$con->query($sql);
					}
					else{
						if($_POST[$key] == 4){
							$key = strtok($key, '_');
							$sql = "UPDATE items SET category = 'Non-Veg' WHERE id = $key;";
							$con->query($sql);
							}else{
								if($_POST[$key] == 5){
									$key = strtok($key, '_');
									$sql = "UPDATE items SET category = 'FastFood' WHERE id = $key;";
									$con->query($sql);
									}else{
										if($_POST[$key] == 6){
											$key = strtok($key, '_');
											$sql = "UPDATE items SET category = 'Tea' WHERE id = $key;";
											$con->query($sql);
											}
											else{
												$key = strtok($key, '_');
												$sql = "UPDATE items SET category = 'Drinks' WHERE id = $key;";
												$con->query($sql);
											}
										}
							}
					}
				}
			}
		}
	}
header("location: ../admin-page.php");
?>