
<div class="navbar-inner">
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">
          <!-- Nav items -->
          <?php
            if (empty($_SESSION['login']) || $_SESSION['login'] != 'admin') {
            ?>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == null ? "active" : "");?>" href="index.php">
                  <i class="ni ni-tv-2 text-primary"></i>
                  <span class="nav-link-text">Dashboard</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php echo (($menu == "page" && $_GET['id']==2) ? "active" : "");?>" href="index.php?menu=page&id=2">
                  <i class="ni ni-tv-2 text-primary"></i>
                  <span class="nav-link-text">Brand Switching</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php echo (($menu == "page" && $_GET['id']==3) ? "active" : "");?>" href="index.php?menu=page&id=3">
                  <i class="ni ni-tv-2 text-primary"></i>
                  <span class="nav-link-text">Metode Penelitian</span>
                </a>
              </li>
            </ul>
            <hr class="my-3">
              <h6 class="navbar-heading p-0 text-muted">
                <span class="docs-normal">Manajemen Aplikasi</span>
            </h6>
            <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "login" ? "active" : "");?>" href="index.php?menu=login">
                <i class="ni ni-key-25 text-info"></i>
                  <span class="nav-link-text">Login</span>
                </a>
              </li>
            </ul>
            <?php
            }else{
              ?>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == null ? "active" : "");?>" href="index.php">
                  <i class="ni ni-tv-2 text-primary"></i>
                  <span class="nav-link-text">Dashboard</span>
                </a>
              </li>
            </ul>
            <hr class="my-3">
              <h6 class="navbar-heading p-0 text-muted">
                <span class="docs-normal">Master Data</span>
            </h6>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "kategori" ? "active" : "");?>" href="index.php?menu=kategori">
                  <i class="ni ni-planet text-orange"></i>
                  <span class="nav-link-text">Data Kategori</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "kuisioner" ? "active" : "");?>" href="index.php?menu=kuisioner">
                <i class="ni ni-pin-3 text-primary"></i>
                  <span class="nav-link-text">Data Kuisioner</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "opsi" ? "active" : "");?>" href="index.php?menu=opsi">
                <i class="ni ni-single-02 text-yellow"></i>
                  <span class="nav-link-text">Data Opsi Jawaban</span>
                </a>
              </li>
            </ul>
            <hr class="my-3">
              <h6 class="navbar-heading p-0 text-muted">
                <span class="docs-normal">Multiple Linear Regression</span>
            </h6>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "dataset" ? "active" : "");?>" href="index.php?menu=dataset">
                <i class="ni ni-ui-04"></i>
                  <span class="nav-link-text">Data Dataset</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "generate" ? "active" : "");?>" href="index.php?menu=generate">
                <i class="ni ni-chart-pie-35"></i>
                  <span class="nav-link-text">Generate MLR</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "prediksi" ? "active" : "");?>" href="index.php?menu=prediksi">
                <i class="ni ni-bullet-list-67 text-default"></i>
                  <span class="nav-link-text">Data Prediksi</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "ujicoba" ? "active" : "");?>" href="index.php?menu=ujicoba">
                <i class="ni ni-ui-04"></i>
                  <span class="nav-link-text">Data Uji</span>
                </a>
              </li>
            </ul>

            <hr class="my-3">
              <h6 class="navbar-heading p-0 text-muted">
                <span class="docs-normal">Setting Data</span>
            </h6>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "admin" ? "active" : "");?>" href="index.php?menu=admin">
                <i class="ni ni-circle-08 text-pink"></i>
                  <span class="nav-link-text">Data Admin</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "halaman" ? "active" : "");?>" href="index.php?menu=halaman">
                <i class="ni ni-bullet-list-67 text-default"></i>
                  <span class="nav-link-text">Data Halaman</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link <?php echo ($menu == "gantidata" ? "active" : "");?>" href="index.php?menu=gantidata">
                <i class="ni ni-key-25 text-info"></i>
                  <span class="nav-link-text">Data Profile</span>
                </a>
              </li>
            </ul>
              <?php
            }
          ?>
        </div>
      </div>