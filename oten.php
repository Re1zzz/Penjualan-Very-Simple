<?php 
include 'koneksi.php';
session_start();
if (!isset($_SESSION['id'])) {
    header("Location: login.php");
}
if (isset($_POST['login'])) {
    $id = $_POST['id'];
    $password = $_POST['password'];
    $query = "SELECT * FROM loginin WHERE id='$id' AND password='$password'";
    $sql = mysqli_query($connect, $query);
    if ($sql->num_rows > 0) {
        $row = mysqli_fetch_assoc($sql);
        $_SESSION['id'] = $row['id'];
        header("Location: home.php");
    } else {
      header("Location: login.php?stats=error");
    }
}
 ?>