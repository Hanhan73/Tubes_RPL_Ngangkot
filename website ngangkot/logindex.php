<?php
session_start();
require "config/connection.php";

if (isset($_COOKIE['id']) && isset($_COOKIE['key'])) {
  $id = $_COOKIE['id'];
  $key = $_COOKIE['key'];

  $result = mysqli_query($conn, "SELECT email FROM user WHERE id_user = $id");
  $row = mysqli_fetch_assoc($result);

  if ($key == hash('sha256', $row['email'])) {
    $_SESSION['login'] = true;
  }
}

if (isset($_SESSION["login"])) {
  header("location: index.php");
  exit;
}

if (isset($_POST["login"])) {

  $email = $_POST["email"];
  $password = $_POST["password"];

  $result = mysqli_query($conn, "SELECT * FROM user WHERE email = '$email'");

  if (mysqli_num_rows($result) === 1) {

    $row = mysqli_fetch_assoc($result);

    $_SESSION['email'] = $row['email'];
    $_SESSION['nama'] = $row['nama'];
    if (password_verify($password, $row["password"])) {

      $_SESSION["login"] = true;

      header('Location: index.php');
      exit;
    }
  }
  $error = true;
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Halaman Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="aset/bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="aset/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>

  <div class="container" align="center">
    <div align="center" style="width:400px;margin-top:5%;">
      <form method="post" class="well well-lg" action="" style="-webkit-box-shadow: 0px 0px 30px #788788;">
        <h3 align="center"><span class="glyphicon glyphicon-home"></span> Login</h3>
        <hr>
        <?php if (isset($error)) {
        ?>
          <p style="color: red; font-style: italic;">Email / Password Salah</p>
        <?php }
        ?>
        <div class="form-group" align="left">
          <label for="email"><span class="glyphicon glyphicon-user"></span> Email:</label>
          <input type="email" class="form-control" id="email" placeholder="ketikkan email anda" name="email" autocomplete="off" required>
        </div>
        <div class="form-group" align="left">
          <label for="password"><span class="glyphicon glyphicon-cog"></span> Password:</label>
          <input type="password" class="form-control" id="password" placeholder="ketikkan password anda" name="password" autocomplete="off" required>
        </div>

       
        <button type="submit" name="login" class="btn btn-block btn-success"> Login</button>

        <a href="registrasi.php" type="button" class="btn btn-block btn-primary"> Register</a>
        
      </form>
    </div>
  </div>

</body>

</html>