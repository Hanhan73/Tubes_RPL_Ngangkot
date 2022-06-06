<?php

include 'config/connection.php';

if (!isset($_GET['id'])) {
    header('Location: index.php');
}
$id_rute = $_GET['id'];

if (empty($id_rute)) header('location : index.php');

$sql    = "SELECT * FROM rute_angkot WHERE id_rute = $id_rute";
$query  = $conn->query($sql);
$data   = $query->fetch_array();

mysqli_close($conn);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ngangkot</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link stylesheet type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>

    <?php include('elements/top_nav.php'); ?>

    <div class="mainContent container-fluid">

        <div class="text-center mb-4">
            <h3>Detail Rute</h3>
            <h5><?= $data['jurusan'] ?></h5>
        </div>

        <input type="text" id="from" value="<?= $data['koordinat_awal'] ?>" hidden> <!-- explode('-', $data['jurusan'])[0] -->
        <input type="text" id="to" value="<?= $data['koordinat_akhir'] ?>" hidden>
        <button id="btn_submit" type="submit" hidden>Submit</button>

    </div>

    <div id="map" style="height: 50%">
    </div>

    <div class="mainContent container-fluid">

        <div class="row mt-4">
            <div class="col-6">
                <div class="text-center bg-primary">gambar</div>
                <div class="text-center bg-primary">gambar</div>
                <div class="text-center bg-primary">gambar</div>
                <div class="text-center bg-primary">gambar</div>
            </div>
            <div class="col-6">
                <p>Kode angkot: <?= $data['kode'] ?></p>
                <p>Kisaran tarif: <?= $data['harga'] ?></p>
                <p>Jam operasional: <?= $data['jam_opr_awal'] ?> - <?= $data['jam_opr_akhir'] ?></p>
            </div>
        </div>

    </div>

    <?php
    $a2 = 'active';
    include('elements/bottom_nav.php');
    ?>

    <!-- JS bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <!-- include map API dan script-nya -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCuCoZnwt2CWIp1ri_cZrxOBe-V21R0LAE&callback=initMap&libraries=places" async defer>
    </script>
    <script src="app.js"></script>

</body>

</html>