<?php
require "config/connection.php";

function registrasi($data) {
    global $conn;

  
    $nama = strtolower(stripslashes($data["nama"]));
    $email = strtolower(stripslashes($data["email"]));
    $username = strtolower(stripslashes($data["username"]));
    $password = mysqli_real_escape_string($conn, $data["password"]);
    $password2 = mysqli_real_escape_string($conn, $data["password2"]);

    if ($password != $password2){
        echo "<script>
                alert('Konfirmasi password tidak sesuai');
            </script>";
        return false;
    }
    
    $cekemail = mysqli_query($conn,"SELECT email FROM user WHERE email = '$email'");
    $cekuser = mysqli_query($conn,"SELECT username FROM user WHERE username = '$username'");

    if(mysqli_fetch_assoc($cekemail)){
        echo "<script>
                alert('Email sudah terdaftar sebelumnya');
            </script>";
        return false;
    }

    if(mysqli_fetch_assoc($cekuser)){
        echo "<script>
                alert('Username sudah terdaftar sebelumnya');
            </script>";
        return false;
    }

    $password = password_hash($password, PASSWORD_DEFAULT);

    mysqli_query($conn, "INSERT INTO user VALUES('','$nama','$email','$username','$password')");

    return mysqli_affected_rows($conn);
}
