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
	
	
	
	$sql="INSERT INTO officer_register(name, idno,  email, password)
	VALUES('$_POST[name]', '$_POST[idno]', '$_POST[email]', '$_POST[password]')";
	$result=mysql_query($sql,$conn);
	if(!$result)
	{
		die('Could not get data: '.mysql_error());
	}
	else
		echo "Registration Succesful\n";
	mysql_close($conn);
	?>