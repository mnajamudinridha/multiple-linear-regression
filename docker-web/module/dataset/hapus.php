<?php
  include '../../vendor/autoload.php';
  include '../../fungsi/koneksi.php';
  if (isset($_GET['id'])) {
      $id = $_GET['id'];
      $query = mysqli_query($con, "SELECT kode
                               FROM dataset
                               WHERE kode='$id'");
      $jumlah = mysqli_num_rows($query);
      if ($jumlah > 0) {
          mysqli_query($con, "DELETE FROM dataset
                          WHERE kode='$id'");
          header('location:../../index.php?menu=dataset');
      } else {
          echo 'Maaf, Id tidak ditemukan';
      }
  }
