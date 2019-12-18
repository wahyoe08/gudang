<style>
.pagin {
padding: 10px 0;
font:bold 11px/30px arial, serif;
}
.pagin * {
padding: 2px 6px;
color:#0A7EC5;
margin: 2px;
border-radius:3px;
}
.pagin a {
    border:solid 1px #8DC5E6;
    text-decoration:none;
    background:#F8FCFF;
    padding:6px 7px 5px;
}

.pagin span, a:hover, .pagin a:active,.pagin span.current {
    color:#FFFFFF;
    background:-moz-linear-gradient(top,#B4F6FF 1px,#63D0FE 1px,#58B0E7);
        
}
.pagin span,.current{
  padding:8px 7px 7px;
}
.content{
  padding:10px;
  font:bold 12px/30px gegoria,arial,serif;
  border:1px dashed #0686A1;
  border-radius:5px;
  background:-moz-linear-gradient(top,#E2EEF0 1px,#CDE5EA 1px,#E2EEF0);
  margin-bottom:10px;
  text-align:left;
  line-height:20px;
}
.outer_div{
  margin:auto;
  width:600px;
}
#loader{
  position: absolute;
  text-align: center;
  top: 75px;
  width: 100%;
  display:none;
}

</style>

<legend><h2>Permintaan Pembeliaan</h2></legend>
<br></br>
<a href="pages/web/mpdfpermintaan.php"><button type="button" class="btn btn-succes">Cetak</button></a>
<br></br>
  
<table width="100%" border="1px solid #000" style="border-collapse:collapse;" class="responsive table table-striped table-bordered" id="datatables">
  <thead>
  <tr style="background-color:#fc0;">
   <th>No</th>
   <th>Part Number</th>
   <th>Part Name</th>
   <th>Jumlah</th>
   <th>Satuan</th>
  </tr>
  </thead>
  <tbody>
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
  <td><?php echo round(2*($data['keluar']) + ($data['masuk'] - $data['stok_tersedia'])/2) ?></td> 
  <td><?php echo $data['satuan'] ?></td>
  
   </tr>
   
   <?php 
 }
   }
 }
 ?>
 <tr>
<td>
</td>
<td>
</td>
<td>
</td>
<td>





    
  <td>
  </td>
  
  </tbody>
</table>


