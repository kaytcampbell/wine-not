<?php
	include 'db.php';
	function getReviewsByWineId($db, $wine_id)
	{
		$stmt = $db->prepare('SELECT id, username, year, rating, description, DATE_FORMAT(timestamp, "%Y-%m-%dT%H:%i:%s.0Z") FROM review WHERE wine_id = ? ORDER BY timestamp');
		$stmt->bind_param('i', $wine_id);
		$stmt->execute();
		$stmt->bind_result($id, $username, $year, $rating, $description, $timestamp);
		while($stmt->fetch())
		{
			$review->id = $id;
			$review->username = $username;
			$review->year = $year;
			$review->rating = $rating;
			$review->description = $description;
			$review->timestamp = $timestamp;

			$reviews[] = $review;
		}
		echo json_encode($reviews);
	}
	function addReview($db, $review)
	{
		$stmt = $db->prepare('INSERT INTO review (wine_id, username, year, rating, description) VALUES (?, ?, ?, ?, ?);');
		$stmt->bind_param('isiis', $review->wine_id, $review->username, $review->year, $review->rating, $review->description);
		$stmt->execute();
		echo $stmt->insert_id;
	}
	function editReview($db, $review)
	{
		$stmt = $db->prepare('UPDATE review SET wine_id = ?, username = ?, year = ?, rating = ?, description = ? WHERE id = ? LIMIT 1;');
		$stmt->bind_param('isiisi', $review->wine_id, $review->username, $review->year, $review->rating, $review->description, $review->id);
		$stmt->execute();
		echo $stmt->affected_rows;
	}
	function deleteReview($db, $id)
	{
		$stmt = $db->prepare('DELETE FROM review WHERE id = ? LIMIT 1;');
		$stmt->bind_param('i', $id);
		$stmt->execute();
		echo $stmt->affected_rows;
	}

	// echo '<h1>TESTING</h1>';
	// $review->wine_id = 1;
	// $review->username = "Bob";
	// $review->year = 1999;
	// $review->rating = 5;
	// $review->description = "Edited for your pleasure.";
	// $review->id = 11;
	// echo 'Review:<pre>'; print_r($review); echo '</pre>'; 
	// addReview($db, $review);
	// editReview($db, $review);
	// deleteReview($db, $review->id);

	try
	{
		switch($_SERVER['REQUEST_METHOD'])
		{
			case 'GET':
				if(isset($_GET['wine']) && is_numeric($_GET['wine']))
				{
					getReviewsByWineId($db, $_GET['wine']);
				}
				break;
			case 'POST':
				$review = json_decode(file_get_contents("php://input"));
				addReview($db, $review);
				break;
			case 'PUT':
				$review = json_decode(file_get_contents("php://input"));
				editReviews($db, $review);
				break;
			case 'DELETE':
				$review = json_decode(file_get_contents("php://input"));
				deleteReview($db, $review->id);
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