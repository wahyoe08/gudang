
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
/*hr{
  border:0;
  height:30px;
  border-style: solid;
  border-color: #8c8c8c;
  border-width: 1px 0 0 0;
}
hr:before{
  display: block;
  content: "";
  height:30px;
  margin-top: -31px;
  border-style: solid;
  border-color:#8c8c8c;
  border-width: 0 0 1px 0;
  border-radius: 20px;
}*/
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
   <h3 align="center">Data Bahan Baku</h3>
   <br/>
<table width="100%" border="1" cellspacing="0" cellpadding="0" class="main" repeat_header="1">
  <thead>

  <tr>
    <td class="no_sort">Part Number</td>
    <td class="no_sort">Part Name</td>
    <td class="no_sort">Masuk</td>
    <td class="no_sort">Keluar</td>
    <td class="no_sort">Satuan</td>
    <td class="no_sort">Stok Tersedia</td>
  </tr>
  </thead>
  
<?php  
$query=mysql_query
("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_persediaan.masuk, data_persediaan.keluar, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
  FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number") or die("Couldn't execute query:<br>" . mysql_error(). "<br>" . mysql_error());;
while($result = mysql_fetch_array($query)){
?>

<tr>    
<td><?php echo $result['part_number']; ?></td> 
<td><?php echo $result['part_name']; ?></td> 
<td><?php echo $result['masuk']; ?></td> 
<td><?php echo $result['keluar']; ?></td> 
<td><?php echo $result['satuan']; ?></td>
<td><?php echo $result['stok_tersedia']; ?></td>  
</tr>
<?php
}
?>
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