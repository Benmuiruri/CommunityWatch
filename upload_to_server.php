<?php
  error_reporting(0);
   $file_path = "uploads/";
  $date = date('Y-m-d H:i:s');
$filename = md5(uniqid($date, true) * rand()) . ".png";
   $file_path = $file_path .$filename;
//   basename( $_FILES['uploaded_file']['name']);
   
   if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $file_path)) {
      // replace $host,$username,$password,$dbname with real info
	 
      $link=mysqli_connect("localhost","root","","webservice");
      mysqli_query($link,"INSERT INTO `uploads` (filename,path) VALUES ('".$_FILES['uploaded_file']['tmp_name']."','http://10.0.2.2/".$file_path."')") or trigger_error($link->error."[ $sql]");
      mysqli_close($link);
   } else{
       echo "fail";
   }



?>