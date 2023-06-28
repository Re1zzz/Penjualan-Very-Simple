<?php 
$server = "localhost";
$user = "root";
$pass = "";
$database = "databaseX2";
$connect = mysqli_connect($server, $user, $pass, $database);
if (!$connect) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}
 ?>