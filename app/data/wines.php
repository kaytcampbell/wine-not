<?php
	include 'db.php';
	function selectById($db, $id)
	{
		$wine = new stdClass();
		$stmt = $db->prepare(
			'SELECT w.id, 
				w.vineyard, 
				w.label, 
				v.name AS varietal, 
				c.name AS country, 
				w.description 
			FROM wine w 
				JOIN country c ON c.id = w.country_id 
				JOIN varietal v ON v.id = w.varietal_id 
			WHERE w.id = ? LIMIT 1;');
		$stmt->bind_param('i', $id);
		$stmt->execute();
		$stmt->bind_result($wine->id, $wine->vineyard, $wine->label, $wine->varietal, $wine->country, $wine->description);
		$stmt->fetch();
		echo json_encode($wine);
		$stmt->free_result();
		$stmt->close();
	}
	function selectAll($db)
	{
		$stmt = $db->prepare(
			'SELECT w.id, 
				w.vineyard, 
				w.label, 
				v.name AS varietal, 
				c.name AS country, 
				w.description 
			FROM wine w 
				JOIN country c ON c.id = w.country_id 
				JOIN varietal v ON v.id = w.varietal_id
			ORDER BY w.id;');
		$stmt->execute();
		$stmt->bind_result($id, $vineyard, $label, $varietal, $country, $description);
		$wines = [];
		while($stmt->fetch())
		{
			$wine = new stdClass();
			$wine->id = $id;
			$wine->vineyard = $vineyard;
			$wine->label = $label;
			$wine->varietal = $varietal;
			$wine->country = $country;
			$wine->description = $description;
			$wines[] = $wine;
		}
		echo json_encode($wines);
		$stmt->free_result();
		$stmt->close();
	}
	function insert($db, $wine)
	{
		var_dump($wine);
		$stmt = $db->prepare('INSERT INTO wine (vineyard, label, varietal_id, country_id, description) VALUES (?, ?, ?, ?, ?);');
		$stmt->bind_param('ssiis', $wine->vineyard, $wine->label, $wine->varietal_id, $wine->country_id, $wine->description);
		$stmt->execute();
		echo $stmt->insert_id;
		$stmt->free_result();
		$stmt->close();
	}
	function update($db, $id, $wine)
	{
		$stmt = $db->prepare('UPDATE wine SET varietal = ?, label = ?, varietal_id = ?, country_id = ?, description = ? WHERE id = ? LIMIT 1;');
		$stmt->bind_param('ssiisi', $wine->vineyard, $wine->label, $wine->varietal_id, $wine->country_id, $wine->description, $id);
		$stmt->execute();
		echo $stmt->affected_rows;
		$stmt->free_result();
		$stmt->close();
	}
	function delete($db, $id)
	{
		$stmt = $db->prepare('DELETE FROM wine WHERE id = ? LIMIT 1;');
		$stmt->bind_param('i', $id);
		$stmt->execute();
		echo $stmt->affected_rows;
		$stmt->free_result();
		$stmt->close();
	}

	try 
	{
		switch($_SERVER['REQUEST_METHOD'])
		{
			case 'GET':
				if(isset($_GET['id']))
				{
					selectById($db, $_GET['id']);
				}
				else
				{
					selectAll($db);
				}
				break;
			case 'POST':
				$data = json_decode(file_get_contents("php://input"));
				insert($db, $data);
				break;
			case 'PUT':
				if(isset($_GET['id']))
				{
					$data = json_decode(file_get_contents("php://input"));
					update($db, $_GET['id'], $data);
				}
				break;
			case 'DELETE':
				if(isset($_GET['id']))
				{
					delete($db, $_GET['id']);
				}
				break;
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