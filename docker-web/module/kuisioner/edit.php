<div class="card-header bg-transparent">
    <h3 class="mb-0">Edit Data Kuisioner</h3>
    </div>
<div class="card-body">
<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
  if (isset($_GET['id'])) {
      $id = $_GET['id'];
      $query = mysqli_query($con, "SELECT * FROM kuisioner
                                 WHERE kode = '$id'");
      $jumlah = mysqli_num_rows($query);
      if ($jumlah > 0) {
          $a = mysqli_fetch_array($query); ?>


<form action="module/kuisioner/update.php?halaman=<?php echo $_GET['halaman']; ?>&cari=<?php echo $_GET['cari']; ?>" method="POST"  enctype="multipart/form-data">
  <div class="form-group">
    <label for="kode">Kode</label>
    <input type="text" class="form-control" name="kode" placeholder="Kode"
           value="<?php echo $a['kode'] ?>" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="nama">Nama</label>
    <input type="text" class="form-control" name="nama" placeholder="Nama"
           value="<?php echo $a['nama'] ?>">
  </div>
  <div class="form-group">
    <label for="kategori">Kategori</label>
        <select name="kategori" class="form-control">
          <option value="">-- Pilih Kategori --</option>
          <?php
          $query = mysqli_query($con, 'SELECT * FROM kategori');
          while ($b = mysqli_fetch_array($query)) {
              if ($b['kode'] == $a['kategori']) {
                  echo "<option value='$b[kode]' selected>$b[kode] - $b[nama]</option>";
              } else {
                  echo "<option value='$b[kode]'>$b[kode] - $b[nama]</option>";
              }
          } ?>
    </select>
  </div>
  <div class="form-group">
    <label for="solusi">Jenis</label>
        <select name="jenis" class="form-control">
        <?php
          if($a['jenis']== "0"){
            echo "<option value='0' selected>Input Text</option>
                  <option value='1'>Input Option</option>";
          } else {
            echo "<option value='0'>Input Text</option>
                  <option value='1' selected>Input Option</option>";
          }
        ?>
        </select>
  </div>
  <div class="form-group">
    <label for="solusi">Fungsi</label>
        <select name="fungsi" class="form-control">
        <?php
          if($a['fungsi']== "0"){
            echo "<option value='0' selected>Variable Hidden</option>
                  <option value='1'>Variable Dependent</option>
                  <option value='2'>Variable Independent</option>";
          } else if($a['fungsi']== "1"){
            echo "<option value='0'>Variable Hidden</option>
                  <option value='1' selected>Variable Dependent</option>
                  <option value='2'>Variable Independent</option>";
          } else {
            echo "<option value='0'>Variable Hidden</option>
                  <option value='1'>Variable Dependent</option>
                  <option value='2' selected>Variable Independent</option>";
          }
        ?>
        </select>
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
