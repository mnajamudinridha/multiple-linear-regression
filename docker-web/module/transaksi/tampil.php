<?php
if (empty($_SESSION['login']) || $_SESSION['login'] != 'admin') {
  echo '<div class="panel-heading">
          <h3 class="panel-title">
          Harus Login
          </h3>
      </div>
      <div class="panel-body">';
  echo "<h1>Anda Harus Login, Kembali Ke <a href='index.php'>Home</a></h1>";
  echo '</div>';
} else {
    ?>
    <div class="panel-heading">
        <h3 class="panel-title">
        Module Menu
        </h3>
    </div>
    <div class="panel-body">
      <div class="btn-group" style="padding-bottom:10px">
        <form method="post" action="?menu=menu&aksi=cari">
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
        $datas = mysqli_query($con, "SELECT * FROM transaksi WHERE user LIKE '%$cari%' OR tanggal LIKE '%$cari%' GROUP BY user, tanggal");
        $jumlah = mysqli_num_rows($datas);
        $data = mysqli_query($con, "SELECT * FROM transaksi WHERE user LIKE '%$cari%' OR tanggal LIKE '%$cari%' GROUP BY user, tanggal LIMIT $posisi, $batas");
        echo "<a href='?menu=menu'><h4 class='btn btn-danger'>Ditemukan $jumlah dengan Kata <u>$cari</u>, klik disini untuk CLEAR</h4></a><br><br>";
    } else {
        $data = mysqli_query($con, "SELECT * FROM transaksi GROUP BY user, tanggal LIMIT $posisi, $batas");
    }
    $jumlah = mysqli_num_rows($data);
    if ($jumlah > 0) {
        echo "<table class='table table-hover table-bordered'>";
        echo "<tr><th>No</th><th>User</th><th>Tanggal</th><th style='text-align:center;width:10px'>Aksi</th></tr>";
        while ($a = mysqli_fetch_array($data)) {
            echo '<tr><td>';
            echo $no;
            echo '</td><td>';
            echo $a['user'];
            echo '</td><td>';
            echo $a['tanggal'];
            echo '</td><td align="center">';
            echo '<div class="btn-group" role="group" aria-label="...">
                <a class="btn btn-warning" href="?menu=transaksi&aksi=lihat&user=' .$a['user'].'&tanggal='.$a['tanggal'].'&halaman='.$nohalaman.'&cari='.$cari.'">
                    <i class="fa fa-eye"></i> Lihat Pemesanan</a>
                </div>';
            echo '</td></tr>';
            ++$no;
        }
        echo '</table>';

        $total = null;
        if (!empty($cari)) {
            $total = mysqli_query($con, "SELECT * FROM transaksi WHERE user LIKE '%$cari%' OR tanggal LIKE '%$cari%' GROUP BY user, tanggal");
        } else {
            $total = mysqli_query($con, 'SELECT * FROM transaksi GROUP BY user, tanggal');
        }
        $jumlahbaris = mysqli_num_rows($total);
        $jumlahhalaman = ceil($jumlahbaris / $batas);

        // menampilkan link previous
        echo "<nav aria-label='Page navigation'>
  <ul class='pagination'>";
        if ($nohalaman > 1) {
            echo "<li><a href='".$_SERVER['PHP_SELF'].'?menu=transaksi&halaman='.($nohalaman - 1).'&cari='.$cari."' aria-label='Previous'>
          <span aria-hidden='true'>&lt;&lt; Sebelumnya</span>
        </a>
      </li>";
        }
        $tampilhalaman = null;
        for ($halaman = 1; $halaman <= $jumlahhalaman; ++$halaman) {
            if ((($halaman >= $nohalaman - 3) && ($halaman <= $nohalaman + 3)) || ($halaman == 1) || ($halaman == $jumlahhalaman)) {
                if (($tampilhalaman == 1) && ($halaman != 2)) {
                    echo '<li><a>...</a></li>';
                }
                if (($tampilhalaman != ($jumlahhalaman - 1)) && ($halaman == $jumlahhalaman)) {
                    echo '<li><a>...</a></li>';
                }
                if ($halaman == $nohalaman) {
                    echo '<li><a><b>'.$halaman.'</b></a></li>';
                } else {
                    echo "<li><a href='".$_SERVER['PHP_SELF'].'?menu=transaksi&halaman='.$halaman.'&cari='.$cari."'>".$halaman.'</a></li>';
                }
                $tampilhalaman = $halaman;
            }
        }
        if ($nohalaman < $jumlahhalaman) {
            echo "<li>
            <a href='".$_SERVER['PHP_SELF'].'?menu=transaksi&halaman='.($nohalaman + 1).'&cari='.$cari."' aria-label='Next'>
              <span aria-hidden='true'>Selanjutnya &gt;&gt;</span>
            </a>
          </li>";
        }
        echo '</ul></nav>';
    } else {
        echo '<h4>Data Belum Ada</h4>';
    }
    echo '</div>';
}
