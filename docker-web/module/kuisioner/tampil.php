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
    <h3 class="mb-0">List Data Kuisioner</h3>
    </div>
    <div class="card-body">
      <div class="btn-group" style="padding-bottom:10px">
        <a href='?menu=kuisioner&aksi=tambah' class="btn btn-primary">
        <i class="glyphicon glyphicon-plus"></i> Tambah</a>
        <form method="post" action="?menu=kuisioner&aksi=cari">
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
        $datas = mysqli_query($con, "SELECT * FROM kuisioner WHERE nama LIKE '%$cari%' OR kode LIKE '%$cari%'");
        $jumlah = mysqli_num_rows($datas);
        $data = mysqli_query($con, "SELECT kuisioner.*, kategori.nama as namakategori FROM kuisioner LEFT JOIN kategori ON kuisioner.kategori=kategori.kode  WHERE nama LIKE '%$cari%' OR kode LIKE '%$cari%' LIMIT $posisi, $batas");
        echo "<a href='?menu=kuisioner'><h4 class='btn btn-danger'>Ditemukan $jumlah dengan Kata <u>$cari</u>, klik disini untuk CLEAR</h4></a><br><br>";
    } else {
        $data = mysqli_query($con, "SELECT kuisioner.*, kategori.nama as namakategori FROM kuisioner LEFT JOIN kategori ON kuisioner.kategori=kategori.kode LIMIT $posisi, $batas");
    }
    $jumlah = mysqli_num_rows($data);
    if ($jumlah > 0) {
        echo "<table class='table table-hover table-bordered'>";
        echo "<tr><th>No</th><th>Kode</th><th>Nama Kuisioner</th><th>Kategori</th><th>Jenis</th><th>Fungsi</th><th style='text-align:center'>Aksi</th></tr>";
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
            echo '</td><td>';
            echo $a['namakategori'];
            echo '</td><td>';
            if($a['jenis']== "0"){
                echo "Input Text";
            } else {
                echo "Input Option";
            }
            echo '</td><td>';
            if($a['fungsi']== "0"){
                echo "Variable Hidden";
            } else if($a['fungsi']== "1"){
                echo "Variable Dependent";
            } else {
                echo "Variable Independent";
            }
            echo '</td><td align="center">';
            echo '<div class="btn-group" role="group" aria-label="...">
                <a class="btn btn-warning" href="module/kuisioner/hapus.php?id=' .$a['kode'].'&halaman='.$nohalaman.'&cari='.$cari.'">
                    <i class="ni ni-fat-remove"></i></a>
                <a class="btn btn-primary" href="?menu=kuisioner&aksi=edit&id=' .$a['kode'].'&halaman='.$nohalaman.'&cari='.$cari.'">
                    <i class="ni ni-check-bold"></i></a>
                </div>';
            echo '</td></tr>';
            ++$no;
        }
        echo '</table>';

        $total = null;
        if (!empty($cari)) {
            $total = mysqli_query($con, "SELECT * FROM kuisioner WHERE nama LIKE '%$cari%' OR kode LIKE '%$cari%'");
        } else {
            $total = mysqli_query($con, 'SELECT * FROM kuisioner');
        }
        $jumlahbaris = mysqli_num_rows($total);
        $jumlahhalaman = ceil($jumlahbaris / $batas);

        // menampilkan link previous
        echo "<br><nav aria-label='Page navigation'>
  <ul class='pagination'>";
        if ($nohalaman > 1) {
            echo "<li class='page-item'><a class='page-link' href='".$_SERVER['PHP_SELF'].'?menu=kuisioner&halaman='.($nohalaman - 1).'&cari='.$cari."' aria-label='Previous'>
          <span aria-hidden='true'>&lt;&lt;</span>
        </a>
      </li>";
        }
        $tampilhalaman = null;
        for ($halaman = 1; $halaman <= $jumlahhalaman; ++$halaman) {
            if ((($halaman >= $nohalaman - 3) && ($halaman <= $nohalaman + 3)) || ($halaman == 1) || ($halaman == $jumlahhalaman)) {
                if (($tampilhalaman == 1) && ($halaman != 2)) {
                    echo '<li class="page-item"><a class="page-link">...</a></li>';
                }
                if (($tampilhalaman != ($jumlahhalaman - 1)) && ($halaman == $jumlahhalaman)) {
                    echo '<li class="page-item"><a class="page-link">...</a></li>';
                }
                if ($halaman == $nohalaman) {
                    echo '<li class="page-item"><a class="page-link"><b>'.$halaman.'</b></a></li>';
                } else {
                    echo "<li class='page-item'><a class='page-link' href='".$_SERVER['PHP_SELF'].'?menu=kuisioner&halaman='.$halaman.'&cari='.$cari."'>".$halaman.'</a></li>';
                }
                $tampilhalaman = $halaman;
            }
        }
        if ($nohalaman < $jumlahhalaman) {
            echo "<li class='page-item'><a class='page-link' href='".$_SERVER['PHP_SELF'].'?menu=kuisioner&halaman='.($nohalaman + 1).'&cari='.$cari."' aria-label='Next'>
              <span aria-hidden='true'>&gt;&gt;</span>
            </a>
          </li>";
        }
        echo '</ul></nav>';
    } else {
        echo '<h4>Data Belum Ada</h4>';
    }
    echo '</div>';
}
