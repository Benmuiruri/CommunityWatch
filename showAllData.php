<?php
	$objConnect = mysql_connect("localhost","scottbm_admin","admin");
	$objDB = mysql_select_db("scottbm_commWatch");
	
	// $_POST["txtKeyword"] = "a"; // for Sample

	$strKeyword = $_POST["txtKeyword"];
	$strSQL = "SELECT * FROM comments WHERE title LIKE '%".$strKeyword."%'  ORDER BY post_id ASC ";

	$objQuery = mysql_query($strSQL);
	$intNumField = mysql_num_fields($objQuery);
	$resultArray = array();
	while($obResult = mysql_fetch_array($objQuery))
	{
		$arrCol = array();
		for($i=0;$i<$intNumField;$i++)
		{
			$arrCol[mysql_field_name($objQuery,$i)] = $obResult[$i];
		}
		array_push($resultArray,$arrCol);
	}
	
	mysql_close($objConnect);
	
	echo json_encode($resultArray);
?>