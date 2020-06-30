<?php
	session_start();
	$host = "localhost"; 
	$user = "root";  
	$pass = "";
	$db = "poi_site_database"; 
	
	// Create connection.
	$conn = mysqli_connect($host, $user, $pass, $db);
	
	if (!$conn){
		echo "Problem in the connection".mysqli_connect_error() ;
	}else{
		
		if(isset($_POST['insertPOIOk'])){
		
			// Get form's data + escape variables for security.
			$nameTemp = mysqli_real_escape_string($conn , $_POST['name']);
			$textTemp = mysqli_real_escape_string($conn ,$_POST['description']);
		
			if($_POST['category']=="hotel"){ // Hotel.
				$category_idTemp=1;
			}else if($_POST['category']=="beach"){ // Beach.
				$category_idTemp=2;
			}else if($_POST['category']=="clubs"){ // Clubs
				$category_idTemp=3;
			}else{ // ($_POST['category']=="restaurant") Restaurant 
				$category_idTemp=4;
			}
			
			// Upload file to uploads folder.
			$target_dir = "uploads/";
			$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);			
			$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
			
			if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
				echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
			} else {
				echo "Sorry, there was an error uploading your file.";
			}
			
			// If type is photo then don't exist video, visa-versa.
			if($_POST['file_type']=="photo"){
				$photoTemp=$target_file;
				$videoTemp=NULL;
			}else{ // $_POST['file_type']=="video"
				$photoTemp=NULL;
				$videoTemp=$target_file;
			}
			
			$latTemp = mysqli_real_escape_string($conn , $_POST['lat']);
			$lngTemp = mysqli_real_escape_string($conn , $_POST['lng']);
			$likesTemp = 0;
			$usernameTemp =$_SESSION['login_user'] ;
			
			mysqli_query($conn, "set character set utf8");
			
			// Create insert Poi query.
			$insertPoiQuery= "INSERT INTO register_poi (poi_name, poi_text, poi_category_id, poi_photo, poi_video, poi_lat, poi_lng, poi_likes, username) VALUES ('$nameTemp', '$textTemp','$category_idTemp','$photoTemp', '$videoTemp', '$latTemp', '$lngTemp', '$likesTemp', '$usernameTemp')";
				
			// Run query.
			if (mysqli_query($conn, $insertPoiQuery)) {
				echo "New record created successfully in table register_users.";
				header('Location: searchPOI.html');
			} else {
				echo "Error:<br>" . mysqli_error($conn);
			}
		}
	
	}

	mysqli_close($conn);
?>