<div class="card-header bg-transparent">
    <h3 class="mb-0">Edit Data Opsi</h3>
    </div>
<div class="card-body">
<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
  if (isset($_GET['id'])) {
      $id = $_GET['id'];
      $query = mysqli_query($con, "SELECT * FROM opsi
                                 WHERE id = '$id'");
      $jumlah = mysqli_num_rows($query);
      if ($jumlah > 0) {
          $a = mysqli_fetch_array($query); ?>


<form action="module/opsi/update.php?halaman=<?php echo $_GET['halaman']; ?>&cari=<?php echo $_GET['cari']; ?>" method="POST"  enctype="multipart/form-data">
  <input type="hidden" name="id" value="<?php echo $a['id'] ?>" readonly="readonly">
  <div class="form-group">
    <label for="kuisioner">Kuisioner</label>
        <select name="kuisioner" class="form-control">
          <option value="">-- Pilih Kuisioner --</option>
          <?php
          $query = mysqli_query($con, 'SELECT * FROM kuisioner WHERE jenis="1"');
          while ($b = mysqli_fetch_array($query)) {
              if ($b['kode'] == $a['kuisioner']) {
                  echo "<option value='$b[kode]' selected>$b[kode] - $b[nama]</option>";
              } else {
                  echo "<option value='$b[kode]'>$b[kode] - $b[nama]</option>";
              }
          } ?>
    </select>
  </div>
  <div class="form-group">
    <label for="label">Label</label>
    <input type="text" class="form-control" name="label" placeholder="Label"
           value="<?php echo $a['label'] ?>">
  </div>
  <div class="form-group">
    <label for="angka">Angka</label>
    <input type="text" class="form-control" name="angka" placeholder="Angka"
           value="<?php echo $a['angka'] ?>">
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
