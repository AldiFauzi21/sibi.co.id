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
if(( isset($_POST["prov"]) )&&(isset($_POST["kota"]))&&(isset($_POST["alamat"]))) {
  $prov=$_POST['prov'];
  $kota=$_POST['kota'];
  $almt=$_POST['alamat'];
  $alamat=$almt.", ".$kota.", ".$prov;
    //cek apakah data berhasil diubah atau tidak
  if( ubahalamat($alamat,$email) > 0 ){ //data dari elemen form diambil, masukin ke dalam tambah, nanti akan ditangkap oleh data, jadi nanti $_POST diambil oleh data
  header("location:PenggunaProfil.php?pesan=masuk");
  } else {  
  header("location:Alamat.php?pesan=gagal");
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
    <title>Pembaharuan Alamat</title>
  </head>
  <body class="mt-5">
    <!--Navbar-->
    <script type="text/javascript">
  function validasi_form_alamat(){
    var konfirmasi = confirm("Apakah anda yakin dengan alamat baru anda?");
    if(konfirmasi === true) {
      var prov = document.getElementById("prov").value;
      var kota = document.getElementById("kota").value;
      var alamat = document.getElementById("alamat").value;
      var text = "";
      if (prov==""&&kota==""&&alamat==""){
        alert('Anda belum mengisi apapun');
      }
      else{
        if (prov == ""){
          text += "- Provinsi Baru \n";
        } else {
          if (prov.length < 4){
            alert('Mohon untuk tidak menggunakan singkatan pada data provinsi baru anda!');
          }
        }
        if (kota == ""){
          text += "- Kota/Kabupaten Baru \n";
        } else {
          if (kota.length < 4){
            alert('Mohon untuk tidak menggunakan singkatan pada data kota atau kabupaten baru anda!');
          }
        }
        if (alamat == ""){
          text += "- Alamat Baru \n";
        }
        if (prov==""||kota==""||alamat==""){
          alert('Anda belum mengisi : \n'+ text);
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
                              echo "<div  class='alert'>Alamat anda gagal diubah</div>";
                              //echo "<div  class='alert'>Status WA : ",$_SESSION['WhatsApp']," <br> alamat : ",$_SESSION['test'],"</div>";
                            }
                            else{
                              echo "<h4 class='display-4'>Pembaharuan Alamat</h4>";
                            }
                          }else{
                              echo "<h4 class='display-4'>Pembaharuan Alamat</h4>";
                          }
                        ?>
                          <div class="container">
                                  <form action="" method="POST">
                                  <div class="form-row">
                                    <div class="form-group col-md-6">
                                          <label for="prov">Provinsi Baru</label>
                                          <input type="text" id="prov" name="prov" class="form-control" placeholder="Provinsi Baru Anda"><label class="add" for="pass">
                                            Hindari penggunaan singkatan!
                                          </label>
                                        </div>
                                        <div class="form-group col-md-6">
                                          <label for="kota">Kota/Kabupaten Baru</label>
                                          <input type="text" id="kota" name="kota" class="form-control"placeholder="Kota/Kabupaten Baru Anda">
                                        </div>
                                      </div>
                                      <div class="form-group">
                                        <label for="alamat">Alamat Baru</label>
                                        <textarea type="address" class="form-control" id = "alamat" name="alamat" Placeholder="Alamat Baru Anda"></textarea>
                                      </div>
                                      <button type="submit" name="ubah" class="btn btn-primary" onclick="validasi_form_alamat()">Ubah</button> <a href="PenggunaProfil.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" style="background-color: #DC143C ; border-color: #DC143C; font-size: 11pt; " autocomplete="on">Kembali</a>
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
<div class="form-row">
