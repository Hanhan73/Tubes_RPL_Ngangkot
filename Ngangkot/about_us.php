<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <link stylesheet type="text/css" rel="stylesheet" href="css/style.css">
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      margin: 0;
    }

    html {
      box-sizing: border-box;
    }

    *,
    *:before,
    *:after {
      box-sizing: inherit;
    }

    .column {
      float: left;
      width: 33.3%;
      margin-bottom: 16px;
      padding: 0 8px;
    }

    .card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      margin: 8px;
    }

    .about-section {
      padding: 50px;
      text-align: center;
      background-color: #474e5d;
      color: white;
    }

    .container {
      padding: 0 16px;
    }

    .container::after,
    .row::after {
      content: "";
      clear: both;
      display: table;
    }

    .title {
      color: grey;
    }

    .button {
      border: none;
      outline: 0;
      display: inline-block;
      padding: 8px;
      color: white;
      background-color: #000;
      text-align: center;
      cursor: pointer;
      width: 100%;
    }

    .button:hover {
      background-color: #555;
    }

    @media screen and (max-width: 650px) {
      .column {
        width: 100%;
        display: block;
      }
    }
  </style>
</head>

<body>

  <?php include('elements/top_nav.php'); ?>

  <div class="mainContent">

    <div class="about-section bg-primary">
      <h1>NGANGKOT</h1>
      <p>NGANGKOT adalah suatu website rute angkutan kota di Kota Bandung.</p>
      <p>Pengguna dapat menentukan posisi awal dan tujuan pada peta. Lalu NGANGKOT akan memberikan informasi seperti rute perjalanan, detail angkot yang harus digunakan oleh pengguna, dan estimasi tarif yang akan dikenakan.</p>
    </div>

    <h2 style="text-align:center">Our Team</h2>

    <div class="row">
      <div class="column">
        <div class="card">
          <img src="aset/foto/farhan.jpg" alt="Farhan" style="width:100%">
          <div class="container">
            <h2>Farhan Muzhaffar T.P.</h2>
            <p class="title">Project Manager</p>
            <p>NIM: 2105879</p>
          </div>
        </div>
      </div>

      <div class="column">
        <div class="card">
          <img src="aset/foto/azzahra.jpg" alt="Azzahra" style="width:100%">
          <div class="container">
            <h2>Azzahra Siti Hadjar</h2>
            <p class="title">Back End</p>
            <p>NIM: 2100901</p>
          </div>
        </div>
      </div>

      <div class="column">
        <div class="card">
          <img src="aset/foto/laela.jpg" alt="Laela" style="width:100%">
          <div class="container">
            <h2>Laelatusya'diyah</h2>
            <p class="title">Dokumentasi</p>
            <p>NIM: 2108804</p>
          </div>
        </div>
      </div>

      <div class="column">
        <div class="card">
          <img src="aset/foto/fakhri.jpg" alt="Fakhri" style="width:100%">
          <div class="container">
            <h2>Muhammad Fakhri F.</h2>
            <p class="title">Front End</p>
            <p>NIM: 2105997</p>
          </div>
        </div>
      </div>

      <div class="column">
        <div class="card">
          <img src="aset/foto/apri.jpg" alt="Apri" style="width:100%">
          <div class="container">
            <h2>Apri Anggara Yudha</h2>
            <p class="title">Front End</p>
            <p>NIM: 2102585</p>
          </div>
        </div>
      </div>
    </div>

  </div>

  <?php
  $a1 = 'active';
  include('elements/bottom_nav.php');
  ?>

</body>

</html>