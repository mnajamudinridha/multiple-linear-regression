<?php
session_start();
date_default_timezone_set('Asia/Makassar');
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
$menu = null;
$title = "Dashboard";
$dirfull = dirname(__FILE__);
$actual_link = str_replace('/index.php','','http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']);
if(isset($_GET['menu'])){
  $menu = $_GET['menu'];
}
if(isset($_GET['page'])){
  if($_GET['page'] != "" || $_GET['page'] > 1){
    $pages = $_GET['page'];
  }
}
if(isset($_GET['perpage'])){
  if($_GET['perpage'] != "" || $_GET['perpage'] > 10){
    $perpages = $_GET['perpage'];
  }
}
?>
<!--
=========================================================
* Argon Dashboard - v1.2.0
=========================================================
* Product Page: https://www.creative-tim.com/product/argon-dashboard


* Copyright  Creative Tim (http://www.creative-tim.com)
* Coded by www.creative-tim.com



=========================================================
* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Multiple Linear Regression">
  <meta name="author" content="Multiple Linear Regression">
  <title>Multiple Linear Regression</title>
  <!-- Favicon -->
  <link rel="icon" href="assets/img/brand/favicon.png" type="image/png">
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Page plugins -->
  <!-- Argon CSS -->
  <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
  <script src="bootstrap/Chart.bundle.min.js"></script>
  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
          tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}
        });
        </script>
  <script type="text/javascript" async src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML">
  </script>
  <script type="text/javascript" src="system/tinymce/tinymce.min.js"></script>
  <script type="text/javascript">
    tinymce.init({
      selector: ".mytextarea",
      theme: "modern",
      plugins: [
        "advlist autolink link image lists charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code insertdatetime media nonbreaking",
        "table contextmenu directionality emoticons paste textcolor responsivefilemanager sh4tinymce preview wordcount"
      ],
      toolbar: "bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist | outdent indent | link unlink anchor | responsivefilemanager image media sh4tinymce preview | forecolor backcolor print emoticons",
      image_advtab: true,
      external_filemanager_path: "<?php echo getenv('file_external'); ?>",
      filemanager_title: "Filemanager",
      external_plugins: {
        "filemanager": "<?php echo getenv('file_manager'); ?>"
      }
    });
  </script>
</head>

<body>
  <!-- Sidenav -->
  <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
      <!-- Brand -->
      <div class="sidenav-header  align-items-center">
        <a class="navbar" href="index.php">
          <img src="assets/img/brand/blue.png" class="img" style="width:100%;">
        </a>
      </div>
      <?php include 'include/menu.php'; ?>
    </div>
  </nav>
  <!-- Main content -->
  <div class="main-content" id="panel">
    <!-- Topnav -->
    <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
      <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <?php include 'include/header.php' ?>
        </div>
      </div>
    </nav>
    <div class="header bg-primary pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <?php include 'umum/breadcrumbs.php' ?>
          <?php include 'umum/pesan.php' ?>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--6">
      <?php include 'konten.php' ?>
      <!-- Footer -->
      <footer class="footer pt-0">
        <div class="row align-items-center justify-content-lg-between">
          <div class="col-lg-6">
            <div class="copyright text-center  text-lg-left  text-muted">
              &copy; 2020 <a href="index.php" class="font-weight-bold ml-1">Multiple Linear Regression</a> Template By <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Creative Tim</a>
            </div>
          </div>
          <div class="col-lg-6">
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!-- Argon Scripts -->
  <!-- Core -->
  <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/js-cookie/js.cookie.js"></script>
  <script src="assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Optional JS -->
  <script src="assets/vendor/chart.js/dist/Chart.min.js"></script>
  <script src="assets/vendor/chart.js/dist/Chart.extension.js"></script>
  <!-- Argon JS -->
  <script src="assets/js/argon.js?v=1.2.0"></script>
</body>

</html>
