<script src="js/jquery-ui.js"></script>
<script>
$(function() {
$("#datepicker3").datepicker({        
		 dateFormat: "yy-mm-dd",
    });
});
$(function() {
$("#datepicker2").datepicker({     
		 dateFormat: "yy-mm-dd",      
    });
});

</script>
<?php
error_reporting(0);

?>
<?php
function standard_deviation($aValues)
{
    $fMean = array_sum($aValues) / count($aValues);
    //print_r($fMean);
    $fVariance = 0.0;
    foreach ($aValues as $i)
    {
        $fVariance += pow($i - $fMean, 2);

    }       
    $size = count($aValues) - 1;
    return (float) sqrt($fVariance)/sqrt($size);
}
?>
<?php
if(!isset($_GET['id']))
{
	//FORM CARI BARANG
?>
<form method="post" name="form2">
 Cari tanggal
<input type="text" name="tglr" id="datepicker3" placeholder="Pilih tanggal.." class="span2 input-small" />
Hingga 
  <input type="text" name="tglr2" id="datepicker2" placeholder="Pilih tanggal.." class="span2 input-small" />
<label>Pilih Material</label>
<label for="partnumber"></label>
      <input type="text" name="partnumber" id="partnumber" placeholder="Pilih Barang.."  onClick="window.open('<?php echo $baseurl; ?>pages/web/viewbarang.php','popuppage','width=500,toolbar=0,resizable=0,scrollbars=no,height=400,top=100,left=100');">
      <label> Nama Barang</label>
      <input name="partname" type="text" id="partname" readonly="readonly">
      <p></p>
<input type="submit" name="button2" class="btn btn-primary" value="Lanjut" />
<?php
if(isset($_POST['button2']))
{
	$_SESSION['tgl1']=$_POST['tglr'];
	$_SESSION['tgl2']=$_POST['tglr2'];
	echo "<script>window.location='?cat=sekretaris&page=quantity2&id=".$_POST['kodebarang']."'</script>";
}
?>
<?php
}elseif(isset($_GET['id'])){
?>

<?php
$tglawal=$_SESSION['tgl1'];
$tglakhir=$_SESSION['tgl2'];
$param_part_number=$_GET['id'];
$sesi_tanggal=$_SESSION['tgl'];
$query_awal=mysql_query("Select min(tgl) as awal from barang_keluar WHERE part_number='".$param_part_number."'");
$r_awal=mysql_fetch_array($query_awal);
$time_convert = strtotime($r_awal['awal']);
$awalbulan=date("m", $time_convert);
$awaltahun=date("Y", $time_convert);
$tahunsekarang=date("Y");
$query_cari_count=mysql_query("Select count(id_keluar) as numrows from barang_keluar WHERE part_number='".$param_part_number."' and tgl between '".$tglawal."' and '".$tglakhir."'");
$count_barang_cari=mysql_fetch_array($query_cari_count);
if($count_barang_cari['numrows'] == 0 )
{
?>

<?php
	echo "<script>alert('Data kosong pada bulan ini');window.location='?cat=sekretaris&page=quantity2'</script>";
}else{
	echo '<form method="post" action="?cat=sekretaris&f=1&page=quantity2&id='.$_GET['id'].'">';
	$query_cari=mysql_query("Select sum(jumlah) as jml,jumlah from barang_keluar Where part_number='".$param_part_number."' and tgl between '".$tglawal."' and '".$tglakhir."'");
	$row_barang=mysql_fetch_array($query_cari);	
	$rt2=($row_barang['jml']/$count_barang_cari['numrows']);
	echo "Rata-rata pemakaian ".$rt2."<br>";
	echo '<input type="hidden" name="rata_pemakaian" value="'.$rt2.'">';
	$query_barang=mysql_query("SELECT * from barang_keluar Where part_number='".$param_part_number."' and tgl between '".$tglawal."' and '".$tglakhir."'");	
	$sd=array();
	while($rww=mysql_fetch_array($query_barang))
	{
		$sd[]=$rww['jumlah'];
	}
	$query_persediaan=mysql_query("Select * from data_persediaan where part_number='".$param_part_number."'");
	$row_persediaan=mysql_fetch_array($query_persediaan);
	$jumlah_transaksi=$count_barang_cari['numrows'];
	echo "Jumlah Transaksi ".$jumlah_transaksi."<br>";
	$jumlah_terjual=$row_barang['jml'];
	echo "Jumlah Keluar ".$jumlah_terjual."<br>";
	$rata_keluar=$rt2;
	$standar_deviasi=round(standard_deviation($sd,false),2);
	echo "Standar Deviasi ".$standar_deviasi."<br>";
	echo '<input type="hidden" name="standardeviasi" value="'.$standar_deviasi.'">';
	$stok_tersedia=$row_persediaan['stok_tersedia'];
	echo '<input type="hidden" name="stoktersedia" value="'.$stok_tersedia.'">';
	echo "Stok Tersedia ".$stok_tersedia;
	
}
?>

<label>Lead Time</label>
<input type="text" name="m_leadtime" />
<label>Order Interval</label>
<input type="text" name="m_orderinterval"  />
<p></p>
<input type="submit" name="hitung" class="btn btn-primary" value="Hitung"/>
</form>
<?php
echo '<p></p>';
echo '<p></p>';

	if(isset($_GET['f']))
	{
		echo '<form method="post">';
		$r1=$_POST['m_orderinterval']+$_POST['m_leadtime'];
		$safetystok=1.34*$_POST['standardeviasi']*sqrt($r1);
		//1.34*sd*sqrt((oi+lt))
		$foi1=($_POST['rata_pemakaian']*($_POST['m_orderinterval']+$_POST['m_leadtime']));
		$foi2=$safetystok-$_POST['stoktersedia'];
		$foi=$foi1+$foi2;
		echo "FOI = ".$foi."<br>";
		echo '<input type="hidden" name="rata_pemakaian2" value="'.$_POST['rata_pemakaian'].'">';
		echo '<input type="hidden" name="order_interval2" value="'.$_POST['m_orderinterval'].'">';
		echo '<input type="hidden" name="lead2" value="'.$_POST['m_leadtime'].'">';
		echo '<input type="hidden" name="safety2" value="'.$safetystok.'">';
		echo '<input type="hidden" name="tersedia2" value="'.$_POST['stoktersedia'].'">';
		echo '<input type="hidden" name="foi2" value="'.$foi.'">';
		if($foi < 0 )
		{
			echo "Tidak perlu diorder, stok tersedia masih banyak";
			?>
            &nbsp;<input type="button" name="kembali" class="btn btn-danger" value="Kembali" onclick="window.location='?cat=sekretaris&f=1&page=quantity2'"/>';
            <?php
		}else{
			echo '<input type="submit" name="simpan" class="btn btn-primary" value="Simpan"/>';
			?>
            &nbsp;<input type="button" name="kembali" class="btn btn-danger" value="Kembali" onclick="window.location='?cat=sekretaris&f=1&page=quantity2'"/>';
            <?php
		}
		echo '<form>';
		
		if(isset($_POST['simpan']))
		{
			$ubln=date("Y")."-".$_SESSION['tgl']."-"."01";
			$q=mysql_query("Insert into data_perencanaan (`tgl`, `part_number`, `rata`, `lead`, `safety`, `tersedia`, `order`, `foi`) values ('".$tglakhir."','".$_GET['id']."','".$_POST['rata_pemakaian2']."','".$_POST['lead2']."','".$_POST['safety2']."','".$_POST['tersedia2']."','".$_POST['order_interval2']."','".$_POST['foi2']."')") or die(mysql_error());
		
	if($q)
	{
		
		echo "<script>alert('Sudah disimpan');window.location='?cat=sekretaris&page=quantity2'</script>";
		
	}
		}
		//(pemakaian rata * (orderinterval + leadtime)) + (safetystok-barang tersedia)
	}
}
?>
