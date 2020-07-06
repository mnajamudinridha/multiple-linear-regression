<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
include 'fungsi/gambar.php';
if (isset($_GET['user']) && isset($_GET['tanggal'])) {
    $user = $_GET['user'];
    $tanggal = $_GET['tanggal'];
    echo '<div class="card-header bg-transparent">
    <h3 class="mb-0">Detail Transaksi <b>'.$user.'</b></h3>
    </div>
        <div class="card-body" style="padding:0px;margin:0px">';
    $query = mysqli_query($con, 'SELECT * FROM transaksi WHERE user="'.$user.'" AND tanggal ="'.$tanggal.'"');
    $no = 1;
    echo '<table class="table table-hover" style="padding:0px;margin:0px">
          <tr>
            <th>No</th>
            <th>Gambar</th>
            <th>Kode</th>
            <th>Nama</th>
            <th>Harga</th>
            <th>Jumlah</th>
            <th>Total</th>
          </tr>';
          $total = 0;
    while ($a = mysqli_fetch_array($query)) {
        $sub = mysqli_fetch_array(mysqli_query($con, 'SELECT * FROM barang WHERE kode = "'.$a['barang'].'"'));
        echo '<tr>
                <td>'.$no.'</td>
                <td><img style="width:50px;background-color:#555" class="img img-responsive" src="file/image/thumb_'.$sub['gambar'].'"></td>
                <td>'.$sub['kode'].'</td>
                <td>'.$sub['nama'].'</td>
                <td>'.number_format($sub['harga'], 2).'</td>
                <td>'.$a['jumlah'].'</td>
                <td>'.number_format($a['total'], 2).'</td>
              </tr>';
        ++$no;
        $total = $total + $a['total'];
    }
    echo '<tr><td colspan="6" align="right"><b>Total</b></td><th>'.number_format($total,2).'</th></tr>';

    $id = 5;
    $query = mysqli_query($con, "SELECT * FROM halaman WHERE id='$id'");
    $a = mysqli_fetch_array($query);
    echo '<tr><td colspan="7">
          <h3 class="panel-title">
          '.$a['judul'].'
          </h3>';
    echo htmlspecialchars_decode($a['isi']);
    echo '</td></tr>';
    echo '</table>';
    echo '</div>';
}
