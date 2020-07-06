<div class="card-header bg-transparent">
    <h3 class="mb-0">Hasil Prediksi Multiple Linear Regression</h3>
    </div>
<div class="card-body">
<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
$nama = $_POST['nama'];
$kuisioner = $_POST['kuisioner'];
echo "<table class='table table-hover table-bordered'>";
        echo "<tr><th>Pertanyaan</th><th>Jawaban</th></tr>";
        echo "<tr><td>Nama Lengkap</td><td>$nama</td></tr>";
        foreach($kuisioner as $key => $value){
          echo '<tr><td style="white-space: -o-pre-wrap; 
          word-wrap: break-word;
          white-space: pre-wrap; 
          white-space: -moz-pre-wrap; 
          white-space: -pre-wrap;">';
          $pertanyaan = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kuisioner WHERE kode='$key'"));
          echo $pertanyaan['kode']." : ".$pertanyaan['nama'];
          echo '</td><td style="white-space: -o-pre-wrap; 
          word-wrap: break-word;
          white-space: pre-wrap; 
          white-space: -moz-pre-wrap; 
          white-space: -pre-wrap;">';
          $jawaban = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM opsi WHERE kuisioner='$key' AND angka='$value'"));
          echo $jawaban['angka']." : ".$jawaban['label'];
          echo '</td></tr>';
        }
        echo '</table>';
        echo "<hr><h3>Persamaan Multiple Linear Regression</h3>";
        $constanta = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kuisioner WHERE jenis='1' AND fungsi='1'"));
        $kuis = mysqli_query($con, "SELECT * FROM kuisioner WHERE jenis='1' AND fungsi='2'");
        echo "Y = <code>".round($constanta['bobot'],4)."</code> + ";
        $sum = mysqli_num_rows($kuis);
        $no = 1;
        while($a = mysqli_fetch_array($kuis)){
            if($no==$sum){
                echo "(<code>".round($a['bobot'],4)."</code><small>x</small><code>$a[kode]</code>)";
            }else{
                echo "(<code>".round($a['bobot'],4)."</code><small>x</small><code>$a[kode]</code>) + ";
            }
            $no++;
        }
        echo "<hr><h3>Perhitungan Multiple Linear Regression</h3>";
        $constanta = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kuisioner WHERE jenis='1' AND fungsi='1'"));
        $kuis = mysqli_query($con, "SELECT * FROM kuisioner WHERE jenis='1' AND fungsi='2'");
        echo "Y = <code>".round($constanta['bobot'],4)."</code> + ";
        $sum = mysqli_num_rows($kuis);
        $no = 1;
        $hitung = "Y = <code>".round($constanta['bobot'],4)."</code> + ";
        $Y = $constanta['bobot'];
        while($a = mysqli_fetch_array($kuis)){
            $hasil = ($a['bobot']*$kuisioner[$a['kode']]);
            $Y = $Y+$hasil;
            if($no==$sum){
                $hitung .= "(<code>".round($hasil,4)."</code>)";
                echo "(<code>".round($a['bobot'],4)."</code><small>x</small><code>".$kuisioner[$a['kode']]."</code>)";
            }else{
                $hitung .= "(<code>".round($hasil,4)."</code>) + ";
                echo "(<code>".round($a['bobot'],4)."</code><small>x</small><code>".$kuisioner[$a['kode']]."</code>) + ";
            }
            $no++;
        }
        echo "<br><br>".$hitung;
        echo "<br><br>Y = <code>".round($Y)."</code><br><br>Y = ";
        $akhir = mysqli_fetch_array(mysqli_query($con, "SELECT kuisioner.* FROM kuisioner WHERE fungsi = '1'"));
        $opsi = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM opsi WHERE kuisioner = '".$akhir['kode']."' AND angka='".round($Y)."'"));
        echo "<code>".$opsi['label']."</code>";
?>
</div>
