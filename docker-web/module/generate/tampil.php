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
    <h3 class="mb-0">Generate Multiple Linear Regression</h3>
    </div>
    <div class="card-body">
    <?php
    include 'vendor/autoload.php';
    include 'fungsi/koneksi.php';
    
    // /* Generate Table dan Field */
    // mysqli_query($con, "DROP TABLE x_generate");
    // $kuisioner = mysqli_query($con, "SELECT * FROM kuisioner WHERE jenis='1'");
    // $totaldata = mysqli_num_rows($kuisioner);
    // $createtbl = "CREATE TABLE x_generate (kode VARCHAR(200) PRIMARY KEY, ";
    // $no = 1;
    // while ($kuis = mysqli_fetch_array($kuisioner)) {
    //     if($no == ($totaldata)){
    //         $createtbl .= "$kuis[kode] INT(11) NOT NULL ";
    //     }else{
    //         $createtbl .= "$kuis[kode] INT(11) NOT NULL, ";
    //     }
    //    $no++;
    // }
    // $createtbl .= " )";
    // mysqli_query($con, $createtbl);
    // /* Generate Table dan Field */

    // /* Isi Data Field */
    // $dataset = mysqli_query($con, "SELECT * FROM dataset GROUP BY kode");
    // while ($a = mysqli_fetch_array($dataset)) {
    //     $kuisioner = mysqli_query($con, "SELECT * FROM kuisioner WHERE jenis='1'");
    //     $totaldata = mysqli_num_rows($kuisioner);
    //     $insert = "INSERT INTO x_generate VALUES ('".$a['kode']."',";
    //     $no = 1;
    //     while ($kuis = mysqli_fetch_array($kuisioner)) {
    //         $val = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM dataset WHERE kode='$a[kode]' AND kuisioner='$kuis[kode]'"));
    //         if($no == ($totaldata)){
    //             $insert .= "'".$val['value']."'";
    //         }else{
    //             $insert .= "'".$val['value']."',";
    //         }
    //         $no++;
    //     }
    //     $insert .= ");";
    //     mysqli_query($con, $insert);
    // }
    /* Isi Data Field */
    $command = escapeshellcmd("");
    $output = shell_exec("python3 generate.py");
    echo "<pre>".$output."</pre>";
    echo "<hr><h3>Persamaan Multiple Linear Regression</h3>";
    $constanta = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kuisioner WHERE jenis='1' AND fungsi='1'"));
    $kuisioner = mysqli_query($con, "SELECT * FROM kuisioner WHERE jenis='1' AND fungsi='2'");
    echo "Y = <code>".round($constanta['bobot'],4)."</code> + ";
    $sum = mysqli_num_rows($kuisioner);
    $no = 1;
    while($a = mysqli_fetch_array($kuisioner)){
        if($no==$sum){
            echo "(<code>".round($a['bobot'],4)."</code><small>x</small><code>$a[kode]</code>)";
        }else{
            echo "(<code>".round($a['bobot'],4)."</code><small>x</small><code>$a[kode]</code>) + ";
        }
        $no++;
    }
    echo '</div>';
}
