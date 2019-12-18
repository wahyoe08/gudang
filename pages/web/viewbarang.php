<?php
include("../../_db.php");
?>
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
function sendValue (s,s2,s3,s4){

window.opener.document.getElementById('partnumber').value = s;
window.opener.document.getElementById('partname').value = s2;
window.opener.document.getElementById('sis').value = s3;
window.opener.document.getElementById('har').value = s4;
window.close();
}
//  End -->
</script>

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
<h2>Data Barang</h2>

<?php 
	/* Koneksi database*/
	include 'paging.php'; //include pagination file
	
	//pagination variables
	$hal = (isset($_REQUEST['hal']) && !empty($_REQUEST['hal']))?$_REQUEST['hal']:1;
	$per_hal = 20; //berapa banyak blok
	$adjacents  = 5;
	$offset = ($hal - 1) * $per_hal;
	$reload="viewbarang.php?";
	
	//Cari berapa banyak jumlah data*/
	$count_query   = mysql_query("SELECT COUNT(data_barang.part_number) AS numrows, data_barang.part_number, data_barang.part_name, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
	FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number");
	if($count_query === FALSE) {
    die(mysql_error()); 
	}
	$row     = mysql_fetch_array($count_query);
	$numrows = $row['numrows']; //dapatkan jumlah data
	
	$total_hals = ceil($numrows/$per_hal);

	$cari = @$_REQUEST['cari'];
	if(isset($cari)){
	$query = mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
FROM data_barang INNER JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number and data_barang.part_name like '%$cari%' GROUP BY data_barang.part_number LIMIT $offset,$per_hal");
	}else{
			$query = mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
FROM data_barang INNER JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number GROUP BY data_barang.part_number LIMIT $offset,$per_hal");
	
	}
	//jalankan query menampilkan data per blok $offset dan $per_hal

?>
<div style="margin-bottom:15px;" align="left">
<div class="col-md-12">
<form action="" method="get">
<div style="margin-bottom:15px;" align="right">
  <input type="text" name="cari" placeholder="Silahkan diisi..." class="css-input" style="width:250px;" />
   <input type="submit" name="carii" value="Cari" class="btn" style="padding:3px;" margin="6px;" width="50px;"  />
  </form>
  </div>
 </div>
 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="responsive table table-striped table-bordered">
<thead>
  <tr>
    <td colspan="3" align="right" class="no_sort">      </td>
    </tr>
  <tr>
    <td class="no_sort"></td>
    <td class="no_sort"></td>
	<td class="no_sort"></td>
	
  </tr>
  <tr>
    <td class="no_sort">Part Number</td>
	<td class="no_sort">Part Name</td>
	<td class="no_sort">Price</td>

    <td class="no_sort">Satuan</td>
    <td class="no_sort">Supplier</td>
    <td class="no_sort">Tersedia</td>
    <td class="no_sort">Aksi</td>
    </tr>
  </thead>
<?php
while($result = mysql_fetch_array($query)){
?>
<tr >
    <td><?php echo $result['part_number']; ?></td> 
    <td><?php echo $result['part_name']; ?></td> 
	<td>Rp.<?php echo $result['harga']; ?>,-</td> 
    <td><?php echo $result['satuan']; ?></td>
    <td><?php echo $result['supplier']; ?></td> 
    <td><?php echo $result['stok_tersedia']; ?></td> 
    <?php
	$ids=sha1($result['part_number']);
	?>  
    <td><a href="#" onClick="sendValue('<?php echo $result['part_number']; ?>','<?php echo $result['part_name']; ?>','<?php echo $result['stok_tersedia']; ?>','<?php echo $result['harga']; ?>');"><span class="btn btn-success"><i class="icon-edit"></i>Pilih</span></a></td>   
  </tr>
<?php
}
?>
</table>
<?php
echo paginate($reload, $hal, $total_hals, $adjacents);
?>

