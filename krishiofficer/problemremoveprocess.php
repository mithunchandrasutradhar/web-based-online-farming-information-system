<?php
	mysql_connect('localhost','root','');
	mysql_select_db('farmar');
	
	$sql="DELETE FROM problem WHERE ID='$_GET[id]'";
	$records=mysql_query($sql);
	if(mysql_query($sql))
		header("refresh:1; url=viewproblem.php");
	else
		echo "Not Deleted";
?>