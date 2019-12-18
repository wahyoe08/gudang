<?php 
	$part_number = $_GET['part_number'];
	
	require_once('dbConnect.php');
	
	$sql = "SELECT * FROM data_barang WHERE part_number=$part_number";
	$r = mysqli_query($con,$sql);
	
	$result = array();
	
	$row = mysqli_fetch_array($r);
	array_push($result,array(
			"part_number"=>$row['part_number'],
			"part_name"=>$row['part_name'],
			"harga"=>$row['harga'],
			"satuan"=>$row['satuan'],
			"supplier"=>$row['supplier']
		
		));

	echo json_encode(array('result'=>$result));
	
	mysqli_close($con);