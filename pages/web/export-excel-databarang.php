<?php
mysql_connect("localhost","root","");
mysql_select_db("gpsdata");

$select = "SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.min, data_barang.max, data_persediaan.masuk, data_persediaan.keluar, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
	FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number";

$export = mysql_query ( $select ) 
       or die ( "Sql error : " . mysql_error( ) );
$fields = mysql_num_fields ( $export );

for ( $i = 0; $i < $fields; $i++ ) {
	$header .= mysql_field_name( $export , $i ) . ",";
}

while( $row = mysql_fetch_row( $export ) ) {
	$line = '';
	foreach( $row as $value ) {
		if ( ( !isset( $value ) ) || ( $value == "" ) ){
			$value = ",";
		}
		else {
			$value = str_replace( '"' , '""' , $value );
			$value = '"' . $value . '"' . ",";
		}
		$line .= $value;
	}
	$data .= trim( $line ) . "\n";
}
$data = str_replace( "\r" , "" , $data );

header("Content-type: application/vnd.ms-excel");
header("Content-disposition: csv" . date("Y-m-d") . ".csv");
header( "Content-disposition: filename=report.csv");
print "$header\n$data";
exit;