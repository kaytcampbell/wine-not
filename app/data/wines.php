<?php
	include 'db.php';
	try	
	{
		$result = $db->query('SELECT w.id, w.vineyard, w.label, v.name AS varietal, c.name AS country, w.description 
			FROM wine w 
				JOIN country c ON c.id = w.country_id 
				JOIN varietal v ON v.id = w.varietal_id;');
		while($row = $result->fetch_assoc()) 
		{
			$wine['id'] = $row['id'];
			$wine['vineyard'] = $row['vineyard'];
			$wine['label'] = $row['label'];
			$wine['varietal'] = $row['varietal'];
			$wine['country'] = $row['country'];
			$wine['description'] = $row['description'];
			$wines[] = $wine;
		}
		$db->close();
		echo json_encode($wines);
	} 
	catch (Exception $e) 
	{
		http_response_code(500);
		echo 'Exception: ' . $e.getMessage();
		die();
	}
?>