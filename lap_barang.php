<?php
include "koneksi.php";
require('fpdf17/fpdf.php');
/**
 Judul  : Laporan PDF (portait):
 Level  : Menengah
 Author : Hakko Bio Richard
 Blog   : www.hakkoblogs.com
 Web    : www.niqoweb.com
 Email  : hakkobiorichard@ygmail.com
 
 Untuk tutorial yang lainnya silahkan berkunjung ke www.hakkoblogs.com
 
 Butuh jasa pembuatan website, aplikasi, pembuatan program TA dan Skripsi.? Hubungi NiqoWeb ==>> 085694984803
 
 **/
//Menampilkan data dari tabel di database

$result=mysql_query("SELECT data_barang.part_number, data_barang.part_name, data_barang.harga, data_barang.min, data_barang.max, data_persediaan.masuk, data_persediaan.keluar, data_barang.satuan, data_barang.supplier, data_persediaan.stok_tersedia
	FROM data_barang LEFT JOIN data_persediaan ON data_barang.part_number = data_persediaan.part_number GROUP BY data_barang.part_number") or die(mysql_error());

//Inisiasi untuk membuat header kolom
$column_part_number = "";
$column_part_name = "";
$column_harga = "";
$column_supplier = "";
$column_min = "";
$column_max = "";
$column_masuk = "";
$column_keluar = "";
$column_stok_tersedia ="";
$column_no ="";


//For each row, add the field to the corresponding column
while($row = mysql_fetch_array($result))
{
	$part_number = $row["part_number"];
    $part_name = $row["part_name"];
	$harga = $row["harga"];
    $supplier = $row["supplier"];
    $min = $row["min"];
    $max = $row["max"];
	$masuk = $row["masuk"];
	$keluar = $row["keluar"];
    $stok_tersedia = $row["stok_tersedia"];

	$column_part_number = $column_part_number.$part_number."\n";
    $column_part_name = $column_part_name.$part_name."\n";
	$column_harga = $column_harga.$harga."\n";
    $column_supplier = $column_supplier.$supplier."\n";
    $column_min = $column_min.$min."\n";
    $column_max = $column_max.$max."\n";
	$column_masuk = $column_masuk.$masuk."\n";
	$column_keluar = $column_keluar.$keluar."\n";
    $column_stok_tersedia = $column_stok_tersedia.$stok_tersedia."\n";

//Create a new PDF file
//$pdf = new FPDF("L","cm","A4");
$pdf = new FPDF('L','mm',array(297,210)); //L For Landscape / P For Portrait
$pdf->AddPage();

//Menambahkan Gambar
//$pdf->Image('../foto/logo.png',10,10,-175);
$pdf->SetFont('Arial','B',15);
$pdf->Cell(125);
$pdf->Cell(30,10,'DATA MATERIAL',0,0,'C');
$pdf->Ln();
$pdf->Cell(125);
$pdf->Cell(30,10,'PT. Rekadaya Multi Adiprima | www.rekadaya.web.id',0,0,'C');
$pdf->Ln();

}
//Fields Name position
$Y_Fields_Name_position = 30;

//First create each Field Name
//Gray color filling each Field Name box
$pdf->SetFillColor(110,180,230);
//Bold Font for Field Name
$pdf->SetFont('Arial','B',10);
$pdf->SetY($Y_Fields_Name_position);
$pdf->SetX(5);
$pdf->Cell(40,8,'Part Number',1,0,'C',1);
$pdf->SetX(45);
$pdf->Cell(80,8,'Part Name',1,0,'L',1);
$pdf->SetX(125);
$pdf->Cell(10,8,'Harga',1,0,'L',1);
$pdf->SetX(135);
$pdf->Cell(55,8,'Supplier',1,0,'C',1);
$pdf->SetX(210);
$pdf->Cell(10,8,'Min',1,0,'C',1);
$pdf->SetX(220);
$pdf->Cell(10,8,'Max',1,0,'C',1);
$pdf->SetX(230);
$pdf->Cell(15,8,'Masuk',1,0,'C',1);
$pdf->SetX(245);
$pdf->Cell(15,8,'Keluar',1,0,'C',1);
$pdf->SetX(260);
$pdf->Cell(25,8,'Stok Tersedia',1,0,'C',1);
$pdf->Ln();

//Table position, under Fields Name
$Y_Table_Position = 38;

//Now show the columns
$pdf->SetFont('Arial','',10);

$pdf->SetY($Y_Table_Position);
$pdf->SetX(5);
$pdf->MultiCell(40,6,$column_part_number,1,'C');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(45);
$pdf->MultiCell(80,6,$column_part_name,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(125);
$pdf->MultiCell(15,6,$column_harga,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(140);
$pdf->MultiCell(55,6,$column_supplier,1,'C');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(210);
$pdf->MultiCell(10,6,$column_min,1,'C');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(220);
$pdf->MultiCell(10,6,$column_max,1,'C');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(230);
$pdf->MultiCell(15,6,$column_masuk,1,'C');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(245);
$pdf->MultiCell(15,6,$column_keluar,1,'C');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(260);
$pdf->MultiCell(25,6,$column_stok_tersedia,1,'C');

$pdf->Output();
?>
