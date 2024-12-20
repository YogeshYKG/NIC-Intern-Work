<?php
include 'includes/connect.php';


	if($_SESSION['admin_sid']==session_id())
	{
		?>
<!DOCTYPE html>
<html lang="en">

<head>
  <style>

  

  .lb{
    color: #000;
    font-weight: 500;

  }
    
    #combo1{
        width:20%;
        margin-top:-70px;
        float: right;
        position: relative;
        margin-right: 150px;
        
    }

    #combo2{
        width:20%;
        margin-top:-60px;
        float: right;
        position: relative;
        margin-right: 50px;
        
    }
  .user-details{
    margin-bottom:-10px;
  }

  .waves-effect{
    background: #fff;

  }

  .waves-effect:hover{
    background: #e9e9ea;
  }

    #main{
  background: rgba(243,190,210,0.7) url(restaurant.jpeg) no-repeat center center;
  background-size: cover;
  background-blend-mode: screen;

}
tbody{
  opacity:0.8;
}
#tt2{
  height:193px;
  border-radius: 6px;
    border: 3px solid #ccc;
    
  width:auto;
  margin-right:-50px;
  transition: all 0.5s;
}

#tt2:hover{
  height: 197px;
  width: auto;
  box-shadow: 4px 4px 7px #444;
}

#breadcrumbs-wrapper{
  padding-bottom: 20px;
  background: #bc4545;
  color: #900;
}

#breadcrumbs-title{
  color: #fff;
}

#strip{
  background: #a82128;
  height: 6px;
  width: 100%;
}

#u-details{
  background: url(burger.jpeg) no-repeat center center;
  background-size: cover;
}

#menus{
  background: #fff;
}

.bold{
  background: #fff;
}

.bold:hover{
  background: #fff;
}

.active{
  background: #fff;
}

li:hover{
background:none;
}
#slide-out{
  background: url(sidebar.jpg) no-repeat center center;
  background-size: cover;
}

  </style>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="msapplication-tap-highlight" content="no">
  <title>Food Menu</title>


  <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">
  <link rel="apple-touch-icon-precomposed" href="images/favicon/apple-touch-icon-152x152.png">
  <meta name="msapplication-TileColor" content="#00bcd4">
  <meta name="msapplication-TileImage" content="images/favicon/mstile-144x144.png">


  <link href="css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="css/style.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="css/custom/custom.min.css" type="text/css" rel="stylesheet" media="screen,projection">

  <link href="js/plugins/perfect-scrollbar/perfect-scrollbar.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="js/plugins/data-tables/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  
     <style type="text/css">
   #sel1{
    }

   #image {
    height: 25px;
    width: auto;
    background: none;
    border: none;
    color: #a03030;
    font-size: 12px;
    display: block;
    border-radius: 6px;
    outline: none;
    position: relative;
    }


  .input-field div.error{
    position: relative;
    top: -1rem;
    left: 0rem;
    font-size: 0.8rem;
    color:#FF4081;
    -webkit-transform: translateY(0%);
    -ms-transform: translateY(0%);
    -o-transform: translateY(0%);
    transform: translateY(0%);
  }
  .input-field label.active{
      width:100%;
  }
  .left-alert input[type=text] + label:after, 
  .left-alert input[type=password] + label:after, 
  .left-alert input[type=email] + label:after, 
  .left-alert input[type=url] + label:after, 
  .left-alert input[type=time] + label:after,
  .left-alert input[type=date] + label:after, 
  .left-alert input[type=datetime-local] + label:after, 
  .left-alert input[type=tel] + label:after, 
  .left-alert input[type=number] + label:after, 
  .left-alert input[type=search] + label:after, 
  .left-alert textarea.materialize-textarea + label:after{
      left:0px;
  }
  .right-alert input[type=text] + label:after, 
  .right-alert input[type=password] + label:after, 
  .right-alert input[type=email] + label:after, 
  .right-alert input[type=url] + label:after, 
  .right-alert input[type=time] + label:after,
  .right-alert input[type=date] + label:after, 
  .right-alert input[type=datetime-local] + label:after, 
  .right-alert input[type=tel] + label:after, 
  .right-alert input[type=number] + label:after, 
  .right-alert input[type=search] + label:after, 
  .right-alert textarea.materialize-textarea + label:after{
      right:70px;
  }
  .middle{
    margin-left:30%;
}
#input1{
    height:20px;
    width:250px;
}

#adjust{
    position: relative;
    margin-top: -20px;

}

