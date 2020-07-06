<?php
include '../../vendor/autoload.php';
include '../../fungsi/koneksi.php';
include '../../fungsi/gambar.php';
if (isset($_POST['kirim'])) {
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $kategori = $_POST['kategori'];
    $jenis = $_POST['jenis'];
    $fungsi = $_POST['fungsi'];

    $cari = @$_GET['cari'];
    $halaman = @$_GET['halaman'];
    $query = mysqli_query($con, "SELECT kode
                             FROM kuisioner
                             WHERE kode='$kode'");
    $jumlah = mysqli_num_rows($query);
    if ($jumlah > 0) {
        echo 'Kode Sudah Ada';
    } else {
        mysqli_query($con, "INSERT INTO kuisioner
                  (kode,nama,kategori,jenis,fungsi)
                  VALUES
                  ('$kode','$nama','$kategori','$jenis','$fungsi')");

        header('location:../../index.php?menu=kuisioner');
    }
}
