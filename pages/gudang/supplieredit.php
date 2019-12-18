<?php
ob_start();
if(isset($_GET['id']))
{
	$rs=mysql_query("Select * from data_supplier where sha1(kode_supplier)='".$_GET['id']."'");
	$row=mysql_fetch_array($rs);
?>

<form name="form1" method="post" action="?cat=gudang&page=supplieredit&id=<?php echo $_GET['id']; ?>&edit=1">
    <label>Kode Supplier</label>
	<input type="text" name="kodesupplier" id="kodesupplier" value="<?php echo $row['kode_supplier']; ?>">
	<label>Nama Supplier</label>
	<input type="text" name="namasupplier" id="namasupplier" value="<?php echo $row['nama_supplier']; ?>">
	<label>Alamat</label>
	<input type="text" name="alamat" id="alamat" value="<?php echo $row['alamat']; ?>">
	<label>No Telepon</label>
	<input type="text" name="notelp" id="notelp" value="<?php echo $row['no_telp']; ?>">
	     
	
	
	<p></p>
      <input type="submit" class="btn btn-primary" name="button" id="button" value="Ubah">&nbsp;&nbsp;<input type="reset" class="btn btn-danger" name="reset" id="reset" value="Batal" onclick="window.location='?cat=gudang&page=supplier'">
</form>
<?php
ob_end_flush();
}else{
	echo "<script>window.location='?cat=gudang&page=supplier'</script>";
}
?>
<?php
if(isset($_GET['edit']))
{
	
	$rs=mysql_query("Update data_supplier SET nama_supplier='".$_POST['namasupplier']."',alamat='".$_POST['alamat']."',no_telp='".$_POST['notelp']."' Where sha1(kode_supplier)='".$_GET['id']."'");
	if($rs)
	{
		echo "<script>window.location='?cat=gudang&page=supplier'</script>";
	}
}
?>
