<?php 
include 'header.php';
$sortage = mysqli_query($conn, "SELECT * FROM produksi where cek = '1'");
$cek_sor = mysqli_num_rows($sortage);
?>

<div class="container">
	<h2 style=" width: 100%; border-bottom: 4px solid gray"><b>Daftar Pesanan</b></h2>
	<br>
	<h5 class="bg-success" style="padding: 7px; width: 100%; font-weight: bold;"><marquee>Mohon untuk melakukan Reload Setiap Masuk Halaman ini, untuk menghindari terjadinya kesalahan data dan informasi</marquee></h5>
	<a href="produksi.php" class="btn btn-default"><i class="glyphicon glyphicon-refresh"></i> Reload</a>
	<br>
	
	<h2 style=" width: 100%"><b>Cooming Soon!</b></h2>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</div>

	<?php 
	include 'footer.php';
	?>