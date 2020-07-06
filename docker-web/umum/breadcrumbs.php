<div class="row align-items-center py-4">
    <div class="col-lg-12 col-12">
<?php

$menu = null;
$aksi = null;
if (isset($_GET['menu'])) {
    $menu = $_GET['menu'];

    if (isset($_GET['aksi'])) {
        $aksi = $_GET['aksi'];
    }
    if ($menu == 'home') {
        echo '<h6 class="h2 text-white d-inline-block mb-0">Dashboard</h6>
                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                <li class="breadcrumb-item active fas fa-home" aria-current="page"> Dashboard</li>
                </ol></nav>';
    } elseif ($menu == 'page') {
        include 'vendor/autoload.php';
        include 'fungsi/koneksi.php';
        $id = $_GET['id'];
        $query = mysqli_query($con, "SELECT * FROM halaman WHERE id='$id'");
        $judul = mysqli_fetch_array($query);
        echo '<h6 class="h2 text-white d-inline-block mb-0">'.$judul['judul'].'</h6>
                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                  <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">'.$judul['judul'].'</li>
                </ol>
        </nav>';
    } elseif ($menu == 'login') {
        echo '<h6 class="h2 text-white d-inline-block mb-0">Halaman Login</h6>
        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
        <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
          <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
          <li class="breadcrumb-item active" aria-current="page">Halaman Login</li>
        </ol></nav>';
    } elseif ($menu == 'gantidata') {
        echo '<h6 class="h2 text-white d-inline-block mb-0">Ganti Data</h6>
                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                  <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Ganti Data</li>
                </ol></nav>';
    } elseif ($menu == 'register') {
        echo '<h6 class="h2 text-white d-inline-block mb-0">Register</h6>
        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
        <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
          <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
          <li class="breadcrumb-item active" aria-current="page">Register</li>
        </ol></nav>';
    } elseif ($menu == 'generate') {
      echo '<h6 class="h2 text-white d-inline-block mb-0">Generate Multiple Linear Regression</h6>
      <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
      <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
        <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
        <li class="breadcrumb-item active" aria-current="page">Generate Multiple Linear Regression</li>
      </ol></nav>';
    } elseif ($menu == 'gagal') {
        echo '<h6 class="h2 text-white d-inline-block mb-0">Gagal</h6>
        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
        <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
          <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
          <li class="breadcrumb-item active" aria-current="page">Gagal</li>
        </ol></nav>';
    }
/* *****************************************************************************
***************************************************************************** */
    elseif ($menu == 'admin') {
        if ($aksi == 'tambah') {
            echo '<h6 class="h2 text-white d-inline-block mb-0">Tambah Data Admin</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
              <li class="breadcrumb-item"><a href="?menu=admin">List Admin</a></li>
              <li class="breadcrumb-item active" aria-current="page">Tambah Data Admin</li>
            </ol></nav>';
        } elseif ($aksi == 'edit') {
            echo '<h6 class="h2 text-white d-inline-block mb-0">Edit Data Admin</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
              <li class="breadcrumb-item"><a href="?menu=admin">List Admin</a></li>
              <li class="breadcrumb-item active" aria-current="page">Edit Data Admin</li>
            </ol></nav>';
        } else {
            echo '<h6 class="h2 text-white d-inline-block mb-0">List Admin</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
              <li class="breadcrumb-item active" aria-current="page">List Admin</li>
            </ol></nav>';
        }
    } elseif ($menu == 'halaman') {
        if ($aksi == 'tambah') {
            echo '<h6 class="h2 text-white d-inline-block mb-0">Tambah Data Halaman</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
              <li class="breadcrumb-item"><a href="?menu=halaman">List Halaman</a></li>
              <li class="breadcrumb-item active" aria-current="page">Tambah Data Halaman</li>
            </ol></nav>';
        } elseif ($aksi == 'edit') {
            echo '<h6 class="h2 text-white d-inline-block mb-0">Edit Data Halaman</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
              <li class="breadcrumb-item"><a href="?menu=halaman">List Halaman</a></li>
              <li class="breadcrumb-item active" aria-current="page">Edit Data Halaman</li>
            </ol></nav>';
        } else {
            echo '<h6 class="h2 text-white d-inline-block mb-0">List Halaman</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
              <li class="breadcrumb-item active" aria-current="page">List Halaman</li>
            </ol></nav>';
        }
    } elseif ($menu == 'kategori') {
      if ($aksi == 'tambah') {
          echo '<h6 class="h2 text-white d-inline-block mb-0">Tambah Data Kategori</h6>
          <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
          <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
            <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
            <li class="breadcrumb-item"><a href="?menu=kategori">List Kategori</a></li>
            <li class="breadcrumb-item active" aria-current="page">Tambah Data Kategori</li>
          </ol></nav>';
      } elseif ($aksi == 'edit') {
          echo '<h6 class="h2 text-white d-inline-block mb-0">Edit Data Kategori</h6>
          <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
          <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
            <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
            <li class="breadcrumb-item"><a href="?menu=kategori">List Kategori</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit Data Kategori</li>
          </ol></nav>';
      } else {
          echo '<h6 class="h2 text-white d-inline-block mb-0">List Kategori</h6>
          <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
          <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
            <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
            <li class="breadcrumb-item active" aria-current="page">List Kategori</li>
          </ol></nav>';
      }
    } elseif ($menu == 'kuisioner') {
    if ($aksi == 'tambah') {
        echo '<h6 class="h2 text-white d-inline-block mb-0">Tambah Data Kuisioner</h6>
        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
        <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
          <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
          <li class="breadcrumb-item"><a href="?menu=kuisioner">List Kuisioner</a></li>
          <li class="breadcrumb-item active" aria-current="page">Tambah Data Kuisioner</li>
        </ol></nav>';
    } elseif ($aksi == 'edit') {
        echo '<h6 class="h2 text-white d-inline-block mb-0">Edit Data Kuisioner</h6>
        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
        <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
          <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
          <li class="breadcrumb-item"><a href="?menu=kuisioner">List Kuisioner</a></li>
          <li class="breadcrumb-item active" aria-current="page">Edit Data Kuisioner</li>
        </ol></nav>';
    } else {
        echo '<h6 class="h2 text-white d-inline-block mb-0">List Kuisioner</h6>
        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
        <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
          <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
          <li class="breadcrumb-item active" aria-current="page">List Kuisioner</li>
        </ol></nav>';
    }
    } elseif ($menu == 'opsi') {
      if ($aksi == 'tambah') {
          echo '<h6 class="h2 text-white d-inline-block mb-0">Tambah Data Opsi Jawaban</h6>
          <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
          <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
            <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
            <li class="breadcrumb-item"><a href="?menu=opsi">List Opsi Jawaban</a></li>
            <li class="breadcrumb-item active" aria-current="page">Tambah Data Opsi Jawaban</li>
          </ol></nav>';
      } elseif ($aksi == 'edit') {
          echo '<h6 class="h2 text-white d-inline-block mb-0">Edit Data Opsi Jawaban</h6>
          <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
          <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
            <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
            <li class="breadcrumb-item"><a href="?menu=opsi">List Opsi Jawaban</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit Data Opsi Jawaban</li>
          </ol></nav>';
      } else {
          echo '<h6 class="h2 text-white d-inline-block mb-0">List Opsi Jawaban</h6>
          <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
          <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
            <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
            <li class="breadcrumb-item active" aria-current="page">List Opsi Jawaban</li>
          </ol></nav>';
      }
      }elseif ($menu == 'dataset') {
        if ($aksi == 'tambah') {
            echo '<h6 class="h2 text-white d-inline-block mb-0">Tambah Data Dataset</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
              <li class="breadcrumb-item"><a href="?menu=dataset">List Dataset</a></li>
              <li class="breadcrumb-item active" aria-current="page">Tambah Data Dataset</li>
            </ol></nav>';
        } elseif ($aksi == 'edit') {
            echo '<h6 class="h2 text-white d-inline-block mb-0">Edit Data Dataset</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
              <li class="breadcrumb-item"><a href="?menu=dataset">List Dataset</a></li>
              <li class="breadcrumb-item active" aria-current="page">Edit Data Dataset</li>
            </ol></nav>';
        } else {
            echo '<h6 class="h2 text-white d-inline-block mb-0">List Dataset</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
              <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
              <li class="breadcrumb-item active" aria-current="page">List Dataset</li>
            </ol></nav>';
        }
        } elseif ($menu == 'prediksi') {
        if ($aksi == 'edit') {
            echo '<h6 class="h2 text-white d-inline-block mb-0">Prediksi Multiple Linear Regression</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
            <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
            <li class="breadcrumb-item"><a href="?menu=prediksi">Prediksi Multiple Linear Regression</a></li>
            <li class="breadcrumb-item active" aria-current="page">Proses Prediksi</li>
            </ol></nav>';
        } else {
          echo '<h6 class="h2 text-white d-inline-block mb-0">Prediksi Multiple Linear Regression</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
            <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
            <li class="breadcrumb-item active" aria-current="page">Prediksi Multiple Linear Regression</li>
            </ol></nav>';
        }
    } else {
        echo '<h6 class="h2 text-white d-inline-block mb-0">Menu Tidak Ditemukan</h6>
                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                <li class="breadcrumb-item"><a href="index.php"><i class="fas fa-home"></i> Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">Menu Tidak Ditemukan</li>
                </ol></nav>';
    }
} else {
    echo '<h6 class="h2 text-white d-inline-block mb-0">Dashboard</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                <li class="breadcrumb-item active" aria-current="page"><i class="fas fa-home"></i> Dashboard</li>
            </ol></nav>';
}
?>
</div>
</div>