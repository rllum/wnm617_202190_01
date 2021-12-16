<?php

function makeConn() {
	include "auth.php";
	try {
		$conn = new PDO(...Auth());
		$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		return $conn;
	} catch(PDOException $e) {
		die('{"error":"'.$e->getMessage().'"}');
	}
}





/* $r = PDO result*/

function fetchAll($r) {
	$a = [];
	while($row = $r->fetch(\PDO::FETCH_OBJ)) $a[] = $row;
	return $a;	
}

/* $c = connection 
$ps = prepared statment
$p = parameters */
function makeQuery($c,$ps,$p,$makeResults=true) {
	try {
		if(count($p)) {
			$stmt = $c->prepare($ps);
			$stmt->execute($p);		
		} else {

			$stmt = $c->query($ps);
		}

	

		$r = $makeResults ? fetchAll($stmt) : [];

		return [
			// "statment"=>$ps,
			// "parameters"=>$p,
			"result"=>$r
		];
	} catch(PDOException $e) {
		return ["error"=>"Query Failed: ".$e->getMessage()];
	}
}

function makeUpload($file,$folder) {
	$filename = microtime(true)."_".$_FILES[$file]['name'];

	if(@move_uploaded_file(
		$_FILES[$file]['tmp_name'],
		$folder.$filename
	)) return ['result'=>$filename];

		else return [
			"error"=>"File Upload Failed",
			"_FILES"=>$_FILES,
			"filename"=>$filename
		];
}


