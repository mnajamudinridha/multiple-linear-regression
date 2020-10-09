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
            $cek = mysqli_query($con, "SELECT * FROM dataset WHERE kode='$kode' AND kuisioner='$key'");
            $total = mysqli_num_rows($cek);
            if($total > 0){
                mysqli_query($con, "UPDATE dataset
                SET value='$value'
                WHERE kode='$kode' AND kuisioner='$key'");
            }else{
                mysqli_query($con, "INSERT INTO dataset (id,kode,kuisioner,value) VALUES (NULL, '$kode','$key','$value')");
            }
        }
        header('location:../../index.php?menu=dataset');
    } else {
        echo 'Kode yang Di Update Tidak Ada';
    }
}
