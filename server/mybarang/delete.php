<?php

$connection = new mysqli("localhost", "root", "", "my_barang");

$id = $_POST['id'];

$result = mysqli_query($connection, "delete from tb_barang where id=".$id);

if($result){
    echo json_encode([
        'message' => 'Data delete successfully'
    ]);
}else{
    echo json_encode([
        'message' => 'Data Failed to delete'
    ]);
}