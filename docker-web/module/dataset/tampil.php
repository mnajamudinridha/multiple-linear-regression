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
    <h3 class="mb-0">List Data Dataset</h3>
    </div>
    <div class="card-body">
      <div class="btn-group" style="padding-bottom:10px">
        <a href='?menu=dataset&aksi=tambah' class="btn btn-primary">
        <i class="glyphicon glyphicon-plus"></i> Tambah</a>
        <form method="post" action="?menu=dataset&aksi=cari">
            <div class="input-group">
                <input type="text" name="cari" placeholder=" Cari..." class="form-control">
                <span class="input-group-btn">
                <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                </span>
            </div>
        </form>
      </div>
    <?php
    include 'vendor/autoload.php';
    include 'fungsi/koneksi.php';
    $data = null;
    $batas = 5;
    $nohalaman = '';
    if (isset($_GET['halaman'])) {
        $nohalaman = $_GET['halaman'];
    } else {
        $nohalaman = 1;
    }
    $posisi = ($nohalaman - 1) * $batas;
    $no = $posisi + 1;
    $cari = null;
    if (isset($_POST['cari'])) {
        $cari = $_POST['cari'];
    } elseif (isset($_GET['cari']) && !empty($_GET['cari'])) {
        $cari = $_GET['cari'];
    }
    if (!empty($cari)) {
        $datas = mysqli_query($con, "SELECT * FROM dataset WHERE kode LIKE '%$cari%' OR kuisioner LIKE '%$cari%' GROUP BY kode");
        $jumlah = mysqli_num_rows($datas);
        $data = mysqli_query($con, "SELECT * FROM dataset WHERE kode LIKE '%$cari%' OR kuisioner LIKE '%$cari%' GROUP BY kode");
        echo "<a href='?menu=dataset'><h4 class='btn btn-danger'>Ditemukan $jumlah dengan Kata <u>$cari</u>, klik disini untuk CLEAR</h4></a><br><br>";
    } else {
        $data = mysqli_query($con, "SELECT * FROM dataset GROUP BY kode");
    }
    $jumlah = mysqli_num_rows($data);
    if ($jumlah > 0) {
        echo "<table class='table table-hover table-bordered'>";
        echo "<tr><th style='padding:16px 0px; min-width:25px;text-align:center'>No</th><th style='padding:16px 0px; min-width:25px;text-align:center'>Kode</th>";
        $kuisioner = mysqli_query($con, "SELECT * FROM kuisioner");
        while ($kuis = mysqli_fetch_array($kuisioner)) {
            echo "<th style='padding:16px 0px; min-width:25px;text-align:center'>$kuis[kode]</th>";
        }
        echo "<th style='padding:16px 0px; width:130px;text-align:center'>Aksi</th></tr>";
        while ($a = mysqli_fetch_array($data)) {
            echo '<tr><td style="padding:16px 0px;text-align:center">';
            echo $no;
            echo '</td><td style="white-space: -o-pre-wrap; 
            word-wrap: break-word;
            white-space: pre-wrap; 
            white-space: -moz-pre-wrap; 
            white-space: -pre-wrap; padding:16px 0px;text-align:center">';
            echo $a['kode'];
            echo '</td><td style="padding:16px 0px;text-align:center">';
            $kuisioner = mysqli_query($con, "SELECT * FROM kuisioner");
            while ($kuis = mysqli_fetch_array($kuisioner)) {
                $val = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM dataset WHERE kode='$a[kode]' AND kuisioner='$kuis[kode]'"));
                echo $val['value'];
                echo '</td><td style="padding:16px 0px;text-align:center">';
            }
            echo '<div class="btn-group" role="group" aria-label="...">
                <a class="btn btn-warning" href="module/dataset/hapus.php?id=' .$a['kode'].'&halaman='.$nohalaman.'&cari='.$cari.'">
                    <i class="ni ni-fat-remove"></i></a>
                <a class="btn btn-primary" href="?menu=dataset&aksi=edit&id=' .$a['kode'].'&halaman='.$nohalaman.'&cari='.$cari.'">
                    <i class="ni ni-check-bold"></i></a>
                </div>';
            echo '</td></tr>';
            ++$no;
        }
        echo '</table>';
    } else {
        echo '<h4>Data Belum Ada</h4>';
    }
    echo '</div>';
}
