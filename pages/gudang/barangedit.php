<?php
ob_start();
if(isset($_GET['id']))
{
	$rs=mysql_query("Select * from data_barang where sha1(part_number)='".$_GET['id']."'");
	$row=mysql_fetch_array($rs);
?>
<form name="form1" method="post" action="?cat=gudang&page=barangedit&id=<?php echo $_GET['id']; ?>&edit=1">
    <label>Part Number</label>
	<input type="text" name="partnumber" id="partnumber" value="<?php echo $row['part_number']; ?>">
	<label>Part Name</label>
	<input type="text" name="partname" id="partname" value="<?php echo $row['part_name']; ?>">
	
	<label>Price</label>
	<input type="text" name="har" id="har" value="<?php echo $row['harga']; ?>">     
	<label>Satuan</label>
	<select name="satuan" id="satuan" value="<?php echo $row['satuan']; ?>">
        <option <?=($row['satuan']=='SHEET'? 'selected' :'')?>  value="SHEET">SHEET</option>
        <option <?=($row['satuan']=='ROLL'? 'selected' :'')?>  value="ROLL">ROLL</option>
		<option <?=($row['satuan']=='LITER'? 'selected' :'')?>  value="LITER">LITER</option>
		<option <?=($row['satuan']=='KG'? 'selected' :'')?> value="KG">KG</option>
		<option <?=($row['satuan']=='PCS'? 'selected' :'')?> value="PCS">PCS</option>
		<option <?=($row['satuan']=='KALENG'? 'selected' :'')?> value="KALENG">KALENG</option>
		<option <?=($row['satuan']=='METER'? 'selected' :'')?> value="METER">METER</option>   
    </select>
	<label>Supplier</label>   
	<select name="supplier" id="supplier" value="<?php echo $row['supplier']; ?>">
        <?php
			include "koneksi.php";
			$query = "select * from data_supplier";
			$hasil = mysql_query($query);
			while ($qtabel = mysql_fetch_assoc($hasil))
			{
				echo '<option '.($row['supplier']==$qtabel['nama_supplier']? 'selected' :'').' value="'.$qtabel['nama_supplier'].'">'.$qtabel['nama_supplier'].'</option>';				
			}
			?>
	</select>
	
	<p></p>
      <input type="submit" class="btn btn-primary" name="button" id="button" value="Simpan">&nbsp;&nbsp;<input type="reset" class="btn btn-danger" name="reset" id="reset" value="Batal" onclick="window.location='?cat=gudang&page=barang'">
</form>
</div>
</div>
<?php
ob_end_flush();
}else{
	echo "<script>window.location='?cat=gudang&page=barang'</script>";
}
?>
<?php
if(isset($_GET['edit']))
{
	
	$rs=mysql_query("Update data_barang SET part_name='".$_POST['partname']."',harga='".$_POST['har']."',satuan='".$_POST['satuan']."',supplier='".$_POST['supplier']."' Where sha1(part_number)='".$_GET['id']."'");
	if($rs)
	{
		echo "<script>window.location='?cat=gudang&page=barang'</script>";
	}
}
?>
