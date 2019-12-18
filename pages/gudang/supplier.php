<?php
ob_start();
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

	  $carikode = mysqli_query($koneksi, "SELECT max(kode_supplier) from data_supplier") or die (mysqli_error());
	  
	  // menjadikannya array
	  
	  $datakode = mysqli_fetch_array($carikode);
	  
	  // jika $datakode
	  
	  if ($datakode) {
	   $nilaikode = substr($datakode[0], 1);
	   
	   // menjadikan $nilaikode ( int )
	   
	   $kode = (int) $nilaikode;
	   
	   // setiap $kode di tambah 1
	   
	   $kode = $kode + 1;
	   $kode_otomatis = "S".str_pad($kode, 4, "0", STR_PAD_LEFT);
	  
	  } else {
	  
	   $kode_otomatis = "S0001";
	  
	  }

?>
				<form name="form1" method="post" action="?cat=gudang&page=supplier&act=1">
					
						<label>Kode Supplier</label>
						<input type="text" name="kodesupplier" id="kodesupplier" class="form-control" value="<?php echo $kode_otomatis ?>" readonly>
				
						<label>Nama Supplier</label>
						<input type="text" name="namasupplier" id="namasupplier">
						
						<label>Alamat</label>
						<input type="text" name="alamat" id="alamat">
					
						<label>No_Telepon</label>
						<input type="text" name="notelp" id="notelp" onkeypress="return hanyaAngka(event)">
						<script>
		function hanyaAngka(evt) {
		  var charCode = (evt.which) ? evt.which : event.keyCode
		   if (charCode > 31 && (charCode < 48 || charCode > 57))
 
		    return false;
		  return true;
		}
	</script>
						<p></p>
				
				<input type="submit" class="btn btn-primary" name="button" id="button" value="Daftar">&nbsp;&nbsp;<input type="reset" class="btn btn-danger" name="reset" id="reset" value="Bersih">
	</form>
	
<?php
include"pages/gudang/supplierview.php";
?>

<?php
if(isset($_GET['act']))
{
	
	$rs=mysql_query("Insert into data_supplier (`kode_supplier`,`nama_supplier`,`alamat`,`no_telp`) values ('".$_POST['kodesupplier']."','".$_POST['namasupplier']."','".$_POST['alamat']."','".$_POST['notelp']."')") or die(mysql_error());
	if($rs)
	{
		
		echo "<script>window.location='?cat=gudang&page=supplier'</script>";
	}
}
?>

<?php
   if(isset($_GET['del']))
{
	$ids=$_GET['id'];
	$ff=mysql_query("Delete from data_supplier Where sha1(kode_supplier)='".$ids."'");
	if($ff)
	{
		echo "<script>window.location='?cat=gudang&page=supplier'</script>";
	}
}
?>
   
<?php
ob_end_flush();
?>
<p></p>
<p></p>
<span class="span4">
   