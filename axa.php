<?php

    include ("config.php");
    $judul="ASURANSI AXA MANDIRI";
    $ket="Orang Menggunakan AXA MANDIRI";
    $tahun=2015;
    $lima=0;
    $enam=0;
    $tuju=0;

    while($tahun<=2017)
    {
        $query =  "SELECT p.dim_tabel_pasien_nama, p.dim_tabel_pasien_jk, pen.dim_tabel_penyakit_nama, k.dim_tabel_klinik_nama, kam.dim_tabel_kamar_nama, r.dim_tabel_rawat_jenis, a.dim_tabel_asuransi_nama, YEAR(w.dim_tabel_waktu_waktu) FROM dim_tabel_pasien p, dim_tabel_penyakit pen, dim_tabel_klinik k, dim_tabel_kamar kam, dim_tabel_rawat r, dim_tabel_asuransi a, dim_tabel_waktu w, fakta_tabel_rumah_sakit f WHERE f.id_dim_tabel_pasien = p.id_dim_tabel_pasien AND f.id_dim_tabel_penyakit = pen.id_dim_tabel_penyakit AND f.id_dim_tabel_klinik = k.id_dim_tabel_klinik AND k.id_dim_tabel_kamar = kam.id_dim_tabel_kamar AND f.id_dim_tabel_rawat = r.id_dim_tabel_rawat AND f.id_dim_tabel_asuransi = a.id_dim_tabel_asuransi AND f.id_dim_tabel_waktu = w.id_dim_tabel_waktu AND a.dim_tabel_asuransi_nama = 'AXA MANDIRI' AND YEAR(w.dim_tabel_waktu_waktu)=$tahun";
        $hasil = mysqli_query($Connect,$query);
        while(mysqli_fetch_row($hasil))
        {
           if($tahun==2015)
            {
                $lima=$lima+1;
            }
            else if($tahun==2016)
            {
                $enam=$enam+1;
            }
            else if($tahun==2017)
            {
                $tuju=$tuju+1;
            }
            else
            {
                echo"Kosong";
            }
        }

        $tahun=$tahun+1;

    }

?>