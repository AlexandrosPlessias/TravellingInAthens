<?php
	$host = "localhost"; 
	$user = "root";  
	$pass = "";
	$db = "poi_site_database"; 
	
	// Create connection.
	$conn = mysqli_connect($host, $user, $pass, $db);
	$redirectUrl= "index.html";
	
	if (!$conn){
		echo "Problem in the connection".mysqli_connect_error() ;
	}else{
			
		if(isset($_POST['signinOk'])){

			// Get form's data + escape variables for security.
			$usernameTemp = mysqli_real_escape_string($conn , $_POST['username']);
			$passwordTemp = mysqli_real_escape_string($conn ,$_POST['password']);
			
			// Create search query.
			$searchQuery= "SELECT * FROM register_users WHERE username='".$usernameTemp."' AND password='".$passwordTemp."'";
			$results = mysqli_query($conn, $searchQuery);
			
			// Run query.
			if ($results) {
															
				// If find one the user exist else don't exist.
				if (mysqli_num_rows($results) == 1){
					session_start();
					// Store Session Data
					$_SESSION['login_user']= $usernameTemp;  // Initializing Session with value of PHP Variable
					header("Location: ".$redirectUrl);
				}else{
					echo '<script type="application/javascript">alert("Username and password don\'t match"); window.location.href = "'.$redirectUrl.'";</script>';
				}
			}else {
				echo "Error:<br>" . mysqli_error($conn);
			}
		}
	
	}
	
	mysqli_close($conn);

?>