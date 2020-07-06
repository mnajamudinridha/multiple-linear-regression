<div class="card-header bg-transparent">
    <h3 class="mb-0">Edit Data Dataset</h3>
    </div>
<div class="card-body">
<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
  if (isset($_GET['id'])) {
      $id = $_GET['id'];
      $query = mysqli_query($con, "SELECT * FROM dataset
                                 WHERE kode = '$id'");
      $jumlah = mysqli_num_rows($query);
      if ($jumlah > 0) {
          $x = mysqli_fetch_array($query); ?>

<form action="module/dataset/update.php?halaman=<?php echo $_GET['halaman']; ?>&cari=<?php echo $_GET['cari']; ?>" method="POST"  enctype="multipart/form-data">
<div class="form-group">
    <label for="kode">Kode Person</label>
    <input type="text" class="form-control" name="kode" placeholder="Kode Person" 
    value="<?php echo $x['kode'] ?>" readonly>
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
            $val = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM dataset WHERE kode='$x[kode]' AND kuisioner='$b[kode]'"));
            if($b['jenis'] == "1"){
              echo '<div class="form-group">
                      <label for="kode">'.$b['kode'].' : '.$b['nama'].'</label>
                          <select name="kuisioner['.$b['kode'].']" class="form-control">
                            <option value="">-- Pilih Jawaban --</option>';
              $opsi = mysqli_query($con, 'SELECT * FROM opsi WHERE kuisioner="'.$b['kode'].'"');
              while ($c = mysqli_fetch_array($opsi)) {
                if($c['angka'] == $val['value']){
                  echo '<option value="'.$c['angka'].'" selected>'.$c['angka'].' : '.$c['label'].'</option>';
                }else{
                  echo '<option value="'.$c['angka'].'">'.$c['angka'].' : '.$c['label'].'</option>';
                }
              }
              echo '</select></div>';
            }else{
              echo '<div class="form-group">
              <label for="kode">'.$b['kode'].' : '.$b['nama'].'</label>
                <input type="text" class="form-control" name="kuisioner['.$b['kode'].']" placeholder="'.$b['nama'].'"
                value="'.$val['value'].'">
            </div>';
            }
          }
          echo '</div><br>';
        }
    }
  ?>
  <button type="submit" class="btn btn-primary" name="kirim">Update</button>
</form>

 <?php

      } else {
          echo 'Maaf, Id yang di edit tidak ditemukan';
      }
  }
  ?>
</div>
