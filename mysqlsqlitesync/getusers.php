<?php
    include_once 'db_functions.php';
    $db = new DB_Functions();
    $likes = $db->getUnSyncRowCount();
	$a = array();
	$b = array();
    if ($likes  != false){
        $no_of_likes  = mysql_num_rows($likes);
		while ($row = mysql_fetch_array($likes )) {		
			$b["ID"] = $row["Id"];
			$b["LIKES"] = $row["Likes"];
                $b["USERNAME"] = $row["Username"];
           $b["POST"] = $row["Post"];
			array_push($a,$b);
		}
		echo json_encode($a);
	}
    /*else{
        $no_of_users = 0;
		$b["count"] = $no_of_users;
		echo json_encode($b);
	}*/
?>