<html>
<script type="text/javascript">
$("button").ready(function(){ 
    $('button').attr('a','b'); 
    });
	</script>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet" media="screen"/>
<link href="style.css" rel="stylesheet" media="screen"/>

</head>

<body style="background-color:#E6E6E6">
<!--
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.js"></script>
-->
<header>

<div class="row baslik">
<div class="page-header selam">
 <div class="comu"><h2><img src="comu_logo.png" class="img-circle logo"></img>Kampüs Bilgi Sistemi</h2></div>
  
<div class="row navbarObs">
  <div class="col"> 
			<!--<div class="navbarDiv">-->
	<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="anasayfa.php">Anasayfa</a></li>
  <li role="presentation" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
      Öğrenci <span class="caret"></span>
    </a><ul class="dropdown-menu">
      <a href="dersSecme.php" style="margin-left:5px">Ders Seçme</a>
    </ul></li>
  <li role="presentation"><a href="cikis.php">Çıkış</a></li>
	</ul>
		<!--</div>  navbarDiv -->
  </div><!--COL-->
 
  <div class="col2"><h1><small> Ders Seçimi</small></h1><!--OBS-->
  </div><!--COL2-->
</div><!--navbarObs-->
</div><!--SELAM-->
</div><!--BASLIK-->

<div class="derssecim">
<div class="ogrenciBilgi">
<div class="row ust">
  <div class="col-md-4 adisoyadi"><h5><b>Adı Soyadı: </b><?php include "conn.php"; 
  @session_start();
  echo @$_SESSION['Adi']." ".@$_SESSION['Soyadi'];
  ?></div> <!-- AdıSoyadı -->
  <div class="col-md-4 bolumadi"><h5><b>Bölüm Adı :  </b><?php include "conn.php";
  @session_start();
  echo @$_SESSION['BolumAdi'];
  ?></div> <!-- BölümAdı -->
  <div class="col-md-4 danisman"><h5><b>Danışman: </b><?php include "conn.php"; @session_start();
  echo @$_SESSION['DanismanAdi']." ".@$_SESSION['DanismanSoyadi'];
  ?>
  <br></div><!-- DanışmanAdiSoyadi -->
</div>
</tr>
</table>
<div class="row ustunalti">
  <div class="col-md-4 bisey"><h5><b>BURAYA BISEY GELECEK</b></div>
  <div class="col-md-4 toplamkredi"><h5><b>Seçebileceğiniz Toplam Kredi: </b><?php include "conn.php";
  @session_start();
  echo @$_SESSION['KrediSayisi'];
  ?></div>
  <div class="col-md-4 sectigimkredi"><h5><b>Kredi: </b><span>0</span></div><!-- KREDİ-->
</div>

</div><!-- OGRENCIBİLGİ-->
<div class="row ortaDiv">
	
	<table  class="table table-striped" >
		<?php include "conn.php";
		@session_start();
		@$sifre = $_POST['sifre'];
		$sql5 = "SELECT acilandersler.DersKodu, acilandersler.DersAdi, acilandersler.AkademisyenId, acilandersler.Kredi
		FROM ogrenci, acilandersler
		WHERE ogrenci.TCNO=".$_SESSION['TCNO']."
        AND ogrenci.BolumKodu=acilandersler.BolumKodu
        AND ogrenci.AktifYariYili=acilandersler.YariYil
        AND ogrenci.AktifYili=acilandersler.AcildigiYil";
		$sorgu5 = mysqli_query($baglan,$sql5);
		
		
		?><tr style="background-color:#ffff5e">
			<td><u><b>Ders Kodu</b></u></td>
			<td><u><b>Ders Adi</b></u></td>
			<td><u><b>Akademisyen Id</u></b></td>
			<td><u><b>Kredi</u></b></td>
			<td></td>
		</tr><?php
		$a = 0;
		$toplamsonucum=$sorgu5->num_rows;
		while ($acilan = mysqli_fetch_array($sorgu5)){
			$j=0;
		?><tr><?php
		global $a;
			for ($j;$j<4;$j++){
			echo '<td class="kayit">'.$acilan[$j].'</td>';
			$a++;
			}
			
			?><?php global $a;  if($a<=$toplamsonucum){
				if($a==1){ ?>
				<td><button type="button" id ="sec1" class="btn btn-default btn-sm" onclick="func(){}"><span class="glyphicon glyphicon-check"></span> Seç </button></td></tr>
				<?php } ?>

				<?php global $a;  
				if($a==2){ ?>
				<td><button type="button" id ="sec2" class="btn btn-default btn-sm" onclick="func(){}"><span class="glyphicon glyphicon-check"></span> Seç </button></td></tr>
				<?php } ?>
				
				<?php global $a;  
				if($a==3){ ?>
				<td><button type="button" id ="sec3" class="btn btn-default btn-sm" onclick="func(){}"><span class="glyphicon glyphicon-check"></span> Seç </button></td></tr>
				<?php } ?>
				
				<?php } ?>
			<?php } ?>
<!--<tr class="active"><td>selam</td><td></td></tr>
<tr class="success"><td>selam</td></tr>
<tr class="active"><td>selam</td><td>selam</td></tr>
<tr class="warning"><td>selam</td></tr>
<tr class="active"><td>selam</td><td>selam</td></tr>
<tr class="danger"><td>selam</td></tr>
<tr class="active"><td>selam</td><td>selam</td></tr>
<tr class="info"><td>selam</td></tr>-->
	</table>

	
</div><!-- ORTADIV --> 
</div><!-- DERSSECIM -->
</header>

</body>
</html>

<!---->