<?php
include '../../vendor/autoload.php';
include '../../fungsi/koneksi.php';
include '../../fungsi/gambar.php';
if (isset($_POST['kirim'])) {
    $kode = $_POST['kode'];
    $kuisioner = $_POST['kuisioner'];

    $cari = @$_GET['cari'];
    $halaman = @$_GET['halaman'];
    $query = mysqli_query($con, "SELECT kode
                             FROM dataset
                             WHERE kode='$kode'");
    $jumlah = mysqli_num_rows($query);
    if ($jumlah > 0) {
        foreach ($kuisioner as $key => $value) {
            mysqli_query($con, "UPDATE dataset
            SET value='$value'
            WHERE kode='$kode' AND kuisioner='$key'");
        }
        header('location:../../index.php?menu=dataset');
    } else {
        echo 'Kode yang Di Update Tidak Ada';
    }
}
