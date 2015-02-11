<?php


// array for JSON response
$response = array();

// check for required fields
if (isset($_POST['post_id']) && isset($_POST['username']) && isset($_POST['message_comment'])&& isset($_POST['date'])) {
    
    $post_id = $_POST['post_id'];
    $username = $_POST['username'];
    $message_comment = $_POST['message_comment'];
	 $date = $_POST['date'];
	
	 

    // include db connect class
    require_once __DIR__ . '/db_connect.php';

    // connecting to db
    $db = new DB_CONNECT();

    // mysql inserting a new row
    $result = mysql_query("INSERT INTO commented (post_id,username,message_comment,date ) VALUES(' $post_id', '$username', '$message_comment', '$date')");

    // check if row inserted or not
    if ($result) {
        // successfully inserted into database
        $response["success"] = 1;
        $response["message"] = "commented successfully created.";

        // echoing JSON response
        echo json_encode($response);
    } else {
        // failed to insert row
        $response["success"] = 0;
        $response["message"] = "Oops! An error occurred.";
        
        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // required field is missing
    $response["success"] = 0;
    $response["message"] = "Required field(s) is missing";

    // echoing JSON response
    echo json_encode($response);
}
?>