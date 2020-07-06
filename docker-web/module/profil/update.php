<?php

session_start();
include '../../vendor/autoload.php';
include '../../fungsi/koneksi.php';
include '../../fungsi/gambar.php';
if (isset($_POST['kirim'])) {
    $username = $_SESSION['username'];
    $password = $_POST['password'];
    $nama = $_POST['nama'];
    $email = $_POST['email'];

    $cari = @$_GET['cari'];
    $halaman = @$_GET['halaman'];
    $query = mysqli_query($con, "SELECT username
                             FROM admin
                             WHERE username='$username'");
    $jumlah = mysqli_num_rows($query);
    if ($jumlah > 0) {
        if (!empty($password)) {
            mysqli_query($con, "UPDATE admin
                        SET password='".password_hash($password, PASSWORD_BCRYPT)."',
                            nama='$nama',
                            email='$email'
                        WHERE username='$username'");
        } else {
            mysqli_query($con, "UPDATE admin
                        SET nama='$nama',
                            email='$email'
                        WHERE username='$username'");
        }
        header('location:../../index.php?menu=gantidata&status=sukses');
    } else {
        echo 'Kode yang Di Update Tidak Ada';
    }
}
