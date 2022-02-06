
CREATE TABLE `calisanlar` (
  `ad` varchar(45) DEFAULT NULL,
  `soyad` varchar(45) DEFAULT NULL,
  `tcno` varchar(45) NOT NULL,
  `unvan` varchar(45) DEFAULT NULL,
  `gunler` varchar(45) DEFAULT NULL,
  `gorev` varchar(45) DEFAULT NULL,
  `maas` varchar(45) DEFAULT NULL,
  `adres` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `giris_bilgileri` (
  `kullanıcı_adı` varchar(11) NOT NULL,
  `sifre` varchar(20) NOT NULL,
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`kullanıcı_adı`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `izinler` (
  `ogr_no` varchar(20) NOT NULL,
  `sebep` varchar(300) NOT NULL,
  `bas_tarih` date NOT NULL,
  `gun_sayısı` int NOT NULL,
  `onaylı` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `odalar` (
  `idodalar` int NOT NULL AUTO_INCREMENT,
  `doluluk` varchar(45) DEFAULT NULL,
  `kac_kisilik` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idodalar`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `ogrenciler` (
  `ad` varchar(45) DEFAULT NULL,
  `soyad` varchar(45) DEFAULT NULL,
  `okul` varchar(45) DEFAULT NULL,
  `tcno` varchar(45) NOT NULL,
  `adres` varchar(200) DEFAULT NULL,
  `bolum` varchar(45) DEFAULT NULL,
  `hastalik_durumu` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `sinif` varchar(45) DEFAULT NULL,
  `oda_no` varchar(45) DEFAULT NULL,
  `kayit_tarihi` date DEFAULT NULL,
  PRIMARY KEY (`tcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `silinen_ogrenciler` (
  `ad` varchar(45) DEFAULT NULL,
  `soyad` varchar(45) DEFAULT NULL,
  `okul` varchar(45) DEFAULT NULL,
  `tcno` varchar(45) NOT NULL,
  `adres` varchar(45) DEFAULT NULL,
  `bolum` varchar(45) DEFAULT NULL,
  `hastalik_durumu` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `sinif` varchar(45) DEFAULT NULL,
  `oda_no` varchar(45) DEFAULT NULL,
  `kayit_tarihi` varchar(45) DEFAULT NULL,
  `silinme_tarihi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `ucretler` (
  `tcno` varchar(20) NOT NULL,
  `tarih` date DEFAULT NULL,
  `odeme_durumu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `yemekhane` (
  `tarih` date NOT NULL,
  `kod` varchar(45) NOT NULL,
  `yemek_cesidi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `yemekler` (
  `ad` varchar(40) NOT NULL,
  `ucret` varchar(45) DEFAULT NULL,
  `kalori` varchar(45) DEFAULT NULL,
  `kod` varchar(45) NOT NULL,
  PRIMARY KEY (`kod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


