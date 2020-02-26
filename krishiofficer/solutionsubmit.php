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
	
	
	
	$sql="INSERT INTO solution(solution, email)
	VALUES('$_POST[solution]', '$_POST[email]')";
	$result=mysql_query($sql,$conn);
	if(!$result)
	{
		die('Could not get data: '.mysql_error());
	}
	else
		echo "Submitted\n";
		header("refresh:1; url=viewproblem.php");
	mysql_close($conn);
	?>