#sitem{
    position: relative;
    left: 0px;
    margin-top:15px;
    height:40px;
    display: inline-block;
    padding: 3px 10px;
    font-weight: 600;
    font-size: 20px;
    letter-spacing: 1px;
    color: #fff;
    border: 3px solid #a82128;
    border-radius: 0px 6px 6px 0px;
    outline: none;
    background: #a82128;
    transition: 0.7s ease-out;
}
  </style> 
</head>

<body>
  <!-- Start Page Loading -->
  <div id="loader-wrapper">
      <div id="loader"></div>        
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
  </div>
  <!-- End Page Loading -->

 
  <!-- START HEADER -->
  <header id="header" class="page-topbar">
        <!-- start header nav-->
        <div class="navbar-fixed">
            <nav class="navbar-color">
                <div class="nav-wrapper">
                    <ul class="left">                      
                      <li><h1 class="logo-wrapper"><a href="food.html" class="brand-logo darken-1"><img src="images/logo.png" alt="logo"></a> <span class="logo-text">Logo</span></h1></li>
                    </ul>
                    
                    <ul class="middle">
                        <form action="s3.php" method="post">
                        <li><input type="text" placeholder="search here" name="search" id="input1">
                        <button type="submit" id="sitem"><div id="adjust">Search</div></button></li>
                        </form>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- end header nav-->
  </header>
  <!-- END HEADER -->

 
  <!-- START MAIN -->
  <div id="main">
    <!-- START WRAPPER -->
    <div class="wrapper">

      <!-- START LEFT SIDEBAR NAV-->
      <aside id="left-sidebar-nav">
        <ul id="slide-out" class="side-nav fixed leftside-navigation">
            <li class="user-details cyan darken-2">
            <div class="row">
                <div class="col col s4 m4 l4">
                    <img src="images/avatar.jpg" alt="" class="circle responsive-img valign profile-image">
                </div>
				 <div class="col col s8 m8 l8">
                    <ul id="profile-dropdown" class="dropdown-content">
                        <li><a href="routers/logout.php"><i class="mdi-hardware-keyboard-tab"></i> Logout</a>
                        </li>
                    </ul>
                </div>
                <div class="col col s8 m8 l8">
                    <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown"><?php echo $name;?> <i class="mdi-navigation-arrow-drop-down right"></i></a>
                    <p class="user-roal"><?php echo $role;?></p>
                </div>
            </div>
            </li>
            <li class="bold active"><a href="index.php" class="waves-effect waves-cyan"><i class="mdi-editor-border-color"></i> Food Menu</a>
            </li>
                <li class="no-padding">
                    <ul class="collapsible collapsible-accordion">
                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="mdi-editor-insert-invitation"></i> Orders</a>
                            <div class="collapsible-body">
                                <ul>
								<li><a href="all-orders.php">All Orders</a>
                                </li>
								<?php
									$sql = mysqli_query($con, "SELECT DISTINCT status FROM orders;");
									while($row = mysqli_fetch_array($sql)){
                                    echo '<li><a href="all-orders.php?status='.$row['status'].'">'.$row['status'].'</a>
                                    </li>';
									}
									?>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>
                 <li class="no-padding">
                    <ul class="collapsible collapsible-accordion">
                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="mdi-action-question-answer"></i> Tickets</a>
                            <div class="collapsible-body">
                                <ul>
								<li><a href="all-tickets.php">All Tickets</a>
                                </li>
								<?php
									$sql = mysqli_query($con, "SELECT DISTINCT status FROM tickets;");
									while($row = mysqli_fetch_array($sql)){
                                    echo '<li><a href="all-tickets.php?status='.$row['status'].'">'.$row['status'].'</a>
                                    </li>';
									}
									?>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>			
            <li class="bold"><a href="users.php" class="waves-effect waves-cyan"><i class="mdi-social-person"></i> Users</a>
            </li>				
        </ul>
        <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only cyan"><i class="mdi-navigation-menu"></i></a>
        </aside>
      <!-- END LEFT SIDEBAR NAV-->

      <!-- START CONTENT -->
      <section id="content">

        <!--breadcrumbs start-->
        <div id="breadcrumbs-wrapper">
          <div class="container">
            <div class="row">
              <div class="col s12 m12 l12">
                <h5 class="breadcrumbs-title">Food Menu</h5>
              </div>
            </div>
          </div>
        </div>
        <!--breadcrumbs end-->


        <!--start container-->
        <div class="container" id="bgimg">
          <p class="caption">Add, Edit or Remove Menu Items.</p>
          
    <p class="caption">Filter
    <form action="s4.php" method="post">
            <div id="combo1">
                <select id="sel1"  name="Search11">  
                    <option value="Breakfast">Breakfast</option>
                    <option value="Lunch">Lunch</option>
                    <option value="Dinner">Dinner</option>
                    <option value="Non-Veg">Non-Veg</option>
                    <option value="FastFood">FastFood</option>
                    <option value="Tea">Tea</option>
                    <option value="Drinks">Drinks</option>
                </select>
              </div>
            <div id="combo2">
                <button class="btn cyan waves-effect waves-light right" type="submit">GO</button>
            </div>
        </form>
    </p>
          <div class="divider"></div>
		  <form class="formValidate" id="formValidate" method="post" action="routers/menu-router.php" novalidate="novalidate">
            <div class="row">
              <div class="col s12 m4 l3">
                <h4 class="header">Order Food</h4>
              </div>
              <div>
				<table id="data-table-admin" class="responsive-table display" cellspacing="0">
                    <thead>
                      <tr>
                        <th>Food Picture</th>
                        <th>Name</th>
                        <th>Item Price/Piece</th>
                        <th>Available</th>
                        <th>Category</th>
                      </tr>
                    </thead>

                    <tbody id="tbody">
				<?php
				$result = mysqli_query($con, "SELECT * FROM items where flag = 0;");    
				while($row = mysqli_fetch_array($result))
				{
          echo '<tr><td><img src="routers/'.$row["imagepath"].'" id="tt2"></td>';
          echo '<td><div class="input-field col s12"><label for="'.$row["id"].'_name">Name</label>';
					echo '<input value="'.$row["name"].'" id="'.$row["id"].'_name" name="'.$row['id'].'_name" type="text" data-error=".errorTxt'.$row["id"].'"><div class="errorTxt'.$row["id"].'"></div></td>';					
					echo '<td><div class="input-field col s12 "><label for="'.$row["id"].'_price">Price</label>';
          echo '<input value="'.$row["price"].'" id="'.$row["id"].'_price" name="'.$row['id'].'_price" type="text" data-error=".errorTxt'.$row["id"].'"><div class="errorTxt'.$row["id"].'"></div></td>';                  
					echo '<td>';
					if($row['deleted'] == 0){
						$text1 = 'selected';
						$text2 = '';
					}
					else{
						$text1 = '';
						$text2 = 'selected';						
          }
					if($row['category'] == "Breakfast"){
						$cat1 = 'selected';
            $cat2 = '';
            $cat3 = '';
            $cat4 = '';
            $cat5 = '';
            $cat6 = '';
            $cat7 = '';
					}
					else{
            if($row['category'] == "Lunch"){
              $cat1 = '';
              $cat2 = 'selected';
              $cat3 = '';
              $cat4 = '';
              $cat5 = '';
              $cat6 = '';
              $cat7 = '';
            }
            else {
              if($row['category'] == "Dinner"){
              $cat1 = '';
              $cat2 = '';
              $cat3 = 'selected';
              $cat4 = '';
              $cat5 = '';
              $cat6 = '';
              $cat7 = '';
              }
              else {
                if($row['category'] == "Non-Veg"){
                $cat1 = '';
                $cat2 = '';
                $cat3 = '';
                $cat4 = 'selected';
                $cat5 = '';
                $cat6 = '';
                $cat7 = '';
                }
                else {
                  if($row['category'] == "FastFood"){
                  $cat1 = '';
                  $cat2 = '';
                  $cat3 = '';
                  $cat4 = '';
                  $cat5 = 'selected';
                  $cat6 = '';
                  $cat7 = '';
                  }
                  else {
                    if($row['category'] == "Tea"){
                    $cat1 = '';
                    $cat2 = '';
                    $cat3 = '';
                    $cat4 = '';
                    $cat5 = '';
                    $cat6 = 'selected';
                    $cat7 = '';
                    }
                    else {
                      $cat1 = '';
                      $cat2 = '';
                      $cat3 = '';
                      $cat4 = '';
                      $cat5 = '';
                      $cat6 = '';
                      $cat7 = 'selected';
                    }
                  }
                }
              }
            }
          }				
					echo '<select name="'.$row['id'].'_hide">
                      <option value="1"'.$text1.'>Available</option>
                      <option value="2"'.$text2.'>Not Available</option>
                    </select></td>';
          echo '<td>';
					echo '<select name="'.$row['id'].'_hire">
                      <option value="1"'.$cat1.'>Breakfast</option>
                      <option value="2"'.$cat2.'>Lunch</option>
                      <option value="3"'.$cat3.'>Dinner</option>
                      <option value="4"'.$cat4.'>Non-Veg</option>
                      <option value="5"'.$cat5.'>FastFood</option>
                      <option value="6"'.$cat6.'>Tea</option>
                      <option value="7"'.$cat7.'>Drinks</option>
                    </select></td></tr>';
        }
        mysqli_query($con,"UPDATE items SET flag = 0;");
				
				?>
                    </tbody>
