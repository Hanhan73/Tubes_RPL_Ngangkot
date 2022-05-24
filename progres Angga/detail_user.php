<?php

include 'config/connection.php';

if (!isset($_GET['id'])) {
    header('Location: index.php');
}
$id_user = $_GET['id'];

// delete alamat
if (!empty($_GET['id_delete'])) {
    $id_alamat = $_GET['id_delete'];

    $sql = "DELETE FROM alamat WHERE id_alamat = '$id_alamat'";
    $query = mysqli_query($conn, $sql);

    if (!$query) {
        die("Invalid query: " . mysqli_error($conn));
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // update user
    $nama = @$_POST['nama'];
    $username = @$_POST['username'];
    $email = @$_POST['email'];
    $no_telp = @$_POST['no_telp'];
    $password = @$_POST['password'];

    $sql = "UPDATE user SET
        nama = '$nama',
        username = '$username',
        email = '$email',
        no_telp = '$no_telp',
        `password` = '$password'
        WHERE id_user = $id_user";

    $query = mysqli_query($conn, $sql);

    if (!$query) {
        die("Invalid query: " . mysqli_error($conn));
    }

    // add alamat
    if (!empty($_POST['lokasi']) && !empty($_POST['label_alamat'])) {
        $lokasi = $_POST['lokasi'];
        $label_alamat = $_POST['label_alamat'];

        $sql = "INSERT INTO alamat VALUES ('', '$lokasi', '', '$label_alamat', '$id_user')";

        $query = mysqli_query($conn, $sql);

        if (!$query) {
            die("Invalid query: " . mysqli_error($conn));
        }
    }
}

if (empty($id_user)) header('location : index.php');

$sql    = "SELECT * FROM user WHERE id_user = $id_user";
$query  = $conn->query($sql);
$user  = $query->fetch_array();

$sql    = "SELECT * FROM alamat WHERE id_user = $id_user";
$query  = $conn->query($sql);
$alamat  = mysqli_fetch_all($query, MYSQLI_ASSOC);

if (empty($user)) header('location : index.php');
mysqli_close($conn);

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile | Nangkot</title>
    <!-- Bootstrap css -->
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
            <div class="title"><span>Profile</span></div>

            <form action="detail_user.php?id=<?= $id_user ?>" method="POST">
                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" id="nama" name="nama" value="<?= $user['nama'] ?>">
                </div>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" value="<?= $user['username'] ?>">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" name="email" value="<?= $user['email'] ?>">
                </div>
                <div class="form-group">
                    <label for="no_telp">No. Telepon</label>
                    <input type="text" class="form-control" id="no_telp" name="no_telp" value="<?= $user['no_telp'] ?>">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="text" class="form-control" id="password" name="password" value="<?= $user['password'] ?>">
                </div>

                <br>
                <h5>Alamat</h5>
                <?php foreach ($alamat as $a) { ?>
                    <div class="form-group">
                        <label for="<?= $a['kategori'] ?>"><?= $a['kategori'] ?></label>
                        <div class="row mx-0">
                            <a href="detail_user.php?id=<?= $id_user ?>&id_delete=<?= $a['id_alamat'] ?>"><i class="fas fa-trash-alt"></i></a>
                            <input type="text" class="form-control" id="<?= $a['kategori'] ?>" value="<?= $a['alamat'] ?>">
                        </div>
                    </div>
                <?php } ?>

                <br>
                <h5>Tambah Alamat</h5>
                <div class="form-group">
                    <input type="text" class="form-control" id="label_alamat" name="label_alamat" placeholder="Label alamat (misal: Rumah)">
                    <input type="text" class="form-control" id="lokasi" name="lokasi" placeholder="Lokasi">
                </div>
                <div class="button form-group">
                    <input class="form-control" type="submit" value="Simpan">
                </div>
            </form>
        </div>
    </div>

</body>

</html>