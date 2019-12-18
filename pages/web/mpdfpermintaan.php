
<?php
include("../../_db.php");
$nama_dokumen='Data Bahan Baku'; //Beri nama file PDF hasil.
define('_MPDF_PATH','../../mpdf/'); // Tentukan folder dimana anda menyimpan folder mpdf
include(_MPDF_PATH . "mpdf.php"); // Arahkan ke file mpdf.php didalam folder mpdf
$mpdf=new mPDF('utf-8', 'A4', 10, 'arial'); // Membuat file mpdf baru
 
//Memulai proses untuk menyimpan variabel php dan html
ob_start();
?>
<style>
td {
    padding: 3px 5px 3px 5px;
}

table .main tbody tr td {
    font-size: 12px;
}
 
table, table .main {
    width: 100%;
    border-collapse: collapse;
    background: #fff;
}
 
h1 {
    font-size:20px;
}
hr{
  height:5px;
  border:0;
  box-shadow: 0 5px 5px -5px #8c8c8c inset;
}
</style>

<table align="center" cellspacing="10">
<tr>
    <td colspan="2" align="right" class="no_sort">      </td>
  </tr>
  <tr align="center" cellpading="1" cellspacing"0" width="750px">
 <th align="left"><img src = "../../img/rekadaya.jpg" width="100px"></th>
  <th align="left"> <h2>PT Rekadaya Multi Adiprima</h2>
  <h4>Jl. Letda Nasir, Nagrak, Gn. Putri, Bogor, Jawa Barat 16967<br>
   Phone: +6221-82492438, +6221-82498013</h4><br>
   </th>
   </tr>
   </table>
   <hr>
   <h3 align="center">Surat Permintaan Pembelian Bahan Baku</h3>
   
   <?php $sql=mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.satuan, data_barang.supplier, data_persediaan.masuk, data_persediaan.keluar, data_persediaan.stok_tersedia
FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number ") or die (mysql_error());
  $data = mysql_fetch_array($sql);
  ?>
   Supplier :  <?php echo $data['supplier'] ?>
<table width="100%" border="1" cellspacing="0" cellpadding="0" class="main" repeat_header="1">
  <thead>

  <tr>
    <td class="no_sort">No</td>
    <td class="no_sort">Part Number</td>
    <td class="no_sort">Part Name</td>
    <td class="no_sort">Jumlah</td>
    <td class="no_sort">Satuan</td>
  </tr>
  </thead>
  
<?php
  $input_cari = @$_POST['input_cari']; 
  $cari = @$_POST['cari'];
  
   // jika tombol cari di klik
   if($cari) {

    // jika kotak pencarian tidak sama dengan kosong
    if($input_cari != "") {
    // query mysql untuk mencari berdasarkan nama negara. .
    $sql = mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.satuan, data_barang.supplier, data_persediaan.masuk, data_persediaan.keluar, data_persediaan.stok_tersedia FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number WHERE data_barang.part_number like '%$input_cari%' or data_barang.part_name like '%$input_cari%' or data_barang.harga like '%$input_cari%' or data_barang.supplier like '%$input_cari%' or data_persediaan.masuk like '%$input_cari%' or data_persediaan.keluar like '%$input_cari%' or data_persediaan.stok_tersedia like '%$input_cari%'") or die (mysql_error());   
    } else {
    $sql = mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.satuan, data_barang.supplier, data_persediaan.masuk, data_persediaan.keluar, data_persediaan.stok_tersedia FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number") or die (mysql_error());
  } 
   }else {
  $sql=mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.satuan, data_barang.supplier, data_persediaan.masuk, data_persediaan.keluar, data_persediaan.stok_tersedia
FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number ") or die (mysql_error());
  }


   // mengecek data
   $cek = mysql_num_rows($sql);
  
   // jika data kurang dari 1
   if($cek < 1) {
    ?>
  
     <tr> <!--muncul peringata bahwa data tidak di temukan-->
      <td colspan="7" align="center style="padding:10px;""> Data Tidak Ditemukan</td>
     </tr>
    <?php
   } else {

   // mengulangi data agar tidak hanya 1 yang tampil
   $no=1;
   
   while($data = mysql_fetch_array($sql)) {
$total = ($data['masuk'] - $data['stok_tersedia'])/2;

  if($total >= $data['stok_tersedia']){
   ?>
   <tr>
     <td><?php echo $no++ ?></td>
    <td><?php echo $data['part_number'] ?></td>
    <td><?php echo $data['part_name'] ?></td>
  <td><?php echo 2*($data['keluar']) + ($data['masuk'] - $data['stok_tersedia'])/2 ?></td> 
  <td><?php echo $data['satuan'] ?></td>
  
   </tr>
   
   <?php 
 }
   }
 }
 ?>
</table>
<br>
<br>
<table align="right" width="20%" border="1" cellspacing="0" cellpadding="0" class="main" repeat_header="1">
                <tr>
                    <td align="left" class="main"> Diketahui </td>
                    <td align="right" class="main"> Disetujui </td>
                    <td align="right" class="main"> Dibuat </td>
                </tr>
                <tr>
                    <td align="left" class="main">  </td>
                    <br>
                    <br>
                    <br>
                    <br>
                    <td align="right" class="main">  </td>
                    <td align="right" class="main">  </td>
                </tr>
                <tr>
                    <td align="left" class="main"> Purchasing Manager </td>
                    <td align="right" class="main"> PPIC Manager </td>
                    <td align="right" class="main"> PPIC Staff </td>
                </tr>
            </table>
<?php
$mpdf->setFooter('{PAGENO}');
//penulisan output selesai, sekarang menutup mpdf dan generate kedalam format pdf
$html = ob_get_contents(); //Proses untuk mengambil hasil dari OB..
ob_end_clean();

//Disini dimulai proses convert UTF-8, kalau ingin ISO-8859-1 cukup dengan mengganti $mpdf->WriteHTML($html);
$mpdf->WriteHTML(utf8_encode($html));
$mpdf->Output($nama_dokumen.".pdf" ,'I');
$header = '<table cellpadding=0 cellspacing=0 style="border:none;">
           <tr><td style="border:none;" align="left"><img src="img/logo-disini.jpg" width="42"></td>
           <td width="100%" style="border:none;"><h1>Laporan Stok Barang</h1></td></tr></table>';
 
$footer = '<table cellpadding=0 cellspacing=0 style="border:none;">
           <tr><td style="margin-right:-5px;border:none;" align="left">
           Dicetak: '.date("Y-m-d H:i").'</td>
           <td style="margin-right:-5px;border:none;" align="right">
           Halaman: {PAGENO} / {nb}</td></tr></table>';            
 
try {
    $mpdf=new mPDF('utf-8', "A4", 9 ,'Arial', 5, 5, 20, 5, 5, 4);
    $mpdf->SetTitle("Laporan Stok Barang");
    $mpdf->setHTMLHeader($header);
    $mpdf->setHTMLFooter($footer);
    $mpdf->WriteHTML($content);
    $mpdf->Output("laporan-stok.pdf","I");
} catch(Exception $e) {
    echo $e;
exit;
}
?>