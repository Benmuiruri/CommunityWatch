<?php


$response = array();


// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db
$db = new DB_CONNECT();
$strKeyword = $_POST["txtKeyword"];

// get all comments from commented  table
$result = mysql_query("SELECT commented.id,commented.post_id,issues.post_id,issues.username,commented.username,commented.message_comment,commented.date FROM commented,issues WHERE commented.post_id = issues.post_id " ) or die(mysql_error());
// AND commented.post_id = '%".$strKeyword."%'
// check for empty result
if (mysql_num_rows($result) > 0) {
    // looping through all results
    // products node
    $response["posts"] = array();
    
    while ($row = mysql_fetch_array($result)) {
        // temp user array
        $post             = array();
		$post["post_id"]  = $row["post_id"];
        $post["username"] = $row["username"];
        $post["message_comment"]  = $row["message_comment"];
				 $post["date"]  = $row["date"];
        
        
        //update our repsonse JSON data
        array_push($response["posts"], $post);
    }
    // success
    $response["success"] = 1;

    // echoing JSON response
    echo json_encode($response);
} else {
    // no products found
    $response["success"] = 0;
    $response["message"] = "No comments found";

    // echo no users JSON
    echo json_encode($response);
}
?>
