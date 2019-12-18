<!--NAVIGASI MENU UTAMA-->

<div class="leftmenu">
  <ul class="nav nav-tabs nav-stacked">
    <li class="active"><a href="dashboard.php"><span class="icon-align-justify"></span>Halaman Utama</a></li>
    
    <!--MENU GUDANG-->
    <?php
	if($_SESSION['login_hash']=="gudang")
	{
	?>

    <li class="dropdown"><a href="#"><span class="icon-th-list"></span> Data Master</a>
      <ul>
      <li><a href="?cat=gudang&page=order">Data Bahan Baku</a></li>
      </ul>
      </li>        
      <li class="dropdown"><a href="#"><span class="icon-pencil"></span> Transaksi</a>
      <ul>
        <li><a href="?cat=gudang&page=entry">Bahan Baku Masuk</a></li>
        <li><a href="?cat=gudang&page=sell">Bahan Baku Keluar</a></li>
        <li><a href="?cat=gudang&page=permintaanview">Permintaan Pembeliaan</a></li>        
      </ul>
    </li>
    <li class="dropdown"><a href="#"><span class="icon-book"></span> Laporan</a>
      <ul>
        <li><a href="?cat=gudang&page=monthreporting">Laporan Masuk dan Keluar</a></li>       
      </ul>
    </li>

    <?php
	}elseif($_SESSION['login_hash']=="sekretaris"){
	?>
    <!--MENU SEKRETARIS-->
    
    <li class="dropdown"><a href="#"><span class="icon-th-list"></span> Data Master</a>
      <ul>
      <li>
        <li><a href="?cat=sekretaris&page=quantity2">Perencaan Kebutuhan</a></li>        
      </ul>
    </li>        
    <li class="dropdown"><a href="#"><span class="icon-pencil"></span> Laporan</a>
      <ul>       
       <li><a href="?cat=sekretaris&page=eoq">Fixed Order Interval</a></li>
              
      </ul>
    </li>
    
   <!--MENU PIMPINAN-->
        <?php
	}elseif($_SESSION['login_hash']=="pimpinan"){
	?>

  <li class="dropdown"><a href="#"><span class="icon-th-list"></span> Data Master</a>
  <ul>
    <li><a href="?cat=gudang&page=barang">Bahan  Baku</a></li>
    <li><a href="?cat=gudang&page=supplier">Supplier</a></li>   
    <li><a href="?cat=gudang&page=order">Data Bahan Baku</a></li>       
    </ul>
    </li>

     <!--MENU ADMIN-->
        <?php
	}elseif($_SESSION['login_hash']=="administrator"){
	?>    
    <li class="dropdown"><a href="#"><span class="icon-pencil"></span> System</a>
      <ul>       
        <li><a href="?cat=administrator&page=user">User Management</a></li> 
        
      </ul>
    </li>
  	<?php
	}
	?>
  </ul>
</div>
<!--leftmenu-->

</div>
<!--mainleft--> 
<!-- END OF LEFT PANEL -->