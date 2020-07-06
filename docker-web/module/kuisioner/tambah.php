<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
?>
<div class="card-header bg-transparent">
    <h3 class="mb-0">Tambah Data Kuisioner</h3>
    </div>
<div class="card-body">
<form action="module/kuisioner/simpan.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
    <label for="kode">Kode</label>
    <input type="text" class="form-control" name="kode" placeholder="Kode Kuisioner">
  </div>
  <div class="form-group">
    <label for="nama">Nama</label>
    <input type="text" class="form-control" name="nama" placeholder="Nama Kuisioner">
  </div>
  <div class="form-group">
    <label for="kategori">Kategori</label>
        <select name="kategori" class="form-control">
          <option value="">-- Pilih Kategori --</option>
          <?php
          $query = mysqli_query($con, 'SELECT * FROM kategori');
          while ($b = mysqli_fetch_array($query)) {
            echo "<option value='$b[kode]'>$b[kode] - $b[nama]</option>";
          } ?>
    </select>
  </div>
  <div class="form-group">
    <label for="jenis">Jenis</label>
        <select name="jenis" class="form-control">
        <option value='0'>Input Text</option>
        <option value='1'>Input Option</option>
        </select>
  </div>
  <div class="form-group">
    <label for="solusi">Fungsi</label>
        <select name="fungsi" class="form-control">
        <option value='0'>Variable Hidden</option>
        <option value='1'>Variable Dependent</option>
        <option value='2'>Variable Independent</option>
        </select>
  </div>
  <button type="submit" class="btn btn-primary" name="kirim">Simpan</button>
</form>
</div>
