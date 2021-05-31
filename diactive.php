<?php
	session_start();
	require 'functions.php';
	$email=$_SESSION["useremail"];
	$pggn=query("SELECT * FROM pengguna WHERE email='$email'")[0];
	$id=$pggn['id_pengguna'];
	// if (isset($id))
	// {echo "<script>alert('id anda ada')</script>";}
	if(hapusbaca($id)>=0){
		if(hapusriwayat($id)>=0){
			if( hapus($email)>0){
				session_destroy();
				header("location:Beranda.html");
			}else{
				echo "<script>alert('Akun SIBI.CO.ID anda gagal dihapus secara permanen');<script>";
				header("location:PenggunaProfil.php");
			} 
		}
	}
?>