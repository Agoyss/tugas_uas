<?php 

    $connection = new mysqli("localhost","root","","my_barang");
    $data       = mysqli_query($connection, "select * from tb_barang");
    $data       = mysqli_fetch_all($data, MYSQLI_ASSOC);

    echo json_encode($data);