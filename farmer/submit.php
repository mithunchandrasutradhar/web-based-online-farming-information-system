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
	
	
	
	$sql="INSERT INTO user_register(name, idno, gender, age, address, contact_number, email, password)
	VALUES('$_POST[name]', '$_POST[idno]', '$_POST[gender]', '$_POST[age]', '$_POST[address]', '$_POST[contact_number]', '$_POST[email]', '$_POST[password]')";
	$result=mysql_query($sql,$conn);
	if(!$result)
	{
		die('Could not get data: '.mysql_error());
	}
	else
		echo "Registration Succesful\n";
		header("refresh:1; url=index.php");
	mysql_close($conn);
	?>