function makeStatment($data) {
	try{
		$c = makeConn();
		$t = @$data->type;
		$p = @$data->params;

		switch($t) {
		// case "users_all":
		// 	return makeQuery($c,"SELECT * FROM `track_users`",$p);

		// case "dogs_all":
		// 	return makeQuery($c,"SELECT * FROM `track_dogs`",$p);

		// case "locations_all":
		// 	return makeQuery($c,"SELECT * FROM `track_locations`",$p);


		//CRUD

		/* READ */

		case "user_by_id":
			return makeQuery($c,"SELECT id,username,name,email,img FROM `track_users` WHERE `id`=?",$p);

		case "dog_by_id":
			return makeQuery($c,"SELECT * FROM `track_dogs` WHERE `id`=?",$p);

		case "location_by_id":
			return makeQuery($c,"SELECT * FROM `track_locations` WHERE `id`=?",$p);

		case "dogs_by_user_id":
			return makeQuery($c,"SELECT * FROM `track_dogs` WHERE `user_id`=?",$p);

		case "locations_by_dog_id":
			return makeQuery($c,"SELECT * FROM `track_locations` WHERE `dog_id`=?",$p);

		case "check_signin":
			return makeQuery($c,"SELECT id FROM `track_users` WHERE `username`= ? AND `password`=md5(?)",$p);

		case "recent_dog_locations":
			return makeQuery($c,"SELECT * 
				FROM `track_dogs` a
				JOIN (
				SELECT lg.*
				FROM `track_locations` lg
				WHERE lg.id = (
					SELECT lt.id
						FROM `track_locations` lt
						WHERE lt.dog_id = lg.dog_id
						ORDER BY lt.date_create DESC
						LIMIT 1
					)
				) l
				ON a.id=l.dog_id
				WHERE a.user_id=?
				ORDER BY l.dog_id, l.date_create DESC 
				",$p);

		case "search_dogs":
			$p = ["%$p[0]%",$p[1]];
			return makeQuery($c,"SELECT *
				FROM `track_dogs`
				WHERE
				`name` LIKE ? AND
				`user_id` = ?
			",$p);



		/* CREATE */

		case "insert_user":
			$r = makeQuery($c,"SELECT id FROM `track_users` WHERE `username` = ? OR `email` = ?",$p);
			// if(count($r['result'])) return ["error"=>"Username or Email already exists"];

			$r = makeQuery($c, "INSERT INTO 
				`track_users`
				(`username`, `email`, `password`, `img`, `date_create`)
				VALUES 
				(?,?, md5(?),'http://via.placeholder.com/400/?text=USER', NOW())
				",$p,false);
			return ["id" => $c->lastInsertId()];


		case "insert_dog":
			$r = makeQuery($c, "INSERT INTO 
				`track_dogs`
				(`user_id`, `name`, `breed`, `temperament`, `description`, `img`, `date_create`)
				VALUES 
				(?,?,?,?,?, 'http://via.placeholder.com/400/?text=DOG', NOW())
				",$p,false);
			return ["id" => $c->lastInsertId()];

		case "insert_location":
			$r = makeQuery($c, "INSERT INTO 
				`track_locations`
				(`dog_id`, `lat`, `lng`, `description`, `photo`, `icon`, `date_create`)
				VALUES 
				(?,?,?,?,'http://via.placeholder.com/400/?text=PHOTO', 'http://rachellauren.work/aau/wnm617/lum.rachel/img/icons/location.svg', NOW())
				",$p,false);
			return ["id" => $c->lastInsertId()];



		/* UPDATE */

		// case "update_user_onboard":
		// 	$r = makeQuery($c, "UPDATE
		// 		`track_users`
		// 		SET 
		// 			`name` = ?,
		// 			`img` = ?
		// 		WHERE `id` = ?
		// 		",$p,false);
		// 	return ["result" => "success"];

		case "update_user":
			$r = makeQuery($c, "UPDATE
				`track_users`
				SET 
					`username` = ?,
					`name` = ?,
					`email` = ?
				WHERE `id` = ?
				",$p,false);
			return ["result" => "success"];


		case "update_user_password":
			$r = makeQuery($c, "UPDATE
				`track_users`
				SET 
					`password` = md5(?)
				WHERE `id` = ?
				",$p,false);
			return ["result" => "success"];


		case "update_user_image":
			$r = makeQuery($c, "UPDATE
				`track_users`
				SET 
					`img` = ?
				WHERE `id` = ?
				",$p,false);
			return ["result" => "success"];

		case "update_dog_image":
			$r = makeQuery($c, "UPDATE
				`track_dogs`
				SET 
					`img` = ?
				WHERE `id` = ?
				",$p,false);
			return ["result" => "success"];


		// @TODO 12/13
		// case "update_user_image":
		// 	$r = makeQuery($c, "UPDATE
		// 		`track_users`
		// 		SET 
		// 			`image` = ?
		// 		WHERE `id` = ?
		// 		",$p,false);
		// 	return ["result" => "success"];

		case "update_dog":
			$r = makeQuery($c, "UPDATE
				`track_dogs`
				SET 
					`name` = ?,
					`breed` = ?,
					`temperament` = ?,
					`description` = ?
				WHERE `id` = ?
				",$p,false);
			return ["result" => "success"];


		// case "update_location":
		// 	$r = makeQuery($c, "UPDATE
		// 		`track_locations`
		// 		SET
		// 			`description` = ?
		// 		WHERE `id` = ?
		// 		",$p,false);
		// 	return ["result" => "success"];



	/* DELETE */

	case "delete_dog":
		$r = makeQuery($c,"DELETE FROM
			`track_dogs`
			WHERE `id` = ?
			",$p,false);
		return ["result" => "success"];

	case "delete_location":
		$r = makeQuery($c,"DELETE FROM
			`track_locations`
			WHERE `id` = ?
			",$p,false);
		return ["result" => "success"];


			default: return ["error"=>"No Matched Type"];
	}

	} catch(Exception $e) {
		return ["error"=>"Bad Data"];
	}	
}



if(!empty($_FILES)) {
	$r = makeUpload("image","../uploads/");
	die(json_encode($r));
}

$data = json_decode(file_get_contents("php://input"));

die(
	json_encode(
		makeStatment($data),
		JSON_NUMERIC_CHECK
	)
);





