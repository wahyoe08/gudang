<html>
<head>
<title>Data Siswa</title>
</head>

<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "root";
$dbname = "gpsdata";

$koneksi = mysql_connect($dbhost, $dbuser, $dbpass)
or die ("Gagal terhubung ke server MySQL");
mysql_select_db($dbname, $koneksi)
or die ("Gagal terhubung ke database");

$result = mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.min, data_barang.max, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
	FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number");
$row = mysql_num_rows($result);
echo "<table border=1 width=40% align=center>";
echo "<tr bgcolor='#CCCCCC'><td width='5%'><b>Part Number</b></td><td><b>Part Name</b></td><td width='10%'><b>Price</b></td></tr>";
while ($data = mysql_fetch_array($result)) {  
	echo "<tr><td>$data[part_number]</td><td>$data[part_name]</td><td>$data[harga]</td></tr>";
} 
echo "</table>";

?>

</html>