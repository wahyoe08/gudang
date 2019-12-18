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
<h2>Data Supplier</h2>

<?php 
	/* Koneksi database*/
	include 'pages/web/paging.php'; //include pagination file
	
	//pagination variables
	$hal = (isset($_REQUEST['hal']) && !empty($_REQUEST['hal']))?$_REQUEST['hal']:1;
	$per_hal = 3; //berapa banyak blok
	$adjacents  = 3;
	$offset = ($hal - 1) * $per_hal;
	$reload="?cat=gudang&page=supplier";

	//Cari berapa banyak jumlah data*/
	$count_query   = mysql_query("SELECT COUNT(kode_supplier) AS numrows, nama_supplier, alamat, no_telp FROM data_supplier");
	if($count_query === FALSE) {
    die(mysql_error()); 
	}
	$row     = mysql_fetch_array($count_query);
	$numrows = $row['numrows']; //dapatkan jumlah data
	
	$total_hals = ceil($numrows/$per_hal);

	
	//jalankan query menampilkan data per blok $offset dan $per_hal
	$query = mysql_query("SELECT * FROM data_supplier LIMIT $offset,$per_hal");
?>

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped table-bordered" id="datatables">
<thead>
 
  <tr>
    <td>No</td>
    <td>Kode Supplier</td>
    <td>Nama Supplier</td>
	<td>Alamat</td>
	<td>No_Telepon</td>
    <td>Aksi</td>
    </tr>
  </thead>
  <tbody>
<?php
$no=1;
while($result = mysql_fetch_array($query)){
?>
<tr >
    <td><?php echo $no++ ?></td>
	<td><?php echo $result['kode_supplier']; ?></td>
    <td><?php echo $result['nama_supplier']; ?></td> 
	<td><?php echo $result['alamat']; ?></td> 
	<td><?php echo $result['no_telp']; ?></td> 

    <td><a href="?cat=gudang&page=supplieredit&id=<?php echo sha1($result['kode_supplier']); ?>">Ubah</a>
	    <a onclick="if(confirm('Apakah anda yakin ingin menghapus data ini ?')){ location.href='?cat=gudang&page=supplier&del=1&id=<?php echo sha1($result['kode_supplier']); ?> '}">Hapus</a>
	</td>   
  </tr>
  
<?php
}
?>


	</tbody>
</table>

<?php
echo paginate($reload, $hal, $total_hals, $adjacents);
?>

