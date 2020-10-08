<div class="row justify-content-center">
    <div class=" col ">
        <div class="card">
            <?php
            $menu = null;
            $aksi = null;
            if (isset($_GET['menu'])) {
                $menu = $_GET['menu'];
                if (isset($_GET['aksi'])) {
                    $aksi = $_GET['aksi'];
                }
                if ($menu == 'page') {
                    $id = $_GET['id'];
                    $query = mysqli_query($con, "SELECT * FROM halaman WHERE id='$id'");
                    $a = mysqli_fetch_array($query);
                    echo '<div class="card-header bg-transparent">
                    <h3 class="mb-0">'.$a['judul'].'</h3>
                  </div>';
                    echo '<div class="card-body">';
                    echo '<div style="font-size:16px">';
                    echo htmlspecialchars_decode($a['isi']);
                    echo '</div>';
                    echo '</div>';
                    $dibaca = $a['dibaca'] + 1;
                    $querysimpan = mysqli_query($con, "UPDATE halaman SET dibaca = $dibaca WHERE id=$id");
                }
                /* ********************************************
                * MODUL LOGIN
                *********************************************** */
                elseif ($menu == 'login') {
                    include 'module/login/admin.php';
                }
            
                /* ********************************************
                * MODUL LOGIN
                *********************************************** */
                elseif ($menu == 'gantidata') {
                    include 'module/profil/edit.php';
                } elseif ($menu == 'register') {
                    include 'module/profil/tambah.php';
                } 
                /* ********************************************
                * MODUL admin
                *********************************************** */
                elseif ($menu == 'admin') {
                    if ($aksi == 'tambah') {
                        include 'module/admin/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/admin/edit.php';
                    } else {
                        include 'module/admin/tampil.php';
                    }
                }  elseif ($menu == 'laporan') {
                    if ($aksi == 'tambah') {
                        include 'module/laporan/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/laporan/edit.php';
                    } else {
                        include 'module/laporan/tampil.php';
                    }
                } elseif ($menu == 'halaman') {
                    if ($aksi == 'tambah') {
                        include 'module/halaman/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/halaman/edit.php';
                    } else {
                        include 'module/halaman/tampil.php';
                    }
                } elseif ($menu == 'kuisioner') {
                    if ($aksi == 'tambah') {
                        include 'module/kuisioner/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/kuisioner/edit.php';
                    } else {
                        include 'module/kuisioner/tampil.php';
                    }
                } elseif ($menu == 'kategori') {
                    if ($aksi == 'tambah') {
                        include 'module/kategori/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/kategori/edit.php';
                    } else {
                        include 'module/kategori/tampil.php';
                    }
                } elseif ($menu == 'opsi') {
                    if ($aksi == 'tambah') {
                        include 'module/opsi/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/opsi/edit.php';
                    } else {
                        include 'module/opsi/tampil.php';
                    }
                } elseif ($menu == 'dataset') {
                    if ($aksi == 'tambah') {
                        include 'module/dataset/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/dataset/edit.php';
                    } else {
                        include 'module/dataset/tampil.php';
                    }
                } elseif ($menu == 'generate') {
                    if ($aksi == 'tambah') {
                        include 'module/generate/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/generate/edit.php';
                    } else {
                        include 'module/generate/tampil.php';
                    }
                } elseif ($menu == 'ujicoba') {
                    if ($aksi == 'tambah') {
                        include 'module/ujicoba/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/ujicoba/edit.php';
                    } else {
                        include 'module/ujicoba/tampil.php';
                    }
                } elseif ($menu == 'prediksi') {
                    if ($aksi == 'tambah') {
                        include 'module/prediksi/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/prediksi/prediksi.php';
                    } else {
                        include 'module/prediksi/tampil.php';
                    }
                } elseif ($menu == 'rangking') {
                    if ($aksi == 'tambah') {
                        include 'module/rangking/tambah.php';
                    } elseif ($aksi == 'edit') {
                        include 'module/rangking/edit.php';
                    } else {
                        include 'module/rangking/tampil.php';
                    }
                } else {
                    echo '<div class="card-header bg-transparent">
                    <h3 class="mb-0">Menu Tidak Ditemukan</h3>
                    </div>
                    <div class="card-body">';
                    echo '<h5>Halaman yang anda cari, Tidak Ditemukan</h5>';
                    echo '</div>';
                }
            } else {
                $id = 1;
                $query = mysqli_query($con, "SELECT * FROM halaman WHERE id='$id'");
                $a = mysqli_fetch_array($query);
                echo '<div class="card-header bg-transparent">
                            <h3 class="mb-0">'.$a['judul'].'</h3>
                        </div>
                      <div class="card-body" style="font-size:16px">';
                echo htmlspecialchars_decode($a['isi']);
                echo '</div>';
            }
            
            ?>
        </div>
    </div>
</div>
