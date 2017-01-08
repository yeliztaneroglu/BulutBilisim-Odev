-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 08 Oca 2017, 19:23:37
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `obs_database`
--
CREATE DATABASE IF NOT EXISTS `obs_database` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `obs_database`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `acilandersler`
--

CREATE TABLE `acilandersler` (
  `Id` smallint(10) NOT NULL,
  `DersKodu` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `DersAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `BolumKodu` varchar(2) COLLATE utf8_turkish_ci NOT NULL,
  `AkademisyenId` smallint(10) NOT NULL,
  `Yariyil` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `AcildigiYil` int(10) NOT NULL,
  `Kredi` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `acilandersler`
--

INSERT INTO `acilandersler` (`Id`, `DersKodu`, `DersAdi`, `BolumKodu`, `AkademisyenId`, `Yariyil`, `AcildigiYil`, `Kredi`) VALUES
(1, '14BLM105', 'Algoritma ve Programlama', '01', 1003, '1', 2012, 3),
(2, '14BLM107', 'Bilgisayar Muhendisligine Giris', '01', 1004, '1', 2012, 3),
(3, '14BLM207', 'Diferansiyel Denklemler', '01', 1007, '3', 2013, 3),
(4, 'BLM303', 'Veritabani ve Yonetim Sistemleri', '01', 1001, '5', 2014, 3),
(5, '14BLM207', 'Diferansiyel Denklemler', '01', 1007, '3', 2016, 3),
(6, '14BLM105', 'Algoritma ve Programlama', '01', 1003, '1', 2014, 3),
(7, '14BLM105', 'Algoritma ve Programlama', '01', 1003, '1', 2016, 3),
(8, '14BLM105', 'Algoritma ve Programlama', '01', 1003, '5', 2016, 3),
(9, 'BLM4001', 'Formal Diller ve Otomat Teorisi', '01', 4, '7', 2016, 3),
(10, 'BLM303', 'Veritabani ve Yonetim Sistemleri', '01', 1001, '5', 2016, 3),
(11, 'CM202', 'Kemodinamik', '02', 2001, '3', 2016, 3),
(12, 'CM204', 'Cevre Mikrobiyolojisi', '02', 2002, '5', 2016, 3),
(13, 'CM210', 'Hidrolik', '02', 2002, '3', 2016, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolum`
--

CREATE TABLE `bolum` (
  `Id` int(40) NOT NULL,
  `BolumAdi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `BolumKodu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Telefon` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Fax` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `FakulteId` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bolum`
--

INSERT INTO `bolum` (`Id`, `BolumAdi`, `BolumKodu`, `Telefon`, `Fax`, `FakulteId`) VALUES
(1, 'Bilgisayar Muhendisligi', '01', '02862180533', '02862180533', '01'),
(2, 'Cevre Muhendisligi', '02', '02862180534', '02862180534', '01'),
(3, 'Gida Muhendisligi', '03', '02862180534', '02862180535', '01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE `dersler` (
  `DersKodu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `DersAdi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Tur` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Kredi` int(40) NOT NULL,
  `AKTS` int(40) NOT NULL,
  `TeoriDersSaati` int(40) NOT NULL,
  `UygulamaDersSaati` int(40) NOT NULL,
  `Yariyili` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `BolumKodu` varchar(2) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`DersKodu`, `DersAdi`, `Tur`, `Kredi`, `AKTS`, `TeoriDersSaati`, `UygulamaDersSaati`, `Yariyili`, `BolumKodu`) VALUES
('14BLM105', 'Algoritma ve Programlama', 'Zorunlu', 3, 7, 2, 2, '1', '01'),
('14BLM107', 'BMG', 'Zorunlu', 3, 6, 3, 0, '1', '01'),
('14BLM103', 'Matematik 1', 'Zorunlu', 3, 6, 2, 2, '1', '01'),
('14BLM108', 'Yapısal Programlama', 'Zorunlu', 3, 7, 2, 2, '2', '01'),
('14BLM303', 'İşletim Sistemleri', 'Zorunlu', 3, 5, 2, 2, '5', '01'),
('14BLM315', 'Mikro Denetleyiciler', 'Seçmeli', 3, 4, 2, 2, '5', '01'),
('CM202', 'Kemodinamik', 'Zorunlu', 3, 5, 2, 2, '3', '02'),
('CM204', 'Cevre Mikrobiyolojisi', 'Secmeli', 3, 5, 2, 2, '5', '02'),
('CM210', 'Hidrolik', 'Zorunlu', 3, 5, 2, 2, '3', '02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `derssorumlulari`
--

CREATE TABLE `derssorumlulari` (
  `AkademisyenId` int(40) NOT NULL,
  `TCNO` bigint(11) DEFAULT NULL,
  `Adi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Soyadi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Unvani` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Telefonu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Maili` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `OdaNo` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `BolumKodu` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `derssorumlulari`
--

INSERT INTO `derssorumlulari` (`AkademisyenId`, `TCNO`, `Adi`, `Soyadi`, `Unvani`, `Telefonu`, `Maili`, `OdaNo`, `BolumKodu`) VALUES
(1001, 10000000001, 'Ismail', 'Kahraman', 'Ogr. Gor.', '28620180018-2189', 'ikahraman[at]comu.edu.tr', '1', '01'),
(1003, 20000000002, 'Necdet', 'Yücel', 'Öğr. Gör.', '55555555555', 'sdaf', '2005', '01'),
(2001, 30000000003, 'Ahmet', 'Sezer', 'Ogr. Gor.', '3333333333', 'ahmet[at]sezer.com', '8001', '02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `donemler`
--

CREATE TABLE `donemler` (
  `Donem` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `KrediSayisi` int(40) NOT NULL,
  `SecmeliKredi` int(40) NOT NULL,
  `ZorunluKredi` int(40) NOT NULL,
  `ToplamDers` int(40) NOT NULL,
  `ToplamSecmeliSayisi` int(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `donemler`
--

INSERT INTO `donemler` (`Donem`, `KrediSayisi`, `SecmeliKredi`, `ZorunluKredi`, `ToplamDers`, `ToplamSecmeliSayisi`) VALUES
('1', 18, 0, 18, 7, 0),
('5', 18, 9, 9, 6, 3),
('3', 15, 0, 15, 5, 0),
('4', 15, 0, 15, 5, 0),
('6', 18, 9, 9, 6, 3),
('2', 18, 0, 18, 7, 0),
('7', 13, 12, 1, 5, 4),
('8', 19, 18, 1, 7, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `egitimplani`
--

CREATE TABLE `egitimplani` (
  `Id` int(40) NOT NULL,
  `BolumAdi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `OnayTarihi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Donem` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `BolumKodu` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `egitimplani`
--

INSERT INTO `egitimplani` (`Id`, `BolumAdi`, `OnayTarihi`, `Donem`, `BolumKodu`) VALUES
(1, 'Bilgisayar Muhendisligi', '10.09.2014', '2.1', '01'),
(2, 'Gida Muhendisligi', '09.09.2014', '2.1', '03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fakulte`
--

CREATE TABLE `fakulte` (
  `Id` int(40) NOT NULL,
  `FakulteAdi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `FakulteKodu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Adres` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Fax` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Telefon` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `fakulte`
--

INSERT INTO `fakulte` (`Id`, `FakulteAdi`, `FakulteKodu`, `Adres`, `Fax`, `Telefon`) VALUES
(1, 'Muhendislik ve Mimarlik Fakultesi', '01', 'Merkez/Canakkale', '0 286 218 05 33', '(0286) 218 0540'),
(2, 'Fen Edebiyat Fakultesi', '05', 'Merkez/Canakkale', '0 286 218 05 34', '(0286) 218 0541');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `giris`
--

CREATE TABLE `giris` (
  `girisid` int(11) NOT NULL,
  `TCNO` bigint(11) DEFAULT NULL,
  `Adi` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `Soyadi` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `giris`
--

INSERT INTO `giris` (`girisid`, `TCNO`, `Adi`, `Soyadi`) VALUES
(1, 10000000000, 'Sercan', 'Dorman'),
(2, 20000000000, 'Ercan', 'ERGIN'),
(3, 30000000000, 'Ismail Erdem', 'Demir'),
(4, 10000000001, 'Ismail', 'Kahraman'),
(5, 20000000002, 'Necdet', 'Yücel'),
(6, 30000000003, 'Ahmet', 'Sezer');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `idari`
--

CREATE TABLE `idari` (
  `Id` int(40) NOT NULL,
  `Unvan` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Adi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Soyadi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Telefonu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Maili` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Fax` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Adres` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `BolumKodu` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `idari`
--

INSERT INTO `idari` (`Id`, `Unvan`, `Adi`, `Soyadi`, `Telefonu`, `Maili`, `Fax`, `Adres`, `BolumKodu`) VALUES
(1, 'Sekreter', 'Seher', 'Bitkal', '05536514299', 'sb[at]gmail.com', '05536514298', 'Canakkale', '01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kayit`
--

CREATE TABLE `kayit` (
  `KayitId` int(40) NOT NULL,
  `TCNO` bigint(11) DEFAULT NULL,
  `OgrenciNo` int(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kayit`
--

INSERT INTO `kayit` (`KayitId`, `TCNO`, `OgrenciNo`) VALUES
(1, 10000000000, 120401054),
(2, 20000000000, 120401033),
(3, 30000000000, 140401020);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notlar`
--

CREATE TABLE `notlar` (
  `NotId` int(40) NOT NULL,
  `KayitId` int(40) NOT NULL,
  `Vize` int(40) NOT NULL,
  `Final` int(40) NOT NULL,
  `But` int(40) NOT NULL,
  `YilNot` double NOT NULL,
  `HarfNotu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `OtomatikMi` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `notlar`
--

INSERT INTO `notlar` (`NotId`, `KayitId`, `Vize`, `Final`, `But`, `YilNot`, `HarfNotu`, `OtomatikMi`) VALUES
(1, 1, 65, 65, 0, 65, 'CC', 'TRUE');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

CREATE TABLE `ogrenci` (
  `TCNO` bigint(11) DEFAULT NULL,
  `OgrenciNo` int(40) NOT NULL,
  `DanismanID` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `BolumKodu` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `Adi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Soyadi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `AktifYariYili` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `AktifYili` int(4) NOT NULL,
  `DogumTarihi` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Maili` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Telefonu` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `LiseDiplomaPuani` double NOT NULL,
  `Cinsiyeti` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`TCNO`, `OgrenciNo`, `DanismanID`, `BolumKodu`, `Adi`, `Soyadi`, `AktifYariYili`, `AktifYili`, `DogumTarihi`, `Maili`, `Telefonu`, `LiseDiplomaPuani`, `Cinsiyeti`) VALUES
(10000000000, 120401054, '1001', '01', 'Sercan', 'Dorman', '5', 2016, '04.06.1993', 'sercandorman21[at]gmail.com', '5555555555', 82.78, 'Erkek'),
(20000000000, 120401033, '1003', '01', 'Ercan', 'ERGIN', '7', 2016, '01.01.1994', 'ercoBaba@gmail.com', '4444444444', 69.99, 'Erkek'),
(30000000000, 140401020, '2001', '02', 'Ismail Erdem', 'Demir', '3', 2016, '04.06.1993', 'asdnfansd', '22222222222', 10, 'Erkek');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `secilendersler`
--

CREATE TABLE `secilendersler` (
  `secilenDersID` int(10) NOT NULL,
  `OgrenciNo` int(20) DEFAULT NULL,
  `SectigiDers` varchar(40) COLLATE utf8_turkish_ci DEFAULT NULL,
  `SectigiYil` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `acilandersler`
--
ALTER TABLE `acilandersler`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `BolumKodu` (`BolumKodu`);

--
-- Tablo için indeksler `bolum`
--
ALTER TABLE `bolum`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`DersKodu`);

--
-- Tablo için indeksler `derssorumlulari`
--
ALTER TABLE `derssorumlulari`
  ADD PRIMARY KEY (`AkademisyenId`),
  ADD KEY `BolumKodu` (`BolumKodu`);

--
-- Tablo için indeksler `donemler`
--
ALTER TABLE `donemler`
  ADD PRIMARY KEY (`Donem`);

--
-- Tablo için indeksler `egitimplani`
--
ALTER TABLE `egitimplani`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `BolumKodu` (`BolumKodu`);

--
-- Tablo için indeksler `fakulte`
--
ALTER TABLE `fakulte`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `giris`
--
ALTER TABLE `giris`
  ADD PRIMARY KEY (`girisid`);

--
-- Tablo için indeksler `idari`
--
ALTER TABLE `idari`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `BolumKodu` (`BolumKodu`);

--
-- Tablo için indeksler `kayit`
--
ALTER TABLE `kayit`
  ADD PRIMARY KEY (`KayitId`),
  ADD UNIQUE KEY `TCNO` (`TCNO`);

--
-- Tablo için indeksler `notlar`
--
ALTER TABLE `notlar`
  ADD PRIMARY KEY (`NotId`),
  ADD KEY `KayitId` (`KayitId`);

--
-- Tablo için indeksler `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD PRIMARY KEY (`OgrenciNo`),
  ADD UNIQUE KEY `TCNO` (`TCNO`),
  ADD KEY `BolumKodu` (`BolumKodu`),
  ADD KEY `DanismanID` (`DanismanID`),
  ADD KEY `AktifYariYili` (`AktifYariYili`);

--
-- Tablo için indeksler `secilendersler`
--
ALTER TABLE `secilendersler`
  ADD PRIMARY KEY (`secilenDersID`),
  ADD KEY `OgrenciNo` (`OgrenciNo`),
  ADD KEY `SectigiYil` (`SectigiYil`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `acilandersler`
--
ALTER TABLE `acilandersler`
  MODIFY `Id` smallint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Tablo için AUTO_INCREMENT değeri `bolum`
--
ALTER TABLE `bolum`
  MODIFY `Id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `giris`
--
ALTER TABLE `giris`
  MODIFY `girisid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `kayit`
--
ALTER TABLE `kayit`
  MODIFY `KayitId` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `notlar`
--
ALTER TABLE `notlar`
  MODIFY `NotId` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
