<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register Form | CodingLab</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Local css -->
  <link rel="stylesheet" href="css/register.css">
  <!-- Font awesome v 5.15.4 (maybe) -->
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>

<body>

  <div class="container">
    <a class="text-decoration-none" href="/">
      <button type="button" class="btn btn-back"><i class="fas fa-arrow-circle-left"></i></button>
    </a>

    <div class="wrapper">
      <div class="title"><span>Form Register</span></div>
      <form action="#">
        <div class="row">
          <i class="fas fa-user"></i>
          <input type="text" placeholder="Nama" required>
        </div>
        <div class="row">
          <i class="fa fa-at"></i>
          <input type="text" placeholder="Username" required>
        </div>
        <div class="row">
          <i class="fas fa-envelope"></i>
          <input type="email" placeholder="Email" required>
        </div>
        <div class="row">
          <i class="fas fa-phone"></i>
          <input type="text" placeholder="No. Telepon" required>
        </div>
        <div class="row">
          <i class="fas fa-lock"></i>
          <input type="password" placeholder="Password" required>
        </div>
        <div class="row button">
          <input type="submit" value="Sign Up">
        </div>
      </form>
    </div>
  </div>

</body>

</html>