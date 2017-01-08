<?php
include "conn.php";
session_start();
@$sifre = $_POST['sifre'];
@$TCNO = $_POST['tcno'];
$sql = "SELECT * FROM giris WHERE TCNO='".$sifre."'";
$sql2 = "SELECT * FROM bolum WHERE bolum.BolumKodu IN (SELECT ogrenci.BolumKodu FROM ogrenci WHERE TCNO='".$sifre."')";
$sql3 = "SELECT * FROM derssorumlulari WHERE derssorumlulari.AkademisyenId IN (SELECT ogrenci.DanismanID FROM ogrenci WHERE TCNO='".$sifre."')";
$sql4 = "SELECT KrediSayisi FROM donemler WHERE donemler.donem IN (SELECT ogrenci.AktifYariYili FROM ogrenci WHERE TCNO='".$sifre."')";
//SELECT ogr.AktifYariYili,ogr.AktifYili, ogr.BolumKodu, ad.YariYil, ad.AcildigiYil, ad.BolumKodu

/*
INSERT INTO giris (TCNO, Adi, Soyadi) SELECT derssorumlulari.TCNO,derssorumlulari.Adi , derssorumlulari.Soyadi FROM derssorumlulari WHERE derssorumlulari.TCNO=derssorumlulari.TCNO;
*/

$sorgu = mysqli_query($baglan,$sql);
//$toplamSonuc = $sorgu->num_rows;
$sonuc = mysqli_fetch_assoc($sorgu);

$sorgu2 = mysqli_query($baglan,$sql2);
//$toplamSonuc = $sorgu->num_rows;
$sonuc2 = mysqli_fetch_assoc($sorgu2);

$sorgu3 = mysqli_query($baglan,$sql3);
//$toplamSonuc = $sorgu->num_rows;
$sonuc3 = mysqli_fetch_assoc($sorgu3);

$sorgu4 = mysqli_query($baglan,$sql4);
//$toplamSonuc = $sorgu->num_rows;
$sonuc4 = mysqli_fetch_assoc($sorgu4);

if(!$baglan){
	echo "Baglanti Saglanamadi !";
}
else if($baglan){
	
if (!empty($sifre) && !empty($TCNO) && $TCNO==$sifre && $sonuc['TCNO'] == $sifre){
	$_SESSION['Adi']=$sonuc['Adi'];
	$_SESSION['Soyadi']=$sonuc['Soyadi'];
	$_SESSION['OgrenciNo']=$sonuc['OgrenciNo'];
	$_SESSION['TCNO']=$sonuc['TCNO'];
	
    $_SESSION['BolumKodu']=$sonuc2['BolumKodu'];
    $_SESSION['BolumAdi']=$sonuc2['BolumAdi'];
	
	$_SESSION['DanismanAdi']=$sonuc3['Adi'];
	$_SESSION['DanismanSoyadi']=$sonuc3['Soyadi'];
    $_SESSION['KrediSayisi']=$sonuc4['KrediSayisi'];
	
	
	header("Location: anasayfa.php");
}

if (empty($TCNO) && !empty($sifre)){
	  ?>   <script type="text/javascript"> 
    alert(" TC No Boş Bırakılamaz !");
    history.back(); 
  </script>
	<?php //header("Refresh: 3; url=index.html");
}
if (empty($sifre) && !empty($TCNO)){
	 ?>   <script type="text/javascript"> 
    alert(" Şifre Boş Bırakılamaz !");
    history.back(); 
  </script>
	<?php
}
if (empty($sifre) && empty($TCNO)){
	 ?>   <script type="text/javascript"> 
    alert("TC No ve Şifre Boş Bırakılamaz !");
    history.back(); 
  </script>
	<?php	
}
}

?>