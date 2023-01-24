<?php

$connection = new mysqli("localhost", "root", "", "my_barang");
$title      = $_POST['NamaBarang']; 
$content    = $_POST['TempatBarang'];
$date       = date('Y-m-d');

$result = mysqli_query($connection, "insert into tb_barang set NamaBarang='$title', TempatBarang='$content', date='$date'");

if($result){
	echo json_encode([
		'message' => 'Data input successfully'
	]);
}else{
	echo json_encode([
		'message' => 'Data Failed to input'
	]);
}