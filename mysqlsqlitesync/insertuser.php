<?php
include_once './db_functions.php';
//Create Object for DB_Functions clas
$db = new DB_Functions();
//Get JSON posted by Android Application
$json = $_POST["likesJSON"];
//Remove Slashes
if (get_magic_quotes_gpc()){
$json = stripslashes($json);
}
//Decode JSON into an Array
$data = json_decode($json);
//Util arrays to create response JSON
$a=array();
$b=array();
//Loop through an Array and insert data read from JSON into MySQL DB
for($i=0; $i<count($data) ; $i++)
{
$Id=$data[$i]->ID;
$Likes=$data[$i]->LIKES;
$Username=$data[$i]->USERNAME;
$Post=$data[$i]->POST;


//Store User into MySQL DB
$res = $db->storeUser($Id,$Likes,$Username,$Post);
    //Based on inserttion, create JSON response
    if($res){
        $b["id"] = $Id;
        $b["status"] = 'yes';
        array_push($a,$b);
    }else{
        $b["id"] = $Id;
        $b["status"] = 'no';
        array_push($a,$b);
    }
}
//Post JSON response back to Android Application
echo json_encode($a);
?>