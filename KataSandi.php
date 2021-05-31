<?php
session_start();
  if(($_SESSION['status']=="")||(!isset($_SESSION['status']))){
    header("location: Login.php");
  }
  // else{
  //   echo $_SESSION['useremail'];
  // }
require 'functions.php';
include 'config.php';
//ambil data id di url
$email=$_SESSION["useremail"];
//echo "<div  class='alert'>",$email,"</div>";
//var_dump($id_pengguna);
//query data pengguna berdasarkan id
$pggn=query("SELECT * FROM pengguna WHERE email='$email'")[0];
//echo "<div  class='alert'>",$pggn['alamat'],"</div>";
//var_dump($pggn[0] ["alamat"]); //sudah ada data penggunanya, tapi dalam bentuk assoc array karena dimasukkin ke dalam function query
//var_dump($pggn ["alamat"]);

//cek apakah tombol submit/ubah sudah ditekan atau belum
//ambil semua data baru, masukkan ke variabel $_POST, lalu dikirim ke function ubah
if(( isset($_POST["pass"]) )&&(isset($_POST["pass2"]))&&($_POST["pass"]==$_POST["pass2"])) {
  
  $pass=$_POST['pass'];
    //cek apakah data berhasil diubah atau tidak
  if( ubahsandi($pass,$email) > 0 ){ //data dari elemen form diambil, masukin ke dalam tambah, nanti akan ditangkap oleh data, jadi nanti $_POST diambil oleh data
  header("location:PenggunaProfil.php?pesan=masuk");
  } else {  
  header("location:KataSandi.php?pesan=gagal");
  }
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

    <!--My CSS-->

    <style>
      section{
        min-height: 420px; 
      }
      .alert{
    background: #e44e4e;
    color: white;
    padding: 10px;
    text-align: center;
    border:1px solid #b32929;
  }
  .add{
    color: grey;
    padding: 10px;
    text-align: left;
    font-size: 10pt;
  }
  .warn{
    color: red;
    padding: 10px;
    text-align: left;
    font-size: 10pt;
    max-height: 5pt;
  }
  .form-check-label{
    font-size: 10pt;
  }
    </style>
    <title>Pembaharuan Kata Sandi</title>
  </head>
  <body class="mt-5">
    <!--Navbar-->
    <script type="text/javascript">
  function validasi_form_sandi(){
    var konfirmasi = confirm("Apakah anda yakin dengan kata sandi baru anda?");
    if(konfirmasi === true) {
      var password = document.getElementById("pass").value;
      var password2 = document.getElementById("pass2").value;
      if (password==""&&password2==""){
        alert('Anda belum mengisi apapun');
      }
      else{
        if (password == ""){
          alert('Anda belum mengisi kata sandi baru anda');
        } else {
          if (password.length < 5){
            alert('Kata sandi baru minimal 5 karakter');
          }
          if (password.length > 35){
            alert('Kata sandi baru anda terlalu panjang, mohon untuk menggunakan kata sandi yang mudah anda ingat!');
          }
        }
        if (password2 == ""){
          alert('Anda belum mengonfirmasi kata sandi baru anda');
        } else {
          if (password != password2){
            alert('Konfirmasi kata sandi baru anda salah');
          }
        }
      }
    }
  }
</script>
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <img src="img/f.png" width="30" height="30" class="d-inline-block align-top" alt="">
                <a class="navbar-brand" href="BerandaAfter.php ">SIBI.CO.ID</a>
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                      <a class="nav-link" href="BerandaAfter.php">Beranda</a>
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
            </div>
              </nav>
<!--Sign up-->
                <div class="jumbotron jumbotron-fluid">
                        <div class="container">
                        <?php 
                          if(isset($_GET['pesan'])){
                            if($_GET['pesan']=="gagal"){
                              echo "<div  class='alert'>Kata sandi anda gagal diubah</div>";
                              //echo "<div  class='alert'>Status WA : ",$_SESSION['WhatsApp']," <br> alamat : ",$_SESSION['test'],"</div>";
                            }
                            else{
                              echo "<h4 class='display-4'>Pembaharuan Kata Sandi</h4>";
                            }
                          }else{
                              echo "<h4 class='display-4'>Pembaharuan Kata Sandi</h4>";
                          }
                        ?>
                          <div class="container">
                                  <form action="" method="POST">
                                  <div class="form-row">
                                        <div class="form-group col-md-6">
                                          <label for="pass">Kata Sandi Baru</label>
                                          <input type="password" class="form-control" id="pass" name="pass" placeholder="Kata Sandi Baru Anda"><label class="add" for="pass">
                                            Gunakan 5 sampai 35 karakter!
                                          </label>
                                        </div>
                                        <div class="form-group col-md-6">
                                          <label for="pass2">Konfirmasi Kata Sandi Baru</label>
                                          <input type="password" class="form-control" id="pass2" name="pass2" placeholder="Konfirmasi Kata Sandi Baru Anda">
                                        </div>
                                      </div>
                                      <button type="submit" name="ubah" class="btn btn-primary" onclick="validasi_form_sandi()">Ubah</button> <a href="PenggunaProfil.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" style="background-color: #DC143C ; border-color: #DC143C; font-size: 11pt; " autocomplete="on">Kembali</a>
                                    </form>
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