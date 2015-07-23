<?php
	include 'db.php';
	function selectById($db, $id)
	{
		$country = new stdClass();
		$stmt = $db->prepare('SELECT name, id FROM country WHERE id = ? LIMIT 1;');
		$stmt->bind_param('i', $id);
		$stmt->execute();
		$stmt->bind_result($country->name, $country->id);
		$stmt->fetch();
		echo json_encode($country);
		$stmt->free_result();
		$stmt->close();
	}
	function selectAll($db)
	{
		$stmt = $db->prepare('SELECT name, id FROM country;');
		$stmt->execute();
		$stmt->bind_result($name, $id);
		$countries = [];
		while($stmt->fetch())
		{
			$country = new stdClass();
			$country->name = $name;
			$country->id = $id;
			$countries[] = $country;
		}
		echo json_encode($countries);
		$stmt->free_result();
		$stmt->close();
	}
	function insert($db, $country)
	{
		var_dump($country);
		$stmt = $db->prepare('INSERT INTO country (name) VALUES (?);');
		$stmt->bind_param('s', $country->name);
		$stmt->execute();
		echo $stmt->insert_id;
		$stmt->free_result();
		$stmt->close();
	}
	function update($db, $id, $country)
	{
		$stmt = $db->prepare('UPDATE country SET name = ? WHERE id = ? LIMIT 1;');
		$stmt->bind_param('si', $country->name, $id);
		$stmt->execute();
		echo $stmt->affected_rows;
		$stmt->free_result();
		$stmt->close();
	}
	function delete($db, $id)
	{
		$stmt = $db->prepare('DELETE FROM country WHERE id = ? LIMIT 1;');
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