<?php
include '../../vendor/autoload.php';
include '../../fungsi/koneksi.php';
include '../../fungsi/gambar.php';
if (isset($_POST['kirim'])) {
    $user = $_POST['username'];
    $pass = $_POST['password'];
    $nama = $_POST['nama'];
    $email = $_POST['email'];

    $cari = @$_GET['cari'];
    $halaman = @$_GET['halaman'];
    $query = mysqli_query($con, "SELECT username
                             FROM admin
                             WHERE username='$user'");
    $jumlah = mysqli_num_rows($query);
    if ($jumlah > 0) {
        echo 'Username Sudah Ada';
    } else {
        mysqli_query($con, "INSERT INTO admin
                  (username,password,nama,email,level)
                  VALUES
                  ('$user','".password_hash($pass, PASSWORD_BCRYPT)."','$nama','$email','user')");

        header('location:../../index.php?pesan=registersukses');
    }
}
