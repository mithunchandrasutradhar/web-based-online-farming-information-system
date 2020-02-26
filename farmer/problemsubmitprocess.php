<?php
  // Create database connection
  $db = mysqli_connect("localhost", "root", "", "farmar");
	mysqli_set_charset('utf8',$db);
  // Initialize message variable
  $msg = "";

  // If upload button is clicked ...
  if (isset($_POST['upload'])) {
  	// Get image name
  	$file = $_FILES['file']['name'];
	$text=$_POST['text'];
	$email=$_POST['email'];
  	// Get text
  	$image_text = mysqli_real_escape_string($db, $_POST['text']);

  	// image file directory
  	$target = "images/".basename($file);

  	$sql = "INSERT INTO problem (file, text, email) VALUES ('$file', '$text', '$email')";
  	// execute query
  	mysqli_query($db, $sql);

  	if (move_uploaded_file($_FILES['file']['tmp_name'], $target)) {
  		$msg = "Image uploaded successfully";
		header('location:index.php');
  	}else{
  		$msg = "Failed to upload image";
  	}
  }
  $result = mysqli_query($db, "SELECT * FROM problem");
?>
