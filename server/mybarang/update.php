<?php

$connection = new mysqli("localhost", "root", "", "my_barang");
$title      = $_POST['NamaBarang']; 
$content    = $_POST['TempatBarang'];
$id         = $_POST['id'];
    
$result = mysqli_query($connection, "update tb_barang set NamaBarang='$title', TempatBarang='$content' where id='$id'");
    
if($result){
    echo json_encode([
        'message' => 'Data edit successfully'
    ]);
}else{
    echo json_encode([
        'message' => 'Data Failed to update'
    ]);
}