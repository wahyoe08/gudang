  <script src="js/jquery-ui.js">
  </script>
  <script><!--
  function startCalc(){
  interval = setInterval("calc()",1);}
  function calc(){
  one = document.form1.sis.value;
  two = document.form1.qty.value;
  document.form1.has.value = (one * 1) - (two * 1);}
  function stopCalc(){
  clearInterval(interval);}
  </script>

  <h2>Masukan Bahan Baku Keluar</h2>
  <form name="form1" method="post" action="" autocomplete="on">

  <table width="50%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td>Tanggal Keluar</td>
      <td><input type="text" name="tglr" id="datepicker" placeholder="Pilih tanggal.." /></td>
    </tr>
    <tr>
      <td width="40%">Part Number</td>
      <td width="60%"><label for="partnumber"></label>
        <input type="text" name="partnumber" id="partnumber" placeholder="Pilih Barang.."  onClick="window.open('<?php echo $baseurl; ?>pages/web/viewbarang.php','popuppage','width=500,toolbar=0,resizable=0,scrollbars=no,height=400,top=100,left=100');">  
  </td>
    </tr>
    <tr>
      <td>Part Name</td>
      <td><input name="partname" type="text" id="partname" readonly="readonly"></td>
    </tr>
    <tr>
      <td>No BOB</td>
      <td><input type="text" name="nopo" id="nopo"></td>
    </tr>
  <tr>
      <td>Nama Pembuat</td>
      <td><input type="text" name="jo" id="jo"></td>
    </tr>
    <tr>
      <td>Harga</td>
      <td><input readonly type=text value='0' id="har" name="har"  readonly="readonly"></td>
    </tr>
    <tr>
      <td>QTY</td>
      <td><input type="text" name="qty" id="qty"></td>
    </tr>
    <tr>
      <td>Stok Tersedia</td>
      <td><input readonly type=text value='0' id="sis" name="sis"  readonly="readonly"></td>
    </tr>
    <tr>
      <td>Jumlah diGudang</td>
      <td><input name="has" type="text" id="has" readonly="readonly" onFocus="startCalc();" onBlur="stopCalc();"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><p></p><input type="submit" class="btn btn-primary" name="button" id="button" value="Tambah"></td>
    </tr>

  </table>
  </form>

  <?php
  if(isset($_POST['button']))
  {
  	$newDate = date("Y-m-d", strtotime($_POST['tglr']));
  	
  	$q2=mysql_query("Select * from data_persediaan where part_number='".$_POST['partnumber']."'");
  	$rw=mysql_fetch_array($q2);
  	$rc=mysql_num_rows($q2);
  	if($rc==1)
  	{
  		if($_POST['qty'] < $rw['stok_tersedia'])
  		{
  			$q=mysql_query("Insert into barang_keluar (`tgl`,`part_number`,`no_po`,`jumlah_order`,`jumlah`) values ('".$newDate."','".$_POST['partnumber']."','".$_POST['nopo']."','".$_POST['jo']."','".$_POST['qty']."')") or die(mysql_error());
  			if($q)
  			{
  				$qr=mysql_query("Select sum(jumlah) as jl from barang_keluar Where part_number='".$_POST['partnumber']."'");
  				$rw22=mysql_fetch_array($qr);
  				
  				$q3=mysql_query("Update data_persediaan SET keluar=".$rw22['jl'].",stok_tersedia=stok_tersedia - ".$_POST['qty']." Where part_number='".$_POST['partnumber']."'");
  				if($q3)
  				{
  					echo "Data sudah disimpan";
  				}
  			}
  		}else{
  		echo "'Stok material kurang";
  		}
  	}else{
  		echo "Stok material kosong";
  	}
  }
  ?>
