<?php
ob_start();
?>



<?php 
$periksa="SELECT data_barang.part_number, data_barang.part_name, data_persediaan.masuk, data_persediaan.keluar, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number";
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
	$Host = "localhost";
	$username = "root";
	$password = "";
	$database = "gpsdata";
	$koneksi = mysqli_connect($Host, $username, $password, $database );
	
	if (!$koneksi){
		die ("CONECTION GAGAL :". mysqli_connect_error());
	}


	// membuat query max

	  $carikode = mysqli_query($koneksi, "SELECT max(part_number) from data_barang") or die (mysqli_error());
	  
	  // menjadikannya array
	  
	  $datakode = mysqli_fetch_array($carikode);
	  
	  // jika $datakode
	  
	  if ($datakode) {
	   $nilaikode = substr($datakode[0], 1);
	   
	   // menjadikan $nilaikode ( int )
	   
	   $kode = (int) $nilaikode;
	   
	   // setiap $kode di tambah 1
	   
	   $kode = $kode + 1;
	   $kode_otomatis = "M".str_pad($kode, 4, "0", STR_PAD_LEFT);
	  
	  } else {
	  
	   $kode_otomatis = "M0001";
	  
	  }

?>
				<form name="form1" method="post" action="?cat=gudang&page=barang&act=1">
				
						<label>Part Number</label>
						<input type="text" name="partnumber" id="partnumber" class="form-control" value="<?php echo $kode_otomatis;?>" readonly="readonly">
				
						<label>Part Name</label>
						<input type="text" name="partname" id="partname">
						
						<label>Harga</label>
						<input type="text" name="har" id="har">
					
						
                            <label class="form-label" for="kode_supplier">Supplier</label>
							<select name="nama_supplier">
			<?php
			include "koneksi.php";
			$query = "select * from data_supplier";
			$hasil = mysql_query($query);
			while ($qtabel = mysql_fetch_assoc($hasil))
			{
				echo '<option value="'.$qtabel['nama_supplier'].'">'.$qtabel['nama_supplier'].'</option>';				
			}
			?>
		</select>
							
			
						<label>Satuan</label>
						<select name="satuan" id="satuan" >
						<option value="SHEET">SHEET</option>
						<option value="ROLL">ROLL</option>
						<option value="LITER">LITER</option>
						<option value="KG">KG</option>
						<option value="PCS">PCS</option>
						<option value="KALENG">KALENG</option>
						<option value="METER">METER</option> 
						<option value="CONE">CONE</option> 
						</select>
						
		
				<p></p>
				<input type="submit" class="btn btn-primary" name="button" id="button" value="Daftar">&nbsp;&nbsp;<input type="reset" class="btn btn-danger" name="reset" id="reset" value="Bersih">
	</form>
<?php
include"pages/gudang/barangview.php";
?>

<?php
if(isset($_GET['act']))
{
	
	$rs=mysql_query("Insert into data_barang (`part_number`,`part_name`,`harga`,`satuan`,`supplier`) values ('".$_POST['partnumber']."','".$_POST['partname']."','".$_POST['har']."','".$_POST['satuan']."','".$_POST['nama_supplier']."')") or die(mysql_error());
	if($rs)
	{
		
		echo "<script>window.location='?cat=gudang&page=barang'</script>";
	}
}
?>

<?php
   if(isset($_GET['del']))
{
	$ids=$_GET['id'];
	$ff=mysql_query("Delete from data_barang Where sha1(part_number)='".$ids."'");
	if($ff)
	{
		echo "<script>window.location='?cat=gudang&page=barang'</script>";
	}
}
?>
   
<?php
ob_end_flush();
?>
<p></p>
<p></p>
<span class="span4">
   