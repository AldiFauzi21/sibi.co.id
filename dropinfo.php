<?php
	session_start();
	require 'functions.php';
	include 'config.php';
  	$id_informasi=$_GET["id_info"];
  	$infomaudidrop=query("SELECT * FROM informasi WHERE id_informasi='$id_informasi'")[0];
  	$txt="informasi/".$infomaudidrop['isi'];
    $gambar=$infomaudidrop['gambar'];
    //echo "<script>alert('txt');<script>";
  	if(hapusbacainfo($id_informasi)>=0){
     // echo "<script>alert('baca');<script>";	
        if(unlink($txt)){ unlink($gambar);
          //echo "<script>alert('unlink');<script>";
    			echo "<script>alert('informasi berhasil dihapus');<script>";
    			if(dropinfo($id_informasi)>0){
            //echo "<script>alert('info');<script>";
  				  header("location:Infokom.php");
          }else {
          echo "<script>alert('informasi gagal dihapus');<script>";
          header("location:Infokom.php");
        }
      }
  } 
?>