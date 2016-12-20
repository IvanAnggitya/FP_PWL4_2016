<?php 
include 'head.php';
?>
<br>
<h1 align="center">Fashion</h1>
<form action="" method="post">
	<?php
	$result = tampil_semua();
	while ($row=mysqli_fetch_assoc($result)) { ?>
		<div class="kol-4" align="center">
			<div id="nama"><?php echo $row['nama_barang'];?></div>
			<div id="gambar"><img src="img/<?php echo $row['foto_barang'];?>"></div> 
			<div id="size"><?php echo $row['size'];?></div><br>
			<div id="harga">Rp <?php  echo $row['harga_barang'];?></div>
			<div id="beli"><a href="beli.php?id=<?= $row['id_barang'];?>">BELI</a></div>
		</div>
	<?php } ?>
</form>

<?php 
include 'foot.php';
?>
<style type="text/css">
	.load{
		clear: both;
		text-align: center;
		height: 20px;
		width: 100%;
	}

	.load a{
		background-color: #CE5050;
		border-radius: 5px;
		border :5px solid #CE5050;
		color: white;
	}

	@media screen and (max-width: 480px){
		#nama{
			font-size:1em;
		}

		.load{
			padding-top: 10px;
			padding-left: 10px;
		}

		h1{
			font-size: 1.5em;
			padding-bottom: 10px;
		}

		#gambar{
			width: 200px;
		}
	 }
</style>