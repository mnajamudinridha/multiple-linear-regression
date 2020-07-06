<div class="card-header bg-transparent">
    <h3 class="mb-0">Cetak Laporan</h3>
    </div>
<div class="card-body">
<form action="module/laporan/lihat.php" method="GET" enctype="multipart/form-data">
  <div  class="customform">
  <div class="form-group">
    <label for="laporan">Jenis Laporan</label>
    <select name="laporan" class="form-control laporan">
      <option value="kafe">Semua Kafe</option>
      <option value="rangking">Rekomendasi Kafe Terbaik</option>
      <option value="perhitungan">Detail Perhitungan</option>
    </select>
  </div>
</div>
  <button type="submit" class="btn btn-primary" name="kirim">Cetak</button>
</form><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
<script>
$('.laporan').on('change', function() {
  if(this.value == "detail"){
    $('.customform').append('<div class="form-group hilang">'+
                            '<label for="laporan">Pilih User</label>'+
                            '<select name="user" class="form-control">'+
                            '<?php
                              $query = mysqli_query($con, 'SELECT * FROM transaksi GROUP BY user');
                              while($a = mysqli_fetch_array($query)){
                                echo "<option value=$a[user]>$a[user]</option>";
                              }
                            ?>'+
                            '</select>'+
                            '</div>');
    $('.customform').append('<div class="form-group hilang">'+
                            '<label for="laporan">Pilih Tanggal</label>'+
                            '<select name="tanggal" class="form-control">'+
                            '<?php
                              $query = mysqli_query($con, 'SELECT * FROM transaksi GROUP BY tanggal');
                              while($a = mysqli_fetch_array($query)){
                                echo "<option value=$a[tanggal]>$a[tanggal]</option>";
                              }
                            ?>'+
                            '</select>'+
                            '</div>');
  }else{
    $('.hilang').empty();
  }
})
</script>
