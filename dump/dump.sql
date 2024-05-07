-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: TubesBasisData
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AdminBeasiswa`
--

DROP TABLE IF EXISTS `AdminBeasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdminBeasiswa` (
  `Username` varchar(255) NOT NULL,
  `IDPerusahaan` int(11) NOT NULL,
  PRIMARY KEY (`Username`),
  KEY `IDPerusahaan` (`IDPerusahaan`),
  CONSTRAINT `AdminBeasiswa_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `Akun` (`Username`),
  CONSTRAINT `AdminBeasiswa_ibfk_2` FOREIGN KEY (`IDPerusahaan`) REFERENCES `Perusahaan` (`IDPerusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminBeasiswa`
--

LOCK TABLES `AdminBeasiswa` WRITE;
/*!40000 ALTER TABLE `AdminBeasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdminBeasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdminMengelola`
--

DROP TABLE IF EXISTS `AdminMengelola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdminMengelola` (
  `Username` varchar(255) NOT NULL,
  `IDBeasiswa` int(11) NOT NULL,
  PRIMARY KEY (`Username`,`IDBeasiswa`),
  KEY `IDBeasiswa` (`IDBeasiswa`),
  CONSTRAINT `AdminMengelola_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `AdminBeasiswa` (`Username`),
  CONSTRAINT `AdminMengelola_ibfk_2` FOREIGN KEY (`IDBeasiswa`) REFERENCES `Beasiswa` (`IDBeasiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminMengelola`
--

LOCK TABLES `AdminMengelola` WRITE;
/*!40000 ALTER TABLE `AdminMengelola` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdminMengelola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AdminUniversitas`
--

DROP TABLE IF EXISTS `AdminUniversitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdminUniversitas` (
  `Username` varchar(255) NOT NULL,
  `IDUniversitas` int(11) NOT NULL,
  PRIMARY KEY (`Username`),
  KEY `IDUniversitas` (`IDUniversitas`),
  CONSTRAINT `AdminUniversitas_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `Akun` (`Username`),
  CONSTRAINT `AdminUniversitas_ibfk_2` FOREIGN KEY (`IDUniversitas`) REFERENCES `Universitas` (`IDUniversitas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminUniversitas`
--

LOCK TABLES `AdminUniversitas` WRITE;
/*!40000 ALTER TABLE `AdminUniversitas` DISABLE KEYS */;
INSERT INTO `AdminUniversitas` VALUES ('ahallums76',1),('aoverland7',1),('fsamwell5g',1),('mtunderam',1),('rfahydu',1),('rlicciardib',1),('tharriganbc',1),('wrosenqvist3o',1),('aphinn5v',2),('brobilliardd7',2),('erye4y',2),('hiacovo66',2),('sshreve5z',2),('eoroana6',3),('fraikerag',3),('gbrittian6g',3),('leaken41',3),('mrookwell15',3),('nbinnsa3',3),('rpostgate5r',3),('wdangerfield2h',3),('bscogindv',4),('cbeswetherick62',4),('erysom5p',4),('htilne4g',4),('lcrippes1s',4),('rburras2y',4),('bgrishaginbx',5),('dreoch8a',5),('gburchardbr',5),('kbaldcockdp',5),('lscargle1q',6),('cblunderfield7p',7),('cde4',7),('dsaggers5u',7),('gelliott7n',7),('iheaps3a',7),('jbrady5a',7),('jkaasman9d',7),('lskatcher85',7),('mwagnerinas',7),('sdeetlefs5j',7),('twoffindenz',7),('gbetteridge2i',8),('hbentleycy',8),('ikunz3k',8),('aupstelld4',9),('avlasyukd5',9),('bedlestone70',9),('brevening3n',9),('dbascombe4t',9),('ethomlinson2c',9),('foran5b',9),('kpodmore34',9),('rbrandts3u',9),('bprozesckybt',10),('fledekkerc1',10),('jjakubczykf',10),('mhairsine1j',10),('nandrysiak1k',10),('phaines6k',10),('tfitzsymons1',10),('tiamittii2e',10),('bhayer6z',11),('calvaro1f',11),('ewallace23',11),('bstanwayaj',12),('ceverittcn',12),('dkmentcg',12),('gcobbingdj',12),('jcrossfieldab',12),('krayne5m',12),('btedahlax',13),('hgrantat',13),('cmerfindk',14),('hnaisbit2v',14),('msnow2j',14),('pzapater5f',14),('relsley3b',14),('tpett6p',14),('alowfill9a',15),('berrigo7y',15),('bsturchcv',15),('cmaghull9r',15),('dwedon2u',15),('gcocozza3q',15),('kjohncey65',15),('cjentin52',16),('fgirodias4h',16),('lbenediktsson26',16),('lhalleday92',16),('mmaevela1g',16),('tkauschke9l',16),('ddallinder3d',17),('erumbellow10',17),('hmacgilfoyle3p',17),('kbussel9v',17),('mphliponad',17),('aparades38',18),('crevelyco',18),('eweyman2q',18),('holochan8t',18),('stroket',18),('fmcgarrahan4o',19),('mhewbv',19),('obrouai',19),('tscoonay',19),('apoolton7t',20),('bacton5w',20),('cmechi39',20),('lcommander2w',20),('lmissen2',20),('mnannetti2b',20),('tpickaver1r',20),('bbalma2s',21),('bplumb51',21),('tcotteyci',21),('ccheater9h',22),('eocklandbu',22),('ewallbanks4p',22),('jdaines3y',22),('ldunkerly1m',22),('amcging1b',23),('bbarnwell3r',23),('blow9z',23),('ddowda4j',23),('iludyc6',23),('ibrunker0',24),('maizlewooddf',24),('pdolman5x',24),('serswell6i',24),('cbygreavesdt',25),('cmaffezzoliap',25),('dkerindi',25),('ebattman6d',25),('gstapyltond2',25),('jblazy74',25),('khagwood6v',25),('sstienhamp',25);
/*!40000 ALTER TABLE `AdminUniversitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Akun`
--

DROP TABLE IF EXISTS `Akun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Akun` (
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `NamaLengkap` varchar(255) NOT NULL,
  `Tipe` varchar(255) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Akun`
--

LOCK TABLES `Akun` WRITE;
/*!40000 ALTER TABLE `Akun` DISABLE KEYS */;
INSERT INTO `Akun` VALUES ('abeamand5c','abeamand5c@sciencedaily.com','$2a$04$sNqdeW/4P0oIx2mwqZ5FkOHCVmUaTR7TBdsiUYto08e/EBtO7KPGi','Adelina Beamand','PakarBahasa'),('abisphamb9','abisphamb9@bravesites.com','$2a$04$PiE7XLV3Z8or0hItUewVDeRkcHuc/OY5.4dr5xA/4mwx82fFdMw/6','Alanson Bispham','PakarBahasa'),('aboliver44','aboliver44@rakuten.co.jp','$2a$04$T/EOJBV6UMC04uFVhIicK.7QJgHB9Gu47que7yRQ9UYr9i7R6WCrq','Agretha Boliver','AdminBeasiswa'),('acharlesa5','acharlesa5@yellowpages.com','$2a$04$5Psp2IefmUdlgsG3MTOppe97bv41m.ZCZ6dCq4cTCqJZ6q5LfOXj2','Aurelia Charles','PakarBahasa'),('acowhig4a','acowhig4a@bbb.org','$2a$04$hkrKDsezNrmizN.T14Twu.pGqDFrXkV/m8zmzNTH2uh6ACBh14OUu','Arturo Cowhig','PakarBahasa'),('aday8d','aday8d@tamu.edu','$2a$04$o4EEhiWffEM6F/8QG5FT/uhjAPuss89U.nlAg1ML5hg/ieeEp.dH6','Abbot Day','PakarBahasa'),('aglaves83','aglaves83@is.gd','$2a$04$g1fR3hy6qSEIq5WLpaEpBOnb.VEBFIsCg1oMfo8iQY5OAY/SShOIe','Aleta Glaves','PakarBahasa'),('ahallums76','ahallums76@un.org','$2a$04$nDMkJvQvYID8ixA97WSBD.RZagqFNw8Ekhq9w.xFn6C2vcaEyD2PK','Adelind Hallums','AdminUniversitas'),('aleband7f','aleband7f@twitter.com','$2a$04$Bc1fTZjIr/GLdg2naHq/W.fdCsG6tF9BAqjKNxMSIML5iEZJA/seC','Arny Leband','Mahasiswa'),('aloaderbs','aloaderbs@facebook.com','$2a$04$UqW/aN/GPHPV3iLvbbdl7.f.l/HR9qXS7X7AlFz91PNGLvp.q5CZO','Alida Loader','PakarBahasa'),('alowfill9a','alowfill9a@youku.com','$2a$04$6X0RzaLfl8dooC0oSlWzROlgn66RgVegtTgK77bES8hau6/47lTYO','Angie Lowfill','AdminUniversitas'),('amcdunlevy88','amcdunlevy88@spiegel.de','$2a$04$TkIohuTg3ffqzS.u//XkturLbpimDhSPqkVHhKWDTGQbrMdRdbqSS','Aube McDunlevy','PakarBahasa'),('amcging1b','amcging1b@xinhuanet.com','$2a$04$zxM32hA7LFL4Li5cnMV1EeL7Wc9.f0ykGlV3xgUnk.iqq.FpiwY9y','Armand McGing','AdminUniversitas'),('amcpake7k','amcpake7k@hud.gov','$2a$04$Iu7g8DciDPL8990qSjWc.e.6yYhlMQaUQABdicnb9dW28QzELab5G','Ardith McPake','Mahasiswa'),('amigheli1t','amigheli1t@princeton.edu','$2a$04$tEDGZEFOOjRe7023tdqmhupNou1v2dY3svSF/O/bVTyVnZ.e7px..','Andriette Migheli','PakarBahasa'),('amithun53','amithun53@sciencedaily.com','$2a$04$CXlqI06ZNwxpTIMMH9Anc.sbdDUTBkFR3A2DpyHzrJW7R3dTUbw..','Andros Mithun','Mahasiswa'),('amullins60','amullins60@google.es','$2a$04$yw4Mitdqbkigth3UOrs49uSOPVzoOC0qrs5X3QukuFs2.9LcSHvlK','Anselm Mullins','Mahasiswa'),('anarey5o','anarey5o@phpbb.com','$2a$04$oSRpwbe.SvNYSUPK0hv6l.MeuxgpnS/C3FsBNTtnY.AimhlYEDNsu','Alie Narey','PakarBahasa'),('anorris2m','anorris2m@miitbeian.gov.cn','$2a$04$MKgfHrB3erHph9NhPJ7S9uc/gRrBEcKHjBQZnFE42gzOh0rtQIlL.','Ardelis Norris','AdminBeasiswa'),('aoverland7','aoverland7@gov.uk','$2a$04$R/L0jDbBgjF/ojwQ6SltlOHSsVYzGWs3On0YT1yHKk1gvuKsZlW7S','Ally Overland','AdminUniversitas'),('aparades38','aparades38@clickbank.net','$2a$04$VGhvZMBLWsrVyPzhfz9nr.ejYB2wbreC0iRDhwbHgTYul46wsuGiq','Adrian Parades','AdminUniversitas'),('apardoeh','apardoeh@mozilla.org','$2a$04$ZHNRVYWAzkf4bVPm8XKaGOE7xxcJd.cpZSnrfHucaTSZ4yKfD6GPS','Aldric Pardoe','AdminBeasiswa'),('aperegrine2f','aperegrine2f@businesswire.com','$2a$04$TJBQ4XyROu06wGAQ9.M3o.V2vnuPpEYyUZY3tLFzPmuTRdjM5WG9a','Amil Peregrine','AdminBeasiswa'),('aphinn5v','aphinn5v@bloglines.com','$2a$04$iWWUAd82xhnchvfJi3dYo.AFQk8P7L42aBZGqaX1QijXg22cuad.m','Alister Phinn','AdminUniversitas'),('apickless7q','apickless7q@aboutads.info','$2a$04$wd9sgjJjRfqyPhsWpHKh..cqd0bw.2mrss5qjbnHsCO9tIHM8uFH6','Ailbert Pickless','Mahasiswa'),('apoolton7t','apoolton7t@sciencedaily.com','$2a$04$BorxbHo9Wl/Q.fdXPyHXc.lFw2GewOoDkbxkzmxEJVcnyyA1eoknC','Ade Poolton','AdminUniversitas'),('askellon95','askellon95@irs.gov','$2a$04$d8jg.fr5fmmqTjRbMJWZb.CrsoIxivSwzo5hi1RPaqtb2MAABqBQS','Aileen Skellon','PakarBahasa'),('asybe7d','asybe7d@theglobeandmail.com','$2a$04$C7SscXyqVOOBvyAPygD8Z.DoIrtn0SOPbJNCB86UGnxU/A0RXtHc2','Ab Sybe','Mahasiswa'),('asynnot1d','asynnot1d@github.com','$2a$04$L8RkrIcZSACakvGRSlElnOO3ztY9av5kJ79lmYZ3ddVnAxDxSL.m.','Augusta Synnot','PakarBahasa'),('aupstelld4','aupstelld4@altervista.org','$2a$04$R3GJwniNUVAUt7FIF2YU/O3e6OqU9veH1rv/spjKe14pRgSCElKIi','Alberta Upstell','AdminUniversitas'),('avlasyukd5','avlasyukd5@networkadvertising.org','$2a$04$/w9EyRdgRMzWeuOU02riiOHDC8PeK55CzwHNAlC4XRUEncxdvco3K','Alvinia Vlasyuk','AdminUniversitas'),('awingeatt1p','awingeatt1p@squidoo.com','$2a$04$c2eyE1B5Dz4YlSPjVvdtBOokVnp3NRzteaIDx9aw2Mpyapa4L4HYS','Angel Wingeatt','Mahasiswa'),('awinsburyc8','awinsburyc8@amazon.com','$2a$04$b7JnJvWIJVDH0uBurDQscOCeike9mtp6GM8nZhFJQI/V77a.ZrBbO','Anne Winsbury','PakarBahasa'),('bacton5w','bacton5w@twitpic.com','$2a$04$D9w2WBo/eE95Fxw4gqipWe1j0PGsWyqRcg3En6VO7fN3hASF5rcWW','Bowie Acton','AdminUniversitas'),('bbalma2s','bbalma2s@hugedomains.com','$2a$04$quy3SVuuLC4yTlnsy.fzOe8y0/qBuZe8SIwkqnRc/RiUafm3cofw6','Boy Balma','AdminUniversitas'),('bbarnwell3r','bbarnwell3r@cisco.com','$2a$04$kRBApIvwNFBwONu7A3hetunrvbXEhtV1yZXTEPorBDKQJAWS/gyF2','Blanche Barnwell','AdminUniversitas'),('bbessom5','bbessom5@home.pl','$2a$04$mwdHKsYRX8D2G.2SdIqc2eQAw2mCG5Rhl2qKQ3pHWZseImkCVeuGS','Beverlee Bessom','Mahasiswa'),('bcary5i','bcary5i@google.co.jp','$2a$04$vfde7yDfSZWsCfYe/TyZ/ewb786Jm.A3SbnH4O9PI.fJikGqfzHnG','Bert Cary','AdminBeasiswa'),('bcastri5s','bcastri5s@amazon.de','$2a$04$xjgdWTFeyklDHe9J0WrDI./zJvJTEYn5gEev6w4JmAU64/sazvZye','Benito Castri','Mahasiswa'),('bcharette3f','bcharette3f@diigo.com','$2a$04$qGgcr3m9tlFYXoDMt0UCfeH5Hv4SYsQKiF6ui59FDZW//ujnVzJvG','Bessy Charette','AdminBeasiswa'),('bcharsley8g','bcharsley8g@icio.us','$2a$04$VZVt3n/oPgrXjVnu.xmKkeNBb5rho/eL6nMnqamiNmL/NfCQ4DqjC','Brynna Charsley','AdminBeasiswa'),('bcovolini6a','bcovolini6a@ameblo.jp','$2a$04$dJJ9rQsua6Xk5R5gOa2mXu.AM76KopfkPRoZ.AK0rzFD9m/2rUlPq','Bell Covolini','Mahasiswa'),('bcronind8','bcronind8@whitehouse.gov','$2a$04$CW7eZaVT.tPg5wonviyfeeKWH.G1UniLMGLMqbWJg8tk2zbHPdcjG','Bridget Cronin','AdminBeasiswa'),('bdoale54','bdoale54@dailymail.co.uk','$2a$04$Hkav1fZwswT8vwYMg3xcfe83x1Y4D8KhCwai52Aihsezql6YFCDJG','Brennen Doale','Mahasiswa'),('bedlestone70','bedlestone70@google.com.br','$2a$04$5UjLKXg.pYZzkzRCL8ccdOKAL5KOwK/55Sno1vL6wnUJSyLvygaDO','Berri Edlestone','AdminUniversitas'),('berrigo7y','berrigo7y@digg.com','$2a$04$YyFpDeOtieMlmFqS5/xuxulFFuOgWKu.MRFB.ZKBtCXCihon6cWjm','Boone Errigo','AdminUniversitas'),('bfielderaa','bfielderaa@omniture.com','$2a$04$2gZDZYP3T1d1m8r.qe7ske2q8gu6jMhCEz8068zBbGX.nap3wx.B2','Beaufort Fielder','PakarBahasa'),('bfreke2t','bfreke2t@alibaba.com','$2a$04$lScALQJnSVbIHEp25ni/mOXnYgfBOsrD0.w6OH1O9jnrw90NwGxei','Bronnie Freke','Mahasiswa'),('bgarciai','bgarciai@buzzfeed.com','$2a$04$7iXm6djenI4boINsKW2lFeUFdAoY6YWZZJ4LLuPGV1C7DK9wSZ0be','Byram Garcia','Mahasiswa'),('bgravestona8','bgravestona8@de.vu','$2a$04$lFgoIAa76m9C7j9crpOWbexXiQyoApfqr7RqWM4jISEDJUrK8SV8y','Brok Graveston','Mahasiswa'),('bgrishaginbx','bgrishaginbx@51.la','$2a$04$xrqH6eg1ZBCvdjsQAg.JkuS433vrXOyNtDnRDHevkcHqyLgNb97gG','Beatrice Grishagin','AdminUniversitas'),('bhayer6z','bhayer6z@linkedin.com','$2a$04$w4mmkoaoKgKMgwwvzOOpx.rRAWxvBViSIZKcRYD17DjcHDc2MgezK','Buckie Hayer','AdminUniversitas'),('bheaney7m','bheaney7m@china.com.cn','$2a$04$BGQpmOtQjKfMSZHXm59pW.l1tOdb11cv8hYX6NoBKcqTnYFefJJ6K','Bird Heaney','AdminBeasiswa'),('bhebner2k','bhebner2k@last.fm','$2a$04$uhBWSPVgLJs5dwee5Sbwee3MjQjVhvDGW0t3586tIRlSswkO5Jn.C','Burty Hebner','PakarBahasa'),('blemmers40','blemmers40@biglobe.ne.jp','$2a$04$p7xXWlClNTfEbXmSiiEAbOrt0Q.c0AchG/HI7Udp/SKDza48VDDoa','Berkly Lemmers','Mahasiswa'),('bliliank','bliliank@liveinternet.ru','$2a$04$EgzIErQSdhP/us4MNKeB4eA5ELx3SJ5LrvK5oR6CeXV2dKNXCxcZO','Burlie Lilian','Mahasiswa'),('blow9z','blow9z@pen.io','$2a$04$LNoajmgZTaXkX0ltnR.5nulSSaKISPOlZrbC4beCzEuXVmgPhp.3S','Bellanca Low','AdminUniversitas'),('bmaccosty6t','bmaccosty6t@webmd.com','$2a$04$pmkffNiY2aLvYP1uxlqt1O2MkEwYB2TTAHSzo0MqwVGDzK1nt0oWa','Barri MacCosty','Mahasiswa'),('bmacgillicuddy37','bmacgillicuddy37@lulu.com','$2a$04$FqFFZ9cjUDWL9fBd/AtCVePh25xeJ05jsk.szHpll9ZK2A0x1I3zi','Bernardine MacGillicuddy','PakarBahasa'),('bmaclennanbf','bmaclennanbf@fotki.com','$2a$04$WGKJQZT8q3I4NAAuy.YeCujIv8Wh6ltVYIvM9QJ89mNvrhA9xTTuC','Barret MacLennan','PakarBahasa'),('bmarston8s','bmarston8s@sogou.com','$2a$04$s6rbRyA3BS.EhkuaXcQGsurShby50kjQ0Ugldnxu2T2Roc5SOEcTC','Billye Marston','Mahasiswa'),('bmatzel90','bmatzel90@xing.com','$2a$04$8lSGMQqEcBTJEwToOe9STOX/.Avy2ekYmsGtojH1nY6Ei6tlG58M2','Burr Matzel','AdminBeasiswa'),('bmccarlicha7','bmccarlicha7@addtoany.com','$2a$04$6SFyce3jJN2amqMPpUcO8.Yi4Lx3VczKb4TJBINLylk7vxULDA3Ou','Batsheva McCarlich','Mahasiswa'),('bpadmorer','bpadmorer@tumblr.com','$2a$04$wgYiVr.BoNTfewjSuMwvzOhnUs2GGX0jdJ0Ap/vbQ3Qu0vot4mY0y','Barrie Padmore','Mahasiswa'),('bplumb51','bplumb51@washington.edu','$2a$04$RN/eWyWOD7MTKqtjWmzfXuhCOS5RKannTFefy0sZ6sBdlBhWUOHE2','Brnaba Plumb','AdminUniversitas'),('bprozesckybt','bprozesckybt@google.pl','$2a$04$2xJZO/v6ocJQZgGjV.fYxesgqzt11XkZ7j3bggK./6pBVdQIhAOra','Bonny Prozescky','AdminUniversitas'),('brevening3n','brevening3n@clickbank.net','$2a$04$y/WkNQdtCB3ECgXac5Gxn.UiLwIYfB7IN9ktcrcb3c5PysAeFP73G','Beret Revening','AdminUniversitas'),('brobilliardd7','brobilliardd7@canalblog.com','$2a$04$KKI7dvmOeCPo.WBsQrBSVe4O7Qi8r5gzy.K.IyQjfW0WASXVbmup2','Blinnie Robilliard','AdminUniversitas'),('brosetti9e','brosetti9e@china.com.cn','$2a$04$DQxnptABg8cXfAl5DwBeA.hB1lfrgFBtwWxiWsk9qSPnIOQZKZcUO','Beitris Rosetti','PakarBahasa'),('bscogindv','bscogindv@gizmodo.com','$2a$04$QKlbfmF7PDoANfxphdpSBeQseM3q/XR5lHTZiFT68zDJPr/UPxzZ.','Briana Scogin','AdminUniversitas'),('bslaughter9o','bslaughter9o@cbslocal.com','$2a$04$0Ief/F56l37j.WhWFXLBheh5.Bnbp4qX96uzpkAPQP.UrB7nUBBTG','Beryle Slaughter','AdminBeasiswa'),('bstanwayaj','bstanwayaj@abc.net.au','$2a$04$Y0sXvvKETnH5glJWG6ojmO1YR50frXDOdwbRJwTVyxc4JXNtoN/L6','Betta Stanway','AdminUniversitas'),('bsteddall8o','bsteddall8o@upenn.edu','$2a$04$OHvbklpc2gnnpnawJ7vWp.8DbY4uGdqJJKlu2TAzCD4a4McP6QMaW','Billy Steddall','PakarBahasa'),('bsturchcv','bsturchcv@imdb.com','$2a$04$VtCfk06GrVmMgdFH1VLFteZORR7Xepi65rkJTCJFvuMQLIpabjTti','Berkly Sturch','AdminUniversitas'),('btaffurelli32','btaffurelli32@ovh.net','$2a$04$oI9/C7aAwxCivp3LGhHrgeuvWtEIh8bwiKBTXP0LaVTmfEsa3Fnne','Byrle Taffurelli','PakarBahasa'),('btedahlax','btedahlax@youtube.com','$2a$04$RdY5nG3igSMWsfdnQCRcXOtq0m/pMnKUxbvtd2AZb1YHKDWoVSDOu','Beatrisa Tedahl','AdminUniversitas'),('btonbye4f','btonbye4f@alexa.com','$2a$04$1YTIpWHsis6s/3EayDs26.br6sYdQd.Li1T1.E4BaE3oJ3KBoB/QC','Bard Tonbye','PakarBahasa'),('bturfus3z','bturfus3z@apache.org','$2a$04$lTcYvly3dM9eFEz.JugX3.05RaMae8i5KaBCdp3EGnYirL4u8QRB6','Bill Turfus','PakarBahasa'),('btutchingsa1','btutchingsa1@topsy.com','$2a$04$1gjDXxgyaBaE/AKF0Z75ZOFCNOLxppYUkuR2GmXd0NrDihgc8UuLy','Barthel Tutchings','AdminBeasiswa'),('bwhittockcz','bwhittockcz@adobe.com','$2a$04$AbJ9Cc9obgJQNoOX3WUu9OT.1PppZMXizhM6ROd2pZFuMu2gThRai','Beverley Whittock','PakarBahasa'),('cackenhead4z','cackenhead4z@so-net.ne.jp','$2a$04$3tmn7yMBiF3twzIbymq6a.kNkZdR766bclVLmuBtGDLNls9T0Jley','Carrie Ackenhead','AdminBeasiswa'),('calvaro1f','calvaro1f@wunderground.com','$2a$04$ORjf.UdQJFPX9hPzCkRoJu4.Tp94wi6BYDe3SQpwyy7LA4ArbXfjK','Chancey Alvaro','AdminUniversitas'),('cashbrookb6','cashbrookb6@nsw.gov.au','$2a$04$.X1vRVollR7W22DaPXD1fuCvR6e8dhgouvPJ/D3Z2eq8qQoFF/jEi','Christy Ashbrook','PakarBahasa'),('caytoar','caytoar@phpbb.com','$2a$04$ln4NWwjb.HpRP2x25eaRzuqKhQNHm7w8sp0TveBv0EkYUyLqI3iPy','Candice Ayto','Mahasiswa'),('cbach8u','cbach8u@technorati.com','$2a$04$Oy3yDkI73Du.9stgK7LIROuRPv6OiC2htjmjqoeoh0wDiruP5ch/.','Clark Bach','AdminBeasiswa'),('cbertholiny','cbertholiny@umn.edu','$2a$04$VcSDftGyAGADNtdBF8VLPeQBixqL7Hze2yrODIMYvLpLrm4fa3FDy','Clareta Bertholin','Mahasiswa'),('cbeswetherick62','cbeswetherick62@globo.com','$2a$04$Y1jK7YMRu8Hz31X.iRmjK.QQPFb2O/Dc5E5amHmGNbvDxBI8mR1mi','Cammie Beswetherick','AdminUniversitas'),('cblaschke9k','cblaschke9k@google.co.uk','$2a$04$VExOYgQWoDY4f7boFC3dFOcVGCSZnTLxwIQXTe0fVigqkwKaNgiFS','Cyrill Blaschke','AdminBeasiswa'),('cblunderfield7p','cblunderfield7p@qq.com','$2a$04$04H.a.1lcxwwAcc.ek8CXOGsX.n/RJ4981cOng5MtowG/FMTv9qZS','Cassandre Blunderfield','AdminUniversitas'),('cbootton11','cbootton11@lulu.com','$2a$04$4W0e.zRNjUWqWf7TQe66V.AgWCvLd27LCnsJptmIH3ImxuibsnM0y','Caitlin Bootton','PakarBahasa'),('cbygreavesdt','cbygreavesdt@live.com','$2a$04$l51ngsKLT40GK8fMSa.R2.OAx8kMBKabzYvBJ00iEXZHRmbDBR1eG','Corena Bygreaves','AdminUniversitas'),('ccarah9n','ccarah9n@pbs.org','$2a$04$t9fCNOnRn53oUg304jPOuuB4GJtIa89XuNfYffS64Jj5ROlsUeBtm','Cathyleen Carah','Mahasiswa'),('ccheater9h','ccheater9h@aboutads.info','$2a$04$ADzGEfoxTZb62AmLFbST3eBQ/eLFF16slPk7gMmWyyT2QmvL0qQ96','Carmelia Cheater','AdminUniversitas'),('cclementsc0','cclementsc0@woothemes.com','$2a$04$EsCKf4WtRq72DUjYHahysOh7BQnjHno..WL6H472vQF.0oYqfIKUq','Cornall Clements','AdminBeasiswa'),('ccoggan71','ccoggan71@army.mil','$2a$04$w2s2oZHiFAESe3xSwdkSYedObMIdqMi6f/anuu1UbDAslj/hfUMda','Cathie Coggan','Mahasiswa'),('cde4','cde4@behance.net','$2a$04$ZCLKc8RcnTbsEmcr5tJBau7S/FNATpgmtoZiQSdNhUfpfKVZjJana','Chantal De Bischop','AdminUniversitas'),('cdohrmann9i','cdohrmann9i@homestead.com','$2a$04$HEJAR0cjRpTUL8luiMiURuQk2gUpI/CkElKtOhk1cmldXyMJkIrc.','Christyna Dohrmann','AdminBeasiswa'),('ceverittcn','ceverittcn@list-manage.com','$2a$04$Uk5PYcXOkxD3baSZlYISJOEOdYZA8t8p1Jtf6QJa98.rNRwOltvdC','Candra Everitt','AdminUniversitas'),('cflahertyd0','cflahertyd0@squidoo.com','$2a$04$P7gV84aLbtlXZY9.Kv2/luceYqh24GR3Bk88m3MPCYo7xJoOe9qkq','Charlie Flaherty','Mahasiswa'),('cgallerd','cgallerd@amazon.co.jp','$2a$04$ftLI08C72Ssi.dsnAtIUyu0FaqKbJdRiqBmsGyQWRXN6lqkftahba','Chrystel Galler','PakarBahasa'),('cgarlette6j','cgarlette6j@tripadvisor.com','$2a$04$eXk7F.ip9MAEEcN/Y5gDgOwQfNQLE9LIpZOrypE7.zWX7FEkWSNgC','Chantalle Garlette','Mahasiswa'),('cgorried9','cgorried9@accuweather.com','$2a$04$lZl6/U/8TbxaQGsF6JlqSu7wDI3M1E8HrdjvbSDuQkNcLP56PTJui','Chrissie Gorrie','AdminBeasiswa'),('chotchkinj','chotchkinj@narod.ru','$2a$04$SzEp1e1sGfDj4.jlKuJaLeNMI/7SGM7oiUJCqP5KDgPTMMSnwqb4G','Cyb Hotchkin','PakarBahasa'),('cjentgens8z','cjentgens8z@mozilla.com','$2a$04$KOTpGHyT0EpcJpd.n2XbZOtcSWzsH7oPRFGzyHop7mb7Gz0iDTTNa','Corinna Jentgens','Mahasiswa'),('cjentin52','cjentin52@symantec.com','$2a$04$/kIFOIm6sjluKuZwH5HW1ewh4IC5a7w2P0x5pLmMHk.Gpxjl0qKgC','Carroll Jentin','AdminUniversitas'),('cjorden5n','cjorden5n@wufoo.com','$2a$04$fjkIgZV60flpqyegYFBppusZMSvUUIEbaSeiNkSgJeRG5EwGdtheO','Consuelo Jorden','AdminBeasiswa'),('cjouaneton8m','cjouaneton8m@marriott.com','$2a$04$lAkleo8.nf/yEctgPaSZxeViZV.RtaITW.GEhPPrOW54ToVEMupaC','Corliss Jouaneton','Mahasiswa'),('ckimbly5h','ckimbly5h@wsj.com','$2a$04$M.HCp9htxsyLAMvVd6rOjeg2O2fLzSj.W13Q6yrmNEYYQ.fE8rg4S','Constantino Kimbly','Mahasiswa'),('ckingerbybi','ckingerbybi@irs.gov','$2a$04$kKtIMy721ssC6g2ry8nireqxC2lAlfF/hMfHwx7rpl6WnO3TcshdK','Carolee Kingerby','PakarBahasa'),('ckite5d','ckite5d@sun.com','$2a$04$4Vwr/xMywIWRRTcoIPEO7edyXKp/xOb4m/lzi7hesHT6Vn6kJsfuO','Cristine Kite','Mahasiswa'),('cleopold7a','cleopold7a@narod.ru','$2a$04$HV1kUcfsV1LozAhNB44tU.fqZlW30N3WozwNbTOeY0LSfke0O1iOm','Charmian Leopold','PakarBahasa'),('cmacourekac','cmacourekac@guardian.co.uk','$2a$04$z/caG6YmfdHsFkkzb3xoseq.qDIl/3nbFF3avp89S9bG51PPSI8T6','Chas Macourek','AdminBeasiswa'),('cmaffezzoliap','cmaffezzoliap@usgs.gov','$2a$04$vakn4jZZWY8jg0OROjoB3ObGvACGsZSIysX1sh17CxhCAHMcidGgK','Cecilius Maffezzoli','AdminUniversitas'),('cmaghull9r','cmaghull9r@themeforest.net','$2a$04$fLMzmEXYsY9Uzv3XJneiIONc02WvZQsz5P7OgkNngJPsYWYbYWtZC','Chryste Maghull','AdminUniversitas'),('cmansbridge72','cmansbridge72@ask.com','$2a$04$lyqEUnUm/Jffcn43PWEPD.dmziB1AKWxEyo69X1KhCkgKbGApowzK','Caroline Mansbridge','AdminBeasiswa'),('cmckeevers13','cmckeevers13@buzzfeed.com','$2a$04$gOH/AbKt5djmxGR7OT8Rh.wYy56Q.h85Yxne2bJL/j.NeY4uOkIeG','Caren McKeevers','Mahasiswa'),('cmcwardbm','cmcwardbm@theglobeandmail.com','$2a$04$T9aEyPkuMNlOmxrMge8iOOkO4t9Oe/8/j76y0wwPqIO7tGx625vG.','Candy McWard','Mahasiswa'),('cmechi39','cmechi39@bbb.org','$2a$04$U7gwABx9l/hiHgVhUVHgn.SDWZjDXtZCv.Nz7Z.1i5n4Oy5Vxij.u','Claudianus Mechi','AdminUniversitas'),('cmerfindk','cmerfindk@imgur.com','$2a$04$biWgrsZQWCwGdmj7OP.vHuJjutkWdYVTiMGEY54vTlQ5akYFZWp9S','Cecily Merfin','AdminUniversitas'),('cmillis1l','cmillis1l@woothemes.com','$2a$04$oJXt7z.i19SInCseZTJ11.QubpOuSHwJAlj8.DB8ztjqSeEG5TBpi','Cristal Millis','AdminBeasiswa'),('cmilsonb5','cmilsonb5@ebay.com','$2a$04$jq974Qmrk0Lm8Oicz5B8EuMpeLOrvYHuW9qajNsNlY1rvlG0yhO2q','Carma Milson','AdminBeasiswa'),('cpeeterscp','cpeeterscp@yolasite.com','$2a$04$WWt7/j08qCoglxfezQh5QesDcc19rvCu29yi8WNye3b8rn2dW45k2','Con Peeters','Mahasiswa'),('cquenby45','cquenby45@blogs.com','$2a$04$Y8rSpm4LlaXwnGV7SWY0wO75Imec7WiETYuM14mF53QTopfIWr6va','Carilyn Quenby','Mahasiswa'),('crevelyco','crevelyco@unesco.org','$2a$04$/lHBudVcFDzguWHgeJzHoO9WlZ9SNJBzAn5t4uboBcoINxvCeS0g.','Chauncey Revely','AdminUniversitas'),('cseagrove9u','cseagrove9u@soundcloud.com','$2a$04$wwhEKXFmrW7RWcMCcZqedeCdjkCIkPhee06Pm0xvRGuSUCb3dI5lS','Corbie Seagrove','Mahasiswa'),('cseyersbh','cseyersbh@hatena.ne.jp','$2a$04$AfXEEhseK.H6FPKlD5r2Ae434nkL61hh8u20j3XrJZ.iksXtjbTd.','Charmane Seyers','Mahasiswa'),('csheeran8j','csheeran8j@state.gov','$2a$04$170P.UHrmpUfXUBwDEGex.dlJet.x4EjldJg7cnL/KRQpDZg7GprK','Cindelyn Sheeran','AdminBeasiswa'),('csteddallb7','csteddallb7@lulu.com','$2a$04$49s1oSeQLntVTNjrkIx46uh2MRnL4M/Bg/fzpG/JR1uUDZviZZgRa','Chere Steddall','Mahasiswa'),('cwigsell3v','cwigsell3v@reddit.com','$2a$04$a8BLcnR3IOOsBo0w1BLoo.dtNTHbuN/m5bfBCJ.mBvNWEHLe6sUGC','Chelsea Wigsell','AdminBeasiswa'),('cwoolacottby','cwoolacottby@cdbaby.com','$2a$04$R.qX8qZSOhkvQ6KfQDVPTOA1g/FJAhMEXVreGn2g/5OlFXnxGYyPq','Cass Woolacott','AdminBeasiswa'),('dantonognoli63','dantonognoli63@google.co.uk','$2a$04$ag3a9HeXm8KFl9yWYTnZsu0D/zxGBA18LCqZYXiRr.O5p9qYgs5Wm','Dorian Antonognoli','PakarBahasa'),('dbark3g','dbark3g@vimeo.com','$2a$04$eyuZEST18uOHlL3uaIYnjO9Hg81.IlpyWXnx722R8eMGKBionUfv2','Dollie Bark','AdminBeasiswa'),('dbascombe4t','dbascombe4t@goo.gl','$2a$04$25tVNJIfRm16Q7RIGceSJ.03PBGzk/ogirIl/UXbKzPphLlrtuudS','Dugald Bascombe','AdminUniversitas'),('dbashfordc3','dbashfordc3@miitbeian.gov.cn','$2a$04$TxQcA3RuDOMhE87wl7oEXeByiMyYUOipVLhuvsnsS4uXfTCza9N/.','Denice Bashford','PakarBahasa'),('dblinerman33','dblinerman33@unesco.org','$2a$04$ppyOKjJnk/IW6cggPqdNaOISeWWdeOyDVdbAblNZYq58UqIZN.GlG','Dennie Blinerman','Mahasiswa'),('dbocking8w','dbocking8w@senate.gov','$2a$04$R9eOJpvY2xoSUPf3ADEKq.iVEt5n3VHDu0v4f5..PBiPpCpTezudS','Devinne Bocking','Mahasiswa'),('dboustead7l','dboustead7l@virginia.edu','$2a$04$RZDi6kKprBarfWHV1zHbz.GzrG8iBSGcaHe1rp1nnvmfzRWQ8Ff5u','Donica Boustead','PakarBahasa'),('dchastagnier6q','dchastagnier6q@accuweather.com','$2a$04$qJZWaI0iAtZuV/JroZPTqOqxRweT0wIXgh08U/PPkt1IPQNGwoySa','Dita Chastagnier','Mahasiswa'),('ddallinder3d','ddallinder3d@examiner.com','$2a$04$Ov54/Tjjcq.JNNWdYPCzwezw9jQ4ai88x49w4dgDtYIf9w/5wKpO2','Donia Dallinder','AdminUniversitas'),('ddowda4j','ddowda4j@gnu.org','$2a$04$ssX2ApiZ3DG2OBGeXzQ6Pucp2HYw5cUpu8QyQKGwT.wGrrXipHO4e','Darnall Dowda','AdminUniversitas'),('deada0','deada0@google.com','$2a$04$pxEaywDxNN6L/PS9rPSZu.eBzoOA1XSJC8mBxNsRbRIJTpvWNM1CG','Dionis Ead','AdminBeasiswa'),('dhaighton59','dhaighton59@army.mil','$2a$04$Wmu2sKLdnCf.7tLiTJ1kauQ1ADCatAneHCtM67HKTNlvwmZtpgJC.','Davin Haighton','PakarBahasa'),('dhazle4x','dhazle4x@feedburner.com','$2a$04$aJWV1JBBG2QPtDwfVjOVJ.2wUEjxdfCGNUyMr4ni5fkujv6Qd0cj6','Devlin Hazle','AdminBeasiswa'),('dkerindi','dkerindi@mediafire.com','$2a$04$JC6QjXXk6wTV.FICcUia.eEebfwUCow1zklJPo22kxIzAj2y250oq','Dulcie Kerin','AdminUniversitas'),('dkier7r','dkier7r@scribd.com','$2a$04$E5hjCJ.Vw2CWn1LKIejkzeShtoRuuu0Pt3FXzOBIg5IhLpRw1k8za','De Kier','Mahasiswa'),('dkmentcg','dkmentcg@homestead.com','$2a$04$G5hy1Wz8mEEWN/mDVUuzROPm5G0BO4KCBM/mux3MD.CikmSNtTXI.','Deerdre Kment','AdminUniversitas'),('dlarking81','dlarking81@goo.ne.jp','$2a$04$zrSFY6mRkWjW8uWyaWpzTe4UV0xKW9BTwr89joaYzXowvu1pEiN.W','Doretta Larking','PakarBahasa'),('dlipmandm','dlipmandm@hibu.com','$2a$04$r8BZyZrYLYE34POujJduP.T0jqfkNY6ktgqmwhxOOxY3Qd6Ej9Y0W','Damon Lipman','Mahasiswa'),('dmacbane3s','dmacbane3s@list-manage.com','$2a$04$6iAzlTCBwX6O8uC.HgvSd.KPPkGJIGAi1hGE340UrMoSgCQAU5HGe','Davis Macbane','PakarBahasa'),('dmagarrellbd','dmagarrellbd@drupal.org','$2a$04$E1ZXPSikeJ5aA1CMJh9LdObYbD6zA3nXsBMNaGBwO4xFzvSAw9snW','Davidde Magarrell','AdminBeasiswa'),('dmassena2','dmassena2@narod.ru','$2a$04$tTs7Qffhz9kx9QTHkBWNvO8kfVXKi43DQWTaNDSfNC7Xo3.XlzJ96','Deirdre Massen','Mahasiswa'),('dmcgluea','dmcgluea@cocolog-nifty.com','$2a$04$OB7Xolvv5DUNoCYJu0gQiOEVJ7sMs3EU8AzQyUTuOqmzYv26jKE7W','Daffy McGlue','Mahasiswa'),('dnewlanq','dnewlanq@scribd.com','$2a$04$IrnQRkBBcONcP7GCprcpyupu6lfzl0gMjNlD45QEcuFQv9ZMP8uHy','Daune Newlan','AdminBeasiswa'),('dpenreth30','dpenreth30@woothemes.com','$2a$04$h2xkrcbVat.ogC4eacJu8eGOkN3HEelvPB19V2bNU.GPjlRaD50iC','Dori Penreth','Mahasiswa'),('dpresslee18','dpresslee18@prnewswire.com','$2a$04$SJ5KbYEsgSwjID/YJ3DpuefzCXj4.QEcAw8Ri8jOzhnC1rNWreHZu','Davy Presslee','PakarBahasa'),('dreoch8a','dreoch8a@samsung.com','$2a$04$0m.CjmJSNcAcM6i5sP6UOOdQapbp8siPyAV13v2VNhEBXQA.KP1yi','Dag Reoch','AdminUniversitas'),('dsaggers5u','dsaggers5u@china.com.cn','$2a$04$XHr9tcj0frL83iQI.t9rAeobr.yjzYQkR3b.5cmdtyiAlZx1t0.zy','Dore Saggers','AdminUniversitas'),('dtanfield3i','dtanfield3i@vistaprint.com','$2a$04$QcK2EXYJ3mHttHQ4k/XBhuVV99piM/HC1qqOL9KHDmKhJQIgP460O','Dario Tanfield','Mahasiswa'),('dvannacci9c','dvannacci9c@quantcast.com','$2a$04$HMxEBBSBv1PrTE/53az0u.hj6rK3Dk1oxW0WarXr3hfZaWnZpYwxK','Darryl Vannacci','AdminBeasiswa'),('dwedon2u','dwedon2u@theatlantic.com','$2a$04$S87wU6trj4GMc6AXMVmLh..J..Df3UhIATFcRMLuz.l78Sa7PV9Ki','Dorothee Wedon','AdminUniversitas'),('ebattman6d','ebattman6d@spotify.com','$2a$04$3t/yZ9MR6hWQzd4PyP5AmeIn7/TYmnj/4JOZP.YF0MOz5G/POhxoC','Emili Battman','AdminUniversitas'),('ebessent79','ebessent79@taobao.com','$2a$04$pPqDNmpCvXtx1lOxGoVfVuOe87cvB6YtAijE7m8x8EOsxa3S6oHU.','Elmer Bessent','AdminBeasiswa'),('echong77','echong77@so-net.ne.jp','$2a$04$iwhBfQ6xaVPzEEKKD249ke5Bl2HUvGFUy/tlj1Pay2LCX2iriR2dO','Ericha Chong','Mahasiswa'),('econnor84','econnor84@clickbank.net','$2a$04$GsW8oBjKVkgYRaIEFQtC7.VXLcHn5sgWYgSC6RJ1RPELhAq7Kw/QK','Eldredge Connor','AdminBeasiswa'),('ecucuzza9f','ecucuzza9f@purevolume.com','$2a$04$TLzUl.f5vR7wYGsqqvqcUuh.ui.G1uY2HwWKHE1R5RTTyuSqxP8Ny','Eliza Cucuzza','Mahasiswa'),('edumberrill5y','edumberrill5y@goo.gl','$2a$04$Nt7FH1RMAUqs4GXa/fN75eVoBEf68dOPM1imXYfjEVigyEg9s1OWi','Ebeneser Dumberrill','AdminBeasiswa'),('egergelyw','egergelyw@nifty.com','$2a$04$c5tKjzqB3WIZ21JFJGF/jecf8.4607M/Y2YaQGzHW7H8xqjuL5TCq','Eveleen Gergely','Mahasiswa'),('elapham3m','elapham3m@macromedia.com','$2a$04$WEDsP1lin/lOjIWJtL4iCOHqi.P6xn3bx.dwgEp/J.9szNXchmYe6','Estrella Lapham','AdminBeasiswa'),('elapidus69','elapidus69@guardian.co.uk','$2a$04$Xfg5K9cv8J4AW/gMfsi4iOeuEKKYqLmd9Hb.UM434dBhjx/TAXR8.','Erminie Lapidus','PakarBahasa'),('ematiebeds','ematiebeds@fda.gov','$2a$04$ZYTqxJzjCY2B7po2N9PTd.3GJPy6Rr0fBra8OKPundsmA.2iPIsSW','Eddi Matiebe','PakarBahasa'),('emckeurton29','emckeurton29@state.gov','$2a$04$3WQ2k9AwNYTr7Q0Qnc036.4DJDjvet5kMJ2x0m2uTQQl.3qZInTsC','Elane McKeurton','AdminBeasiswa'),('emonteith9j','emonteith9j@discovery.com','$2a$04$vAMtS5bJTDOc.Vwji2iQUOuvgeBNqxm0PIjoqfTWSJ7Hoab/RzwhK','Evvie Monteith','AdminBeasiswa'),('enerneyaf','enerneyaf@state.tx.us','$2a$04$BAsAJt6SudMz81gtkqGIPe0KAwAtfyBdAEvq8CpgEBQR2GkLhmBY2','Earl Nerney','AdminBeasiswa'),('eocklandbu','eocklandbu@techcrunch.com','$2a$04$zUtKL1kgYD68QiF.d2jcnuyYGn8zeaKzRt6WKxSFesGQlLZg9HZq6','Ethelbert Ockland','AdminUniversitas'),('eoroana6','eoroana6@i2i.jp','$2a$04$S0Hb2OLXv7Oko6HzP6X6g./bLiQjdt7CaL99BNH2zdhlLgB1b8nPe','Esteban O\'Roan','AdminUniversitas'),('erumbellow10','erumbellow10@yahoo.com','$2a$04$30/n07uuA9OhATc5ojbq8.hAANaBLfWDS4BvkDvIPwhnJZuLWxNSa','Eyde Rumbellow','AdminUniversitas'),('erye4y','erye4y@dailymail.co.uk','$2a$04$ULh/ffHPzlFtlhFP/LGM.OUS7Std2pjWzuVF9e9MRXHjIvmX0vVVS','Ernesta Rye','AdminUniversitas'),('erysom5p','erysom5p@miitbeian.gov.cn','$2a$04$XOa8uiU88NMLG3ZgxiRfle3SPnAXMLvCjUw.k47nd8nzHjifZUyXK','Edi Rysom','AdminUniversitas'),('eswiggs14','eswiggs14@loc.gov','$2a$04$cVKoa4yz5vC0f3rBVP/22eQ7peJbRRLJqy3Tr3VgHi4Nf0oM3c/jS','Elli Swiggs','AdminBeasiswa'),('ethomlinson2c','ethomlinson2c@360.cn','$2a$04$JirtlpfTPIn4R5TZXuK74ewSkUL.Xija5ojrnRBiwNKGq2V1uPSdC','Estelle Thomlinson','AdminUniversitas'),('everden5l','everden5l@nyu.edu','$2a$04$mcbs06ygQNWrEw5uGOTkJ.eQHsZHmDX4DbPJvsn2/lq8nAoi5Ll0G','Emlynn Verden','AdminBeasiswa'),('ewallace23','ewallace23@dedecms.com','$2a$04$wpg0/6YQi7QN8DAHv81.9ukM0h4U5FgA6.V0EsRNKINVg4gaYwXS6','Ennis Wallace','AdminUniversitas'),('ewallbanks4p','ewallbanks4p@so-net.ne.jp','$2a$04$oKaP8jzOuV8FyNrBwvAq3.9bt3iyMW54k7LfZDaKYJcxwhiMzptd.','Ernesta Wallbanks','AdminUniversitas'),('eweyman2q','eweyman2q@bluehost.com','$2a$04$moxygS0xuZeAq0yBn5A0zukSAoKdefcElDuewdrryUta8pN.bDT6O','Elsbeth Weyman','AdminUniversitas'),('fbrader6b','fbrader6b@ifeng.com','$2a$04$AtDmW6erAAcYs03/M5aPn.MAcOKUr5oP8cZ20AdSQ1bLD79hsWg8y','Fredek Brader','Mahasiswa'),('fbygrave9w','fbygrave9w@china.com.cn','$2a$04$OBFNIycEkxH9ZLXZEdRrdOhFex/kKttTR11QyqlU2ifMjeCUPuUNW','Far Bygrave','AdminBeasiswa'),('fcreeber82','fcreeber82@google.com.br','$2a$04$oPd1qoQkoDU72WhJOjkbje4jQ9fLjoJcc6zSd3dPQoFaQ9NXZU3Ca','Faber Creeber','AdminBeasiswa'),('fdarington7b','fdarington7b@infoseek.co.jp','$2a$04$eDVb/gRG59zZj0RqGD4iBud3qef5YL2UTwe.YEezYlmkOd/22r10.','Fania Darington','Mahasiswa'),('felletsono','felletsono@squarespace.com','$2a$04$MaMPr85f/EIOjl8izAXoY.hghZAwcPuxrx0NpsEZYGJd1DNXaK7om','Fabien Elletson','PakarBahasa'),('ffearnsidesb3','ffearnsidesb3@constantcontact.com','$2a$04$RdK.4.pzaX/Finab0Jr1.uFiNasrbJwp5PIgIowfy3N/jmtbqDuUC','Francis Fearnsides','Mahasiswa'),('fgirodias4h','fgirodias4h@bloglines.com','$2a$04$j/H.iPpLvMAUl4F0PcNtU.JlWYPlVKqXIMDxnOBUrkkkho8IK2AyG','Freddie Girodias','AdminUniversitas'),('flarkings1c','flarkings1c@ibm.com','$2a$04$s.hPMNBTNpua.2P7EbWvyOjLqIIui6pLe6JwvN91LBFpf1dYszPV6','Faustine Larkings','Mahasiswa'),('fledekkerc1','fledekkerc1@jugem.jp','$2a$04$icGLIfrikYpw4fkAMUvWdeDYV0zgm60n3JK2eJj5kyATpqdSUXCpu','Francis Ledekker','AdminUniversitas'),('fmccallum3e','fmccallum3e@ed.gov','$2a$04$kZKqUdgX5SbmW84iQePuiec.g4kSgoTUf1vDRADwEBswJHiLiZBg6','Frasier McCallum','Mahasiswa'),('fmcgarrahan4o','fmcgarrahan4o@yandex.ru','$2a$04$bDIcAMJGFuhaa0EyK5h/guw59ewqF1bs0OmT1j9OhrgTVbT/kfHiS','Fredi McGarrahan','AdminUniversitas'),('fmcnirlan49','fmcnirlan49@homestead.com','$2a$04$Le4Gsn2/p5QpFUBd5DPatuB2A/h8Adgvazfge8rqsep1.bUeA5kMO','Freddy McNirlan','AdminBeasiswa'),('foran5b','foran5b@blogger.com','$2a$04$OdEC9Ji8yhHp8WTLNYmh1ea455fhi/o/YjYLCaP7syAZdxtxuXMl2','Ford Oran','AdminUniversitas'),('fpittel4u','fpittel4u@123-reg.co.uk','$2a$04$fpfXliuZ6sfGyPffBN0YXuxYhxUifa4pIWvNV7z0X/PHi.pOEWrNG','Ford Pittel','PakarBahasa'),('fraikerag','fraikerag@bloomberg.com','$2a$04$Boc26u9DnHMni4g5CA/Gr.DR8EOnUOPvD8YNzo/tTyBsqxIw.Q8ta','Florida Raiker','AdminUniversitas'),('frenn7g','frenn7g@foxnews.com','$2a$04$8UVdbNnD2eGPXEbg2Jvmwu5bd2r8mrXhzBcJculu2jfzNNeAYIzky','Fanchette Renn','AdminBeasiswa'),('fsamwell5g','fsamwell5g@nytimes.com','$2a$04$i.fhaCba4P3LT/hyG1DrbunArUc3EHSKbFKJiQPqp7kNuXNrBybw6','Flor Samwell','AdminUniversitas'),('fshailer43','fshailer43@imgur.com','$2a$04$tf8IqPXxGTFrvipI2uUZYexYxA6lISZyTizu/dTHAdD3fs8L8Q2tO','Fionna Shailer','Mahasiswa'),('gafield3w','gafield3w@addthis.com','$2a$04$ihrAP1x4wGO7deeiJUb49ul7QNwibknHfvHLEG.iD3kgFrGMPZkoi','Gayleen A\'field','PakarBahasa'),('gbetteridge2i','gbetteridge2i@alibaba.com','$2a$04$2Fr53.LPHRUBvatPyUQ47.e/mt6LVJxkus3TTg1eqYkmL3soIQIsW','Gaby Betteridge','AdminUniversitas'),('gbootherstone2g','gbootherstone2g@sohu.com','$2a$04$5zC3T4qHdPE62kWURb.TcuaxfdWrJxRvLov1J0iYe133QqbTHEY12','Gilli Bootherstone','AdminBeasiswa'),('gbrittian6g','gbrittian6g@w3.org','$2a$04$ngBOPiig38c28ppteBV2YeafMXTagQT5QTZMLYb29kuFkkIXhdk2y','Gelya Brittian','AdminUniversitas'),('gburchardbr','gburchardbr@fotki.com','$2a$04$knPc/zudZ6JM9J/Xjx0FheeI65ltRuXr9z4r8icfBIaJSFil3Hlsu','Gilburt Burchard','AdminUniversitas'),('gcobbingdj','gcobbingdj@pen.io','$2a$04$ibNYYsd2mk.q8kfTOsvbqOhpb.F4UnAQUZwtNzOYMJCG2mSF2zUTS','Garret Cobbing','AdminUniversitas'),('gcocozza3q','gcocozza3q@sogou.com','$2a$04$FK3DX/pFNGojSXXk9qsfH.y4CPnAh5BQXgGLIBgDfJFJ2GlqLAr7G','Giorgio Cocozza','AdminUniversitas'),('gcowserc9','gcowserc9@hp.com','$2a$04$FMj6HF0wD7PMQxsr67vWbe0ySn0D8Mew9S7YN4YkyMoARc0yZWOYK','Greer Cowser','Mahasiswa'),('gcranstoun4b','gcranstoun4b@vimeo.com','$2a$04$D2ax6E.aqxfUmFxGavnypeaqL8rxmLpL8HLnY1LmMr45S3R0ixjju','Guthrie Cranstoun','PakarBahasa'),('gelliott7n','gelliott7n@cbc.ca','$2a$04$bXXuxf3tSwDOqgzeXt3.5Obok0jcjCBLRO1AHcw1Nk7.fxI8akkwS','Guillemette Elliott','AdminUniversitas'),('gexall87','gexall87@exblog.jp','$2a$04$8MSZuwqfMF8jMupj6FrN5uRiVVelgBeUDP4pPbFMxyp9jqSsnYSeG','Guinevere Exall','PakarBahasa'),('gglavinb2','gglavinb2@tuttocitta.it','$2a$04$CXmJKcrYaXYowhYt4.p1/.1KTgtEifpLU8PmIYmkPIy3fSdJ3q3uW','Gar Glavin','PakarBahasa'),('ghallett6','ghallett6@apple.com','$2a$04$lCaaR1h8.L0SYpGvsruFlu622oR9auQM8qNSsVo9XooEjgGQJ2Tta','Gary Hallett','PakarBahasa'),('ghebbsbb','ghebbsbb@state.gov','$2a$04$6SJC1M4IYogYmFPcyfY2QuSsuVkk/DzOitAN4wIMg54QDSrdVgrAi','Giles Hebbs','PakarBahasa'),('glaydonbl','glaydonbl@cnet.com','$2a$04$VEnpuSF6l7ZumHtvGtq4Ie7MGzg7eNSW0JfFYa6B0JdGi3epuOmym','Grazia Laydon','PakarBahasa'),('gorrock6u','gorrock6u@xrea.com','$2a$04$.GazBjF8wfbtOqO3NeUl5./yvLs8ebqrmqv.d2zkx9QtJybfYDW6e','Gabie Orrock','Mahasiswa'),('gschwaiger7z','gschwaiger7z@google.nl','$2a$04$p8culsh/K8H7xRLhmfRpOuStJKQXAGnCZzHllZ9.gxqd/vBIe2XnG','Gram Schwaiger','Mahasiswa'),('gstapyltond2','gstapyltond2@weather.com','$2a$04$m6DQ7FeB7a.oT7se1/MzQO0SPPEe8tH45Z1WoMsQDZmRzS1xb3zqe','Garvey Stapylton','AdminUniversitas'),('gweadick8i','gweadick8i@tamu.edu','$2a$04$Yumv6eM6q0An5yucRuz2HuegJ5lDBx4IQ5cWM8PJpDCvzhz/kPU1S','Garfield Weadick','PakarBahasa'),('gyitzhakov9s','gyitzhakov9s@addthis.com','$2a$04$vVMVMHyCocmgK0tkycBA1.i1jwHcCX6KKJyDjZAOVfkD/NJ/XtdLm','Guglielmo Yitzhakov','Mahasiswa'),('halliban5k','halliban5k@youku.com','$2a$04$4QQYGAr1ndibU4eB5t4u8.tTaT2L9S3kLAfHuhomLKv0pqUQtGL/O','Hyacinthia Alliban','AdminBeasiswa'),('hbeastall22','hbeastall22@paginegialle.it','$2a$04$3uhfxV5pT0NXyhq7v1GZO.FU0BARBll6GYH9b.k6mCvJfjyxeE/S.','Hulda Beastall','PakarBahasa'),('hbentleycy','hbentleycy@latimes.com','$2a$04$Sy0SJbpc35CLq.IXIk16queEuBjEbXqTsERfswGEiib3lKPkhr8Hm','Hadria Bentley','AdminUniversitas'),('hgrantat','hgrantat@foxnews.com','$2a$04$R/Zr3CLGDE.tGM64reuVE.7GRJk8Jfo37Ey4OhufhX9rZGGBjX4RG','Hinze Grant','AdminUniversitas'),('hgreen1n','hgreen1n@google.cn','$2a$04$9RdoQ74UCbaMlhk6/pXcFuKehKr6l0VIHc89OFE5pQziwV6mVbwYe','Hendrik Green','PakarBahasa'),('hhaslocke8y','hhaslocke8y@un.org','$2a$04$rBcOqTSj0032X3BHv90DvuiAnehE7CCnlj58sk3RMCwXZimdLUgT.','Harmon Haslock(e)','Mahasiswa'),('hhebbscr','hhebbscr@mashable.com','$2a$04$bP/YEBEUl0q34w9mI4GGYO02.Ot1vpS.x4ieDJvGOXFMO4auyJQn2','Hanna Hebbs','PakarBahasa'),('hhinkley1x','hhinkley1x@meetup.com','$2a$04$p4BDbaABqFTNdDtciG/Xa.NqdS86rRkp7h8xg2PTOLeOUzdYzVXQO','Hamel Hinkley','AdminBeasiswa'),('hhirschcj','hhirschcj@who.int','$2a$04$4DNnYcOuh8Fsc1pDgtkqielBxSgwJTV5CZEEFm0SUEhkgXoVJt66W','Hersch Hirsch','AdminBeasiswa'),('hiacovo66','hiacovo66@google.ca','$2a$04$4cahdtcs2F/Wv3J.3QwS2eKl3f7zMMe7/MG7uLwL700TPmsT1RZ/2','Hillary Iacovo','AdminUniversitas'),('hlacf','hlacf@uiuc.edu','$2a$04$nnTAY1OB4n1zmuZ0L5wa3OU9E4bLsadbdEIKYX2KaJn7sojhSPCR2','Harriot La Padula','PakarBahasa'),('hlongo4v','hlongo4v@delicious.com','$2a$04$OmGFpQgFtY0a26UmMdDvi.z9vEE8PZgMx6a3dZFrnpxLd57WxG516','Herrick Longo','AdminBeasiswa'),('hmacgilfoyle3p','hmacgilfoyle3p@google.fr','$2a$04$VfyvFgSJVfFp89lGambyJ.Vw5SkwJqXal8GtpWhlJM2K5k/d5m7AC','Honor MacGilfoyle','AdminUniversitas'),('hmcilraithck','hmcilraithck@comcast.net','$2a$04$Y28thoSUNCh5KjknyqibDeuepHlezwgRjshrjIzyo.gVcM.jcve5i','Hobie McIlraith','Mahasiswa'),('hnaisbit2v','hnaisbit2v@sun.com','$2a$04$6Cne26fw8FNruV3Ckqhowue7LRtfAJneNA/d7oV68L2KOk/VEEvIy','Hartwell Naisbit','AdminUniversitas'),('holochan8t','holochan8t@berkeley.edu','$2a$04$R1qYBohK4cTLllQaQWenXOaLhSBwoiC3bUKfM.cMUGwecmdlI67W.','Hamel O\'Lochan','AdminUniversitas'),('hspall7j','hspall7j@linkedin.com','$2a$04$y7DvE7zY6q6qRAtC4NhxgO4vQePjKq66E1bESLsThXQuBm4Le3l5i','Halette Spall','Mahasiswa'),('hspoorsbe','hspoorsbe@webeden.co.uk','$2a$04$i7bQyoYPHa4.PCro6Dqc7epyhzaZLsL5Su.YZN7hsTfEuNkVWlBvq','Hastings Spoors','Mahasiswa'),('htilne4g','htilne4g@etsy.com','$2a$04$zfI9eTAF3ZGKVfiHhpP2qekCTWGxSCGtqdO13v8Wf8apkuXnbcArm','Holly Tilne','AdminUniversitas'),('htimmermannbz','htimmermannbz@usa.gov','$2a$04$Wiubq6JsC.BTWn863KZSxO.aVWYBYUcOHXubVDMVdMnsJxSgyPLoe','Ham Timmermann','Mahasiswa'),('hwelsbybj','hwelsbybj@moonfruit.com','$2a$04$Q1DVW7bEKyfyBUgCJD9IHehaRkPGl5/VArayoNTlbEmxvZonnDY7m','Helenelizabeth Welsby','PakarBahasa'),('iarensoncw','iarensoncw@gmpg.org','$2a$04$Saq911euNAeWHZGPIkV2Ee9vpTYAlI3UV/QqWY5XkpalpvKvKiyXW','Ilse Arenson','Mahasiswa'),('ibrunker0','ibrunker0@tuttocitta.it','$2a$04$CJ6/ne3BHpsNjPQoBvGtm.R3tvsJk8g.wBw6N1CfW77FAFCfjKUx.','Israel Brunker','AdminUniversitas'),('iheaps3a','iheaps3a@cam.ac.uk','$2a$04$eqjBE7Y2aT6XVn3RiyfkSu.lV6bb6uiSeV0syFupDjGtWh2.YFTuu','Isak Heaps','AdminUniversitas'),('iisacoffb8','iisacoffb8@berkeley.edu','$2a$04$ahJRv6nl.GStBrB8Z9LAEuAsJjYTYpRx/QHMES1ArFdVqtvLrqvUe','Ingeborg Isacoff','PakarBahasa'),('ikunz3k','ikunz3k@wunderground.com','$2a$04$Q287xQk0hizuQfGIcycJ9.lOPzGS68cyrjIFQh0LnFICcrEmTmlsi','Ignacio Kunz','AdminUniversitas'),('iludyc6','iludyc6@newsvine.com','$2a$04$1QMACnVYpBDtYD0M9vSuhu8pP3bQ5/jGKfsinTAXVptsXPlmu6PfG','Ignacius Ludy','AdminUniversitas'),('ipitkeathlyb4','ipitkeathlyb4@paginegialle.it','$2a$04$iSzpHJjL.dcP7BuLGJeiQ./xF3qk8b8UBT5i7vixZMjC16uRXfp2y','Isahella Pitkeathly','Mahasiswa'),('iridgers46','iridgers46@ox.ac.uk','$2a$04$nWPCB24uzJXGc7AFgbbvh../5/48TD9FQxngHg.9YapmkdSYLVuLa','Iolande Ridgers','Mahasiswa'),('jbeninidq','jbeninidq@instagram.com','$2a$04$e1.o8sQUQ8GlYc1I6tYx9.wUngZggb04fQnqj/k5aGywIsIrJB.Tq','Jerry Benini','AdminBeasiswa'),('jblazy74','jblazy74@flavors.me','$2a$04$v.bvQoYruiUFYtS0Cho6w.gH1DswJIPWhfcqvN7ORwP8JNO2apv8O','Jacquetta Blazy','AdminUniversitas'),('jborles2l','jborles2l@ycombinator.com','$2a$04$tKYBypSXzJUbPfss.wYXp.wYtmt6MVqNRscLTPPFsMunpcbjEQeuG','Jocelin Borles','AdminBeasiswa'),('jbrady5a','jbrady5a@imdb.com','$2a$04$DaEEykBNiFhd3DH5TQbCreodk3SPTc9/Rvl8qUasxa85XnUrM7c1O','Jacques Brady','AdminUniversitas'),('jbunchg','jbunchg@japanpost.jp','$2a$04$Q9mcIX6vw.GpyVAL4Rm4neFbh/ioT7GLhPtzrKTjIeCwnzt4we7vC','Jarrod Bunch','AdminBeasiswa'),('jchastaingdh','jchastaingdh@jigsy.com','$2a$04$TDJ/4hE3Fih1JI1mVcM1.u0.F7X0SK6wNbwUySghAVIjOkNkdjz6C','Johnnie Chastaing','PakarBahasa'),('jcrossfieldab','jcrossfieldab@reverbnation.com','$2a$04$8RTrtzL.bU7n3uugG/WmuOgE1XBjSrQUIKldGL1q9GnJ/qlD38vH.','Juliane Crossfield','AdminUniversitas'),('jdaines3y','jdaines3y@shutterfly.com','$2a$04$TcLTmZfUqozi2cj07ToMKe9GMzpR39kJivBWp5L2BLCz2ojDB6hQi','Janos Daines','AdminUniversitas'),('jdoberer99','jdoberer99@homestead.com','$2a$04$zFSXFabyurOScGE.Pzg9JuWZNrWfF1KNtj9YK5ZEsyVG.WQgit.tC','Jackson Doberer','PakarBahasa'),('jjakubczykf','jjakubczykf@scribd.com','$2a$04$A/oO8O7qXNX6aVxf41T9jO6Er4APzhI65MKtxTqfZdXIutv7cM9cm','Joachim Jakubczyk','AdminUniversitas'),('jkaasman9d','jkaasman9d@japanpost.jp','$2a$04$8oBuZTbQoz7o05NgdV3N2uvpRVMGbho7P9rTIHxRBXrcGPIjk.Cpy','Jemmie Kaasman','AdminUniversitas'),('jlightwoodda','jlightwoodda@go.com','$2a$04$ITga31Lonx2RsHbH3A56fuPS1HNP4bB2XNZWjqRaPfAlSXeM0XOHm','Joshua Lightwood','AdminBeasiswa'),('jpocock4m','jpocock4m@smugmug.com','$2a$04$Oh9C7wrV4dHi65c8ROU6nuhyM8mDVT7n32j4RAQDi/mjPSpuA54ua','Josie Pocock','Mahasiswa'),('jroom4c','jroom4c@sun.com','$2a$04$SUSQZEQz3KEcf4SPpBVAg.mRrZlK3/Cu5y37Ogkjw/gclxdcW2ocK','Jessalyn Room','Mahasiswa'),('jshapcoteb1','jshapcoteb1@google.cn','$2a$04$c7n5G/8som6H.Kl0Vxdege16a1T5aPxOxCn72RoZJtaUGnOIKoT.a','Jillie Shapcote','PakarBahasa'),('jstevensonau','jstevensonau@gizmodo.com','$2a$04$DEYTkO.GixMP2vqOAM2Xwu1rCC0TUrq6Xomt3Z1V8JbMmXWXaKo9q','Jecho Stevenson','PakarBahasa'),('kbaldcockdp','kbaldcockdp@dedecms.com','$2a$04$UqDILamp5oRFXU9hX/ICm.uWejN.uswJzTqtl1B.4.kDjOMoTbDS2','Koressa Baldcock','AdminUniversitas'),('kbatmanc4','kbatmanc4@webnode.com','$2a$04$B9FROmPDJyopHeybtMp1HejLbDfj/lJSFVKf38i0kmhfbVTgk6s92','Kathie Batman','Mahasiswa'),('kbencke','kbencke@list-manage.com','$2a$04$7.nJ2H.sOIrE6UmGVh8mI.EplY1YuoZA0aDHRk5DVrcD2Q4iH1Hum','Kimble Benck','Mahasiswa'),('kborgnet1h','kborgnet1h@loc.gov','$2a$04$HrjmnNZ60j1o2agGQiFLruIP.bBECMXzgMBtrmdrtaghQO8vEs3eW','Kimberli Borgnet','Mahasiswa'),('kboulding4q','kboulding4q@moonfruit.com','$2a$04$LNWiaWyWwTUGuJKIeU4s9ejaK1QoEek/fHpwEdZLwz43oVF0WqyUm','Katee Boulding','Mahasiswa'),('kbrindav','kbrindav@discovery.com','$2a$04$BAf9gcjAGZB3TcAxtz2q9.BRCbjJ.ZVUS9ng.NF7Ec6IbgMC3z036','Kyle Brind','Mahasiswa'),('kbussel9v','kbussel9v@usatoday.com','$2a$04$4ZmeyNctWagu.DpxBt8.POWTtfE5LZZMSVJLAf8gEcW71H57fyG1S','Kassandra Bussel','AdminUniversitas'),('kconnechy42','kconnechy42@mapy.cz','$2a$04$05y5anP3GwzB74Djg1TCU.NF8nSJQtYMPrUY/JM5ePMCVQWXW6uNq','Kacie Connechy','PakarBahasa'),('kcork1v','kcork1v@aboutads.info','$2a$04$4/7pFuLOmsT4e5ruNw6ql.wxQTPXSM6NWiZ0WPTyNCZ/0bs1kKzs6','Kirstin Cork','PakarBahasa'),('kcroxall19','kcroxall19@123-reg.co.uk','$2a$04$hpW1AyCHGka.MKv3fyWqRe1wcDAspmo0d/rvQfsD0wyzHWE7j4S8S','Kellie Croxall','AdminBeasiswa'),('kduinkerk8v','kduinkerk8v@360.cn','$2a$04$byB8USFzm80jlW6Ws8pwtu1z7UX6itwLHCw368rkQahJHSqMBGmEu','Konstanze Duinkerk','AdminBeasiswa'),('kdukesbury4i','kdukesbury4i@blogs.com','$2a$04$Rff0.9r.CB.WbfVvbX5WvexDcRHFk0NC4LHP4uKkMMCc33KqwRSIu','Krishnah Dukesbury','PakarBahasa'),('kegdalech','kegdalech@theglobeandmail.com','$2a$04$.XakYWKWqPFZdUdkXxjq1euFrRg2rHeSjymZVtP1uEyFadJeNvTQ6','Kevan Egdale','Mahasiswa'),('kentresdr','kentresdr@ameblo.jp','$2a$04$wsNz5wFMBdfE/CFNwzIBO.M8dHy8eZpay04Wi6vnoR27QwDw/JOr2','Kelila Entres','AdminBeasiswa'),('kfarrell8c','kfarrell8c@indiegogo.com','$2a$04$zQn6aYhH2X1opOYv3g38teZoBRperVztr1FTEPQlQJ9zj0rXrRcCa','Kaitlynn Farrell','PakarBahasa'),('kfaullae','kfaullae@netscape.com','$2a$04$rwMzsWfabIGIi/uiNL8ySu7o1aXzAH8QDNdKhuT01dTj/y2bKIuoK','Kalil Faull','PakarBahasa'),('kfidler98','kfidler98@mtv.com','$2a$04$Vo5BB1hZuWoRvkvdwDTy6.l8uj4gIrDen672hlp2QYwRqHbm0IOaC','Kristofer Fidler','Mahasiswa'),('kgilbertcd','kgilbertcd@1688.com','$2a$04$rjevmTLtEzjsPtlM0HKiAeVuMRNDyYEyl13iOU5sFDorqLWvrDS3W','Karlene Gilbert','PakarBahasa'),('khackleton47','khackleton47@drupal.org','$2a$04$Yd0vBKBdyGveGntKgq2XvumJAFhzV3NumGBfevb8xvJz4H9Ytsj/K','Klemens Hackleton','AdminBeasiswa'),('khagwood6v','khagwood6v@wunderground.com','$2a$04$HX45doZgOJARO/9COC8H3OC6SCfY/aS9ynOLVtPC4SGmqXb2U3Lae','Kelby Hagwood','AdminUniversitas'),('kheinshah','kheinshah@biglobe.ne.jp','$2a$04$/W7HcwiW4lrlsoXn8UMsHuhQqgJmdz2loDOgM6vlyMMnwdqx57CDK','Kipp Heinsh','PakarBahasa'),('kjohncey65','kjohncey65@boston.com','$2a$04$vhnvuiraT.hcd.i437kQx.JdFBcm24dnkAOvn5c4Ec.X6OhnonkqC','Kerr Johncey','AdminUniversitas'),('koffenba','koffenba@marriott.com','$2a$04$fFd7MLlfprrJ/3usR7.dOObQjuzHMZKgU.Vf6LPv.GAjnZnd9TMZS','Klaus Offen','AdminBeasiswa'),('kpetrie75','kpetrie75@liveinternet.ru','$2a$04$PAeMdxPn.XaFBI8KFJ0Wu.e0qs2pd8X.70Hs4zqP56JSlZdfgFDDO','Kendal Petrie','Mahasiswa'),('kpinnell35','kpinnell35@unblog.fr','$2a$04$VWVh7D0mWjWF4fT2opaPP./sxq8PihNVeXE5X4zJU.T345DogZ9hO','Klaus Pinnell','AdminBeasiswa'),('kpodmore34','kpodmore34@about.com','$2a$04$A4ZUr/wDCrEAf0Gx/hH.R.hwbossaMqKvbuUeL/RIO2soPoYAaiue','Kearney Podmore','AdminUniversitas'),('krayne5m','krayne5m@tumblr.com','$2a$04$6tR4L0.eLETP/I.U96dpuerddVNKCPxLOoBefsk2p7uFuUysMtf0.','Kathryne Rayne','AdminUniversitas'),('lbenediktsson26','lbenediktsson26@clickbank.net','$2a$04$bX1ughLL6TmVBpt8rQku1.cKPJ.Wl7mhQmNqsT/UKzUYVoFdiF8Sy','Lucia Benediktsson','AdminUniversitas'),('lchettlebq','lchettlebq@census.gov','$2a$04$odJF6OkDo/Dqghhi05O6WOgKXBp4lIFNJnCv1dsVzITebQjgUJ47a','Leone Chettle','PakarBahasa'),('lclymo3j','lclymo3j@diigo.com','$2a$04$FsognTwFBZaFcG7m5y/yA.qi9sqv4jBW1QEvMUzydpElzzxqszrqG','Lorenza Clymo','AdminBeasiswa'),('lcommander2w','lcommander2w@homestead.com','$2a$04$4prqJvTmy.K9GQsKQ2KNje34GjZYgWmbB2m44vChqNA3WxM/HIqAW','Lucy Commander','AdminUniversitas'),('lcrippes1s','lcrippes1s@huffingtonpost.com','$2a$04$yeqdX.nrA4kdWI2RGvzd1O4x6wTy4d5/vmxE8Km9a.IY2kKy2vv4S','Livia Crippes','AdminUniversitas'),('lduftons','lduftons@tmall.com','$2a$04$Wub.asyyQuB6GCenuFzvEOqfBT0XhU0cf9czxuQVAKrVEUC0y3TlO','Laney Dufton','PakarBahasa'),('ldunkerly1m','ldunkerly1m@yelp.com','$2a$04$ejgu2zgIESrCV5ETfakPmu2J3L6Slxy5VdKlrHKVS4F6VgaPz7j72','Lorry Dunkerly','AdminUniversitas'),('leaken41','leaken41@dyndns.org','$2a$04$knoOWwMzH36tWGWOAfC1N.Dd8F90JmO.zZjlcIioyHoeuPNcTUlym','Lorri Eaken','AdminUniversitas'),('leddicott8k','leddicott8k@nih.gov','$2a$04$KekIf.llWgof/5CtFVHq3uPvnPxVeQknjPezABG87Bf9LwaWFqyDu','Lenci Eddicott','Mahasiswa'),('lfrancescone86','lfrancescone86@dion.ne.jp','$2a$04$aQ04aI61QLvsZYsFeeYpL.CP71JqHIR40h7Ji5y09/WA5mSk3RIBC','Leone Francescone','AdminBeasiswa'),('lgurneyaz','lgurneyaz@prnewswire.com','$2a$04$PDhDxF/44zGHylYHIP5GVe.gjQhvsuOdP7HqzmboRLzMYtu9SXru.','Leanora Gurney','PakarBahasa'),('lhalleday92','lhalleday92@time.com','$2a$04$P6LOwjWeKHnpHkbICcSR8OWBVuTd43IciLuS.OnIgdA3JkWT4OWim','Lynelle Halleday','AdminUniversitas'),('lhuggons91','lhuggons91@multiply.com','$2a$04$M99uG309vTVDjpvq5k7GZO.h69tljKoK/LhPo0.DzGSv/4Ds8j7f6','Lauraine Huggons','Mahasiswa'),('lleger8n','lleger8n@creativecommons.org','$2a$04$fAf7jJBCOF0zK58HvF5RmuTJve3VvVsRwxb2U7REA2N6mpTILW0je','Lucais Leger','AdminBeasiswa'),('lmadison1o','lmadison1o@umich.edu','$2a$04$hyFIcNU/k4Yz0Pb.o/Jli.14wIIwN/AB8f9VcbUSNJww5xtL52Npa','Lilith Madison','PakarBahasa'),('lmissen2','lmissen2@symantec.com','$2a$04$ZPxMnjvXnvpls3AABNdOCeOQE1kCGpiVdIoFnZx.v11Uhd.FRgPQW','Letitia Missen','AdminUniversitas'),('lorvissca','lorvissca@cam.ac.uk','$2a$04$n8PHkPlvHlADFHMMKv3WJOXRTZAd1dwMeuJegyoykPSce/ah79T5a','Laverna Orviss','AdminBeasiswa'),('lotierney64','lotierney64@wsj.com','$2a$04$1dIwO6z4BtrNdC7v2ITAl.L1xaqjYIwG6xtgUoGxm2pEbBDxAV7bS','Leonore O\'Tierney','AdminBeasiswa'),('lscargle1q','lscargle1q@google.ru','$2a$04$qPfAhCvVuEgzmsnA12MUsuUxpQQj9nUBOBf1HT3qwWTus8iA8fEEm','Lazare Scargle','AdminUniversitas'),('lskatcher85','lskatcher85@unblog.fr','$2a$04$SotjFHabUzZ64JpxxNVPReQ3yO2lHRPlGX4QnwAW2MR7pItL4gBEC','Lena Skatcher','AdminUniversitas'),('lthelwllan','lthelwllan@springer.com','$2a$04$VFzkLre6A0KxZ7uC0P7eN.ayDW6bIXfgW.0Y/mb9PEiMixXYCoXTm','Liza Thelwll','Mahasiswa'),('ltounak','ltounak@about.com','$2a$04$aD4ewZIZr73KkDBxNeLyw.hdqjIBqCANmnm35wv4cHDD8BtthO762','Ludvig Toun','PakarBahasa'),('lwooding5t','lwooding5t@google.com.au','$2a$04$Tf1L3x70OuaWBhnRJaua8O50.f.zG3sWUuxggs8uqvPK1ncWYrrYa','Lyndsay Wooding','PakarBahasa'),('lyuill8b','lyuill8b@yelp.com','$2a$04$4zQ6TFNYMtnuGVztXCB7WedUNawKcMWmygEOCSKJfdp00jQ7pIrHG','Leia Yuill','Mahasiswa'),('machrameevdg','machrameevdg@washingtonpost.com','$2a$04$jmQAnjZM9I7zEupelEeiPOe1VkEBiRZWNuiLCIS25L1wZPxH3JhQ6','Maisey Achrameev','AdminBeasiswa'),('maizlewooddf','maizlewooddf@posterous.com','$2a$04$mHwIDexeobz8R4.tGkkXxO.tgLvDEBU2RdYEo5kxupnuaCc1bFzrK','Mari Aizlewood','AdminUniversitas'),('mbosward1w','mbosward1w@goo.gl','$2a$04$ZF1NeuTI.202lhQetL2mtODeYXKQlACDQeqlxhV3dNPzKSPHPJEvq','Maryann Bosward','AdminBeasiswa'),('mbough6y','mbough6y@jalbum.net','$2a$04$jwNJ7SY7VRLniKVB5RYqve5xPTUNdlWhL.CiLXu0CfgZzFEIqJ6rm','Matthaeus Bough','AdminBeasiswa'),('mbowcher3l','mbowcher3l@topsy.com','$2a$04$18vKZ//9rGZ1NVqtp39lpOtQUhE2Kt9RpPxCzcRddBF93vVkOcq2a','Molly Bowcher','AdminBeasiswa'),('mbuscombe4e','mbuscombe4e@is.gd','$2a$04$0FkC4uvl2UDyO2ZAZA12yeQGjUV5FlcWZrJ2OuhDAbgWoboy01Qqa','Marj Buscombe','AdminBeasiswa'),('mcarne6m','mcarne6m@wordpress.com','$2a$04$bPVNqY0RRr9xb2LGqpNcBOCx.sx.21VrSQ3StL2dKI18chd9CAqLm','Martie Carne','Mahasiswa'),('mcharette3','mcharette3@hc360.com','$2a$04$RUOnAzz8oB.Jl3UdV1hQIe9H/3VLMmU26eSMkKs4.c4fslgNtY0k.','Mercy Charette','PakarBahasa'),('mcuningham8r','mcuningham8r@usgs.gov','$2a$04$ZcGtABuOTjEwnAFyEiSD/ueo5AkcaYUKLWvfoLIzhZt0G50kMIOd6','Margie Cuningham','AdminBeasiswa'),('mdolle6h','mdolle6h@imageshack.us','$2a$04$/2egOdS1jVk/TApuVVqUleLHZMMAX0DLZKaNiqk6fmSamI1e0s/ca','Maynord Dolle','PakarBahasa'),('mdreghornbg','mdreghornbg@washingtonpost.com','$2a$04$XP0pPUSSRvez61X4J5NtN./6zSSTFzEHw4gyQQZGYOwyTpW9aiiSC','Maximo Dreghorn','AdminBeasiswa'),('mdullaghan24','mdullaghan24@blogspot.com','$2a$04$9PvdaYhRLA.sKnBi2M4lYeoKed1HHvOt9cSqHB7FpSmrkIkElGnVO','Mahmoud Dullaghan','PakarBahasa'),('mdurbin4r','mdurbin4r@yellowbook.com','$2a$04$tTA0mv0UoysTbU5uyfkPheXqmEFXReG0guCtRrzfWULrqpcF9bfse','Meridith Durbin','AdminBeasiswa'),('mflips4s','mflips4s@ask.com','$2a$04$60YZ8AEKWrQyWDlMb5c1eeaoXjGVdRFz6Di3aT8eh.LEOzdLj2owC','Morgana Flips','Mahasiswa'),('mgascoyne6x','mgascoyne6x@soup.io','$2a$04$gI6iO3z3kr8f338pJBqHPOX1a7zbRdwpv5iHp6WHBwfJpHMc4inQe','Monty Gascoyne','AdminBeasiswa'),('mguinane12','mguinane12@bloomberg.com','$2a$04$QJ71EO5k8PraqC/lYMSKL.zXlA1ZyC1gZ8AEuKbieFsjgjksWaOM.','Maighdiln Guinane','AdminBeasiswa'),('mguisodl','mguisodl@merriam-webster.com','$2a$04$HeWz0bHKpHzEVT9P65tcyO41PT4kEi2ds2tdW3zulj0k9iGciMTyy','Merci Guiso','PakarBahasa'),('mgwatkin3c','mgwatkin3c@nifty.com','$2a$04$87FIOR64jOpMczbbpJB7IuPbOhAjj1nbVWKJaeKKA6aAsGVSwggEC','Marsh Gwatkin','Mahasiswa'),('mhairsine1j','mhairsine1j@cyberchimps.com','$2a$04$vO4ZMYy24ny2UtNx4TDwq.ivgr3FU1MmsfXRq4aWOLNrsZhTh7PHW','Mia Hairsine','AdminUniversitas'),('mhewbv','mhewbv@amazon.com','$2a$04$eHvYB4pE412ZV6Mlbev1W.KS4TAKJObMxPYM28x.VnCtPndMAFVvq','Matty Hew','AdminUniversitas'),('mkieltce','mkieltce@miibeian.gov.cn','$2a$04$Hw5BoDHzmqGssJvPt4KZ9uzQ3G3nvcPFLp1Ar2OM40RvAMeTSNAsa','Merl Kielt','Mahasiswa'),('mlockier28','mlockier28@tumblr.com','$2a$04$2BjAWcny5ENaiE.dBON.S.wUGhVpxBtNoocjmvKd9vkScfedo.eBS','Marcie Lockier','PakarBahasa'),('mlowlesm','mlowlesm@hhs.gov','$2a$04$BwhnoAOXHUvRPXlD2F3TLuEigbojY4SVL5pfyFP5sQJF72kXU3wCe','Mandie Lowles','PakarBahasa'),('mmaevela1g','mmaevela1g@woothemes.com','$2a$04$dfZbFnEz5T1MxNsktD8YUuPlyzl4/UdrKDP0i1S/SpAbuEN/tQMna','Milt Maevela','AdminUniversitas'),('mmaudson6r','mmaudson6r@yahoo.com','$2a$04$fNDnedQ6d9pNBHmYUQYeUOvVmRxNeKe/L6IwhZuc/1ZqxKSEZ4eZW','Miner Maudson','PakarBahasa'),('mmerdewx','mmerdewx@prweb.com','$2a$04$ezhNvaZNY.62ys/ehCFjOuh0ZtATC6XBKBjs9nV6q3kkZIh54S5PW','Morissa Merdew','AdminBeasiswa'),('mnannetti2b','mnannetti2b@about.com','$2a$04$2QFyaH7zQPKX4YHUb5.qhebz5hY.lI.Z5jyleOEfx1fFHd.WeYJFW','Miquela Nannetti','AdminUniversitas'),('mphliponad','mphliponad@answers.com','$2a$04$C1dVcldizJsIttEKpT0rnuDLTsSxZRyZceaOcWNKXadQlQgd5prQ6','Maryjane Phlipon','AdminUniversitas'),('mpidgeley7h','mpidgeley7h@wired.com','$2a$04$kLEz8ntFnOcdDhzSKZF28e109CC6pc.Z2nsR8a4AwrPC9fgiGfDHe','Mord Pidgeley','PakarBahasa'),('mprickett89','mprickett89@printfriendly.com','$2a$04$h.jxiGL/x59IQ7JwbosuOesmL30/4ffU9i5LNE1ZcDeBTRxqUqfgG','Mersey Prickett','Mahasiswa'),('mroggieri7u','mroggieri7u@boston.com','$2a$04$QPhxUGRDI.aYI9l5KFng5uXligWGj1Q7zknQEUKDsHG/Mb9T6chQO','Micky Roggieri','Mahasiswa'),('mrookwell15','mrookwell15@cpanel.net','$2a$04$A.ZXudyKkiRP4GI4NRo0ieFk9.JZVFKBlC3VKNMrYStT1DlnfFQ1e','Magnum Rookwell','AdminUniversitas'),('mseed5q','mseed5q@nifty.com','$2a$04$04c1qS6jOU6E2Mm4Ugld..F7osJgtVAzycvW8LZQeoC6loD036.Z6','Margaretha Seed','PakarBahasa'),('mskeend1','mskeend1@ucla.edu','$2a$04$BwS8E5b3UFYkqFSX7iMbRu4a2CLFdIod1bcyt/y7akYzj0Dhh1qP2','Mari Skeen','AdminBeasiswa'),('msnelb0','msnelb0@lulu.com','$2a$04$EZPzi1GNZYYNMHacRUdc2OxVNZQa1CwSwM8LKDKHSNAAxuwSz7VuO','Merline Snel','AdminBeasiswa'),('msnow2j','msnow2j@theglobeandmail.com','$2a$04$QUNJ.nGcvSD9KUHeswWxROGQL7HLWK8Qjl3w92b8L1T6UjUUORBW.','Mei Snow','AdminUniversitas'),('mtunderam','mtunderam@who.int','$2a$04$JTedDkJKqimWZvZ5iWtoAOJAAMzwPbIL7slxBZyeyERonGQ4l6VX.','Marena Tunder','AdminUniversitas'),('mwagnerinas','mwagnerinas@bloglovin.com','$2a$04$NmUqsr7vuG2eVDZXHC/ucOEkPV16f5egftIJdPbH8Ya/vbZZLc4QG','Meredithe Wagnerin','AdminUniversitas'),('mwallworke1z','mwallworke1z@nps.gov','$2a$04$IHxHb.O/cDJXWjGuO1yOi.7spbH6uhrPfORsKaxXunUPTp2HtQPWa','Marijo Wallworke','AdminBeasiswa'),('mwoodesdo','mwoodesdo@lulu.com','$2a$04$XvGFUn6fKIx0R23D82jcU.AFq19YgwzBXHf.YrYj4EWTvPmMCqtIm','Mabelle Woodes','AdminBeasiswa'),('myuill4d','myuill4d@cocolog-nifty.com','$2a$04$TCIZ.MPiF2rsDgfROyHMJ.b3rAzS15yGXGLy4M6kmVAFpN1Ov8/DW','Mara Yuill','Mahasiswa'),('nandrysiak1k','nandrysiak1k@deliciousdays.com','$2a$04$Y9Kb43UIXLNFwLkF7N0MJOJ6pvoRhjHqZ4f1k7i42lzeEDW8JcWni','Norry Andrysiak','AdminUniversitas'),('nberneydn','nberneydn@51.la','$2a$04$smKof9f5xoFFm/N.V68KZOpzmz6OPUtDJZJGy2o0Qa8nQatdDqvMG','Nancee Berney','AdminBeasiswa'),('nbinnsa3','nbinnsa3@nbcnews.com','$2a$04$4EjfXJE5XfJyZ0//K5dPIutte6ZWv75Is1msiY4TeX7NCROeh3Imi','Nicol Binns','AdminUniversitas'),('nbousteadu','nbousteadu@deliciousdays.com','$2a$04$8uKy4LpO8bg8EXh.v41fR.H3n7zObopQkUhRw8.w.K1UnzxFslw0S','Neda Boustead','Mahasiswa'),('nbrailey7v','nbrailey7v@youtube.com','$2a$04$dVvGOnAzF4s1TV0BQiJ/7.VcvEcpxq4WJz.C5nCJrWjyud8oYaEhy','Nadine Brailey','AdminBeasiswa'),('nchallicomben','nchallicomben@un.org','$2a$04$.4vxuvi25aQQ3AzMJrg8GO2.3rGkE1QnssUlCyogzL5noRLxyh50e','Nedda Challicombe','AdminBeasiswa'),('ndable7e','ndable7e@tmall.com','$2a$04$YnzcmoYrWa5RAsWIq79WJeTmmecLP9ntNRP.BZKtwXCHrHVd6ZTOO','Noby Dable','AdminBeasiswa'),('ndawdry9g','ndawdry9g@jugem.jp','$2a$04$18lI8SuCeQajz.7wQ5H5CuzAR0k2GiI4rDMAuwkrqsQZrltp.E9XW','Nessy Dawdry','PakarBahasa'),('nelgiedc','nelgiedc@wikipedia.org','$2a$04$UFgntT5PTr3rYp4y/egnVOPiVplGYENNzFgMjCHjJ0zNLUwxx.Ibe','Nevil Elgie','PakarBahasa'),('nfall8l','nfall8l@cafepress.com','$2a$04$GbL1cT3OT861u58ud25/re48Jdj2fTN17oUP29cDnIoQ7GLHth7Z6','Northrop Fall','Mahasiswa'),('nfranses2x','nfranses2x@boston.com','$2a$04$mIaBPSLZRnxYWHrrzkgzcORYFegp/PRazkC8bVWgc4jJ08vfO7MXS','Nichols Franses','PakarBahasa'),('nfreda58','nfreda58@wiley.com','$2a$04$dYUuR9RNxzLq5aZok3oQwemZmAAaY0CqPsGREM70UzLaF7stp0QsS','Nat Freda','PakarBahasa'),('ngaskarth1i','ngaskarth1i@cnet.com','$2a$04$nDxkda0AgbLR9BFmtRfycehc.03xGRm76MY.QcAPtb4VOKv3cPQIe','Nell Gaskarth','AdminBeasiswa'),('ngergoletao','ngergoletao@cloudflare.com','$2a$04$6vKMk.Hzx79Nh8uzvgvWr.9IoTit/EKcVvxmTHW2FRq1UlroWkq6u','Nanine Gergolet','AdminBeasiswa'),('nhamel1y','nhamel1y@yandex.ru','$2a$04$shtfOzcYohhtxOfTAa0DLePV2g4NYUmM2T1.VCROPlia9/wGEVpQq','Nicholas Hamel','PakarBahasa'),('niliffe8h','niliffe8h@is.gd','$2a$04$g0aafZquE0.ovCkulBP6Buy10Kdb2.7yqSeci1OTQ7m2ZdwTC/S0.','Norri Iliffe','AdminBeasiswa'),('nkirvell2o','nkirvell2o@timesonline.co.uk','$2a$04$6xhR/H7F06ohxNW09aOaFOSBb8Bek3DNueS94uB3RsuCPspSV7pEC','Nikolai Kirvell','AdminBeasiswa'),('nkobpalc','nkobpalc@phpbb.com','$2a$04$aGBIwlsyX3RdbmAwiijznepx0M7coP.opx.25q51Bh7ud8FPumW.W','Nefen Kobpal','AdminBeasiswa'),('nmartillcl','nmartillcl@discovery.com','$2a$04$C/SJI7lBkDJrLChzBBCmy.VtRkwHPl/HtrNPacNUXvbRRmghUf8YK','Nollie Martill','Mahasiswa'),('nmateikocb','nmateikocb@imgur.com','$2a$04$okwHPexU5.YNA3mkZsgx2OHxqJ/ME8tDdITf/74eCdEU9nkqIEj.S','Nils Mateiko','AdminBeasiswa'),('nmcquirk4l','nmcquirk4l@baidu.com','$2a$04$EpzepU0J2me93CLqtyAnEuCIba/1pnfHguyoHzL080npjt4ruvmpm','Niki McQuirk','PakarBahasa'),('nphilpin1e','nphilpin1e@meetup.com','$2a$04$iUpqi5bPiITjrR/YyiQX0.wCyXaBSzr8xyL1Sh78jk7mlthwk4sw6','Norton Philpin','Mahasiswa'),('nredmore9y','nredmore9y@mail.ru','$2a$04$Gqam3XOEEPhQLQcMhDeWGul9dF8cvyVORmcO5t8I5J4u3vdN5uk4e','Normy Redmore','PakarBahasa'),('nredshaw96','nredshaw96@merriam-webster.com','$2a$04$MxlAsDZBaNwuLZ3z7TUpOu9B0cpOtLgCTyNurzG8bP6P/MgaNbUyq','Nelle Redshaw','Mahasiswa'),('nsheryne50','nsheryne50@imdb.com','$2a$04$Td7yn9y9TA3bkK7zR55p2en.GEQ3fwB0IrU4QPXH2KfuxSbd.bTwu','Nealon Sheryne','PakarBahasa'),('nshieber9t','nshieber9t@prlog.org','$2a$04$ZHnzZotXcDahfCDtJ4XYs.wxd37MtTp4RfBCbrJ0zyHfUEBl2u0pu','Nadine Shieber','Mahasiswa'),('ntomankowskic5','ntomankowskic5@google.cn','$2a$04$Mtx68tYxvIusgKTnEEU5EOQ/LPqr8CMjMQDAJBRgi8eIXE5QkYOHq','Nikkie Tomankowski','PakarBahasa'),('oamericicx','oamericicx@microsoft.com','$2a$04$TaQqRk1Ei.1ExoqPg1EjCe8RNZk/FPE9gZxNARxaKQHUSvffhwAAa','Osborne Americi','Mahasiswa'),('oazemar2p','oazemar2p@usatoday.com','$2a$04$GiL...9XE0CChSlOT2HU4uuPD5./RzI/HaIyjRV0UsfUHquwotGxu','Olivette Azemar','Mahasiswa'),('obrouai','obrouai@macromedia.com','$2a$04$h6rzkXtgBaRDV6.mtr7c9OSwjLApeQ.dNPFcLy5PSnqzWb54zHvvi','Ossie Brou','AdminUniversitas'),('odeetlefs6s','odeetlefs6s@over-blog.com','$2a$04$/CmoImPMf.cz2./hnOyDDumb6kYZhcu7QZuBnf/Mmd2z2yRXg48re','Odilia Deetlefs','Mahasiswa'),('onewingc2','onewingc2@chronoengine.com','$2a$04$kQhdmQUomdIF0778ZWBKGujwVbghzB5gFi2rufsIXjoBezbkPNsTu','Osborne Newing','AdminBeasiswa'),('oswindall20','oswindall20@networksolutions.com','$2a$04$CX5CXsYSdwjAsz7Qdf9LPu/nu.jt4Srb/8/JnwFKNecHhZxe0e00.','Odelia Swindall','Mahasiswa'),('owittleton7o','owittleton7o@mail.ru','$2a$04$b7nx0NDMt7wn2IiU8ui4m.yT7KNHP2EStrU2XStBoxNRd8Lm.q1Ui','Oralee Wittleton','AdminBeasiswa'),('pbyatt17','pbyatt17@bloomberg.com','$2a$04$dPgySKLeZmCDte0kA3LRfut9rEmuK49JqlSG9bgZPeu.6ZdXrO3RK','Phil Byatt','Mahasiswa'),('pcremen6w','pcremen6w@ucla.edu','$2a$04$7e9OXjymwRhZzScWT.3v4uIUdj40HfwqIZgMaK3arhgxhhO7cBP7i','Papageno Cremen','Mahasiswa'),('pdarling2a','pdarling2a@livejournal.com','$2a$04$71Z6XkmYh.KXCVtS2Ggc8.VwnVNpNXPstkgVdPtmprLQOEiuns9rG','Petra Darling','Mahasiswa'),('pdolman5x','pdolman5x@techcrunch.com','$2a$04$ZUe8QyOE3D/pIntgnYuKQeOqkPNw37PL6dphdQhYXvNTUOtVk1RLi','Phylis Dolman','AdminUniversitas'),('phaines6k','phaines6k@tripod.com','$2a$04$smFi2nudEKEXmJrmO0E1bOlcgaasRC5nzYwSdKm1JMiQu0BMJpAwC','Pryce Haines','AdminUniversitas'),('phargey68','phargey68@spiegel.de','$2a$04$xxNGp2LrGuJRwIDvQTAupO8QCn4YW5J4uxMLAnsAL2aQksB.9divK','Peyter Hargey','Mahasiswa'),('pkilgannon3t','pkilgannon3t@deliciousdays.com','$2a$04$Fy8oL7A2gqBqr5IYSH7.l.m65v2fhR9fC/9wTZ/pr2IFjY52337ni','Pierrette Kilgannon','AdminBeasiswa'),('pmerida9p','pmerida9p@dot.gov','$2a$04$m.OWgbGqsQzMAK/j9t4/tOj3cymHA1z9f6kqHmOKUtulAk7vWzhwO','Peter Merida','Mahasiswa'),('porta36','porta36@indiegogo.com','$2a$04$we3TbEUp/WEHhZNrTpNS0eJloKSG8S5asWcom7b8tZl9CnNhTcjKe','Penni Orta','Mahasiswa'),('pzapater5f','pzapater5f@pen.io','$2a$04$kcTurBxJQ3JVG9ajVydmAe6fRX2y6iIhxZ7.8VgFVvdsxPnN98km6','Peadar Zapater','AdminUniversitas'),('rbizzey16','rbizzey16@squarespace.com','$2a$04$RjGxCL4.rxkxN9C/xZZj8eqF64GpBYzBTS2T7BDf/5D44Wwp7DEh2','Roley Bizzey','PakarBahasa'),('rbrandts3u','rbrandts3u@google.co.uk','$2a$04$jbuVr6TaTH2.hBPmJg1UoOu2egWdHpa1/ZKxo3pfyaKL.2AF5DPhq','Rodge Brandts','AdminUniversitas'),('rbunnellbn','rbunnellbn@usnews.com','$2a$04$CrLV/h5Z.ERtMepr1SE2beJPmREQdyBitH5VIDcDAJoJR7lNIm4xG','Robinet Bunnell','PakarBahasa'),('rburras2y','rburras2y@altervista.org','$2a$04$4zKVO72TFs90DVCQlxTHkegZXLUhIpLkWiGJlIZUzpJHyfpysz5R.','Reinhard Burras','AdminUniversitas'),('rcaencm','rcaencm@si.edu','$2a$04$IsjOIDcElIDYPb1yW0vgAuaj0SeSnFK6ui2hfRV3k/yoozgcdaZKy','Ranna Caen','PakarBahasa'),('rcatherallcq','rcatherallcq@hud.gov','$2a$04$TEq/sU3IwRRiWVoP1zUcROWzHXCnUgdFuE5T71QhwtnapHrJK6x9S','Royce Catherall','PakarBahasa'),('rdenkel9m','rdenkel9m@blogspot.com','$2a$04$LDXVOp0uIHNsuwa1w/7VguCfUG3l/cOt7rziUVF/9g3F2CHy2WCa.','Robbi Denkel','Mahasiswa'),('rdupree55','rdupree55@taobao.com','$2a$04$xuP89MFTh8AEsXS/2vIUbuONF0axupGRDWCo3SJIjQGIV7xnU2eqq','Rafaello Dupree','PakarBahasa'),('relsley3b','relsley3b@vkontakte.ru','$2a$04$8CqwGTFkb2yxJ02/meU07uALQhb4EbLJBFrHrTxHmJwQU2kcJMpCK','Rosanna Elsley','AdminUniversitas'),('rezzlec7','rezzlec7@google.ru','$2a$04$Hr2SLidY4TcXleiawGTfM.PK2DE1rhB3Vmv4y.ENdPf.2Ua1gCzXa','Roberta Ezzle','AdminBeasiswa'),('rfahydu','rfahydu@infoseek.co.jp','$2a$04$DvvdyDWMs95TTUskD7Yf5eeXiZUX/wQvstrOa69JAANBc6FmuVlC.','Randi Fahy','AdminUniversitas'),('rfilisovbo','rfilisovbo@miibeian.gov.cn','$2a$04$Top8dVG1NVzUnCDf9aYMC.WvejSuIPWiTufcXFw1tnyeqcVUBc0bS','Roxane Filisov','Mahasiswa'),('rfreshwater21','rfreshwater21@rediff.com','$2a$04$QHGVZWsGm9DC31UXw3RQoeroLnyFXrZ/zY6K604PBdLmCzKLhylsS','Rivi Freshwater','PakarBahasa'),('rgave9x','rgave9x@ning.com','$2a$04$8QC0cP0dNd.CGjpd9/FCCOSspt8ysDcY8r8M.lIUk4MYeHix4zjD6','Richmond Gave','PakarBahasa'),('rgrain48','rgrain48@utexas.edu','$2a$04$DER51IMCYYzu9I4AZ9Dt/eRLdltVAgHEDtOAOsDsfUq082sROIVIK','Raffaello Grain','PakarBahasa'),('rharbarda9','rharbarda9@cornell.edu','$2a$04$3H900O9dsdTOADSNRUiSU.igQbdtFQidPCJUAVM2ALK/gSKLq.zXO','Rory Harbard','PakarBahasa'),('rharesign7c','rharesign7c@canalblog.com','$2a$04$/bzkJB/s/l4rvttIQQu/H.OG1fW2oFAOGF7BMgM87StBI0NfeGrsW','Rene Haresign','AdminBeasiswa'),('rhobbled6','rhobbled6@usda.gov','$2a$04$CzBeM2lQFD7vNqB7zCB39OuzEAthb51Gq49f8SbSvxt0RQ3pwv48u','Rosette Hobble','Mahasiswa'),('rlevensa4','rlevensa4@homestead.com','$2a$04$2.mxEg.hLYqOr50Y1uWfGO8qdPSw81IZ6/acWb6HovvPu.YVGwUHK','Randi Levens','PakarBahasa'),('rlicciardib','rlicciardib@google.de','$2a$04$LOidcgx5XOmTYwjEAMHmzedHVTW8oWSxXGiRH5j7HDENXqU8QBczC','Ray Licciardi','AdminUniversitas'),('rneligan2r','rneligan2r@admin.ch','$2a$04$rGXeKCL5AQXv.1BOxakKC.F3qaFp2rOCgHCOnISaswwTTm6WQVHgq','Rodina Neligan','AdminBeasiswa'),('rpostgate5r','rpostgate5r@usgs.gov','$2a$04$gDpZw.z8PNs0Xl4gCOSw5O.NrNZpKJJQTKqW2mB4UHjmqgMJA2CxK','Regan Postgate','AdminUniversitas'),('rsawyers67','rsawyers67@webmd.com','$2a$04$R1OayyCbiP2GIAyTJqFsuum6zvYCI2T2viRUr0neCu4h.M3lFcMPC','Richmond Sawyers','AdminBeasiswa'),('rsinnocke57','rsinnocke57@sciencedaily.com','$2a$04$8M5vcl.EY/Pbs5Byf0jVeexs0IHuWbb6aUCHXqdfRj8pqV8HtYhGO','Regina Sinnocke','PakarBahasa'),('rwythedd','rwythedd@mozilla.org','$2a$04$ElcYJ8GnlmoNMNbMcg9/NOj1i9qdvOTpSCtzg6NqNZMPL3JGEoloi','Raimondo Wythe','AdminBeasiswa'),('rwyvill8e','rwyvill8e@paypal.com','$2a$04$nNJ/TSwGlVWiPeG4c9d7ruE4c9Cp9tVai5kFhiG63n4nCqC8xH.me','Rhodie Wyvill','PakarBahasa'),('sbenneyworthal','sbenneyworthal@reverbnation.com','$2a$04$1IIk7bF4XXkl0lsu6GIaKuQ8X3Fl1zdNJPMmoP2V2VvK82KXOXiim','Saunderson Benneyworth','AdminBeasiswa'),('sbernardeau6n','sbernardeau6n@unc.edu','$2a$04$P.g.toD8QwwLn8AUWWVgreBR.ow1ES9mOH.W8wf.yAiiB0hEnDp3K','Shoshana Bernardeau','PakarBahasa'),('scammell9b','scammell9b@imageshack.us','$2a$04$rOW8UIde03d2OEjdbDnCiuAA4GUHYUXWiW6phmC/gkrFIMuxmAG46','Steven Cammell','AdminBeasiswa'),('scollard61','scollard61@sina.com.cn','$2a$04$770dy96SjhAqd4nqs4f3h.tHEXlD/l29MOemiGMlPszIWeDE9OVm.','Shannan Collard','AdminBeasiswa'),('sdalliganct','sdalliganct@facebook.com','$2a$04$HVAhHy3g41MIGIaOM4afR.4r5QFUJHMwDQXfx8qqt/z0Oo37TA/GK','Sandy Dalligan','PakarBahasa'),('sdeetlefs5j','sdeetlefs5j@ucla.edu','$2a$04$WyUrGXbfcCn/iRe7itq8EOtNYnY50HGkTnCMelIQKVHUPOCa.lG7u','Saw Deetlefs','AdminUniversitas'),('serswell6i','serswell6i@tumblr.com','$2a$04$gE70ecGDOjS4wdmXcBVOjOvzd0SOQL8qT5z2SaK1fkUd7OnxCnkN.','Spence Erswell','AdminUniversitas'),('sfairbourncc','sfairbourncc@sciencedirect.com','$2a$04$3phQPk8IFAxNqWQnrorp0O25j1c0JEz.V6VQpSeofunGfPE6jNyNu','Skipton Fairbourn','Mahasiswa'),('sivanaev2z','sivanaev2z@drupal.org','$2a$04$1OVWYWBEtBnp1n61zRHP3OPEH5r./zkZxLzgI3Xf87UPGSv6.O8..','Stephan Ivanaev','AdminBeasiswa'),('slagen6c','slagen6c@springer.com','$2a$04$d.ogql5LBo2f1xbxbR0U8.LmDV1FCUz.hiJhhHgAzz6/HCnQPX3mu','Shaylyn Lagen','Mahasiswa'),('smaseyk8x','smaseyk8x@dailymotion.com','$2a$04$uoK.qe8Yl4IB289nwRw28uP7mniejaAdEPdFaQN3sqbxeS4kE8UGe','Sayre Maseyk','PakarBahasa'),('smatasov93','smatasov93@nbcnews.com','$2a$04$r4wp6DKXvV2G1p/uUFzk7.xTy79lh1xsfszkKD9Kn2b8eYzUEStKq','Salvatore Matasov','Mahasiswa'),('sredmore7i','sredmore7i@biblegateway.com','$2a$04$QGp4NlRMPXFGi0XamUhGAeuIukxE3aBIt30mZ/gKEKXQxvvS0Xbri','Stacy Redmore','AdminBeasiswa'),('sruddell8f','sruddell8f@umich.edu','$2a$04$M76.EoKPKx84ZbhhOvt0n.fR4QODpRk5j2S5MFWgSPOO6tgRh3VxK','Sayre Ruddell','AdminBeasiswa'),('sshreve5z','sshreve5z@examiner.com','$2a$04$KUk7fqQ0yEUSGlmu1n5zEOXp2TOmfxWYh392g8hZoDaNTeDOwuAvG','Sher Shreve','AdminUniversitas'),('sstallionbp','sstallionbp@163.com','$2a$04$RjgBANvi8wIUjmTuILm9s.qtEhvuvqNT4JjunJSvqsN3MeJnLZmMS','Shay Stallion','Mahasiswa'),('sstienhamp','sstienhamp@xing.com','$2a$04$1sQxMnxJn.76MQX.d1d6o.GOmR41MsX2Fpu.jA7NNh5GCKdIJbxqW','Sigfried Stienham','AdminUniversitas'),('stroket','stroket@dot.gov','$2a$04$srsNESOMSQcECDe2TaNAAuMH37Tr.XyJEjItTxYhKkoaAMfGCV87i','Stanton Troke','AdminUniversitas'),('swardhough3x','swardhough3x@w3.org','$2a$04$UWydA9a0n4AQB8LxeK4dxO4IRiWMq56lCX4ggKhVzGMN5TSZ63Kp.','Starlin Wardhough','PakarBahasa'),('tblonden1u','tblonden1u@china.com.cn','$2a$04$NDxyHyZWt4nFBH57JQp29OwMGeIeP6bz3dcMqS3Ogee6F3hURQ9eO','Teriann Blonden','Mahasiswa'),('tbrammall80','tbrammall80@baidu.com','$2a$04$WqXPiNfHBElFYGZ6cXfi9OAKmS9.cF6VqQRQZy6Jkt8ozNsHjb9sW','Tonye Brammall','Mahasiswa'),('tcotteyci','tcotteyci@youku.com','$2a$04$0qaN66YUosxLFwwh4lzAXut88UjrMabYJHO9UNAi/rKghHtb77TOS','Terrill Cottey','AdminUniversitas'),('tdoggettde','tdoggettde@photobucket.com','$2a$04$NDVKs0cw6dr4UG8Ybyz3FuHqCqCrd2YzdQ4coUZ8Go6Yh6f1nz4aa','Tersina Doggett','Mahasiswa'),('tfitzsymons1','tfitzsymons1@google.com.hk','$2a$04$6OxR9mQp4q5od2II7OwrLu2DweP6EwbZBvHtSH6keYmd2bSUTMrQS','Thorny Fitzsymons','AdminUniversitas'),('thagerty7x','thagerty7x@cloudflare.com','$2a$04$jPalrFg7ib5LYQM1ux1PkOQ51WTZoDJd3sxOGSm6taZE9vavz5js2','Torrance Hagerty','PakarBahasa'),('tharriganbc','tharriganbc@dion.ne.jp','$2a$04$KhClVUq6x.pezoRznVgRBOY9ERRJPVhdaup315Hath8e1RlTwwPpK','Trix Harrigan','AdminUniversitas'),('thookes8q','thookes8q@rediff.com','$2a$04$2OtEziBWZWeZFsAWTCxT5O927DQStFDqhg529f6BiL8X5zlWkclIK','Tuckie Hookes','Mahasiswa'),('tiamittii2e','tiamittii2e@usnews.com','$2a$04$Suiwi05LECzFG7tWVZA.w.spUTwTrsFjez.DTQnSu7Kw281KNA3Xe','Troy Iamittii','AdminUniversitas'),('tinskobk','tinskobk@canalblog.com','$2a$04$Ka94Hg.DBpXGl/9q3ib8NuXG8xSBJPSvlKTP1wKC1haP9GNngeuT2','Talyah Insko','Mahasiswa'),('tkauschke9l','tkauschke9l@cdc.gov','$2a$04$6o4dUdAj1jkUS.j.teAHp.vB87/xNy9hzDd1StYn2ozsTvTFiyI6G','Timmy Kauschke','AdminUniversitas'),('tleschelle6f','tleschelle6f@virginia.edu','$2a$04$d78nB283p2UatUJYMtVK4eq.reyrLcgJeBtDcfAhrJ3FL8GcCplv.','Tansy Leschelle','PakarBahasa'),('tmadrell7w','tmadrell7w@mac.com','$2a$04$ZAKU/7l7haqdGsfMBfnMxuP9dPkv7oQZBUN5SZ3Kq0qFsB6lOYth.','Tommy Madrell','Mahasiswa'),('tnursey25','tnursey25@microsoft.com','$2a$04$nxdVUiCyE4dRl/5n/egdtOTdsVB8p6h6ymljzCnxlTOiKWoND4MKK','Thorin Nursey','PakarBahasa'),('tpett6p','tpett6p@xrea.com','$2a$04$ay8UStgD7/OksQ49H8QDPOe3W4SKugH4PEA01LKHe8K3yvSwb8Q7O','Thorstein Pett','AdminUniversitas'),('tpickaver1r','tpickaver1r@biblegateway.com','$2a$04$q.elHAcrJa1cO/ee55sp5OEENiXW8gPsJvTyJBwsiHZPoJkJokZGK','Tami Pickaver','AdminUniversitas'),('travenhills56','travenhills56@java.com','$2a$04$00HbBE01/Z.qx50.TtQgj.1AKywLDyO/JYhi5Og.qp0AYu6svIHgq','Tessie Ravenhills','AdminBeasiswa'),('tscoonay','tscoonay@ameblo.jp','$2a$04$WnIYaC7M.LGNAUcCxHMLju6iaxWO5P36Hzp58eMXUqqfAYX.uBrXu','Thain Scoon','AdminUniversitas'),('tsmail8','tsmail8@ovh.net','$2a$04$VU2rliW/EuD4CqcTpVzPOOVgjWvq1FN4.sHN8pSSWZJhMcybpVwmG','Teresita Smail','AdminBeasiswa'),('ttitford2n','ttitford2n@lulu.com','$2a$04$UbrokPlRPuE6GoWcRKgUOuEtGcun0YCiEcWvrpBw250uKqP.EsvUa','Toinette Titford','AdminBeasiswa'),('twalas94','twalas94@biblegateway.com','$2a$04$Gfol4NGXoPpV6qsbg7lV/Otj7rxe94ns.rW0mVUNEs.6zwAxaFCQa','Tamra Walas','PakarBahasa'),('twoffindenz','twoffindenz@oakley.com','$2a$04$pD1dgWtMbrs0v8OIcxCtO.8w6duey5L7SNvu5rLb70QosK1b2bSgW','Toinette Woffinden','AdminUniversitas'),('username','email','password','fullname','Mahasiswa'),('ushrigley6o','ushrigley6o@va.gov','$2a$04$C0K7H9G6J82SMCEy6jKVQ./glyYMchk1jaaUhQrgwDDo8l.1zWOHe','Ursulina Shrigley','AdminBeasiswa'),('vcasero8p','vcasero8p@bloglines.com','$2a$04$9H9XD99byugF7c7hedW.F.MxIFHStacqf7oTDA0GwiL2S5wzXdaeW','Vladamir Casero','PakarBahasa'),('vdaouze7s','vdaouze7s@soundcloud.com','$2a$04$5xEkWOTNIFviAsTaEkgi6.VUQqNvieXM7TSIykdvf78hJRI/DkA.e','Verene Daouze','Mahasiswa'),('vfancuttaq','vfancuttaq@mit.edu','$2a$04$W0Yn6NxjhndUJmr3hImdUu.1H5rNrjXZefblLH/KCaCmziYV9thfy','Valentin Fancutt','AdminBeasiswa'),('vgrimmert27','vgrimmert27@auda.org.au','$2a$04$LB2SC2utzhT2U/CRiMiNsOQ0tCoGvam6pl2Jcq0zi/.UZrr47GGQ6','Vincents Grimmert','Mahasiswa'),('vgummedb','vgummedb@devhub.com','$2a$04$7DhltwVJaoHPfhd1/V4f.e/mRLTIK1KLtqyeAVnJh0ni3ozJBt3Ze','Vita Gumme','Mahasiswa'),('vodney6e','vodney6e@squarespace.com','$2a$04$BYJ6weuYj0UX07cnuxsP9OLbIHVJvLRQvpkE/CBQviG1ViUcSDLTC','Vivian Odney','AdminBeasiswa'),('wadamiec31','wadamiec31@histats.com','$2a$04$rPMirQ9eKbdAK7S4rMBwpecZuMDR7tp3grPadw0k6S3rLRuSo5.xm','Wang Adamiec','Mahasiswa'),('wansteel','wansteel@ehow.com','$2a$04$bICmXsotc7xfE0QBKMRR5eS55BUl2jR0cQ18iNKLzbzEMfRHrdPJW','Willdon Anstee','AdminBeasiswa'),('wbake4n','wbake4n@ycombinator.com','$2a$04$.QadopcEXlFt1Ef9Puk5G.ATlyYvlZROXeu087p98E.kmR8gKLl7S','Wilfred Bake','PakarBahasa'),('wcarletond3','wcarletond3@github.com','$2a$04$oK3aKGpLj3Gis2RcZuqvHO.min6toMH2L/Tnihr8XrODMkEed91r.','Wolfy Carleton','AdminBeasiswa'),('wdangerfield2h','wdangerfield2h@altervista.org','$2a$04$eaT24BeeKiclJJg8FRk/4OJw2e1MTpXft7gWB6QAwCvOv/fsM7vTO','Waring Dangerfield','AdminUniversitas'),('wdundendale2d','wdundendale2d@baidu.com','$2a$04$vvcmmqLVfU4bGXp8NQZNoe7RjM.tBgNTPtIqIdl0IyUqHB1iVLxA.','Wadsworth Dundendale','AdminBeasiswa'),('whackey3h','whackey3h@slideshare.net','$2a$04$LuLQTzerxcXCce5cc4TMDOa0TICPtIVWYt8TUkMn6s08RdP1/FKmu','Wakefield Hackey','AdminBeasiswa'),('wkirvin73','wkirvin73@google.com.br','$2a$04$GwiGKA/aCB3TkO5jnfbbqOQqUq5F4FYBNpgoOK3TrAWq/HMxLu6JW','Weylin Kirvin','AdminBeasiswa'),('wmacailine4k','wmacailine4k@senate.gov','$2a$04$7763LCni3tnidvaab4mo6.AcB4p98w9S1ckc2zBEFtB1tcKVdD2iS','Wolfy MacAiline','PakarBahasa'),('wromero78','wromero78@chicagotribune.com','$2a$04$130MK2dbsX2vugeB16wspuHFPU7DkhV0AnNBhNvoTj8GOZ8vsYzpG','Willamina Romero','AdminBeasiswa'),('wrosenqvist3o','wrosenqvist3o@surveymonkey.com','$2a$04$1thY2PMPgUUSjo6Z6PkNcOB.seAScWdBC9n8c0GmuMWpccKOgTPWi','Wilie Rosenqvist','AdminUniversitas'),('wspeir97','wspeir97@eepurl.com','$2a$04$szrU7vTjUYGrgX6N4aPVGuLpCRki6mwFw0de4qJP8b9OIetFLoIMG','Wendi Speir','PakarBahasa'),('wtrammel9','wtrammel9@cisco.com','$2a$04$qrNPy6wp7vb75ZJreWA25uwG06jvWtrHSId6Rfsnvnfk5MYpb1F3W','Willey Trammel','PakarBahasa'),('wwinchcombev','wwinchcombev@uiuc.edu','$2a$04$EFDp1dMPfR2nXuUenoxQwuZ/Sffu3.SZaakMSw6o51BE83NM.u4Ly','Wake Winchcombe','Mahasiswa'),('xaldin6l','xaldin6l@dagondesign.com','$2a$04$mZA82NoujE26wf4heIC4S.4I6r9W.28I8Oacwgjc1HdRcWk4BMZm2','Ximenez Aldin','PakarBahasa'),('yca1a','yca1a@e-recht24.de','$2a$04$zpRm3asFxL2yh42acm8W8uN35GVQvkqBB8B/LfJatB/GZDfy69Xwq','Yuri Ca','AdminBeasiswa'),('yde4w','yde4w@macromedia.com','$2a$04$PKAMEiGVyQhNi1804DHxnuEEcxKyOB0/J3CqIlSF99KF069ssPn62','Yale De Courtney','AdminBeasiswa'),('yguerrybw','yguerrybw@unesco.org','$2a$04$F7Wl.w/gZ4bXWB1BbNtFD.LdmWytGgimm5TLph0sC/QssyRg6YBxm','Yorgo Guerry','AdminBeasiswa'),('ythredder9q','ythredder9q@wordpress.com','$2a$04$1HQl2xMooQmwGx0svYaDwufYET.PjVPSoW6b5G.kpvcHcdqpQmKjy','Yolanda Thredder','PakarBahasa'),('yzimmermannscu','yzimmermannscu@list-manage.com','$2a$04$4tPBT.tdfsKKMN/LF9WcreBKV6v8QG11H1o4VwCNOlYQ5udJLw9B.','Yulma Zimmermanns','PakarBahasa'),('zdavidsoncs','zdavidsoncs@t-online.de','$2a$04$5iQ7akoAY.OOebSbh1AYpe5KbX25v/JSv7//psf7JA0bEWBAGJuTG','Zorah Davidson','Mahasiswa'),('zdibbinaw','zdibbinaw@hhs.gov','$2a$04$a/muDU01qmLM/W0gO.qD5udw7lQ6pQn8LCBgy7eHGyHQ8yRR9jmdG','Zaneta Dibbin','AdminBeasiswa'),('zskeermer5e','zskeermer5e@yelp.com','$2a$04$9dDVZ32jZ0hI3THNlBRvvup0/QGXy.Jgob0rbMZByrKWXNxPCS7oW','Zak Skeermer','Mahasiswa');
/*!40000 ALTER TABLE `Akun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Beasiswa`
--

DROP TABLE IF EXISTS `Beasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Beasiswa` (
  `IDBeasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `IDPerusahaan` int(11) NOT NULL,
  `NamaBeasiswa` varchar(255) NOT NULL,
  `DeskripsiBeasiswa` text NOT NULL,
  `SyaratBeasiswa` text NOT NULL,
  `TanggalDeadlineBeasiswa` date NOT NULL,
  `URLWebsiteBeasiswa` varchar(255) DEFAULT NULL,
  `URLBannerBeasiswa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDBeasiswa`),
  KEY `IDPerusahaan` (`IDPerusahaan`),
  CONSTRAINT `Beasiswa_ibfk_1` FOREIGN KEY (`IDPerusahaan`) REFERENCES `Perusahaan` (`IDPerusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Beasiswa`
--

LOCK TABLES `Beasiswa` WRITE;
/*!40000 ALTER TABLE `Beasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Beasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dokumen`
--

DROP TABLE IF EXISTS `Dokumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dokumen` (
  `IDDokumen` int(11) NOT NULL AUTO_INCREMENT,
  `UsernameMahasiswa` varchar(255) NOT NULL,
  `NamaDokumen` varchar(255) NOT NULL,
  `TipeDokumen` varchar(255) NOT NULL,
  `URLDokumen` varchar(255) NOT NULL,
  `UsernamePakar` varchar(255) DEFAULT NULL,
  `KomentarReviuPakar` text DEFAULT NULL,
  PRIMARY KEY (`IDDokumen`),
  KEY `UsernameMahasiswa` (`UsernameMahasiswa`),
  KEY `UsernamePakar` (`UsernamePakar`),
  CONSTRAINT `Dokumen_ibfk_1` FOREIGN KEY (`UsernameMahasiswa`) REFERENCES `Mahasiswa` (`Username`),
  CONSTRAINT `Dokumen_ibfk_2` FOREIGN KEY (`UsernamePakar`) REFERENCES `PakarBahasa` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dokumen`
--

LOCK TABLES `Dokumen` WRITE;
/*!40000 ALTER TABLE `Dokumen` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dokumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DokumenTugas`
--

DROP TABLE IF EXISTS `DokumenTugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DokumenTugas` (
  `IDDokumen` int(11) NOT NULL,
  `IDTugas` int(11) NOT NULL,
  `IDPendaftaran` int(11) NOT NULL,
  PRIMARY KEY (`IDDokumen`,`IDTugas`),
  KEY `IDTugas` (`IDTugas`),
  KEY `IDPendaftaran` (`IDPendaftaran`),
  CONSTRAINT `DokumenTugas_ibfk_1` FOREIGN KEY (`IDDokumen`) REFERENCES `Dokumen` (`IDDokumen`),
  CONSTRAINT `DokumenTugas_ibfk_2` FOREIGN KEY (`IDTugas`) REFERENCES `Tugas` (`IDTugas`),
  CONSTRAINT `DokumenTugas_ibfk_3` FOREIGN KEY (`IDPendaftaran`) REFERENCES `Mendaftar` (`IDPendaftaran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DokumenTugas`
--

LOCK TABLES `DokumenTugas` WRITE;
/*!40000 ALTER TABLE `DokumenTugas` DISABLE KEYS */;
/*!40000 ALTER TABLE `DokumenTugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailPerusahaan`
--

DROP TABLE IF EXISTS `EmailPerusahaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmailPerusahaan` (
  `IDPerusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`IDPerusahaan`,`Email`),
  CONSTRAINT `EmailPerusahaan_ibfk_1` FOREIGN KEY (`IDPerusahaan`) REFERENCES `Perusahaan` (`IDPerusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailPerusahaan`
--

LOCK TABLES `EmailPerusahaan` WRITE;
/*!40000 ALTER TABLE `EmailPerusahaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmailPerusahaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailUniversitas`
--

DROP TABLE IF EXISTS `EmailUniversitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmailUniversitas` (
  `IDUniversitas` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`IDUniversitas`,`Email`),
  CONSTRAINT `EmailUniversitas_ibfk_1` FOREIGN KEY (`IDUniversitas`) REFERENCES `Universitas` (`IDUniversitas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailUniversitas`
--

LOCK TABLES `EmailUniversitas` WRITE;
/*!40000 ALTER TABLE `EmailUniversitas` DISABLE KEYS */;
INSERT INTO `EmailUniversitas` VALUES (1,'alumni_relations@harvard.edu'),(1,'contact@harvard.edu'),(1,'it_support@harvard.edu'),(2,'enquiries@caltech.edu'),(2,'event_management@caltech.edu'),(2,'research_support@caltech.edu'),(3,'facilities_management@mit.edu'),(3,'hello@mit.edu'),(3,'research_grants@mit.edu'),(4,'corporate_partnerships@stanford.edu'),(4,'diversity_and_inclusion@stanford.edu'),(4,'inquiries@stanford.edu'),(5,'grant_writing_support@princeton.edu'),(5,'hello@princeton.edu'),(5,'international_students@princeton.edu'),(6,'contact_us@cam.ac.uk'),(6,'library_services@cam.ac.uk'),(6,'procurement@cam.ac.uk'),(7,'hello@admin.ox.ac.uk'),(7,'postgraduate_admissions@ox.ac.uk'),(7,'public_relations@ox.ac.uk'),(8,'academic_advising@berkeley.edu'),(8,'contact@berkeley.edu'),(8,'sustainability_initiatives@berkeley.edu'),(9,'industry_collaborations@imperial.ac.uk'),(9,'inquiries@imperial.ac.uk'),(9,'student_engagement@imperial.ac.uk'),(10,'community_outreach@yale.edu'),(10,'hello@yale.edu'),(10,'research_ethics@yale.edu'),(11,'contact_us@ucla.edu'),(11,'event_planning@ucla.edu'),(11,'student_financial_services@ucla.edu'),(12,'hello@uchicago.edu'),(12,'postdoc_support@uchicago.edu'),(12,'wellness_programs@uchicago.edu'),(13,'community_engagement@jhu.edu'),(13,'contact@jhu.edu'),(13,'lab_safety@jhu.edu'),(14,'campus_security@cornell.edu'),(14,'hello@cornell.edu'),(14,'international_relations@cornell.edu'),(15,'contact@ethz.ch'),(15,'grant_management@ethz.ch'),(15,'innovation_center@ethz.ch'),(16,'career_services@umich.edu'),(16,'hello@umich.edu'),(16,'student_wellness@umich.edu'),(17,'contact@utoronto.ca'),(17,'international_exchange@utoronto.ca'),(17,'research_compliance@utoronto.ca'),(18,'communications_office@columbia.edu'),(18,'ethics_committee@columbia.edu'),(18,'hello@columbia.edu'),(19,'contact@upenn.edu'),(19,'data_analytics@upenn.edu'),(19,'student_affairs@upenn.edu'),(20,'hello@cmu.edu'),(20,'housing_services@cmu.edu'),(20,'innovation_partnerships@cmu.edu'),(21,'academic_advising@hku.hk'),(21,'contact@hku.hk'),(21,'startup_incubator@hku.hk'),(22,'hello@ucl.ac.uk'),(22,'research_ethics@ucl.ac.uk'),(22,'student_support@ucl.ac.uk'),(23,'contact@uw.edu'),(23,'international_admissions@uw.edu'),(23,'technology_transfer@uw.edu'),(24,'diversity_initiatives@duke.edu'),(24,'hello@duke.edu'),(24,'postgraduate_funding@duke.edu'),(25,'alumni_relations@itb.ac.id'),(25,'contact@itb.ac.id'),(25,'industry_partnerships@itb.ac.id');
/*!40000 ALTER TABLE `EmailUniversitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mahasiswa`
--

DROP TABLE IF EXISTS `Mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mahasiswa` (
  `Username` varchar(255) NOT NULL,
  `IDUniversitas` int(11) DEFAULT NULL,
  `TahunMasuk` int(11) NOT NULL,
  `Jurusan` varchar(255) NOT NULL,
  PRIMARY KEY (`Username`),
  KEY `IDUniversitas` (`IDUniversitas`),
  CONSTRAINT `Mahasiswa_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `Akun` (`Username`),
  CONSTRAINT `Mahasiswa_ibfk_2` FOREIGN KEY (`IDUniversitas`) REFERENCES `Universitas` (`IDUniversitas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mahasiswa`
--

LOCK TABLES `Mahasiswa` WRITE;
/*!40000 ALTER TABLE `Mahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mendaftar`
--

DROP TABLE IF EXISTS `Mendaftar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mendaftar` (
  `IDPendaftaran` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `IDBeasiswa` int(11) NOT NULL,
  `StatusPendaftaran` varchar(255) NOT NULL,
  `TanggalPendaftaran` date NOT NULL,
  PRIMARY KEY (`IDPendaftaran`,`Username`,`IDBeasiswa`),
  KEY `Username` (`Username`),
  KEY `IDBeasiswa` (`IDBeasiswa`),
  CONSTRAINT `Mendaftar_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `Mahasiswa` (`Username`),
  CONSTRAINT `Mendaftar_ibfk_2` FOREIGN KEY (`IDBeasiswa`) REFERENCES `Beasiswa` (`IDBeasiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mendaftar`
--

LOCK TABLES `Mendaftar` WRITE;
/*!40000 ALTER TABLE `Mendaftar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mendaftar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NomorTeleponPerusahaan`
--

DROP TABLE IF EXISTS `NomorTeleponPerusahaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NomorTeleponPerusahaan` (
  `IDPerusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `NomorTelepon` varchar(255) NOT NULL,
  PRIMARY KEY (`IDPerusahaan`,`NomorTelepon`),
  CONSTRAINT `NomorTeleponPerusahaan_ibfk_1` FOREIGN KEY (`IDPerusahaan`) REFERENCES `Perusahaan` (`IDPerusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NomorTeleponPerusahaan`
--

LOCK TABLES `NomorTeleponPerusahaan` WRITE;
/*!40000 ALTER TABLE `NomorTeleponPerusahaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `NomorTeleponPerusahaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NomorTeleponUniversitas`
--

DROP TABLE IF EXISTS `NomorTeleponUniversitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NomorTeleponUniversitas` (
  `IDUniversitas` int(11) NOT NULL AUTO_INCREMENT,
  `NomorTelepon` varchar(255) NOT NULL,
  PRIMARY KEY (`IDUniversitas`,`NomorTelepon`),
  CONSTRAINT `NomorTeleponUniversitas_ibfk_1` FOREIGN KEY (`IDUniversitas`) REFERENCES `Universitas` (`IDUniversitas`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NomorTeleponUniversitas`
--

LOCK TABLES `NomorTeleponUniversitas` WRITE;
/*!40000 ALTER TABLE `NomorTeleponUniversitas` DISABLE KEYS */;
INSERT INTO `NomorTeleponUniversitas` VALUES (1,'303-243-2849'),(1,'559-432-3753'),(1,'584-528-2012'),(1,'639-641-0141'),(1,'773-408-7859'),(1,'991-448-5382'),(2,'528-469-9144'),(2,'611-765-6943'),(2,'709-431-1607'),(3,'169-170-9951'),(3,'286-668-3291'),(3,'493-472-3505'),(3,'521-353-1382'),(3,'613-989-5652'),(4,'609-104-7693'),(4,'708-831-6766'),(4,'754-241-7122'),(5,'128-667-1743'),(5,'310-544-0178'),(5,'342-714-3882'),(5,'446-561-0787'),(5,'694-560-1039'),(6,'211-605-8479'),(6,'478-704-7026'),(6,'566-685-4706'),(6,'597-388-3250'),(7,'117-231-7861'),(7,'153-935-9005'),(7,'318-136-1181'),(7,'326-776-7570'),(7,'538-277-6784'),(7,'794-319-7928'),(7,'836-613-4940'),(8,'401-901-5371'),(8,'557-684-0465'),(8,'562-794-0186'),(8,'777-405-0773'),(8,'961-197-4977'),(9,'102-524-6050'),(9,'469-855-0240'),(9,'551-658-7918'),(9,'855-465-3068'),(10,'685-739-8275'),(10,'727-692-5039'),(10,'834-293-1626'),(11,'425-515-1582'),(11,'461-169-8788'),(11,'495-830-8808'),(12,'114-907-2541'),(12,'217-550-5461'),(12,'293-111-7831'),(12,'359-450-1504'),(12,'567-848-1669'),(13,'425-433-7586'),(13,'770-171-7178'),(14,'134-491-7733'),(14,'392-619-5373'),(14,'392-946-8418'),(14,'516-575-0123'),(14,'532-306-8347'),(14,'790-959-3790'),(15,'106-180-7915'),(15,'202-795-7402'),(15,'331-686-8048'),(15,'834-388-5008'),(16,'165-723-8349'),(17,'171-926-1961'),(17,'234-327-9995'),(17,'297-773-0876'),(17,'408-495-7714'),(17,'488-249-8934'),(17,'922-687-5314'),(18,'635-851-4286'),(18,'851-534-9868'),(19,'554-180-4959'),(19,'678-371-8161'),(19,'783-430-3907'),(19,'819-408-2434'),(20,'112-187-9503'),(20,'624-414-0670'),(20,'895-645-5840'),(21,'216-805-3472'),(21,'287-242-4472'),(21,'649-926-5423'),(21,'676-237-1149'),(21,'801-704-4807'),(21,'945-322-6123'),(21,'970-288-5766'),(23,'616-572-9309'),(23,'745-325-9235'),(24,'166-582-0755'),(24,'416-567-5279'),(24,'768-393-9757'),(24,'921-575-8243'),(25,'289-988-9297'),(25,'386-876-4076'),(25,'487-621-1810'),(25,'524-167-8013'),(25,'562-451-9293'),(25,'680-521-9506');
/*!40000 ALTER TABLE `NomorTeleponUniversitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PakarBahasa`
--

DROP TABLE IF EXISTS `PakarBahasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PakarBahasa` (
  `Username` varchar(255) NOT NULL,
  `SpesialisPakar` varchar(255) NOT NULL,
  PRIMARY KEY (`Username`),
  CONSTRAINT `PakarBahasa_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `Akun` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PakarBahasa`
--

LOCK TABLES `PakarBahasa` WRITE;
/*!40000 ALTER TABLE `PakarBahasa` DISABLE KEYS */;
/*!40000 ALTER TABLE `PakarBahasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Perusahaan`
--

DROP TABLE IF EXISTS `Perusahaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Perusahaan` (
  `IDPerusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPerusahaan` varchar(255) NOT NULL,
  `AlamatNamaJalan` varchar(255) NOT NULL,
  `AlamatKota` varchar(255) NOT NULL,
  `AlamatProvinsi` varchar(255) NOT NULL,
  `AlamatKodePos` varchar(255) NOT NULL,
  PRIMARY KEY (`IDPerusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Perusahaan`
--

LOCK TABLES `Perusahaan` WRITE;
/*!40000 ALTER TABLE `Perusahaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `Perusahaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tugas`
--

DROP TABLE IF EXISTS `Tugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tugas` (
  `IDTugas` int(11) NOT NULL AUTO_INCREMENT,
  `IDBeasiswa` int(11) NOT NULL,
  `NamaTugas` varchar(255) NOT NULL,
  `DeskripsiTugas` text NOT NULL,
  `TanggalDeadlineTugas` date NOT NULL,
  PRIMARY KEY (`IDTugas`),
  KEY `IDBeasiswa` (`IDBeasiswa`),
  CONSTRAINT `Tugas_ibfk_1` FOREIGN KEY (`IDBeasiswa`) REFERENCES `Beasiswa` (`IDBeasiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tugas`
--

LOCK TABLES `Tugas` WRITE;
/*!40000 ALTER TABLE `Tugas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Universitas`
--

DROP TABLE IF EXISTS `Universitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Universitas` (
  `IDUniversitas` int(11) NOT NULL AUTO_INCREMENT,
  `NamaUniversitas` varchar(255) NOT NULL,
  `AlamatNamaJalan` varchar(255) NOT NULL,
  `AlamatKota` varchar(255) NOT NULL,
  `AlamatProvinsi` varchar(255) NOT NULL,
  `AlamatKodePos` varchar(255) NOT NULL,
  `Akreditasi` varchar(255) NOT NULL,
  PRIMARY KEY (`IDUniversitas`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universitas`
--

LOCK TABLES `Universitas` WRITE;
/*!40000 ALTER TABLE `Universitas` DISABLE KEYS */;
INSERT INTO `Universitas` VALUES (1,'Harvard University','95367 David Park','Malawa','California','366174','B'),(2,'California Institute of Technology','6799 Holmberg Trail','Benito Juarez','Texas','358109','A'),(3,'Massachusetts Institute of Technology','2 Bobwhite Hill','Kabacan','Florida','783033','B'),(4,'Stanford University','25923 Kings Avenue','Västanfjärd','New York','885980','A'),(5,'Princeton University','803 Corben Lane','Plaridel','Pennsylvania','692864','C'),(6,'University of Cambridge','5372 Loeprich Pass','Vischongo','Illinois','169042','A'),(7,'University of Oxford','382 Novick Trail','Mulhouse','Ohio','116963','A'),(8,'University of California Berkeley','37 Dexter Terrace','Amolatar','Georgia','751939','D'),(9,'Imperial College London','7222 International Street','Nagano-shi','North Carolina','434908','B'),(10,'Yale University','372 Arkansas Crossing','Vin’kivtsi','Michigan','698848','B'),(11,'University of CaliforniaLos Angeles','72 Hoard Lane','Xinshan','New Jersey','136203','A'),(12,'University of Chicago','951 Macpherson Plaza','Hali','Virginia','762028','B'),(13,'Johns Hopkins University','79207 Grim Lane','Finspång','Washington','101733','D'),(14,'Cornell University','208 Vera Parkway','Licheng','Arizona','890430','A'),(15,'ETH Zurich – Swiss Federal Institute of Technology Zurich','8946 Erie Parkway','Tejakalapa','Massachusetts','388378','B'),(16,'University of Michigan','024 Oak Center','Denyshi','Tennessee','497314','D'),(17,'University of Toronto','07823 Esch Park','Novi Kneževac','Indiana','320811','C'),(18,'Columbia University','207 Kropf Center','Pasirsongket Dua','Missouri','506977','B'),(19,'University of Pennsylvania','53057 Northland Center','Changfeng','Maryland','274756','A'),(20,'Carnegie Mellon University','1245 Merchant Pass','Dongdai','Wisconsin','554027','D'),(21,'University of Hong Kong','51 Hooker Court','Sundsvall','Colorado','116069','A'),(22,'University College London','72033 Buhler Lane','Fagersta','Minnesota','525766','D'),(23,'University of Washington','062 Cordelia Alley','Ganjiangtou','South Carolina','786611','A'),(24,'Duke University','116 Badeau Point','Aubenas','Alabama','171578','C'),(25,'Bandung Institute of Technology','2217 Atwood Lane','Kurlovo','Louisiana','729317','A');
/*!40000 ALTER TABLE `Universitas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 17:49:39
