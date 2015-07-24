<?php
	//mysqli_report(MYSQLI_REPORT_STRICT);
	//testing information
	$mysql_host = 'localhost';
	$mysql_database = 'winenot';
	$mysql_user = 'root';
	$mysql_password = '';		//WampServer
	$mysql_password = 'root';	//MAMP

	//connect to db
	//* DEBUG */ echo '<p>Attempting to connect...</p>';
	try 
	{
		$db = new mysqli($mysql_host, $mysql_user, $mysql_password, $mysql_database);
		$db->set_charset('utf8mb4');  //needed because there are weird characters in the database
		//* DEBUG */ echo '<p>Connected.</p>';
	} 
	catch (Exception $e) 
	{
		http_response_code(500);
		echo 'Exception: ' . $e.getMessage();
		die();
	}
?>