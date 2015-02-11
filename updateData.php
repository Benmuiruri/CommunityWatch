<?php
	$objConnect = mysql_connect("localhost","scottbm_admin","admin");
	$objDB = mysql_select_db("scottbm_commWatch");
	


	$strPassword = $_POST["sPassword"];
	$strName = $_POST["sName"];
	$strUid= $_POST["sUid"];
	
	$salt = sha1(rand());
        $salt = substr($salt, 0, 10);
        $encrypted = base64_encode(sha1($strPassword . $salt, true) . $salt);

	/*** Check Email Exists ***/
	$strSQL = "SELECT * FROM users WHERE email = '".$strName."' AND unique_id = '".$strUid."' ";
	$objQuery = mysql_query($strSQL);
	$objResult = mysql_fetch_array($objQuery);
	if($objResult)
	{
		$arr['StatusID'] = "0"; 
		$arr['Error'] = "Email Exists!";	
		echo json_encode($arr);
		exit();
	}
	
	/*** Update ***/
	$strSQL = " UPDATE users SET email = '".$strName."',encrypted_password= '".$encrypted ."',salt= '".$salt ."' WHERE unique_id = '".$strUid."'";

	$objQuery = mysql_query($strSQL);
	if(!$objQuery)
	{
		$arr['StatusID'] = "0"; 
		$arr['Error'] = "Cannot save data!";	
	}
	else
	{
		$arr['StatusID'] = "1"; 
		$arr['Error'] = "";	
	}

	/**
		$arr['StatusID'] // (0=Failed , 1=Complete)
		$arr['Error'] // Error Message
	*/
	
	mysql_close($objConnect);
	
	echo json_encode($arr);
	
?>