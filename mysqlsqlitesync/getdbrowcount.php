<?php
    include_once 'db_functions.php';
    $db = new DB_Functions();
    $likes = $db->getUnSyncRowCount();
	$a = array();
	$b = array();
    if ($likes  != false){
        $no_of_likes = mysql_num_rows($likes );		
		$b["count"] = $no_of_likes ;
		echo json_encode($b);
	}
    else{
        $no_of_likes  = 0;
		$b["count"] = $no_of_likes;
		echo json_encode($b);
	}
?>