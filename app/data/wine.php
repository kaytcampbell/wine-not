<?php
	include 'db.php';
	try	
	{
		$id = isset($_GET['id']) && is_numeric($_GET['id']) ? $_GET['id'] : null;
		if (isset($id))
		{
			$stmt = $db->prepare('SELECT w.vineyard, w.label, v.name AS varietal, c.name AS country, w.description 
				FROM wine w 
					JOIN country c ON c.id = w.country_id 
					JOIN varietal v ON v.id = w.varietal_id
				WHERE w.id = ?
				LIMIT 1');
			$stmt->bind_param('i', $id);
			$stmt->execute();
			$stmt->bind_result($vineyard, $label, $varietal, $country, $description);
			$stmt->fetch();
			
			$wine['id'] = $id;
			$wine['vineyard'] = $vineyard;
			$wine['label'] = $label;
			$wine['varietal'] = $varietal;
			$wine['country'] = $country;
			$wine['description'] = $description;

			echo json_encode($wine);
		}

		$db->close();
	} 
	catch (Exception $e) 
	{
		http_response_code(500);
		echo 'Exception: ' . $e.getMessage();
		die();
	}
?>