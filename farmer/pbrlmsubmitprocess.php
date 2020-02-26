<?php
$host='localhost';
	$user='root';
	$pass='';
	$conn=mysql_connect($host, $user, $pass);
	if(!$conn)
	{
		die('Could not connect:'.mysql_error());
	}
	
	mysql_select_db('farmar');
	mysql_set_charset('utf8',$conn);
	
	
	
		if(isset($_POST["upload"]))
		{
			$pname= rand(1000,10000)."-".$_FILES["file"]["name"];
			$tname=$_POST["file"]["tmp_name"];
			$text=$_POST['text'];
			$email=$_POST['email'];
			
			$uploads_dir='/images';
				move_uploaded_file($tname,$uploads_dir.'/'.$pname);
				$sql="INSERT INTO problem(file,text,email) VALUES('$tname','$text','$email')";
				if(mysql_query($conn,$sql)){
					echo "File Sucessfully uploaded";
				}
				else{
					echo "Error";
				}
		}
?>

