<?php
	mysql_connect('localhost','root','');
	mysql_select_db('farmar');
	
	$sql="DELETE FROM solution WHERE ID='$_GET[id]'";
	$records=mysql_query($sql);
	if(mysql_query($sql))
		header("refresh:1; url=index.php");
	else
		echo "Not Deleted";
?>