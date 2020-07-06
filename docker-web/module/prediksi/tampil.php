<?php
if (empty($_SESSION['login']) || $_SESSION['login'] != 'admin') {
    echo '<div class="card-header bg-transparent">
    <h3 class="mb-0">Harus Login</h3>
    </div>
    <div class="card-body">';
    echo "<h5>Anda Harus Login, Kembali Ke <a href='index.php'>Home</a></h5>";
    echo '</div>';
} else {
  
    include 'vendor/autoload.php';
    include 'fungsi/koneksi.php';
    ?>
    <div class="card-header bg-transparent">
        <h3 class="mb-0">Prediksi Multipl Linear Regression</h3>
        </div>
    <div class="card-body">
    <form action="index.php?menu=prediksi&aksi=edit" method="POST" enctype="multipart/form-data">
    <div class="form-group">
    <label for="kode">Nama Lengkap</label>
    <input type="text" class="form-control" name="nama" placeholder="Nama Lengkap">
  </div>
    <?php
        $query = mysqli_query($con, 'SELECT * FROM kategori');
        while ($a = mysqli_fetch_array($query)) {
            $kuisioner = mysqli_query($con, 'SELECT * FROM kuisioner WHERE kategori="'.$a['kode'].'" AND fungsi="2"');
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
    <button type="submit" class="btn btn-primary" name="kirim">Prediksi</button>
    </form>
    </div>
<?php
}
