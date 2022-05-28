<?php

include 'config/connection.php';

$sql = 'SELECT * FROM rute_angkot';
$result = mysqli_query($conn, $sql);
$list = mysqli_fetch_all($result, MYSQLI_ASSOC);

mysqli_free_result($result);
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

    <div class="mainContent">
        <h3 class="text-center py-2">List Rute</h3>
        <div class="list-group">
            <?php foreach ($list as $data) { ?>
                <a href="detail_rute.php?id=<?= $data['id_rute'] ?>" class="list-group-item list-group-item-action d-flex">
                    <img src="https://getbootstrap.com/docs/4.6/assets/brand/bootstrap-solid.svg" width="30" height="30" class="mr-2 my-auto" alt="">
                    <?= $data['jurusan'] ?>
                </a>
            <?php } ?>
        </div>
    </div>

    <?php
    $a2 = 'active';
    include('elements/bottom_nav.php');
    ?>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</body>

</html>