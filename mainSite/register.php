<?php
	$host = "localhost"; 
	$user = "root";  
	$pass = "";
	$db = "poi_site_database"; 
	
	// Create connection.
	$conn = mysqli_connect($host, $user, $pass, $db);
	
	if (!$conn){
		echo "Problem in the connection".mysqli_connect_error() ;
	}else{
		
		if(isset($_POST['registerOk'])){
		
			// Get form's data + escape variables for security.
			$usernameTemp = mysqli_real_escape_string($conn , $_POST['username']);
			$passwordTemp = mysqli_real_escape_string($conn ,$_POST['password1']);
			$firstnameTemp = mysqli_real_escape_string($conn , $_POST['firstname']);
			$lastnameTemp = mysqli_real_escape_string($conn, $_POST['surname']);
			$mailTemp = mysqli_real_escape_string($conn, $_POST['email']);
			$hasvoteTemp = 0;
			
			mysqli_query($conn, "set character set utf8");
			
			// Create insert query.
			$insertQuery= "INSERT INTO register_users (username, password, firstname, lastname, mail, hasvote) VALUES ('$usernameTemp', '$passwordTemp', '$firstnameTemp', '$lastnameTemp', '$mailTemp', '$hasvoteTemp')";
				
			// Run query.
			if (mysqli_query($conn, $insertQuery)) {
				echo "New record created successfully in table register_users.";
				header('Location: welcomeUser.html');
			} else {
				echo "Error:<br>" . mysqli_error($conn);
			}
		}
	
	}

	mysqli_close($conn);
?>