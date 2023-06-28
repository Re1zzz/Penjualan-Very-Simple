<?php
include 'koneksi.php';
session_start();
if (isset($_GET['stats'])) {
	echo "<script>alert('Email atau Password tidak sesuai')</script>";
}
if (!empty($_SESSION['id'])) {
	header('location:login.php');
}
?>
<html>
<head>
<title>LOGIN</title>
</head>
<style>
    body {
        background-image: url('exe.jpeg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
    }

	.exe {
		color: black;
		font-weight: bold;
	}
	img {
        width:120px;
        height:120px;
    }
	.eye{
		height: 50px;
		width: 200px;
	}
	.eke{
		height: 50px;
		width: 70px;
	}
	</style>

<body>
<table border="0" align="center" cellspacing="12">
            <tr>
                <td>
                <img src="logo.png">
            
                </td>
            </tr>
        </table>
		
<h1 class="exe" align="center">LOGIN YOUR ACCOUNT</h1>

<?php 
//kode php ini kita gunakan untuk menampilkan pesan eror
if (!empty($_GET['error'])) {
	if ($_GET['error'] == 1) {
		echo '<h3>Username dan Password belum diisi!</h3>';
	} else if ($_GET['error'] == 2) {
		echo '<h3>Username belum diisi!</h3>';
	} else if ($_GET['error'] == 3) {
		echo '<h3>Password belum diisi!</h3>';
	} else if ($_GET['error'] == 4) {
		echo '<h3>Username dan Password tidak terdaftar!</h3>';
	}
}
?>

<form name="login" action="oten.php" method="post" >
<table border="0" cellpadding="5" cellspacing="0" class="exe" align="center">
	<tr>
    	<td><input class="eye" type="text" name="id" required placeholder="ID" /></td>
    </tr>
	<tr>
    	<td><input class="eye" type="password" name="password" required placeholder="Password" /></td>
		<td colspan="3"><input class="eke" type="submit" name="login" value="Login" /></td>
	</tr>
	
    	
    
</table>
</form>
</body>
</html>