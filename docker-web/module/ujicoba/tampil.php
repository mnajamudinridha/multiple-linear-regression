<?php
if (empty($_SESSION['login']) || $_SESSION['login'] != 'admin') {
    echo '<div class="card-header bg-transparent">
    <h3 class="mb-0">Harus Login</h3>
    </div>
    <div class="card-body">';
    echo "<h5>Anda Harus Login, Kembali Ke <a href='index.php'>Home</a></h5>";
    echo '</div>';
} else {
    ?>
    <div class="card-header bg-transparent">
    <h3 class="mb-0">Data Uji t</h3>
    </div>
    <div class="card-body">
    <?php
    include 'vendor/autoload.php';
    include 'fungsi/koneksi.php';
    $data = mysqli_query($con, "SELECT * FROM kuisioner WHERE kode LIKE 'Q%'");
    $jumlah = mysqli_num_rows($data);
    $no = 1;
    $table = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kuisioner ORDER BY ttable DESC LIMIT 1"));
    if ($jumlah > 0) {
        echo "<table class='table table-hover table-bordered'>";
        echo "<tr><th>No</th><th>Kode</th><th>Kuisioner</th><th>Nilai t</th><th>Uji t dengan t table : $table[ttable]</th></tr>";
        while ($a = mysqli_fetch_array($data)) {
            echo '<tr><td>';
            echo $no;
            echo '</td><td>';
            echo $a['kode'];
            echo '</td><td style="white-space: -o-pre-wrap; 
            word-wrap: break-word;
            white-space: pre-wrap; 
            white-space: -moz-pre-wrap; 
            white-space: -pre-wrap;">';
            echo $a['nama'];
            echo '</td><td align="center">';
            echo $a['tnilai'];
            echo '</td><td>';
            if($a['tnilai'] > $table['ttable']){
                echo "Tolak H0, H1 diterima<br>$a[kode] Berpengaruh Positif";
            }else{
                echo "Terima H0, H2 ditolak<br>$a[kode] Tidak Berpengaruh Positif";
            }
            echo '</td></tr>';
            ++$no;
        }
        echo '</table>';
        echo '</div>';
    }else{
        echo '<h4>Data Belum Ada</h4>';
        echo '</div>';
    }
    ?>
    <div class="card-header bg-transparent">
    <h3 class="mb-0">Data Uji F</h3>
    </div>
    <div class="card-body">
    <?php
    echo "<table class='table table-hover table-bordered'>";
    echo "<tr><th>Nilai F</th><th>F Table</th><th>Uji F dengan F table : $table[ftable]</th></tr>";
    echo '<tr><td>';
    echo $table['fnilai'];
    echo '</td><td>';
    echo $table['ftable'];
    echo '</td><td style="white-space: -o-pre-wrap; 
    word-wrap: break-word;
    white-space: pre-wrap; 
    white-space: -moz-pre-wrap; 
    white-space: -pre-wrap;">';
    $sub = mysqli_query($con, "SELECT * FROM kuisioner WHERE kode LIKE 'Q%'");
    $text = "(";
    $subtotal = mysqli_num_rows($sub);
    $no = 1;
    while($b = mysqli_fetch_array($sub)){
        $text .= "$b[kode]";
        if($subtotal != $no){
            $text .= ", ";
        }
        $no++;
    }
    if($table['fnilai'] > $table['ftable']){
        echo "Tolak H0, $text) berpengaruh terhadap Y";
    }else{
        echo "Terima H0, $text) tidak berpengaruh terhadap Y";
    }
    echo '</td></tr>';
    echo '</table>';
    echo "</div>";
}
