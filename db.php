<?php
$conn=mysql_connect("localhost","root","") or die("Could not connect");
mysql_select_db("gpsdata",$conn) or die("could not connect database");
?>