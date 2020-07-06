    <h4 align="center">
        Proses Metode Topsis
        </h4>
    <div class="panel-body">
    <?php
    include 'vendor/autoload.php';
    include 'fungsi/koneksi.php';
    //row 1
    echo "<div class='row'>";
    echo "<div class='col-md-6'><h5 align='center'>Bobot Preferensi (W<sub>i</sub>)</h5>";
    $pref1 = mysqli_query($con, "SELECT * FROM kriteria");
    $pref2 = mysqli_query($con, "SELECT * FROM kriteria");
    echo "<table class='table table-hover table-bordered'>";
    echo "<tr>";
    $text1 = null;
    while ($b = mysqli_fetch_array($pref1)) {
        echo "<th style='text-align:center'>".$b['kode'].':'.$b['solusi']."</th>";
        $text1 .= "<b>$b[kode]</b> = ".($b['bobot']*100)." / 100 = ".number_format($b['bobot'],2,",",".")." <br>";
    }
    echo "<tr>";
    echo "<tr>";
    $text2 = null;
    while ($b = mysqli_fetch_array($pref2)) {
        echo "<td>".number_format($b['bobot'],2,",",".")."</td>";
        $text2 .= ($b['bobot']*100)."% + ";
    }
    echo "<tr>";
    echo "</table>";
    echo "W = (bobot dalam %) / 100, dimana total bobot adalah 100% <br>";
    echo $text1;
    echo "Total : ".$text2." = 100%";
    echo "</div>";
    echo "<div class='col-md-6'><h5 align='center'>Bobot Perhitungan (|X<sub>n</sub>|)</h5>";
    $subx1 = mysqli_query($con, "SELECT * FROM kriteria");
    $subx2 = mysqli_query($con, "SELECT * FROM kriteria");
    echo "<table class='table table-hover table-bordered'>";
    echo "<tr>";
    $no = 1;
    while ($b = mysqli_fetch_array($subx1)) {
        echo "<th style='text-align:center'>|X<sub>".$no."</sub>|</th>";
        $no++;
    }
    echo "<tr>";
    echo "<tr>";
    $text3 = null;
    $i = 1;
    while ($b = mysqli_fetch_array($subx2)) {
        $nilai = 0;
        $nil = mysqli_query($con, "SELECT kafe.*, opsi.angka FROM kafe 
                                 LEFT JOIN nilai ON nilai.kafe = kafe.kode
                                 LEFT JOIN opsi ON nilai.nilai = opsi.id
                                 WHERE nilai.kriteria = '$b[kode]'");
        $tot = mysqli_num_rows($nil);
        echo "<td>";
        $n1 = 0;
        $textsub = "{";
        $j = 1;
        while ($c = mysqli_fetch_array($nil)) {
            $n1 = $n1 + pow($c['angka'],2);
            $textsub .= $c['angka']."^2 &nbsp;";
            if($j < $tot){
                $textsub .= "+ &nbsp;";
            }
            $j++;
        }
        $textsub .= "}";
        $text3 .= "|X<sub>$i</sub>| = $\sqrt{$textsub}$ = ".number_format(sqrt($n1),4,",",".")."<br>";
        $i++;
        echo number_format(sqrt($n1),4,",",".");
        echo "</td>";
    }
    echo "<tr>";
    echo "</table>";
    echo 'Rumus : |X<sub>n</sub>| = $\sqrt{\sum_{i=1}^{m}=x_{ij^2}}$<br>';
    echo $text3;
    echo "</div>";

    echo "</div>";
    echo '<hr>';
    echo "<div class='row'>";
    echo "<div class='col-md-6'><h5 align='center'>Matriks Rangking Kecocokan</h5>";
    $data = mysqli_query($con, "SELECT * FROM kafe");
    $jumlah = mysqli_num_rows($data);
    $sub = mysqli_query($con, "SELECT * FROM kriteria");
    $labels = array();
    $totaldataset = array();
    if ($jumlah > 0) {
        echo "<table class='table table-hover table-bordered'>";
        echo "<tr><th style='text-align:center'>Kode</th>";
        //kriteria
        while ($b = mysqli_fetch_array($sub)) {
            array_push($labels, $b['nama']);
            echo "<th style='text-align:center' width='".(75/mysqli_num_rows($sub))."%'>$b[kode]<br>$b[nama]</th>";
        }
        echo "</tr>";
        $penjumlah = 0;
        $penjumlah1 = 0;
        $penjumlah2 = 0;
        while ($a = mysqli_fetch_array($data)) {
            echo '<tr><td width="110" align="center">';
            echo '<b>'.$a['nama'].'</b>';
            $sub1 = mysqli_query($con, "SELECT * FROM kriteria");
            $harga = array();
            while ($b = mysqli_fetch_array($sub1)) {
                $nilai = mysqli_fetch_array(mysqli_query($con, "SELECT nilai.*, opsi.angka, opsi.label FROM nilai LEFT JOIN opsi ON nilai.nilai = opsi.id WHERE nilai.kafe= '$a[kode]' AND nilai.kriteria = '$b[kode]'"));
                echo "<td>";
                echo $nilai['angka'];
                echo "</td>";
                $angka = 0;
                if($nilai['angka'] > 0){
                    $angka = $nilai['angka'];
                }
                array_push($harga, $angka);
            }
            $dataset['label'] = $a['nama'];
            $dataset['backgroundColor'] = 'rgba('.(1+$penjumlah).', '.(192-$penjumlah1).', '.(235-$penjumlah2).', 0.2)';
            $dataset['borderColor'] = 'rgba('.(1+$penjumlah).', '.(192-$penjumlah1).', '.(235-$penjumlah2).', 1)';
            $dataset['borderWidth'] = 1;
            $dataset['data'] = $harga;
            array_push($totaldataset, $dataset);
            $penjumlah = $penjumlah + 40;
            $penjumlah1 = $penjumlah1 + 30;
            $penjumlah2 = $penjumlah2 + 10;
            echo '</td></tr>';
            
        }
        echo '</table>';
    } else {
        echo '<h4>Data Belum Ada</h4>';
    }
    // end row 1
    echo "</div>";



    echo "<div class='col-md-6'><h5 align='center'>Matriks keputusan ternomalisasi (r<sub>ij</sub>)</h5>";
    $data = mysqli_query($con, "SELECT * FROM kafe");
    $jumlah = mysqli_num_rows($data);
    $sub = mysqli_query($con, "SELECT * FROM kriteria");
    if ($jumlah > 0) {
        echo "<table class='table table-hover table-bordered'>";
        echo "<tr><th style='text-align:center'>Kode</th>";
        //kriteria
        while ($b = mysqli_fetch_array($sub)) {
            echo "<th style='text-align:center' width='".(75/mysqli_num_rows($sub))."%'>$b[kode]<br>$b[nama]</th>";
        }
        echo "</tr>";
        $text4 = null;
        $ii = 1;
        while ($a = mysqli_fetch_array($data)) {
            echo '<tr><td width="110" align="center">';
            echo '<b>'.$a['nama'].'</b>';
            $sub1 = mysqli_query($con, "SELECT * FROM kriteria");
            $subtot = mysqli_num_rows($sub1);
            $harga = array();
            $j=1;
            while ($b = mysqli_fetch_array($sub1)) {
                $nil = mysqli_query($con, "SELECT kafe.*, opsi.angka FROM kafe 
                                 LEFT JOIN nilai ON nilai.kafe = kafe.kode
                                 LEFT JOIN opsi ON nilai.nilai = opsi.id
                                 WHERE nilai.kriteria = '$b[kode]'");
                $tot = mysqli_num_rows($nil);
                
                $n1 = 0;
                while ($c = mysqli_fetch_array($nil)) {
                    $n1 = $n1 + pow($c['angka'],2);

                }

                $nilai = mysqli_fetch_array(mysqli_query($con, "SELECT nilai.*, opsi.angka, opsi.label FROM nilai LEFT JOIN opsi ON nilai.nilai = opsi.id WHERE nilai.kafe= '$a[kode]' AND nilai.kriteria = '$b[kode]'"));
                echo "<td>";
                echo number_format(@($nilai['angka']/sqrt($n1)),4,",",".");
                echo "</td>";
                $angka = 0;
                if($nilai['angka'] > 0){
                    $angka = $nilai['angka'];
                }
                @$text4 .= "<b>r<sub>$ii$j</sub></b> = $angka/".number_format(sqrt($n1),4,",",".")." = ".number_format(($nilai['angka']/sqrt($n1)),4,",",".");
                if($j < $subtot){
                    $text4 .= ', ';
                }
                $j++;
            }
            echo '</td></tr>';
            $text4 .="<br>";
            $ii++;
        }
        echo '</table>';
    } else {
        echo '<h4>Data Belum Ada</h4>';
    }
    // end row 1
    echo "</div>";

    //end div row
    echo "</div>";
    echo "<hr>";
    echo "<div class='row'>";
    echo "<div class='col-md-12'><br>";
    echo '<canvas id="myChart" width="300" height="100"></canvas>';
        ?>
        <script>
        var ctx = document.getElementById('myChart');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: <?php echo json_encode($labels); ?>,
                datasets: <?php echo json_encode($totaldataset); ?>
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
        </script>
        <?php
    echo '<br><br>Rumus : r<sub>ij</sub> = $\dfrac{x_\mathrm{ij}}{\sqrt{\sum_{i=1}^{m}=x_{ij^2}}}$<br>';
    echo $text4;
    echo '</div>';
    echo '</div>';
    echo "<hr>";
    echo "<div class='row'>";
    echo "<div class='col-md-6'><h5 align='center'>Matriks keputusan Nomalisasi (y<sub>ij</sub>)</h5>";
    $data = mysqli_query($con, "SELECT * FROM kafe");
    $jumlah = mysqli_num_rows($data);
    $sub = mysqli_query($con, "SELECT * FROM kriteria");
    $datasolusi = array();
    if ($jumlah > 0) {
        echo "<table class='table table-hover table-bordered'>";
        echo "<tr><th style='text-align:center'>Kode</th>";
        //kriteria
        while ($b = mysqli_fetch_array($sub)) {
            echo "<th style='text-align:center' width='".(75/mysqli_num_rows($sub))."%'>$b[kode]<br>$b[nama]</th>";
        }
        echo "</tr>";
        $text4 = null;
        $ii = 1;
        while ($a = mysqli_fetch_array($data)) {
            echo '<tr><td width="110" align="center">';
            echo '<b>'.$a['nama'].'</b>';
            $sub1 = mysqli_query($con, "SELECT * FROM kriteria");
            $subtot = mysqli_num_rows($sub1);
            $harga = array();
            $j=1;
            while ($b = mysqli_fetch_array($sub1)) {
                $nil = mysqli_query($con, "SELECT kafe.*, opsi.angka FROM kafe 
                                 LEFT JOIN nilai ON nilai.kafe = kafe.kode
                                 LEFT JOIN opsi ON nilai.nilai = opsi.id
                                 WHERE nilai.kriteria = '$b[kode]'");
                $tot = mysqli_num_rows($nil);
                
                $n1 = 0;
                while ($c = mysqli_fetch_array($nil)) {
                    $n1 = $n1 + pow($c['angka'],2);

                }

                $nilai = mysqli_fetch_array(mysqli_query($con, "SELECT nilai.*, opsi.angka, opsi.label FROM nilai LEFT JOIN opsi ON nilai.nilai = opsi.id WHERE nilai.kafe= '$a[kode]' AND nilai.kriteria = '$b[kode]'"));
                echo "<td>";
                @$output = number_format(($nilai['angka']/sqrt($n1))*$b['bobot'],4,",",".");
                echo $output;
                $cod = $b['kode'];
                @$datasolusi[$cod][$ii]=($nilai['angka']/sqrt($n1))*$b['bobot'];
                echo "</td>";
                $angka = 0;
                if($nilai['angka'] > 0){
                    $angka = $nilai['angka'];
                }
                @$text4 .= "<b>r<sub>$ii$j</sub></b> = $angka/".number_format(sqrt($n1),4,",",".")." = ".number_format(($nilai['angka']/sqrt($n1)),4,",",".");
                if($j < $subtot){
                    $text4 .= ', ';
                }
                $j++;
            }
            echo '</td></tr>';
            $text4 .="<br>";
            $ii++;
        }
        echo '</table>';
        echo "Rumus : <b>y<sub>ij</sub> = W<sub>i</sub> * r<sub>ij</sub></b>";
    } else {
        echo '<h4>Data Belum Ada</h4>';
    }
    // end row 1
    echo "</div>";
    echo "<div class='col-md-6'>";
    
    echo "<h5 align='center'>Solusi Ideal Positif (A+)</h5>";
    $pref1 = mysqli_query($con, "SELECT * FROM kriteria");
    $pref2 = mysqli_query($con, "SELECT * FROM kriteria");
    echo "<table class='table table-hover table-bordered'>";
    echo "<tr>";
    $text1 = null;
    while ($b = mysqli_fetch_array($pref1)) {
        if($b['solusi'] == "max"){
            echo "<th style='text-align:center'>".$b['kode'].":Max</th>";
        }else{
            echo "<th style='text-align:center'>".$b['kode'].":Min</th>";
        }
        $text1 .= "<b>$b[kode]</b> = ".($b['bobot']*100)." / 100 = ".number_format($b['bobot'],2,",",".")." <br>";
    }
    echo "<tr>";
    echo "<tr>";
    $text2 = null;
    while ($b = mysqli_fetch_array($pref2)) {
        echo "<td>";
        $val = null;
        if($b['solusi'] == "max"){
            $val = max($datasolusi[$b['kode']]);
        }else{
            $val = min($datasolusi[$b['kode']]);
        }
        echo number_format($val,4,",",".");
        echo "</td>";
    }
    echo "<tr>";
    echo "</table>";
    echo "Rumus : <b>A+ = max(y1+,y2+,…,yn+)</b><hr>";
    echo "<h5 align='center'>Solusi Ideal Negatif (A-)</h5>";
    $pref1 = mysqli_query($con, "SELECT * FROM kriteria");
    $pref2 = mysqli_query($con, "SELECT * FROM kriteria");
    echo "<table class='table table-hover table-bordered'>";
    echo "<tr>";
    $text1 = null;
    while ($b = mysqli_fetch_array($pref1)) {
        if($b['solusi'] == "max"){
            echo "<th style='text-align:center'>".$b['kode'].":Min</th>";
        }else{
            echo "<th style='text-align:center'>".$b['kode'].":Max</th>";
        }
        $text1 .= "<b>$b[kode]</b> = ".($b['bobot']*100)." / 100 = ".number_format($b['bobot'],2,",",".")." <br>";
    }
    echo "<tr>";
    echo "<tr>";
    $text2 = null;
    while ($b = mysqli_fetch_array($pref2)) {
        echo "<td>";
        $val = null;
        if($b['solusi'] == "max"){
            $val = min($datasolusi[$b['kode']]);
        }else{
            $val = max($datasolusi[$b['kode']]);
        }
        echo number_format($val,4,",",".");
        echo "</td>";
    }
    echo "<tr>";
    echo "</table>";
    echo "Rumus : <b>A- = max(y1-,y2-,…,yn-)</b>";
    echo "</div>";
    // end row
    echo "</div>";
    echo "<hr>";
    

    echo "<div class='row'>";
    echo "<h5 align='center'>Jarak Alternatif dengan Solusi Ideal Positif (D<sub>i</sub>+)</h5>";
    $kodepositif = null;
    $data = mysqli_query($con, "SELECT * FROM kafe");
    $jumlah = mysqli_num_rows($data);
    $sub = mysqli_query($con, "SELECT * FROM kriteria");
    if ($jumlah > 0) {

        $ii = 1;
        while ($a = mysqli_fetch_array($data)) {
            echo "<b>D<sub>$ii</sub>+ =</b> $\sqrt{";
            $sub1 = mysqli_query($con, "SELECT * FROM kriteria");
            $subtot = mysqli_num_rows($sub1);
            $harga = array();
            $j=1;
            $querytotal = null;
            while ($b = mysqli_fetch_array($sub1)) {
                $nil = mysqli_query($con, "SELECT kafe.*, opsi.angka FROM kafe 
                                 LEFT JOIN nilai ON nilai.kafe = kafe.kode
                                 LEFT JOIN opsi ON nilai.nilai = opsi.id
                                 WHERE nilai.kriteria = '$b[kode]'");
                $tot = mysqli_num_rows($nil);
                
                $n1 = 0;
                while ($c = mysqli_fetch_array($nil)) {
                    $n1 = $n1 + pow($c['angka'],2);

                }

                $nilai = mysqli_fetch_array(mysqli_query($con, "SELECT nilai.*, opsi.angka, opsi.label FROM nilai LEFT JOIN opsi ON nilai.nilai = opsi.id WHERE nilai.kafe= '$a[kode]' AND nilai.kriteria = '$b[kode]'"));
                @$real = ($nilai['angka']/sqrt($n1))*$b['bobot'];
                @$output = number_format(($nilai['angka']/sqrt($n1))*$b['bobot'],4,",",".");
                $val = null;
                if($b['solusi'] == "max"){
                    $val = max($datasolusi[$b['kode']]);
                }else{
                    $val = min($datasolusi[$b['kode']]);
                }
                $output2 = number_format($val,4,",",".");
                echo "($output2-$output)^2";
                $querytotal = $querytotal + pow($val-$real,2);
                if($j < ($tot-1)){
                    echo "+";
                }else{
                    echo "}$";
                }
                $cod = $b['kode'];
                
                $angka = 0;
                if($nilai['angka'] > 0){
                    $angka = $nilai['angka'];
                }
                
                $j++;
            }
            echo "<br>";
            echo "<b>D<sub>$ii</sub>+ =</b> $\sqrt{".number_format($querytotal,4,",",".")."}$<br>";
            echo "<b>D<sub>$ii</sub>+ = ".number_format(sqrt($querytotal),4,",",".")."</b>";
            $kodepositif[$a['kode']] = sqrt($querytotal);
            echo "<br><br>";
            $ii++;
        }
    echo "</div>";
    }

    echo "<hr>";

    echo "<div class='row'>";
    echo "<h5 align='center'>Jarak Alternatif dengan Solusi Ideal Negatif (D<sub>i</sub>-)</h5>";
    $kodenegatif = null;
    $data = mysqli_query($con, "SELECT * FROM kafe");
    $jumlah = mysqli_num_rows($data);
    $sub = mysqli_query($con, "SELECT * FROM kriteria");
    if ($jumlah > 0) {

        $ii = 1;
        while ($a = mysqli_fetch_array($data)) {
            echo "<b>D<sub>$ii</sub>- =</b> $\sqrt{";
            $sub1 = mysqli_query($con, "SELECT * FROM kriteria");
            $subtot = mysqli_num_rows($sub1);
            $harga = array();
            $j=1;
            $querytotal = null;
            while ($b = mysqli_fetch_array($sub1)) {
                $nil = mysqli_query($con, "SELECT kafe.*, opsi.angka FROM kafe 
                                 LEFT JOIN nilai ON nilai.kafe = kafe.kode
                                 LEFT JOIN opsi ON nilai.nilai = opsi.id
                                 WHERE nilai.kriteria = '$b[kode]'");
                $tot = mysqli_num_rows($nil);
                
                $n1 = 0;
                while ($c = mysqli_fetch_array($nil)) {
                    $n1 = $n1 + pow($c['angka'],2);

                }

                $nilai = mysqli_fetch_array(mysqli_query($con, "SELECT nilai.*, opsi.angka, opsi.label FROM nilai LEFT JOIN opsi ON nilai.nilai = opsi.id WHERE nilai.kafe= '$a[kode]' AND nilai.kriteria = '$b[kode]'"));
                @$real = ($nilai['angka']/sqrt($n1))*$b['bobot'];
                @$output = number_format(($nilai['angka']/sqrt($n1))*$b['bobot'],4,",",".");
                $val = null;
                if($b['solusi'] == "max"){
                    $val = min($datasolusi[$b['kode']]);
                }else{
                    $val = max($datasolusi[$b['kode']]);
                }
                $output2 = number_format($val,4,",",".");
                echo "($output2-$output)^2";
                $querytotal = $querytotal + pow($val-$real,2);
                if($j < ($tot-1)){
                    echo "+";
                }else{
                    echo "}$";
                }
                $cod = $b['kode'];
                
                $angka = 0;
                if($nilai['angka'] > 0){
                    $angka = $nilai['angka'];
                }
                
                $j++;
            }
            echo "<br>";
            echo "<b>D<sub>$ii</sub>- =</b> $\sqrt{".number_format($querytotal,4,",",".")."}$<br>";
            echo "<b>D<sub>$ii</sub>- = ".number_format(sqrt($querytotal),4,",",".")."</b>";
            $kodenegatif[$a['kode']] = sqrt($querytotal);
            echo "<br><br>";
            $ii++;
        }
    echo "</div>";
    }

    echo "<hr>";
    echo "<div class='row'>";
    echo "<div class='col-md-6'>";
    echo "<h5 align='center'>Nilai Preferensi untuk alternatif (V<sub>i</sub>)</h5>";
    $akhir = mysqli_query($con, "SELECT * FROM kafe ORDER BY kode");
    echo "<table class='table table-hover table-bordered'>";
    echo "<tr><th>Kode</th><th>Nilai Preferensi</th><th>Rangking</th></tr>";
    mysqli_query($con, "TRUNCATE TABLE rangking");
    while ($b = mysqli_fetch_array($akhir)) {
        $kodd = $b['kode'];
        $vmin = $kodenegatif[$kodd];
        $vplus = $kodepositif[$kodd];
        @$hasil = $vmin/($vmin+$vplus);
        mysqli_query($con, "INSERT INTO rangking (kafe,nilai) VALUES ('$kodd',$hasil)");
    }
    $update = mysqli_query($con, "SELECT * FROM rangking ORDER BY nilai DESC");
    $no = 1;
    while ($c = mysqli_fetch_array($update)) {
        mysqli_query($con, "UPDATE rangking SET rangking = '$no'  WHERE id = $c[id]");
        $no++;
    }
    $hasil = mysqli_query($con, "SELECT rangking.*, kafe.nama FROM rangking 
                                  LEFT JOIN kafe ON rangking.kafe=kafe.kode ORDER BY rangking.kafe");
    while ($d = mysqli_fetch_array($hasil)) {
        echo "<tr><td><b>$d[kafe]</b> - $d[nama]</td><td>".number_format($d['nilai'],4,",",".")."</td><td><b>$d[rangking]</b></td></tr>";
    }
    echo "</table>";
    echo "Rumus : <b>V<sub>i</sub> = $\dfrac{D_i^-}{D_i^- + D_i^+}$</b>";
    echo '</div>';

    echo "<div class='col-md-6'>";
    echo "<h5 align='center'>Rangking Akhir Hasil Topsis</h5>";
    
    $hasil = mysqli_query($con, "SELECT rangking.*, kafe.nama FROM rangking 
                                  LEFT JOIN kafe ON rangking.kafe=kafe.kode ORDER BY rangking.kafe");
    $totaldatasetakhir = array();
    $penjumlah = 0;
    $penjumlah1 = 0;
    $penjumlah2 = 0;
    while ($d = mysqli_fetch_array($hasil)) {
        // echo "<tr><td><b>$d[kafe]</b> - $d[nama]</td><td>".number_format($d['nilai'],4,",",".")."</td><td><b>$d[rangking]</b></td></tr>";
        $dataset['label'] = $d['nama'];
        $dataset['backgroundColor'] = 'rgba('.(1+$penjumlah).', '.(192-$penjumlah1).', '.(235-$penjumlah2).', 0.2)';
        $dataset['borderColor'] = 'rgba('.(1+$penjumlah).', '.(192-$penjumlah1).', '.(235-$penjumlah2).', 1)';
        $dataset['borderWidth'] = 1;
        $dataset['data'] = $d['rangking'];
        array_push($totaldatasetakhir, $dataset);
        $penjumlah = $penjumlah + 40;
        $penjumlah1 = $penjumlah1 + 30;
        $penjumlah2 = $penjumlah2 + 10;
    }
    echo '<canvas id="myChart3" width="300" height="250"></canvas>';
    ?>
        <script>
        var ctx = document.getElementById('myChart3');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Rangking Berdasarkan Topsis'],
                datasets: <?php echo json_encode($totaldatasetakhir); ?>
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
        </script>
    <?php
    echo '</div>';

    echo '</div>';
    
    echo '</div>';
