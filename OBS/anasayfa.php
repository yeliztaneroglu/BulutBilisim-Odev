<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet" media="screen"/>
<link href="style.css" rel="stylesheet" media="screen"/>
</head>

<body style="background-color:#E6E6E6">

<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.js"></script>

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
 
  <div class="col2"><h1><small>
  <?php include "conn.php"; session_start();
  echo "Hoşgeldin ".@$_SESSION['Adi']." ".@$_SESSION['Soyadi'];
  ?></small></h1><!--OBS-->
  </div><!--COL2-->
</div><!--navbarObs-->
</div><!--SELAM-->
</div><!--BASLIK-->

<div class="row ortaDiv">
	
	
</div>
</header>

</body>
</html>



