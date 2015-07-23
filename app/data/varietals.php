<?php
	include 'db.php';
	function selectById($db, $id)
	{
		$varietal = new stdClass();
		$stmt = $db->prepare('SELECT name, color, isBlend, id FROM varietal WHERE id = ? LIMIT 1;');
		$stmt->bind_param('i', $id);
		$stmt->execute();
		$stmt->bind_result($varietal->name, $varietal->color, $varietal->isBlend, $varietal->id);
		$stmt->fetch();
		echo json_encode($varietal);
		$stmt->free_result();
		$stmt->close();
	}
	function selectByValue($db, $p_name, $p_color, $p_isBlend)
	{
		$stmt = $db->prepare('SELECT name, color, isBlend, id FROM varietal 
			WHERE UPPER(name) LIKE UPPER(?)
				AND UPPER(color) LIKE UPPER(?)
				AND (isBlend = ? OR isBlend LIKE ?);');
		$stmt->bind_param('ssss', $p_name, $p_color, $p_isBlend, $p_isBlend);
		$stmt->execute();
		$stmt->bind_result($name, $color, $isBlend, $id);
		$varietals = [];
		while($stmt->fetch())
		{
			$varietal = new stdClass();
			$varietal->name = $name;
			$varietal->color = $color;
			$varietal->isBlend = $isBlend;
			$varietal->id = $id;
			$varietals[] = $varietal;
		}
		echo json_encode($varietals);
		$stmt->free_result();
		$stmt->close();
	}
	function selectAll($db)
	{
		$stmt = $db->prepare('SELECT name, color, isBlend, id FROM varietal;');
		$stmt->execute();
		$stmt->bind_result($name, $color, $isBlend, $id);
		$varietals = [];
		while($stmt->fetch())
		{
			$varietal = new stdClass();
			$varietal->name = $name;
			$varietal->color = $color;
			$varietal->isBlend = $isBlend;
			$varietal->id = $id;
			$varietals[] = $varietal;
		}
		echo json_encode($varietals);
		$stmt->free_result();
		$stmt->close();
	}
	function insert($db, $varietal)
	{
		var_dump($varietal);
		$stmt = $db->prepare('INSERT INTO varietal (name, color, isBlend) VALUES (?, ?, ?);');
		$stmt->bind_param('ssi', $varietal->name, $varietal->color, $varietal->isBlend);
		$stmt->execute();
		echo $stmt->insert_id;
		$stmt->free_result();
		$stmt->close();
	}
	function update($db, $id, $varietal)
	{
		$stmt = $db->prepare('UPDATE varietal SET name = ?, color = ?, isBlend = ? WHERE id = ? LIMIT 1;');
		$stmt->bind_param('ssii', $varietal->name, $varietal->color, $varietal->isBlend, $id);
		$stmt->execute();
		echo $stmt->affected_rows;
		$stmt->free_result();
		$stmt->close();
	}
	function delete($db, $id)
	{
		$stmt = $db->prepare('DELETE FROM varietal WHERE id = ? LIMIT 1;');
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
				else if(isset($_GET['name']) || isset($_GET['color']) || isset($_GET['blend']) || isset($_GET['blends']))
				{
					//search if name contains search string
					$name = isset($_GET['name']) ? '%' . $_GET['name'] . '%' : '%';

					//check if color is red, white, or champagne, pick first letter of search string
					$color = isset($_GET['color']) ? substr($_GET['color'],0,1) : '%';

					//check for blend and blends, check if it's truthy (1, yes, true), then assign a BIT value or a wildcard (%)
					$blendTrueFalse 	= isset($_GET['blend']) 	? filter_var($_GET['blend'], FILTER_VALIDATE_BOOLEAN) 	: null;
					$blendTrueFalse 	= isset($_GET['blends']) 	? filter_var($_GET['blends'], FILTER_VALIDATE_BOOLEAN) 	: $blendTrueFalse;
					$isBlend = isset($blendTrueFalse) ? ($blendTrueFalse ? 1 : 0) : '%';

					echo "NAME: $name COLOR: $color ISBLEND: $isBlend";
					selectByValue($db, $name, $color, $isBlend);
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