<?php
	session_start();
	if(
		isset($_SESSION['status'])
	){
		header("location:BerandaAfter.php");
	} else {
		header("location:Beranda.html");
	}
?>