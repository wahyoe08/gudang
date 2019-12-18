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

<?php 
$periksa="SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_persediaan.masuk, data_persediaan.keluar, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number ";
$query_periksa = mysql_query($periksa);
if($query_periksa===FALSE){
	die(mysql_error());
}
while($q=mysql_fetch_array($query_periksa)){
		$total = ($q['masuk'] - $q['stok_tersedia'])/2;
	//if($q['stok_tersedia']<='min'){
	if($total >= $q['stok_tersedia']){
		?>	
		<script>
			$(document).ready(function(){
				$('#pesan_sedia').css("color","red");
				$('#pesan_sedia').append("<span class='glyphicon glyphicon-asterisk'></span>");
			});
		</script>
		<?php
		echo "<div style='padding:5px' class='alert alert-warning'><span class='glyphicon glyphicon-info-sign'></span> Stok  <a href='?cat=gudang&page=permintaanview' style='color:red'>". $q['part_number']."</a> yang tersisa sudah kurang dari safety stock . silahkan pesan lagi !!</div>";	
	}
}
?>
<?php 
$per_hal=10;
$jumlah_record=mysql_query("SELECT COUNT(data_barang.part_number) AS numrows,data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
	FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number");
$jum=mysql_result($jumlah_record, 0);
$halaman=ceil($jum / $per_hal);
$page = (isset($_GET['page'])) ? (int)$_GET['page'] : 1;
$start = ($page - 1) * $per_hal;
?>
<?php 
	/* Koneksi database*/
	include 'pages/web/paging.php'; //include pagination file

	//pagination variables
	$hal = (isset($_REQUEST['hal']) && !empty($_REQUEST['hal']))?$_REQUEST['hal']:1;
	$per_hal = 10; //berapa banyak blok
	$adjacents  = 10;
	$offset = ($hal - 1) * $per_hal;
	$reload="?cat=gudang&page=order";

	//Cari berapa banyak jumlah data*/
	$count_query   = mysql_query("SELECT COUNT(data_barang.part_number) AS numrows,data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
	FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number");
	if($count_query === FALSE) {
    die(mysql_error()); 
	}
	$row     = mysql_fetch_array($count_query);
	$numrows = $row['numrows']; //dapatkan jumlah data
	
	$total_hals = ceil($numrows/$per_hal);

	
	//jalankan query menampilkan data per blok $offset dan $per_hal
	$query = mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
	FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number GROUP BY data_barang.part_number LIMIT $offset,$per_hal");
?>

<legend><h3>Cari Data Material</h3></legend>
<div style="margin-bottom:15px;" align="left">
<div class="col-md-12">
  <form action="" method="post">
<table class="col-md-2">
		<tr>
			<td>Jumlah Record   </td>		
			<td><?php     	echo     	$jum   ; ?></td>
		</tr>
		
		<tr>
			<td>Jumlah Halaman  </td>	
			<td><?php    	 echo     	$halaman   ; ?></td>
		</tr>
		 </table>
</div>

 <div style="margin-bottom:15px;" align="right">
  <input type="text" name="input_cari" placeholder="Silahkan diisi..." class="css-input" style="width:250px;" />
   <input type="submit" name="cari" value="Cari" class="btn" style="padding:3px;" margin="6px;" width="50px;"  />
   
  </form>
 </div>
 </div>
 
  <a href="pages/web/export-excel-databarang.php"">[ Export ke Excel ]</a>
  <a href="pages/web/mpdfbarang.php"">[ Export ke Pdf ]</a>
  
<table width="100%" border="1px solid #000" style="border-collapse:collapse;" class="responsive table table-striped table-bordered" id="datatables">
  <thead>
  <tr style="background-color:#fc0;">
   <th>No</th>
   <th>Part Number</th>
   <th>Part Name</th>
   <th>Harga</th>
   <th>Supplier</th>
   <th>Masuk</th>
   <th>Keluar</th>
   <th>Stok Tersedia</th>
   <th>Safety Stock</th>
   <th>Rop</th>
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
    $sql = mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.satuan, data_barang.supplier, data_persediaan.masuk, data_persediaan.keluar, data_persediaan.stok_tersedia FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number WHERE data_barang.part_number like '%$input_cari%' or data_barang.part_name like '%$input_cari%' or data_barang.harga like '%$input_cari%' or data_barang.supplier like '%$input_cari%' or data_persediaan.masuk like '%$input_cari%' or data_persediaan.keluar like '%$input_cari%' or data_persediaan.stok_tersedia like '%$input_cari%'") or die (mysql_error());   
    } else {
    $sql = mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.satuan, data_barang.supplier, data_persediaan.masuk, data_persediaan.keluar, data_persediaan.stok_tersedia FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number") or die (mysql_error());
	} 
   }else {
	$sql=mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.satuan, data_barang.supplier, data_persediaan.masuk, data_persediaan.keluar, data_persediaan.stok_tersedia FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number limit $offset, $per_hal") or die (mysql_error());
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

   ?>
   <tr>
     <td><?php echo $no++ ?></td>
    <td><?php echo $data['part_number'] ?></td>
    <td><?php echo $data['part_name'] ?></td>
	<td>Rp.<?php echo number_format($data['harga']); ?>,-</td> 
	<td><?php echo $data['supplier'] ?></td>
	<td><?php echo $data['masuk'] ?></td>
	<td><?php echo $data['keluar'] ?></td>
	<td><?php echo $data['stok_tersedia'] ?></td>
	<td><?php echo ceil(($data['masuk'] - $data['stok_tersedia'])/2) ?></td>
	<td><?php echo ceil(2*($data['keluar']) + ($data['masuk'] - $data['stok_tersedia'])/2) ?></td>
   </tr>
   
   <?php 
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
</td>
<td>




		<td>			
		<?php 
		
			$x=mysql_query("select sum(masuk) as total from data_persediaan");	
			$xx=mysql_fetch_array($x);			
			echo "<b>  ". number_format($xx['total'])."</b>";		
		?>
		</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(keluar) as total from data_persediaan");	
			$xx=mysql_fetch_array($x);			
			echo "<b>  ". number_format($xx['total'])."</b>";		
		?>
		</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(stok_tersedia) as total from data_persediaan");	
			$xx=mysql_fetch_array($x);			
			echo "<b>  ". number_format($xx['total'])."</b>";		
		?>
		</td>
	<td>
	</td>
	<td>
	</td>
	</tbody>
</table>
<?php
echo paginate($reload, $hal, $total_hals, $adjacents);
?>


