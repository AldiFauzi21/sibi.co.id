<?php
	session_start();
	include'config.php';
	if(isset($_POST['login'])){
		$email=$_POST['email'];
		$password=$_POST['password'];
		$_SESSION['useremail']=$email;
		$sqluser=mysqli_query($conn,"SELECT * from pengguna where email='$email' and kata_sandi='$password'");
		$sqladmin=mysqli_query($conn,"SELECT * from administrator where email='$email' and kata_sandi='$password'");
		if (($email!="")&&($password!="")&&isset($password)&&isset($email)&&(strlen($password)>=5)&&(strlen($password)<=35)){
			if(mysqli_num_rows($sqluser)>0){
				$_SESSION['status']="Pengguna";
				header("location:BerandaAfter.php");
			}
			else if(mysqli_num_rows($sqladmin)>0){
				$_SESSION['status']="Administrator";
				header("location:BerandaAfter.php");
			}
			else{
				$_SESSION['status']="";
				header("location:Login.php?pesan=gagal");
			}
		}else{
			header("location:Login.php");
		}

	}
?>