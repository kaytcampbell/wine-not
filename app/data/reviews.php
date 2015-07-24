<?php
	include 'db.php';
	function selectByWineId($db, $wine_id)
	{
		$stmt = $db->prepare('SELECT id, username, year, rating, description, DATE_FORMAT(timestamp, "%Y-%m-%dT%H:%i:%s.0Z") FROM review WHERE wine_id = ? ORDER BY timestamp');
		$stmt->bind_param('i', $wine_id);
		$stmt->execute();
		$stmt->bind_result($id, $username, $year, $rating, $description, $timestamp);
		while($stmt->fetch())
		{
			$review = new stdClass();
			$review->id = $id;
			$review->username = $username;
			$review->year = $year;
			$review->rating = $rating;
			$review->description = $description;
			$review->timestamp = $timestamp;

			$reviews[] = $review;
		}
		echo json_encode($reviews);
		$stmt->free_result();
		$stmt->close();
	}
	function insert($db, $review)
	{
		$stmt = $db->prepare('INSERT INTO review (wine_id, username, year, rating, description) VALUES (?, ?, ?, ?, ?);');
		$stmt->bind_param('isiis', $review->wine_id, $review->username, $review->year, $review->rating, $review->description);
		$stmt->execute();
		echo $stmt->insert_id;
		$stmt->free_result();
		$stmt->close();
	}
	function update($db, $id, $review)
	{
		$stmt = $db->prepare('UPDATE review SET wine_id = ?, username = ?, year = ?, rating = ?, description = ? WHERE id = ? LIMIT 1;');
		$stmt->bind_param('isiisi', $review->wine_id, $review->username, $review->year, $review->rating, $review->description, $id);
		$stmt->execute();
		echo $stmt->affected_rows;
		$stmt->free_result();
		$stmt->close();
	}
	function delete($db, $id)
	{
		$stmt = $db->prepare('DELETE FROM review WHERE id = ? LIMIT 1;');
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
				if(isset($_GET['wine']))
				{
					selectByWineId($db, $_GET['wine']);
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
					update($db, $data);
				}
				break;
			case 'DELETE':
				if(isset($_GET['id']))
				{
					delete($db, $data->id);
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