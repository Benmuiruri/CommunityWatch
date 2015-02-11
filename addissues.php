<?php


// array for JSON response
$response = array();

// check for required fields
if (isset($_POST['username']) && isset($_POST['path'])  && isset($_POST['pathfull'])  && isset($_POST['category']) && isset($_POST['title']) && isset($_POST['message'])&& isset($_POST['date'])) {
    
    $username = $_POST['username'];
 $path = $_POST['path'];
 $pathfull = $_POST['pathfull'];
$category= $_POST['category'];
    $title = $_POST['title'];
    $message = $_POST['message'];
	 $date = $_POST['date'];
	
	 

    // include db connect class
    require_once __DIR__ . '/db_connect.php';

    // connecting to db
    $db = new DB_CONNECT();

    // mysql inserting a new row
    $result = mysql_query("INSERT INTO issues(username,path,pathfull,category, title,message,date ,status) VALUES(' $username','$path','$pathfull','$category', '$title', '$message', '$date','pending')");

    // check if row inserted or not
    if ($result) {
        // successfully inserted into database
        $response["success"] = 1;
        $response["message"] = "Issue successfully created.";

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