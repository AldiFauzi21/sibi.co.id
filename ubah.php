<?php
session_start();
require 'functions.php';
include 'config.php';
//ambil data id di url
$email=$_SESSION["useremail"];
//echo "<div  class='alert'>",$email,"</div>";
//var_dump($id_pengguna);
//query data pengguna berdasarkan id
$pggn=query("SELECT * FROM pengguna WHERE email='$email'")[0];
//var_dump($pggn[0] ["alamat"]); //sudah ada data penggunanya, tapi dalam bentuk assoc array karena dimasukkin ke dalam function query
//var_dump($pggn ["alamat"]);

//cek apakah tombol submit/ubah sudah ditekan atau belum
//ambil semua data baru, masukkan ke variabel $_POST, lalu dikirim ke function ubah
if( isset($_POST["submit"]) ) {

	//cek apakah data berhasil diubah atau tidak
	if( ubah($_POST) > 0 ){ //data dari elemen form diambil, masukin ke dalam tambah, nanti akan ditangkap oleh data, jadi nanti $_POST diambil oleh data
	header("location:PenggunaProfil.php?pesan=masuk");
	} else {	
	header("location:PenggunaData.php?pesan=gagal");
	}
}
?>

<!DOCTYPE html>
<html>
<head>
	<title> Ubah Data Pengguna </title>
</head>
<body>
	<h1> Ubah Data Pengguna </h1>
	
	<form action="" method="post" enctype="multipart/form-data"> <!-- action dikosongkan karena agar ketika submit diklik, datanya dikirim ke page ini sendiri  -->
		<input type="hidden" name="id_pengguna" value="<?= $pggn["id_pengguna"]?>"> <!--id bisa masuk di function ubah di $data-->
		<input type="hidden" name="gambarLama" value="<?= $pggn["gambar"]?>"> <!--kasih aja nama gambarLama biar kalo user gak edit gambar yang dipake gambar yg lama-->
		<ul>
			<li>
				<label for="nama_lengkap"> Nama Lengkap : </label> <!-- pake for suppaya label dan input terhubung, for harus nyambung dengan id, agar tampilannya tetap sama tapi ketika nama lengkap diklik, otomatis text fieldnya aktif-->
				<input type="text" name="nama_lengkap" id="nama_lengkap" required value="<?= $pggn["nama_lengkap"]?>">
			</li>
			
			<li>
				<label for="email"> E-mail : </label>
				<input type="text" name="email" id="email" required value="<?= $pggn["email"]?>">
			</li>
			
			<li>
				<label for="alamat"> Alamat : </label>
				<input type="text" name="alamat" id="alamat" required value="<?= $pggn["alamat"]?>">
			</li>
			
			<li>
				<label for="no_hp_wa"> No HP / WA : </label>
				<input type="text" name="no_hp_wa" id="no_hp_wa" required value="<?= $pggn["no_hp_wa"]?>">
			</li>
			
			<li>
				<label for="kata_sandi"> Kata Sandi : </label>
				<input type="password" name="kata_sandi" id="kata_sandi" required value="<?= $pggn["kata_sandi"]?>">
			</li>
			
			<li>
				<label for="gambar"> Gambar : </label> <br>
				<img src="img/<?=$pggn['gambar'];?>" width="40"> <br>
				<input type="file" name="gambar" id="gambar">
			</li>
				
			<li>
				<button type ="submit" name="submit"> Ubah Data </button>
			</li>
		<ul>
		
	</form>
	
</body>
</html>