</table>
              </div>
			  <div class="input-field col s12">
                              <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Modify
                                <i class="mdi-content-send right"></i>
                              </button>
                            </div>
            </div>
			</form>
		  <form class="formValidate" id="formValidate1" method="post" action="routers/add-item.php" novalidate="novalidate" enctype="multipart/form-data">
            <div class="row">
              <div class="col s12 m4 l3">
                <h4 class="header">Add Item</h4>
              </div>
              <div>
<table>
                    <thead>
                      <tr>
                        <th data-field="id">Name</th>
                        <th data-field="name">Item Price/Piece</th>
                        <th data-field="img">Upload Image</th>
                      </tr>
                    </thead>

                    <tbody>
				<?php
					echo '<tr><td><div class="input-field col s12"><label for="name" class="lb">Name</label>';
					echo '<input id="name" name="name1" type="text" data-error=".errorTxt01"><div class="errorTxt01"></div></td>';					
					echo '<td><div class="input-field col s12 "><label for="price" class="lb">Price</label>';
          echo '<input id="price" name="price" type="text" data-error=".errorTxt02"><div class="errorTxt02"></div></td>';
          
          echo '<td><div class="input-field col s12 " id="image">';
          echo '<input type="file" id="files" name="fies"></div></td>';
					echo '</tr>';
				?>
                    </tbody>
