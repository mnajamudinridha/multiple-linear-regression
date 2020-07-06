<div class="card-header bg-transparent">
    <h3 class="mb-0">Edit Data Halaman</h3>
    </div>
<div class="card-body">
<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
  if (isset($_GET['id'])) {
      $id = $_GET['id'];
      $query = mysqli_query($con, "SELECT * FROM halaman
                                 WHERE id = '$id'");
      $jumlah = mysqli_num_rows($query);
      if ($jumlah > 0) {
          $a = mysqli_fetch_array($query); ?>


<form action="module/halaman/update.php?halaman=<?php echo $_GET['halaman']; ?>&cari=<?php echo $_GET['cari']; ?>" method="POST"  enctype="multipart/form-data">
  <div class="form-group">
    <label for="id">Id</label>
    <input type="text" class="form-control" name="id" placeholder="Id"
           value="<?php echo $a['id'] ?>" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="judul">Judul</label>
    <input type="text" class="form-control" name="judul" placeholder="Judul"
           value="<?php echo $a['judul'] ?>">
  </div>
  <div class="form-group">
    <label for="isi">Isi</label>
    <textarea name="isi" class="mytextarea" rows=5><?php echo $a['isi'] ?></textarea>
  </div>
  <button type="submit" class="btn btn-primary" name="kirim">Update</button>
</form>

 <?php

      } else {
          echo 'Maaf, Id yang di edit tidak ditemukan';
      }
  }
  ?>
</div>
