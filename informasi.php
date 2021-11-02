<?php
include"fungsi_kalender.php";?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<link rel="shortcut icon" href="../img/favicon.png"/>
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    
	<style>
		body{
			background-image: url(img/body.jpg);
			background-repeat: repeat;
			background-attachment: fixed;
		}
	</style>
</head>

<body>

<?php
	include_once('menu.php');
	include_once('header.php');
?>
<div class="container">
        <div class="navbar-inner" style="border:1px solid #bbb; border-radius:10px; padding:10px 20px 10px 20px; margin-top:50px; margin-left:auto; margin-right:auto;">
			
            	<div class="modal-header">
                	<h4>Info Penyakit </h4>
                </div>
                <div style="margin-top:10px">
                	<div class="span6">
                    	<div class="text-left" align="justify">
                   		  <div align="justify">

Sifilis atau raja singa adalah penyakit seksual yang disebabkan oleh infeksi bakteri Treponema pallidum. 
Gejala awal sifilis adalah munculnya lesi atau luka pada alat kelamin atau pada mulut. Luka ini mungkin tidak terasa sakit, 
tapi sangat mudah untuk menularkan infeksi. Luka atau lesi ini akan bertahan selama 1,5 bulan dan kemudian menghilang dengan sendirinya. 
Perlu diperhatikan bahwa lesi sangat menular, sentuhan dengan lesi dapat mengakibatkan seseorang tertular.<br><br>

Gonore atau kencing nanah adalah penyakit menular seksual yang disebabkan oleh bakteri Neisseria gonorrhoeae. 
Beberapa penderita penyakit ini tidak menunjukkan gejala apa pun, sehingga bisa tidak diketahui sama sekali jika dirinya terinfeksi<br><br>

Chlamydia adalah jenis penyakit seksual yang disebabkan oleh bakteri Chlamydia trachomatis. 
Penyakit ini merupakan penyakit menular seksual yang paling sering terjadi. 
Beberapa orang tidak merasakan gejala sama sekali, sehingga penularan bisa terjadi tanpa disadari.<br><br>
                    		</div>
                   	  </div>
                  </div>
                    <div class="span3">
                    	                    </div>
                    <div class="span3">
                    	<div class="row text-warning text-left" style="margin-left:20px; margin-right:auto; margin-top:15px; margin-bottom:15px;">
                    		<embed src="img/jam-akun.swf?TimeZone=ICT&"  width="250" height="100" wmode="transparent" type="application/x-shockwave-flash"> 

						</div>
						 <div class='agenda'> 
  <?php 
  $tgl_skrg=date("d");
  $bln_skrg=date("n");
  $thn_skrg=date("Y");
  echo buatkalender($tgl_skrg,$bln_skrg,$thn_skrg); 
  ?>    
  </div>
 
                    </div>
                </div>
			</div>
    	</div>
</div>

<br><br><br><br>
<?php include_once('footer.php'); ?>
<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

</body>
</html>