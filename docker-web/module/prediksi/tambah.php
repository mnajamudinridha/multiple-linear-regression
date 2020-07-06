<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
?>
<div class="card-header bg-transparent">
    <h3 class="mb-0">Tambah Data Dataset</h3>
    </div>
<div class="card-body">
<form action="module/dataset/simpan.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
    <label for="kode">Kode Person</label>
    <input type="text" class="form-control" name="kode" placeholder="Kode Person">
  </div>
  <?php
    $query = mysqli_query($con, 'SELECT * FROM kategori');
    while ($a = mysqli_fetch_array($query)) {
        $kuisioner = mysqli_query($con, 'SELECT * FROM kuisioner WHERE kategori="'.$a['kode'].'"');
        $total = mysqli_num_rows($kuisioner);
        if($total){
          echo '<div class="card-header border">
                  <h3 class="mb-0">'.$a['nama'].'</h3>
                </div>';
          echo '<div class="card-body border">';
          while ($b = mysqli_fetch_array($kuisioner)) {
            if($b['jenis'] == "1"){
              echo '<div class="form-group">
                      <label for="kode">'.$b['kode'].' : '.$b['nama'].'</label>
                          <select name="kuisioner['.$b['kode'].']" class="form-control">
                            <option value="">-- Pilih Jawaban --</option>';
              $opsi = mysqli_query($con, 'SELECT * FROM opsi WHERE kuisioner="'.$b['kode'].'"');
              while ($c = mysqli_fetch_array($opsi)) {
                echo '<option value="'.$c['angka'].'">'.$c['angka'].' : '.$c['label'].'</option>';
              }
              echo '</select></div>';
            }else{
              echo '<div class="form-group">
              <label for="kode">'.$b['kode'].' : '.$b['nama'].'</label>
                <input type="text" class="form-control" name="kuisioner['.$b['kode'].']" placeholder="'.$b['nama'].'">
            </div>';
            }
          }
          echo '</div><br>';
        }
    }
  ?>
  <button type="submit" class="btn btn-primary" name="kirim">Simpan</button>
</form>
</div>