</table>
              </div>
			  <div class="input-field col s12">
                              <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Add
                                <i class="mdi-content-send right"></i>
                              </button>
                            </div>
            </div>
			</form>			
            <div class="divider"></div>
            
          </div>
        </div>
        </div>
        <!--end container-->

      </section>
      <!-- END CONTENT -->
    </div>
    <!-- END WRAPPER -->





  <!-- START FOOTER -->
  <footer class="page-footer">
    <div class="footer-copyright">
      <div class="container">
        <span></span>
        <span class="right"></span>
        </div>
    </div>
  </footer>
    <!-- END FOOTER -->



<!--    Scripts-->
    
    
    <!-- jQuery Library -->
    <script type="text/javascript" src="js/plugins/jquery-1.11.2.min.js"></script>    
    <!--angularjs-->
    <script type="text/javascript" src="js/plugins/angular.min.js"></script>
    <!--materialize js-->
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <!--scrollbar-->
    <script type="text/javascript" src="js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <!-- data-tables -->
    <script type="text/javascript" src="js/plugins/data-tables/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/data-tables/data-tables-script.js"></script>
    
    <script type="text/javascript" src="js/plugins/jquery-validation/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/plugins/jquery-validation/additional-methods.min.js"></script>
    
    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="js/plugins.min.js"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="js/custom-script.js"></script>
	    <script type="text/javascript">
    $("#formValidate").validate({
        rules: {
			<?php
			$result = mysqli_query($con, "SELECT * FROM items");
			while($row = mysqli_fetch_array($result))
			{
				echo $row["id"].'_name:{
				required: true,
				minlength: 5,
				maxlength: 20 
				},';
				echo $row["id"].'_price:{
				required: true,	
				min: 0
				},';				
			}
		echo '},';
		?>
        messages: {
			<?php
			$result = mysqli_query($con, "SELECT * FROM items");
			while($row = mysqli_fetch_array($result))
			{  
				echo $row["id"].'_name:{
				required: "Ener item name",
				minlength: "Minimum length is 5 characters",
				maxlength: "Maximum length is 20 characters"
				},';
				echo $row["id"].'_price:{
				required: "Ener price of item",
				min: "Minimum item price is Rs. 0"
				},';				
			}
		echo '},';
		?>
        errorElement : 'div',
        errorPlacement: function(error, element) {
          var placement = $(element).data('error');
          if (placement) {
            $(placement).append(error)
          } else {
            error.insertAfter(element);
          }
        }
     });
    </script>
    <script type="text/javascript">
    $("#formValidate1").validate({
        rules: {
		name: {
				required: true,
				minlength: 5
			},
		price: {
				required: true,
				min: 0
			},
	},
        messages: {
		name: {
				required: "Enter item name",
				minlength: "Minimum length is 5 characters"
			},
		 price: {
				required: "Enter item price",
				minlength: "Minimum item price is Rs.0"
			},
	},
		errorElement : 'div',
        errorPlacement: function(error, element) {
          var placement = $(element).data('error');
          if (placement) {
            $(placement).append(error)
          } else {
            error.insertAfter(element);
          }
        }
     });
    </script>
</body>

</html>
<?php
	}
	else
	{
		if($_SESSION['customer_sid']==session_id())
		{
			header("location:index.php");		
		}
		else{
			header("location:login.php");
		}
	}
?>