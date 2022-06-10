<?php

    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db   = 'db_angkot';
    $conn = mysqli_connect($host, $user, $pass, $db);

    //check connection status
    if (!$conn) {
        echo 'Connetion error: ' . mysqli_connect_error();
    }

?>