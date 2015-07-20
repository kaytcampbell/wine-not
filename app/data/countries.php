<?php
	include 'db.php';
	try	
	{
		$result = $db->query('SELECT * FROM country;');
		while($row = $result->fetch_assoc()) 
		{
			$country['id'] = $row['id'];
			$country['name'] = $row['name'];
			$countries[] = $country;
		}
		$db->close();
		echo json_encode($countries);
	} 
	catch (Exception $e) 
	{
		http_response_code(500);
		echo 'Exception: ' . $e.getMessage();
		die();
	}
?>