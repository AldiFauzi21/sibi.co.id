<?php
  session_start();
  date_default_timezone_set('Asia/Singapore');
  require 'functions.php';
  include 'config.php';
  $id_informasi=$_GET["id_info"];
  if(isset($_SESSION['status'])){
  $email=$_SESSION['useremail'];
  if($_SESSION['status']=="Pengguna"){
    $pggn=query("SELECT * FROM pengguna WHERE email='$email'")[0];
    $iduser=$pggn['id_pengguna'];
        $date=date("Y-m-d h:i:s");
        $input="INSERT INTO membaca (id_pengguna, tanggal, id_informasi) VALUES ('$iduser', '$date', '$id_informasi');";
        if ($conn->query($input) === FALSE) {
            echo "Error$ " . $input . "<br>" . $conn->error;
        }
    } else{
    $iduser="no";
    }
  } else{
    $iduser="no";
  }
  

  $info=query("SELECT * FROM informasi WHERE id_informasi='$id_informasi'")[0];
  $isi=$info['judul'];
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
    font-size: 12pt;
  }
      </style>
      <title><?php echo $info['judul'];?></title>
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
                      <a class="nav-link" href="BerandaAfter.php">Beranda </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="Tentang.html">Tentang Kami</a>
                    </li>
                    <li class="nav-item">
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

<!--Info Komunitas-->
<div class="jumbotron jumbotron-fluid">
    <div class="container">
      <h3 class="display-10"><?php echo $info['judul'];?></h3>
      <p class="add"><?php echo $info['instansi'];?></p>

      <div class="card mb-3">
            <img src="<?php if ($info['gambar' ]==null){echo 'img/picture13.png';}else{echo $info['gambar' ];} ?>" class="card-img-top">
            <div class="card-body">
              <p class="card-text" style="text-align: justify;">
                <?php 
                  $lines = file("informasi/$isi.txt"); 
                  foreach ($lines as $line_num => $line){
                   print $line . "<br />\n"; 
                  }
                ?>
              </p>
              <p class="card-text"><small class="text-muted">Terakhir diperbaharui pada <?php echo $info['tanggal'];?></small></p>
            </div>
          </div>
          <a href="Infokom.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" style="background-color: #DC143C ; border-color: #DC143C; font-size: 11pt; " autocomplete="on">Kembali</a>

      
    </div>
  </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>