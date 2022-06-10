<?php
require "function_register.php";

if (isset($_POST["register"])) {
  if (registrasi($_POST) > 0) {
    echo "<script>
            alert('User baru berhasil ditambahkan');
            </script>";
  } else {
    echo mysqli_error($conn);
  }
}

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Halaman Registrasi</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <!-- Local css -->
  <link rel="stylesheet" href="css/register.css">
  <!-- Font awesome v 5.15.4 (maybe) -->
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>

<body>

  <div class="container" align="center">
    <div align="center" style="width:400px;margin-top:5%;">
      <form action="#" class="well well-lg" action="" method="post" style="box-shadow: 0px 0px 30px #788788;">
        <h3 align="center"><span class="glyphicon glyphicon-home"></span> Registrasi</h3>
        <hr>
        <div class="form-group" align="left">
          <label for="username"><span class="glyphicon glyphicon-user"></span> Nama:</label>
          <input type="text" class="form-control" id="nama" name="nama" autocomplete="off" required>
        </div>
        <div class="form-group" align="left">
          <label for="username"><span class="glyphicon glyphicon-user"></span> Email:</label>
          <input type="email" class="form-control" id="email" name="email" autocomplete="off" required>
        </div>
        <div class="form-group" align="left">
          <label for="username"><span class="glyphicon glyphicon-user"></span> Username:</label>
          <input type="text" class="form-control" id="username" name="username" autocomplete="off" required>
        </div>
        <div class="form-group" align="left">
          <label for="password"><span class="glyphicon glyphicon-cog"></span> Password:</label>
          <input type="password" class="form-control" id="password" name="password" autocomplete="off" required>
        </div>
        <div class="form-group" align="left">
          <label for="password2"><span class="glyphicon glyphicon-cog"></span> Konfirmasi Password:</label>
          <input type="password" class="form-control" id="password2" name="password2" autocomplete="off" required>
        </div>
        <button type="submit" name="register" class="btn btn-block btn-success">Register</button>
        <a href="logindex.php" class="btn btn-block btn-danger">Kembali</a>
      </form>
    </div>
  </div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

</body>

</html>