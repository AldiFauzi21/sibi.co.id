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
$_SESSION["sandi"]=$pggn["kata_sandi"]
//echo "<div  class='alert'>",$pggn['alamat'],"</div>";
//var_dump($pggn[0] ["alamat"]); //sudah ada data penggunanya, tapi dalam bentuk assoc array karena dimasukkin ke dalam function query
//var_dump($pggn ["alamat"]);

//cek apakah tombol submit/ubah sudah ditekan atau belum
//ambil semua data baru, masukkan ke variabel $_POST, lalu dikirim ke function ubah
// if( isset($_POST['ubah']) ) {
//     //cek apakah data berhasil diubah atau tidak
//   if( ubah($_POST['ubah']) > 0 ){ //data dari elemen form diambil, masukin ke dalam tambah, nanti akan ditangkap oleh data, jadi nanti $_POST diambil oleh data
//   header("location:PenggunaData.php?pesan=masuk");
//   } else {  
//   header("location:PenggunaData.php?pesan=gagal");
//   }
// }
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
      pre{
      	font-family:  calibri;
      	font-size: 12pt;
      }
      .alert{
	    background: green;
	    color: white;
	    padding: 10px;
	    text-align: center;
	    border:1px solid green;
	  }
    </style>




    <title>Profil Anda</title>
  </head>
  <body class="mt-5">
 <script type="text/javascript">
 	function katasandi(){
 		var passwordlamakonf = prompt("Masukkan kata sandi lama anda!");
 		var passwordlama = "<?=$_SESSION['sandi']?>";
 		if (passwordlama==passwordlamakonf){
 			window.location.href="KataSandi.php";
 		} else {
 			alert("Konfiramasi kata sandi lama anda salah");
 		}
 	}
 </script>
  <script type="text/javascript">
 	function diactive(){
 		if (confirm("Apakah anda yakin ingin menghapus akun anda?")){
 			var passwordlamakonf = prompt("Silahkan konfirmasi kata sandi anda untuk alasan keamanan");
	 		var passwordlama = "<?=$_SESSION['sandi']?>";
	 		if (passwordlama==passwordlamakonf){
	 			window.location.href="diactive.php";
	 		} else {
	 			alert("Konfiramasi kata sandi anda salah! \n anda tidak dapat menghapus akun ini");
	 		}
 		}
 	}
 </script>
    <!--Navbar-->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <img src="img/f.jpg" width="30" height="30" class="d-inline-block align-top" alt="">
                <a class="navbar-brand" href="BerandaAfter.php">SIBI.CO.ID</a>
                
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
            </div>
              </nav>



<!--Jumbotron-->
<div class="jumbotron jumbotron-fluid">
    <div class="container">
      <?php 
	      if(isset($_GET['pesan'])){
	        if($_GET['pesan']=="masuk"){
	          echo "<div  class='alert'>Data diri anda berhasil diubah </div>";
	          //echo "<div  class='alert'>Status WA : ",$_SESSION['WhatsApp']," <br> alamat : ",$_SESSION['test'],"</div>";
	        }
	        else{
	          echo "<h4 class='display-4'>Profil Anda</h4>";
	        }
	      }else{
	          echo "<h4 class='display-4'>Profil Anda</h4>";
	      }
	    ?>
   <!--Profil-->
          <div class="col-sm">
          <div class="card">
              <div class="card-body">
          <ul class="list-group list-group-flush">
            <li class="list-group-item"> <pre><b>Nama Lengkap     : </b><?= $pggn["nama_lengkap"]?></pre></li>
            <li class="list-group-item"><pre><b>E-mail                     : </b><?= $pggn["email"]?></pre></li>
            <li class="list-group-item"><pre><b>Telpon Seluluer    : </b><?= $pggn["no_hp_wa"]?></pre></li><hr>
            <center>
              <div class="card border-Light mb-3" style="max-width: 18rem;">
                    <a href="PenggunaData.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" style="font-size: 11pt;">Ubah</a>
                    </div></center>
          </ul> </div> </div> </div><div class="col-sm">

        <div class="card">
            <div class="card-header">
            <b>Alamat</b>
          </div>
            <li class="list-group-item"><p style="font-size: 11pt;"><?= $pggn["alamat"]?></p></li>
            <center> <div class="card border-Light mt-3 mb-3" style="max-width: 6rem;">
                <a href="Alamat.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" style="font-size: 11pt;">Ubah</a> </div>
              </center> 
        </div>
    <!--Passwrd-->
  <div class="card">
        <div class="card-body text-Light">
        	<div class="d-flex bd-highlight">
        		<div class='p-2 flex-fill bd-highlight'>
            		<a class="btn btn-primary btn-lg active" role="button" aria-pressed="true" onclick="katasandi()" style=" font-size: 11pt;">Ubah Kata Sandi</a>
            	</div>
            	<div class='p-2 flex-fill bd-highlight'>
            		<a class="btn btn-primary btn-lg active" role="button" aria-pressed="true"onclick="diactive()" style="background-color: #DC143C ; border-color: #DC143C; font-size: 11pt;  ">Hapus Akun Anda</a>
            	</div>
        	</div>
        </div>
          </div> 
          </div> 
          </div>
        </div>
      </div>
   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>