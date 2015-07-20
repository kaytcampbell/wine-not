<?php
	include 'db.php';
	try	
	{
		$result = $db->query('SELECT * FROM varietal;');
		while($row = $result->fetch_assoc()) 
		{
			$varietal['id'] = $row['id'];
			$varietal['name'] = $row['name'];
			$varietal['color'] = $row['color'];
			$varietal['blend'] = $row['blend'];
			$varietals[] = $varietal;
		}
		$db->close();
		echo json_encode($varietals);
	} 
	catch (Exception $e) 
	{
		http_response_code(500);
		echo 'Exception: ' . $e.getMessage();
		die();
	}
?>