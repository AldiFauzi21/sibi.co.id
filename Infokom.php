<?php
session_start();
require 'functions.php';
include 'config,php';
if(isset($_SESSION['status'])){
  $email=$_SESSION['useremail'];
  if($_SESSION['status']=="Administrator"){
    $admin=query("SELECT * FROM administrator WHERE email='$email'")[0];
    $_SESSION['admin']=$admin['id_administrator'];
    $idadmin=$_SESSION['admin'];
  } else{
  $idadmin="no";
  }
} else{
  $idadmin="no";
}
$pengguna = query("SELECT * FROM informasi ORDER BY id_informasi DESC LIMIT 12");
//jika tombol cari diklik, kita akan timpa $pengguna dengan data pengguna sesuai dengan pencariannya
if ( isset($_POST["pencarian"]) ) {//post karena methodnya post, yang mau dicek adalah tombol cari berdasrkan name yg ditulis di form
  $keyword = $_POST["pencarian"];
  $pengguna= query(" SELECT * FROM informasi 
        WHERE
       judul LIKE '%$keyword%' OR
       tanggal LIKE '%$keyword%' OR
       instansi LIKE '%$keyword%' ORDER BY id_informasi DESC LIMIT 12
       ");
  //jadi nanti $pengguna akan berisi data hasil pencarian dari function cari, lalu function cari ini mendapatkan data dari apapun yang diketikkan pengguna
}
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
        section{
          min-height: 420px; 
        }
        .add{
    color: grey;
    padding: 10px;
    text-align: left;
    font-size: 10pt;
  }
  .mini {
          transition: transform .2s; /* Animation */
          margin: 0 auto;
          width: 75%;
        }

        .mini:hover {
          transform: scale(1.5); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
        }
      </style>
      <title>Informasi</title>
    </head>
    <body class="mt-5">
             <!--Navbar-->
             <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
                    <div class="container">
                        <img src="img/f.jpg" width="30" height="30" class="d-inline-block align-top" alt="">
                    <a class="navbar-brand" href="AuthBeranda.php">SIBI.CO.ID</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                      <a class="nav-link" href="AuthBeranda.php">Beranda</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="Tentang.html">Tentang Kami</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Infokom.php">Informasi</a>
                      </li>
                    <li class="nav-item">
                      <a class="nav-link" href="KamusDaring.php">Kamus Daring</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="Faq.html">Daftar Pertanyaan Umum</a>
                    </li>
                  </ul>
                    </div>
                  </nav>
                </div>
                  </nav>

<!--Info Komunitas-->
<div class="jumbotron jumbotron-fluid">
    <div class="container">
                  <div class="row">
                    <div class='com-ms'>
                        <h1 class="display-4">Informasi</h1>
                        <p class="lead">Bijaksanalah terhadap informasi</p>
                    <form action="" method="post" class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-10" name="pencarian" type="search" placeholder="Pencarian" aria-label="Search">
                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Cari</button>
                      <?php
                        if(isset($_SESSION['status'])){
                          if($_SESSION['status']=="Administrator"){
                            echo "<a href='UpInfo.php' class='btn btn-primary btn-lg active' role='button' aria-pressed='true' style='background-color: #00C957 ; border-color: #00C957; font-size: 11pt;'  autocomplete='on'>Unggah Informasi</a>";
                          }
                        }
                      ?>
                    </form>
                    </div>
                </div>
                </div>
    <div class="container">

<div class="container">
  <div class="row">
  <?php foreach( $pengguna as $row ) : ?>
  <div class="col-sm">
    <div class="card" style="width: 15rem;">
      <img src="<?php if ($row['gambar' ]==null){echo 'img/picture13.png';}else{echo $row['gambar' ];} ?>" class="card-img-top" alt="Gambar tidak bisa dimuat">
      <div class="card-body">
      <h5 class="card-title"><?php echo $row["judul" ]; ?></h5>
      <p class="card-text">
        <div class="d-flex bd-highlight">
          <div class='p-2 bd-highlight'><?php
            if(isset($_SESSION['status'])){
              $sunting=$row['id_informasi'];
              if($_SESSION['status']=="Administrator"&&($idadmin==$row["id_administrator" ])){
                echo "<a href='sunting.php?id_info=$sunting'><img class='mini' src='img/pencil1.png'></a>";
              } else {
                echo "<img class='mini' src='img/cancel1.png'>";
              }
            } else {
                echo "<img class='mini' src='img/cancel1.png'>";
            }
          ?>
          </div>
          <div class="p-2 bd-highlight">
            <center><a href="baca.php?id_info=<?= $row["id_informasi"];?>"><img class="mini" src="img/complete1.png"></a>
          </div>
          <div class='p-2 bd-highlight'>
          <?php
            if(isset($_SESSION['status'])){
              $drop=$row['id_informasi'];
              if($_SESSION['status']=="Administrator"&&($idadmin==$row["id_administrator" ])){
                echo "<a href='dropinfo.php?id_info=$drop'><img class='mini' src='img/trash2.png'></a>";
              } else {
                echo "<img class='mini' src='img/cancel1.png'>";
              }
            } else {
                echo "<img class='mini' src='img/cancel1.png'>";
            }
          ?>
        </div>
        </div>
        <center><p class="add">Terakhir diperbaharui pada <?php echo $row["tanggal" ]; ?></p></center>
      </p>
    </div>
    </div>
  </div><hr>
  <?php endforeach; ?>
        </div>
       </div> 
    </div>
  </div>
<center><footer style="font-size: 10pt; color: grey;">
    <p>copyright. sibi.co.id</p>
    </footer></center>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>