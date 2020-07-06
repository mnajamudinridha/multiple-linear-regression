<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
?>
<div class="card-header bg-transparent">
    <h3 class="mb-0">Tambah Data Opsi</h3>
    </div>
<div class="card-body">
<form action="module/opsi/simpan.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
    <label for="kuisioner">Kuisioner</label>
        <select name="kuisioner" class="form-control">
          <option value="">-- Pilih Kuisioner --</option>
    <?php
    $query = mysqli_query($con, 'SELECT * FROM kuisioner WHERE jenis="1"');
    while ($a = mysqli_fetch_array($query)) {
        echo "<option value='$a[kode]'>$a[kode] - $a[nama]</option>";
    }
    ?>
    </select>
  </div>
  <div class="form-group">
    <label for="nama">Label</label>
    <input type="text" class="form-control" name="label" placeholder="Label Opsi">
  </div>
  <div class="form-group">
    <label for="angka">Angka</label>
    <input type="text" class="form-control" name="angka" placeholder="Angka / Nilai Opsi">
  </div>
  <button type="submit" class="btn btn-primary" name="kirim">Simpan</button>
</form>
</div>
