<?php
include '../../vendor/autoload.php';
include '../../fungsi/koneksi.php';
include '../../fungsi/gambar.php';
if (isset($_POST['kirim'])) {
    $kuisioner = $_POST['kuisioner'];
    $kode = $_POST['kode'];

    $cari = @$_GET['cari'];
    $halaman = @$_GET['halaman'];
    $query = mysqli_query($con, "SELECT kode
                             FROM dataset
                             WHERE kode='$kode'");
    $jumlah = mysqli_num_rows($query);
    if ($jumlah > 0) {
        echo 'Kode Sudah Ada';
    } else {
        foreach ($kuisioner as $key => $value) {
            mysqli_query($con, "INSERT INTO dataset
            (kode,kuisioner,value)
            VALUES
            ('$kode','$key','$value')");
        }
        header('location:../../index.php?menu=dataset');
    }
}
