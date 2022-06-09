<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ngangkot</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link stylesheet type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>

    <?php include('elements/top_nav.php'); ?>

    <!-- search -->
    <div class="container-fluid mainContent fixed-top mt-3 pb-0">
        <div class="form-inline row">
            <div class="input-group col-12">
                <input id="from" type="text" class="form-control" id="startInput" placeholder="Lokasi awal">
                <input id="to" type="text" class="form-control" id="finishInput" placeholder="Lokasi tujuan">
                <div class="input-group-append">
                    <button id="btn_submit" type="submit" class="btn btn-primary mb-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div id="map"></div>

    <!-- toggled detail -->
    <div class="container-fluid mainContent fixed-bottom">
        <button class="btn btn-primary mb-3" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
            Detail rute
        </button>
        <div class="collapse mb-2" id="collapseExample">
            <div class="card card-body text-center">
                <i class="fa fa-money" aria-hidden="true"></i>
                <h5 class="font-weight-bold"><i class="fa-solid fa-money-bill"></i> Harga ongkos:
                </h5>
                <span id="ongkos" class="font-weight-normal"></span>

                <h5 class="font-weight-bold"><i class="fa-solid fa-road"></i> Jarak yang ditempuh:
                </h5>
                <span id="jarak" class="font-weight-normal"></span>

                <h5 class="font-weight-bold"><i class="fa-solid fa-clock"></i> Estimasi waktu:
                </h5>
                <span id="waktu" class="font-weight-normal"></span>

            </div>

        </div>
    </div>

    <?php
    $a1 = 'active';
    include('elements/bottom_nav.php');
    ?>

    <!-- JS bootstrap -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <!-- include map API dan script-nya -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCuCoZnwt2CWIp1ri_cZrxOBe-V21R0LAE&callback=initMap&libraries=places&language=id&region=id" async defer>
    </script>
    <script src="app.js"></script>

</body>

</html>