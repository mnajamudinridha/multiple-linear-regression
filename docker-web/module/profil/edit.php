<div class="card-header bg-transparent">
    <h3 class="mb-0">Edit Data Profile</h3>
    </div>
<div class="card-body">
<?php
include 'vendor/autoload.php';
include 'fungsi/koneksi.php';
  if (isset($_SESSION['username'])) {
      $id = $_SESSION['username'];
      $query = mysqli_query($con, "SELECT * FROM admin
                                 WHERE username = '$id'");
      $jumlah = mysqli_num_rows($query);
      if ($jumlah > 0) {
          $a = mysqli_fetch_array($query);

          if (isset($_GET['status']) && $_GET['status'] == 'sukses') {
              echo '<div class="alert alert-success alert-dismissible" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
          <strong>Sukses!</strong> Update Profile Sukses
          </div>';
          } ?>


<form action="module/profil/update.php" method="POST"  enctype="multipart/form-data">
  <div class="form-group">
    <label for="username">Username</label>
    <input type="text" class="form-control" name="username" placeholder="Username"
           value="<?php echo $a['username'] ?>" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" name="password" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="nama">Nama</label>
    <input type="text" class="form-control" name="nama" placeholder="Nama"
           value="<?php echo $a['nama'] ?>">
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" name="email" placeholder="Email"
           value="<?php echo $a['email'] ?>">
  </div>
  <button type="submit" class="btn btn-primary" name="kirim">Update</button>
</form>

 <?php

      } else {
          echo 'Maaf, Id yang di edit tidak ditemukan';
      }
  }
  ?>
</div>
