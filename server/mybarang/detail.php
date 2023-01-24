<?php 
$connection = new mysqli("localhost","root","","my_barang");
$data       = mysqli_query($connection, "select * from tb_barang where id=".$_GET['id']);
$data       = mysqli_fetch_array($data, MYSQLI_ASSOC);

echo json_encode($data);