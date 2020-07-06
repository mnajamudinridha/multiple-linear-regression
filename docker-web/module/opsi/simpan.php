<?php
include '../../vendor/autoload.php';
include '../../fungsi/koneksi.php';
include '../../fungsi/gambar.php';
if (isset($_POST['kirim'])) {
    $kuisioner = $_POST['kuisioner'];
    $label = $_POST['label'];
    $angka = $_POST['angka'];

    $cari = @$_GET['cari'];
    $halaman = @$_GET['halaman'];
    mysqli_query($con, "INSERT INTO opsi
                (kuisioner,angka,label)
                VALUES
                ('$kuisioner','$angka','$label')");
    header('location:../../index.php?menu=opsi');
}
