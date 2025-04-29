-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: school
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `instructor_id` int NOT NULL AUTO_INCREMENT,
  `instructor_name` varchar(100) DEFAULT NULL,
  `yr_lvl` int DEFAULT NULL,
  PRIMARY KEY (`instructor_id`),
  KEY `yr_lvl` (`yr_lvl`),
  CONSTRAINT `instructors_ibfk_1` FOREIGN KEY (`yr_lvl`) REFERENCES `year_level` (`yr_lvl`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (1,'+H96zcU1ZG+rgTIp/40c2RG+bB4OGW+1IMiaxJ8WrKk=',1),(2,'NsDEU3KWBmN09gjeeIMFfaTaTgxSWCbx+o/RzoFflPs=',1),(3,'ykgmgcT3n2tmo+QMTdAIB5c9IL6MsmMp7uqJXlhDgxo=',1),(4,'0eOrexnnu9RbOxx25mkAEwXa67zk+ZCDQGTCPVkmCC4=',2),(5,'T5VxAgVUnAHuNGLUWPfIfFib5zS5KUAT54tmy+RHvig=',2),(6,'1ptEGjPyHaekfiIFSM7XoctOj29cf5wpVEK/+UYhGqc=',2),(7,'I8y641Mz/v/t/m5m0WTPWA3ip0habAJTcGm1wnyfEnI=',3),(8,'TrGl6oE4iBbH8d+lnLUILb3/rCBfzo4qfgIUj+L1cPg=',3),(9,'WSt7AMzTczMXxs3GIVSGVs9xISOyaRXgji+QRztFOVo=',3),(10,'UaytYefQ9VbUqdQi6kpIwjibmjKAPfyBpGdAIJz1kxk=',4),(11,'niB7V0LZy7BYdjgn2OJbYWINsMWzdWYM5EkTJkVRk08=',4),(12,'6G0Qmqn3dq5/lfLgFq5qQIrHHGERg3Lwhsjd2+PVJvs=',4),(13,'9ckTPtnWJwlYik3viLB2QlZ3vQGWyfPtMJYFDIxVGJM=',5),(14,'Kus8VTYGoFWyo/v4qahON/EBnv0n54MaUNSHQmKPHXA=',5),(15,'ZB1yYJbtTFsTfgoYK0kVnFcQxik0rKBBgDyrX9/8LN0=',5),(16,'jALLpLas1hedJM5VQ04q3u9wQ60Ox1N4VAYmdwWVXt4=',6),(17,'3dR+kzMF3q0tWVZfHsdpN0c1hZDrNgDt4RQCNYtxRC8=',6),(18,'d9om9IsEknNgRkaNpr6J51YN2VrAcaJUIIz8CikQkyg=',6);
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `section_id` int NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) DEFAULT NULL,
  `yr_lvl` int DEFAULT NULL,
  `adviser_id` int DEFAULT NULL,
  PRIMARY KEY (`section_id`),
  KEY `adviser_id` (`adviser_id`),
  KEY `yr_lvl` (`yr_lvl`),
  CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`adviser_id`) REFERENCES `instructors` (`instructor_id`),
  CONSTRAINT `sections_ibfk_2` FOREIGN KEY (`yr_lvl`) REFERENCES `year_level` (`yr_lvl`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'xcmAZn/xNp097Pe2WyZthiG6w7AeNj+ZpyzoFiatZpM=',1,1),(2,'f8dprBJi3akmnbdBJDQrvONOubZUdJ5VD7/eme7gkoc=',1,2),(3,'PKSUhWbwtgEKokZya6OyekeBl4mNMUR0w8/vJJEqcFk=',1,3),(4,'Ip+xgruqF8xBeeERcx8c9F+khf3r3qIBCOkfbrWap1c=',2,4),(5,'RG4lcOYc5ksZ5g1ZPYOZACS8sAgUg4FqKcMHlckpTB4=',2,5),(6,'BcTwC9eP42L0isbjaGyDvqx7V56BzzeQxIDdzV7Iiks=',2,6),(7,'QbGXy24d8u8glX+X0ou6FOkrsaqQkCtH9SCRZu/4VuM=',3,7),(8,'HXAJzTsCF8YvpxZhK3VScONMO3k0HE3COGE3182AQrM=',3,8),(9,'gbw3mejUisZ8HS3ms+tKnLAcz0/2EYqJuKT6s4lm0Z8=',3,9),(10,'oBip8eoa3y/8ndndsmOrQzvuaD6FQgo4n0OBhxHaQCI=',4,10),(11,'jSPOx8UXCaOXLIr6We+sgD+XE1xy86XjmFmbHHxwSgE=',4,11),(12,'P1S0PKrMYkScMzuEt5IkLJhpAHKkdYV8dO/tnaJ7ULU=',4,12),(13,'B9AhAo04OFvey4VvoM+cjMC2Ls/bjcrEDiJGGWEPyE8=',5,13),(14,'kOxwZq6aSCYIMtdZ20STJJRPAXlJ1UTjv4jSXLsM40M=',5,14),(15,'aFyWFS1h/4KvFBOb6sXBEjEY9TZ3BPXf4oE96Bxz2ng=',5,15),(16,'d+pOgFF9SRVivBie+imvt3iapDPPbJD7uuAxVOYRng8=',6,16),(17,'c/gLCJUBGIjDBsCaInai9cj99nL7J/EXVCF0TD7erP4=',6,17),(18,'cZ1INePLkJa/c4ft0jRUo7VhFWYEId5ae+pucpN8blw=',6,18);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `stud_name` varchar(100) DEFAULT NULL,
  `birthdate` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `yr_lvl` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `section_id` (`section_id`),
  KEY `yr_lvl` (`yr_lvl`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`),
  CONSTRAINT `students_ibfk_2` FOREIGN KEY (`yr_lvl`) REFERENCES `year_level` (`yr_lvl`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'5c9NcncRXg6vJ/czPoxfqz67VagrGGxPfRet93gIV6c=','5d/Y2YUMjgZiBTymcqVMBYae2mH/fEgb+SaBHUcqG/o=','Lwyb9GB/eg6NPMcgC7KpluSyJ/Ky1hDi8l0D78dNuiIEKBP/80adiLbepwAbBukX',2,5),(2,'YZy/EQxFRGYHb52z6dDnXL7xpySzom7K3cvBV+ee0LY=','vfpnNlnglzXFnULg1aXA2s7KFRmy1o0EQmDcQGCsu6c=','12tmRNM5+oHvkBttGIO4ZmaCWqtD9TI0uUCI0X1gnXWqgxNN47V2gNYXi/QU3xto',1,1),(3,'uGDFEX235TMzbGrccHypMQP6Y/g8CrQ630udVBFjuew=','d7jW37QIQVOgr6KsXnWMNWva8LUwfDds7rXOtDHqEh4=','vDTArC5cDnNdEFY85wRw2Qo0liNZafVF7QtHN+ZZYlwqO1ugyWasxRMmHrNMDh/e',5,13),(4,'tXM22xCfWNYxoY+g67o4+KZt3l8sptDAEzfqDBK7aRA=','cCnrzJZQQoCuUQAu47qg9aGd4FvkoxPf+LF2s3jhpUM=','TspthmHHWqrHXU+BYzovZepxSDcTIq8dQ5EW57fgjXa6pRiGfygdXyILU1bY5B0+',1,1),(5,'mvrerran0KdlDrwUSkenJwKrbu46WujAcW47jOBwSfI=','OeH8FcmycHGiS9BXwyFMbLfEmc2wQatLFPCicc7Uxt0=','7LudZRwPD9fDv4bzXNwM+i5Vwg3m+/+YT2vf3wlERuZ6gMc0cL1EjRoFTapOH5d1',1,1),(6,'/vs8cQWWZQ9SmMxpakugyBKUgMli+eYBjLdEn3QFa+0=','0ncZ4bYvivZevvTaAEv5iL0jEvqFmqxEigH0DuE1EeU=','dqwWC82HRrNQEp9n1aFIROw63NSHGriRenSAvicDtE49PW0Zc+QbqZd2b0C0qG8y',1,1),(7,'/XNjHYg0a5zNoaSl5fLFr0hzF06hsjtDmNKI+JFZQbE=','YOBkS0UuXPSPk5eQQhpEMuMZZ7Tue8Z6g2udKF9GeIk=','jEOW0i+Na+dK4nEi8ZW4fUy+e2N52U5W0sTWoxWZFckaKZ0NZxcle1bqQjIT6dN+',1,2),(8,'xClDDh/xd83LWqLiGbGLMlaCyPBmzCSDhl5pSiayCE4=','Q6CM1hytnyrTvAh+ulQc/5YkhnwySpKIutg/ntEK4Io=','vmF5IVw7XWa/MzB6Na6iIiH3KpZ+TVstipQF691oWvUuvLARW+PlLJK8ZD9GX7Oe',3,7),(9,'s+dVWIkGM27ELx2tS2OxOHyOVKPxKg6Oo5aQwyam67Q=','7EyZL6fNVcbsklUsVwoXCq/ElUx66CeDmIJ3XAn52oU=','MdzH+7eNWxd3TPvbl3/OoSuhqijAKuFoiYqOFnUvSJrAHq4k/lL+8Jfwy0DWWzJg',2,5),(10,'WigojYMnr5lC4bGQHUGAIKeNhAi+UO09NHEvI81JZ4M=','4rWw8kSWcILCthoxd4qAi8dLDFS9+7t3q3I/0k2+tZk=','25XgOTmxjfqpQ7xiJoU0Tspz5mmtKk01EU2bqzSOHkrcGL1W2dh6gh+wXFZTomwC',2,4),(11,'ebVXg3/jcb5rXvQ9KYtmvkaXzxH4hVjQEzn8xJ7qbpE=','//T56bE5pI1SyJSzBuMkAwKtLNk7cS852L2A568Rn3c=','NbJN8EVD7/hHHSeW4PSjFui1cxtvD6vUFGxy/hR8Z/hxtkXb/o0Hdu0QI/cM0BrZ',2,6),(12,'TzjQDHeu4f7Tr2dkI+SF5YqIEBMV4WNBUZASKx/mg+k=','NTRLS7EyX/VST6mBYs6/tydvtH134j6CPCYjv099/QY=','ZL0G6qroy2qLBH2duWn6/g2DBWYELX9469Hi1OtUu8y1FMM8/N7qZP91ESZrneCO',1,2),(13,'N0eYc1AbzemRoKQ4qwMbwczvaCLvh5oHJKz+gPF0F90=','j+WDdmqoxPQFLRJuVHETT4AbZ+OrRySvIA2XEAdIy1A=','B5yZbp4/f+mscKQiiMcM38AGJzZ1StWMQcmGWwMyfaDACGNSEPHxoEPH60QKYpmz',4,11),(14,'B2zrewX543nPzvQQ9jqrL7yoWKUB5XTqKQo2wDZJ0mmRZI8B54d5mMWqVL2x6cyQ','/ry/RREzJcsVTJkLGIjNFkZ7PTH5ZNTWS5yB6HfLkPI=','jBoPUpOihpzu+pJ/m+pNfUZNClp5Gpxaxggj+jI6FSiOd7jAstDR52WHk/YNBEhG',5,13),(15,'RMgTXInfJP9d0VudZSy61gFZu0CcUkVZEnlfUZleO4s5D71WM3Cex1GF0njAUKME','B+m7VToBHYJPIvxb9sX5ttiFszGqTArehOTrDnTWw3Q=','K6t2E2LE+bsqSenOzWNijO8O8ESolynrvPTTJbs83C92v6fEUuZqqy4ZWAzBIuK8',1,1),(16,'t/OD5cdlQTacNmApovgpJgsQXGG2sbEMr0fDXKAadvc=','BLF3/pHQ6BWVtkCttrGI0Dt9GUDBUgyx0G1//R/ZUd8=','wkwftEZAm9o46k9ZO3kgb7x+Um6LsEwB5fhFC164BkNGP24kzv2c63/VaBj0WXMG',1,3),(17,'YMeK4H6k0pDC41QYvZHMFFjxFgI422R9o1F5/M+YmW4RA4d3SF30iSWZh/4MPs56','UIvkalrGaQ56WML7L9CcdWuNXazn+DNO3y0yOYxhAxU=','FBDnm1EiMO8BEbSZVgZPPoYuyHofKE3ZMiYscEScxCEnXbY/jBQFrGuLpwhpnylN',3,9),(18,'eDlv94Lx5pqkn8Mx+Ne2vH5v19g2z1EZwpdm8A9wGL0=','q2dfqOSnow+CFza+kJKTQMzb6hsP+4dRnUbqup0GTzQ=','z+KrNj4CuwzszN0GBU04Uu9LG8hWsdz/PbNMvJRr8GnVmlaFmB5Gt5hNeVjryETW',2,4),(19,'naFx8dNGvYAw4fJTke/bE+i1bKEVfbr/Mar61qFBxhU=','PbVpoNzT0aiCyd1dom0xZNEwpLAiEg2IUnTG2oNNvc8=','An6KQ2WtMDoF2TbIYu3aF8aAt2yJ+HowFZabOimi3qjymNa2at/xgUP+tIaoq6iV',5,14),(20,'8EHoSrbJ4Gc9FeOFbNb2XfHGBHPtj34Bo0dtUCmxRohsUhxqnydtWGZ86XrbdaYF','82zfG50mgDuzwUb5XkI70QcuLtdCG0RBR6fbnIFn/uA=','//TiptdlWF7JfvUiT/CJMS6idryO+mm/bCQoWPngyiolsJCQvOpT9EiJYlFo4z4Y',3,8),(21,'k0DDmA4LZhnCVka5FGa0E4PyCDYeT72zKfvKwnaVUPQ=','KHfMMxcuPNUoPjG5A1bcCMx/oqxu+o2jNKI1hOxoe6o=','DhKb+g9Nnud4tfJ3W2xhjwZj0vhJkrNF/n7+NsC88V79NQ6tJEazL+F0Yz95Dy0O',2,4),(22,'0n++b8VP5vf8FgjSpNXrouMTXMJVdNEpTbrNdMt2ZIA=','GZWhx6j2eJiKOqc8zEhktbFgo5Rc2ahQ6LuwMgWfyX8=','tCzYkogCJNrPKZRoxayexbQ1NccYjUpF6oOizNPSnK+Ts+Ee87cC3QO8HJizZ4ln',1,1),(23,'YYJgVyzbyyzNbD41iZzlR5NnH9T83Ayvpx/MOuVyg10=','htplvctDu0bWt7Vixfv9WjXQMr6wqsYsszuX12bBzxk=','YjEmfNOeGiSSaQWHA1boPQraOynMpDojfeSHYskGP8GHfUqOkLa0h0WRauXNvC5B',2,4),(24,'/EVzbWtT7917CaFImb7NJJzBwUT9M2P2AWG0KNfAM7o=','QMVaxW15YGlbDf8tkLQlUiaLuRKctNUgf+UfxkfraNU=','bRtandM3iluaNNMZkC7SKW7wZx8E7cG26b6t3S9INkIaWVQsk+FMJdDuqXiZ1EcZ',2,4),(25,'64uwy1TQovoD0cNa57NNSVSADg80aovBNQgWE9KR+UE=','Y2OqypYRGuncJR6amPniaEi5OzFpcvOQ/WXJYcfVXpo=','32N26ddfVo+Ejj87kWrk7PohfYos6EqRcNlBjsEAtcLRDvXMcOG+qdJngCO3/+B8',2,5),(26,'LtV7MJmxSHADjNZW8hQtS1igis/LKYT0q4UYxgkpLzI=','78xQaF4oZhCrIxEnYiDX5V7+IBNL9qTW3dCFPuM7q+4=','WwfTZPLS6HrlaS6LtPAr7gV4fJkg06ZEV9dKXxsmydrZf5ocIRloUwOhjTGwNepR',1,2),(27,'tB4vNOFI8WPsPhQaPcWpSJBgY4kqXo8Jmmv1zyC8gnE=','EYnSHGL2FZUtyQmgs55tJeDI5BPJ+pWLnj95572lEsk=','AMabLlJzklrYgk7On3hGlScqA2DiXByjn6WB+766UedWeB4FINZTpeZp5UnUuu0e',4,10),(28,'GL2CI2kne1FeJA64h7lFou0hH5+rm+k5Z0BpsYaTm1Y=','3EFkGZAJp1DBHzUUmfwUmK/Aj/TO7LBfIS42cR+B69I=','RLAcwCJMiPfldwQs4AKWmKmFtN0gDQarqFE74fbavrvWD8/0RvpdX7+Iy27E94LP',6,18),(29,'8sHHOjFY4P398g3ioJlX8NAyFpW85lchDjTMvepl/D8=','oITsKMTaQyszOm5GxeaQEhJ5we0m13VZdW1jTF38biM=','XHS0c7wC90kdBpa+G0gfpaOu4Vu85JSTUSErnGj//5W9CG307p77vKIlSk1cAdji',6,16),(30,'V0m3MZTFbQE8Yb5bppt237JVJxf9+4TQS6E4SdkqqY8=','abnWin1a7G5Wu7zVtuWqzihey8rIJPAZhrEzBZ6NGT4=','wk9VbgKF+4Ud2Upu/wtYWEJL/YTQhJQlsbz9j4Lb+4YHiv7N0AIz4LtOY6HINsNA',1,2),(31,'6d7xbq9sKaX+kT0LzVY+oHr8z/Pbs1wXuRESkGB+M0c=','2+rJsDiyRPRwX6j7bVbHz3qZSWabvn0YYdh9c/OO7As=','XNDCLC5ASWHeh7VvNMGt4UPQeasywy2QhNZOBbPoOxXujx+TxTG+V18wxF2uNTTe',2,6),(32,'zZj3Py1uoqT8hQqBrIqP2pC4SV0qTzpCGxtFEziHe2A=','5hVmuo/Q6krDR0wqMyD8V8lZc12C2yUDwIokEWfhepI=','ZIUKCfMOLOTmuR7v0wDUHBNf6KfIku5QJin7tMINij3iZLSFf9nJMJIUQiaJiBxR',2,6),(33,'ORJ0YA8OUHISKm60s6KBfPYakaxZ/blXPgolek0fp3trcRBqmOuri2HuEwNrocP4','VsNZskhHGevDe1ehQeaEp50dGBD1rG+Mz5X7MaPHeeU=','eKYbKzagrH5mKvi1lVXzrYliFEYrnq133wsyiQOhoQjWklVKGSm6Pe7QAnpnAQPx',2,6),(34,'Yxp+7rrvplq7xlxhP9H7v1WxtxeaFXu57pOsaT3YPpU=','NZV0m3quZ38NHzy7MX8SWnzI3oR8gCB9gUTOPO5pm7M=','nYvR9/rHLkkNDlxn9N5kRYzLBsK5QO8EfDK4C0NpJLL622oKxUKfFFdOaZbOZSEU',1,2),(35,'I2ZggDscjnJhZiHRK0vfrS2YfNzNOlMvIW3oCabvafc=','ea2McCKiXJ3ULCVGtq1c/VAV+KBXfyK+6VstVHKzpsU=','guTXy0l+4EgOq12+h+6Leruj/SyuMEM9iaJlJ/UTKCunRonHAM65RE+NvYR6BRtG',2,6),(36,'wVvItRb+07mU9I7zIhJ7cBwLwzckTsHkbgbvAUhOQRg=','EiyxCMCaa7qxQS3UdUPYrH3zHuUpTgykadJ7Xp0nt9Q=','E2cf9aG4D28NTm+y3kJ8psk8cthuo0JnmYfmCnbjY7yJgUGZSqGBOJVXZDF/5hla',2,6),(37,'COhBmKeVM8IAC8daAoUFX/w1RCUhDI8hN2VhoelHnsI=','3G7Jk+CiQi3uEsz6rzU9XJ8YH4DAR0Y1k6YCt9mizvM=','hUmQofAXFJkRiXHgB5yl+EKYoxdjfZDFw4bR/nahW4UmNL/yyx6F70jz2cxJzHhv',3,7),(38,'mqmVLrI5qFZ1F+o5u6CgyENPYAbA6tYxXirR8VSY7ik=','I4fBYE+i0Td4QFeuz8hyYT/KfGC29y8Ibi5GZYXLzTQ=','d/JpSQ5aj33zYJfNY7QAs1wxE/rPHMbhXMINfYZ6Ne3TYQ2QH/2Cg8moCPYd1ZvB',3,7),(39,'DwLeesfIaHSzGPqhLK/mfstq9pYtrJorTx/SVgEnqXQ=','UvNI7RjqnerHttuaSOhPlcbdGfy9TC9uQKBCvPHw/z0=','bKnnhG4+1SExgiQrF+MoLnaLGAfQJzshxE2PBWbK+z8UuU5D0xFHRwHR+EbRcly5',3,7),(40,'nQIon4VfrQD9T4zE+1gz1O/H+BytyA1O4D2egA3SCrI=','JIppI0t3G3DiaPlpz6m/ZqFrK2GnNJX8PbpXrPt2TE0=','zyMOXy/tiW7vGoJDpRyW62u+19o9tJvICob/R1y6nhw2Pv3Tr7DV/WPYUDTjP2mL',3,7),(41,'3kxycF3GPKYNdw4vh8q+vpx5jIVDD9n3MoWSCVeZT0s=','KItFxZxvgPDtTc01YKVc7EVofjMaAMb/72paUWE1pSI=','cSg5SRDRr12wbP2KCpnm9L6qQouThr9iGoNg7Uutnv0stz8gJZJICDTC6/+byD0J',3,7),(42,'J8kzq+W1tl7aQf9wQ5iJ5OgqCrV9LWh0ToGQ3NlbBqk=','UFT7d6tE1/mVf6WdIXcaahVVypnCjwOU9JCDk1sTGfk=','pBu4lLSfcPslbNb1/yy+QMPQ6UwxU5+E4o2+dcYBailWU1fLFDELH5mBGCjEDKwTGP+Jqm+c2z88UYRnDR0yUA==',1,2),(43,'oFd7QkEB9bYkJWGON+H+Rl2bYaxIiHMbjQA+CCOA4qc=','03P6J4PwD8wrW3G2pql+EFxtrwuLL2/lgp1/0EtPcuo=','naFDfbM9Y8Pps51xnq9pREauW5l7+/ZASKaDD6EvXWaexhXIVnfMWCFDuV2fIFmW',3,8),(44,'nNzhV5K201yPQ072YtfEt836/8YkZAgEHRUlqeqDQTA=','A1TwW/kAep737dVsh1FEVh6xp/808J2G+V7vveUKMHM=','OcMVdNcbu0psRp/wxJtXZzFpUbyNHxANrW/6yXMdz87NZqwdc4htQJBpOas+I/qU',3,8),(45,'gJuCa2KqxIRttl27yPZ5sl1gQACykgc3wtti13W+SFo=','N6edT3DBdIiUZEwi/jVAG3NCqe9Mx38Gs4Gy7jxk5JI=','vvm8fIY+EDNzKP7bcX3yIfLF5kgFVtu9XIqNKZ+U1sHra/4jJztHk9B2OL/Ev3kY',3,8),(46,'AidaoQXpJsJ5ND7CJZ1PjW28fLZTO/iS4vWzidq4dvAr70/oZKUvXivQwSYyrWaH','RXn2qL7SUSJH0pci7DPHmwZe9uXM1zAxDadktSzQfPU=','AovBphanfl8vLxs4pJRFH3xP/y8OI39Y/QSlJZsTBeLqDQ2bKgw0FJHU/hOW4ITz',2,4),(47,'j8GYDyiMz15fN9h+8ioNAfooZQoaUVeBMrGIEqwxTaM=','HWM6c/WoPEwzsZyALnW68lzG3QOYRaX5b4U0oNFN2VE=','L+3tWQvyyB1i5BbUDkwGdJ/oY91mtYWb8AenTLrxgnTQsFIHA+ykW2+UjvOh9sm+',3,8),(48,'fx+8/E7pXvJ4pHMe7+9CPadi0PM2ebO2tje1irhefAQ=','99PJFUrc7kC1bnb4e1Avd3fxbusTx0cYXSj25qui0oU=','R74nLVVM4kZe7dm1h+XTZuLMGQhsx7DX25yFteul2/CXrC8yKqR0I5zTTpaDEEBM',3,8),(49,'Tb8oieQBi/dqGoGQQwsSkZDTOGDD2q9RHWLVIYYkeDc=','V/FF9jgjcg2waaNcj0elBj28BC2mUDh+1GJRSjKLaCk=','M+mp3n8PmATQOhvzRIqUA8TUaqDY9rYA6pBjVfJzh/jmYmWzMYGdp/yLwbRbWHja',3,9),(50,'qU73naDW4hezPiOzUwooWdZI2o+bYMHAjahykEbNiYQ=','WV4Yl5YcN5Umq60qMFojVriJf5qYHnCbFANixSIEONs=','80U9sISm6K520K+LlSvs45vroKBSUJIRyENGJMppadqGPZdn1RdXRDve6glRxmer',1,3),(51,'SU3dRY/LMEHs/xGt38ucFSq8wP8m3qwqU04CkTgBjUQ=','w4QTZyzcj2xV+unkt0L2QeM0qzaRK62X4CNLcq/6LxM=','Bi0o6OkADXnQb9IQXTyPht3T2e3UiRL9pLT8ucnOvTz2/o3Y4WwnbFdMi6twuh9O',3,9),(52,'3ytulkHQvmXSmwoQim/s2yL7aiyoZiv98XtQ7Nsf+OM=','PxsX1Exev5x5EXswaWWWrua3I5val6Citgc5bFUnOe0=','UcTnV7r7QAFPGC9WpDbXsIRacGejOdYYUsjPorxZrCeWU4EHw6itbI1yG71zN7vs',3,9),(53,'/42hjYkOR+BXlEI/PCDFEagk799rx+oJ9lmp+SvkYcE=','hQMpBWYfz+/mBKw2MmvOBHobYaZQWxXrAwSpcPvqTu0=','DHCCelm7T6fDT8frTFoXpT7hxCT+3TfjGRFsZcoJj1SuWeURu+kichLNn+9NlNrz',3,9),(54,'ZWZz48yZ3TqTyQkD2SY8v9MJ70T1A+sEA85EaON18Lo=','89XA06XXOIE4TIXJJkVEYrcSftlERZffv41bbSUs92k=','d+kF3MdAqUeejYLCPvHm+6Q4Dsk4ZTKedfuA1FQ4xqpsECyMTRFG7WfyE/e9yOUU',2,5),(55,'UO6Kyr6UI8mlaW422APsm6lv6IV8KI5joGN4Lt6UkNu5F9E0KJm+im9t1LY8V68u','PxxY2bJswQhg0ZCtHEDRlQ2xcXGyrQfijMoNRH4xvTw=','/4lLIITW1LcibTnhQWrqQdYpLjoyv9wwjRCrLPujJlfPOyAN/zmpI6/8IsVaVtyq',4,12),(56,'p17q/zvH2r7WabF1Gtpzsct/kawkQQypHjiZTHP6wjE=','1Z2HKfh9TuINGOu5ccY5DNX3pjEur4bh3SRQrMRFccI=','m+AZ4vMlFJiOY8cu6xLigKZnVzvT8t9458gUWo3wLl+WdH8b/m6uy9vN//JnoPCV',4,10),(57,'HZ8MaJNm7R/5pVZiVDuB1pV7AqfJZicHOX8ksnAwgkc=','SDI3Q0iPoq6encBclnFKjfHDzN0L7D5B3FOHwpoUMv4=','qD/a+ugNsSiKGaB572rh6HXcjnDkcMoOBFthONjS2wisigdMd/rsrsljmCoOJoU8',4,10),(58,'wAIza4l+Ashs04upqnanN005G9g/KAJ9ZbezGBgVDZM=','eBToJaWEbnm3hLqPBTKKeQcI6hxCuNpfzaFkueOaitw=','7soX1834GawEus7oToi3C4RzhZeu5duI0ZER7g3MzJ6Co/RMbkKvkvtonAeA/ubO',2,5),(59,'P61Pp55I9vz+N9HeAQ3rFk80F8le5IID6vOpDVUt4m8=','s9RZRdLvp1026bcRVbiMb0PyLpqeaV1tlDRaa+xvWPY=','qqlAPVNyfcwXVnMLD6QpB57Ka6/KOVOruePrIJHSpbhNNl8o+zG8gk37uclOUgWg',4,11),(60,'TXUnW+pGitAlTpYPmU+a6kt6/13H2OYWYhMYe8gKRRM=','4NfyQlzUric8bcBKPTd9VKYduJZnMcqJCwLMJrWkqas=','Dj4Rz+eGn0Y2tXMJ/+cCtRYEO52VPPq29Srw2xYNVt+xms6uc2aXI9wTWgffmBer',4,10),(61,'IRqpaYfpMqg7pfQRSLQoxbN7wIJKAY6g2oU7jZamUAY=','9RlSsKYc+7AQqNHEK6bc9pXK6/CLBNL8ha3Ar0b4Kss=','QDjJf6EBNPJ8ufW6t8bd8Q87a1PcTx1z60TXVqyS0jVVUMa0KLWnUo2yWOuOc/3Y',4,11),(62,'Hb/KXTGD8Q0uBW7G6SK0jNyE7OUKYC4n5vZJKXU6P74=','N0qzpFj3GZqhdArYZ0zrDKx56MnQSfkEKVJ6WWUMCxM=','as7ZcRQ30dk+yn3+pETd4XYQqC9fUufUfN5jmZJfe2etKJsCoiJunU9p1Nqk83Tr',1,3),(63,'WxpwTRNNnHQtp42sGHY/QfuDY3JjzsF1jfi86u/hYog=','3bwYr6oSmbPGAfLdgFGstJPZVDUxXv9PQy2I7fPkpAg=','twmWNg1FwVqwduaP4u6UeZAidccTgK5aWHBpeQ/fEqU5+GwEeMWlxB22rFGvB4sh',4,11),(64,'IgIsieeyxWW1ho/UWZGk12lm9kXjXAhKKCf45srhOl0=','dQcknDAn4GohfSgaCrph+oCYQcCitwF86gqBnCIGvRs=','YHSYCHMy8qiprBE+AOxMsus9h5QKVJeyZFX4WaewDyMOcMrPJDaZAJfzmBaIhvJ7',4,11),(65,'aasNGwDCuCQczQgUyewG+3XIHSHOYhUzj22Kc6CIKW4=','eQl2DgwQ+9Z6z2hRoumRbcDDNdt7fpdMWrzcFyClgpY=','KtE2APk2c8DRAQ0zfbERSsUE7/o11mUYg6ohMkwi1Hg4Dhca8P0FRuRpIvBduzfD',4,11),(66,'EcvReeFFpk3pk4Pp/W8UCArdl3mvdNMsWEK1vbv1b1w=','L7CjLiE0Fob2ZMW1wELn8hg/v1XvKirM0TQ3lIuvRbc=','gdmseREsnhaMdFGPPiI3MfvvQ/tSA3GAOAwdQ10RvDmvHWS74HdTggWI/XAH9gYm',4,10),(67,'0sJFKdd2klzfpO6+KqgQ7j701WvNxpY/CUcu6AMes70r1RuIIWC+uwcUShJ6M7gs','AdI2GAGo2kL7X/vRa7ZueVfL8QL69uczZuBFpJSbeLU=','L8PBDlKZtS3pPHvsBv3icBWEJaBMjVgf/vSNaln7vjEq+qeBTkPvLpbQRU6HAAJR',4,12),(68,'CBakWemqN6M2cKzUJeJzZcDwyzjvEwBegRdc/YAN2zY=','QBbUMBMN1da3zoNxKxYcvFQbUtLcgjK1VPtodcYscRE=','ID3pC57q7KwS9Qq5l6XV2x3SzIExxQ5FQzdMJ61wRg/gAx1cStaw3DmmSSOA0Tx7',4,12),(69,'88KgHpCxMfIvbvZpwxyDL1+s2yC1owzpwgXhxrNDpFM=','I7COsQRhG6utQVrHHkoZDfVSgqZx1mYbqaGnp0NXeSA=','odfywRqUjF6pEglwNHkQe6E6p2TA5sXWzN+6qt8XG4NGEKH34yEQAAzxCvsNpLR4',4,12),(70,'h4UWv9ZbZt9Da5dMjnjcnOwQPt8GmTcwUvXh+B5wKpc=','fZWrJxqVkRPDGXBkT+PQz05SGc+Zfg6GeiHwGvmDAXU=','CVWpLekd0URyG0hIaDqj14a33uLxuVz9vIP3xfnUF5i4YLbOdjH9hFHQtePbckmh',5,15),(71,'g5md+z2zUDP4AW0Fb3oJ1NTQozSgjFZ+jdzvBVWpOSk=','aSlFF2eYms8YUUqjxPqPrBxJXJkoT/9dZY13amrEndc=','Yvr7QGidumdSR4/AgKY9ack9DatJqFb189xy+ea1WyMvulqtHOLCCBCM87m4qGbh',6,17),(72,'DcwV1X0aP8g6YmgQQgc1lsKR+9dUHpVr9TmnarhhdUTY5Wsk4U3iqrZtqKofT2oe','hnkASuLx2eFfYIuDkq4sQXXCXlaOjFerN3q+BZsJDWY=','0SL7VwPCFSvsitSPCTtlJ5deICeVkbW4RRvhZacGXXD3Ffb3TSzkwK10Y30AlpU/',4,12),(73,'MGyoQtcRMCZ6JRWBbJV1Qbe29ljASADVIizGs5R0IDY=','WjNF+y+VCjHSujFqEsi3CKB+hK7xF/DOT3sEsklyRPY=','H8bIdhAgGzmWe/Q4NSUF02SowU99G2L0wtkIZcwo+Cwd3JidMMv5Wb1LK0Yj9gGz',5,13),(74,'RrljbLpyNxCneLddPo5eu48FnEllK/XB0jExagrpYFs=','E5qWkGMP/2cRWVEl4tEXGkQu5uTaff9Srt82jsFrzxs=','r+KJynDudzlOc5cccpCJifp+WOw4Boo8BryIalx/WKL9wA3VD6pnEq0d2137TUmQ',1,3),(75,'QcToCVIsJ0g2HRFQVVI8iYspxdZI8a2dDMfBfsaz4MA=','yhzSCnPBJGbT9Hp2j0rbs0JBBvlzdGujobF4PhO23q4=','Qfv5G6o+7Tic492lflUBqLNMJy8qAqTtGKj2dF/0i1F9JIMXH5LDkbb2dHPMGKiW',5,13),(76,'U2o6O5ifGXX5hqabmNIBeQ63LfGN3k0ElBupIm8JkB8=','VkDOwSyMViF0rFvldW4yK2f2pQZ2f2nGeFZFCZoqaWg=','yQ/Z9nV+LPYc4/7wmOvnQRkPgxkIfxi2S+HdacJXuwxmg3AgB199RodtRlZXC56n',5,13),(77,'9fEZ99YFYzl+QHXVqztmsgX/4X4A5jIo/flhyMQejPg=','J7oUAI64vFz7UYqWBQzChYgBcdvwO9OYtwurCfyxAiE=','oJZ4A81W7KVbpkJzDFrH9V8bTBqjBovRjqJ2kCO7UC7Z7M3WROcmudNvan3lxD91',5,13),(78,'2OIsbGYIR4/PlTj1Z1Vt4dK7O1y9dEjPYevvcUJSZ1g=','YRjXHhUY3orATuu537vujEbbIKGUD3StH1XZZRsekww=','9W4HXk2bc5ECFg2vkTM+V38AZsQ2xOT4/3XJ4jrd1bLAR2/K3niSBqKJRm+05jVp',1,1),(79,'kYL2zmrQaC3SXCJXTsRUufcwqdSHyGBOQ5SVbE8q++8=','io8xNmB/aJDV+Id9cwP8fAmZEv/R38C1q92ykZXb2xQ=','Z+q0zuvQXKqO3wU33LIoMLWQS90UYRPVLneRNJxvWMOBQdTTxB7Y6VYzfHhrn8fH',5,14),(80,'2WUH8XHm5fFFc6SuAgSl8HIrSfRhJdUYQkysZ3HEF5E=','dNZ4JKd5veEcPyePqFdPpbc1LRWz1AddltZEc5bt3Zg=','uTxRv0pO18hvU67NtegHv9LLGgznwgAIMXJv6fYL+jgaglMTJALRTN5FwEGyD96v',6,17),(81,'dWMGnyciQMu7+mUU/wHfq5ranB+lihBzWhFdOBBUn6o=','dkkAkbTLBr0mZ7ncibZsDnf7Q2ECGw9nvlt9s0lc5wk=','/Hs7pRIceWDu8yrEXmPEiJgKPs3mu1D+1H3TXQv86T8ciG10rFKxUUG3WREFi4eg',5,14),(82,'Lrbo8aMZkj11hTs6rrJq5+6TD+PZGepRgVs0UqjNS9Q=','tLsutMfV/qmOGQkdovc0rhRQrTJoRa+KZ9m8Q0rfEWk=','OttE0ORASD6mveBPXcGxkxpm8HsuF7fSs2HOLfBkW+eRy7XmlfNsO7d9OuRt55nE',5,15),(83,'Iz9XDrEqhK7yzg2iRUqPN29fA01iwxXxqmCMt5XTGSg=','bQg3ZDKnf1vX5PX6FV3rOUg9vET9fqQ9GMK/PdqRIV4=','1R8iw3iMDfiI5e2XgZ9PKRvTn94Iw42FltMPHiUGFur87MOs02GBgpRZqqG2334kLwz7HmBRIQNM4KIA84yWsg==',5,14),(84,'UBuT0ik01V/HYIbzleY5y9Mo+PtG+0rk+p7g5iKrBsY=','GbKgPGIymjMaL/M4QZLSXNudWzUhpudBs6mQX/9ORsY=','vTUdLKiFHMvleZorR+vaMu5ryAra3PR8r3xZ1hPiGmnuhya1bHD/FQ5dTUIWHGyr',5,14),(85,'9jTZiGTxiVCfBAVmomc/533k87553j2tD43cLz8n41Q=','LugLJDzLzw+56TOeBofasozjK9JRioy0ih6ruUeexck=','49mqAjXrUaXNTyg39hevcEw1WNl+nQowKYRoYVmvEEVgRn4n3WEzTVm413Zcd62j',5,15),(86,'6itj2AdsetqkEkCgryAfZlfF2k/XBS+teordOBWUZXg=','z3W4orYAgJ5gSVHOr+NQWVMhtAsVjf1EgI4wpoF1q/c=','78hpcegWCuBhXFtqMksQyuQB5PU9qGG2XXUfYMWaWMatrZVRoZKxXvyTRpEBb9h/',1,3),(87,'lXTZf1Sc7oP/7d3u8NVgine1KyVpNaQZ+dgqKT4S9dw=','hG9+d6ELJtycmoIpg0VszVdqkB8K7/By/Rd9eSPO0+s=','SG8oZfkfpgkPykiJnmMmJJA3irTzjC9qsVyswjH7AfSHNbcPSAVbXohQXL9ViEYI',5,15),(88,'NbAtEnXqJri636FAS5QI3JzEpE1ZZI3CMJzTzZNNQQg=','dIYUKgD1LATvrCDl+ueLc74XajDqCYmsbmEZoGGqYHw=','TNGBZNN05uJCktK5lSfmtkDqwKiWsPyG6OkDfUc7UoPVJMitOdcxX2VKEikL3xca',5,15),(89,'+ouDOxUU3qSP9ddjXGLD82q5w2xG1OStlp+p3Bs+hic=','fMfiBH7IcaFABghmFEStxCEFNa1PdBoVvhj8ROmTwEg=','HanRF7GOCLo9l/C2QrTopYxAxqCtFbo4z5gKXIyks1JUjnNFoAEl3pyiDkk4/DE8',5,15),(90,'h7PaWIfi9V3WgYcsEfXX6oVca7P/PcxkRPKlTdyEjjuv5f+GzJ8fydZwqf/RGBwv','HzYAJAWNEn5w9PTbkaOXU+e8Kr3oDyxXo4QyNhc4yM4=','MilXQIG6/5KgTkhximS9zW65FuDpgy2nATIEio6TEGZY4INOYNeghv6jN2p1Q+k6',4,10),(91,'0lheGyxZtlghbtmeoXCbXbQkHl0weF27oUBtG1NLlKE=','O5VvNqwYTDB7dz7lE3mNFJVYSNhWWoUzGgeol0Alj/M=','dkww3JxLRFZCFqLh0AthzK/yUF6Sn9qO/NztAb01ZJ+YFAqarnHviW7uI5Pr7FFa',6,16),(92,'ccwAyquz7wxeR/ifeGZvoKuyHRJ8HvEFDhEE1KBR0WY=','60sQUIGsAxiBKYK6LZxXD7isZk0v+HCYjCXyacPZxcg=','d4VFTz6C6CP1C0eHxpPbN5DTyKrFSzUhzTNjf/DrvVImbMFUKw8030V4qTTQkSiw',6,16),(93,'BcJqkflGzADxXWpyah6bWERra65RsBzRLvFqqFRkkuE=','2elxiTcWMgq7XCX+U5tIBUKzF2R2Ns/g1BBdT9ytucI=','8n0ztKPOVh4ZtJaofz6qeRQn1Uok53jSBP5dRLD7X7AQU9frRXzQU48TmV4Ic0ai',6,16),(94,'z3jhXtTfwAdiV9j12pQWWrvKQb0mxoUdvtQUgUj61/3Q7EpAMF+2CRFEtdIGlq73','h0idO3J+nAKbyOiM79W6N0f0dZ28RbCGfA0VeVTIGyY=','JUUqN+D4/tiuCl0PIEvBEuNqjK1eCQmoi+GqU8SOvLJcBLsR6OM14+JBX4oZx7rh',2,5),(95,'HT9ZMkC2WKJBvChxkiDXb1CXPLawqm2zJ6FzDFKYsuk=','6drSFs6IQYJvCKlbgWdoITj6RjQkwPGIRfAKsWbJx4k=','3jmnV2ICQfwVyUC4ZEuZr6opcLAAHXY4GYYKnzKHDwgkpESMYKr0XeLcW1zNcJva',6,16),(96,'vKBom8TJ0LzTvQlTviET0xGgJaLY2qR6r7p7gpI0CWY=','G/MqvcaMkdEjZpA98nU0J00XZtCgETZ6ZtfvqX9Zbck=','GXK2ig3tquRkMXH1ec0jqW7lPet4CQCGrSgrxqXqZPRnfacxuHfTkr7iS5V0mj4z',6,16),(97,'EcAGdGeLAP/6pTp7B+IZuWsWCdeKFl3qvbZIgNhtKl0=','oNhOdOImFgDTANNOHJd7SdpYw8l0WNq1VLpwN0+UX2k=','Cg0tJbYPISS/pOiwwzQNJEEHRSqpNChcM0FhGiso3qSfGONpZ7tvg/CSBBGttgK2',6,17),(98,'jCMTjCC/HflR215IdMhRH3jMhlkwAJKQJHFDnMzZxIw=','cgT7M4kmsXuzbi1QF5afNtsQsnLJ9NaHbU6SEkNjzRQ=','ycsGYAaskgbWwYp8OX/3mqcPxESEZC6FvsDOf0/Ry33nzA0fKmqUsfXSGQL7W2/d',4,12),(99,'DUMP4YvE2PUWg0Jv/YnHhTq3bQHWsAM8GErmWXHthOM=','Fp9BaVj65TE+jyAGCKwVPXceBDM40LyvMCxuY0A/VXg=','7P5VZZjVV2CItMvY9nBsc7GpVy2fYkA5eg86vF4HH+EdD2HElVIpAM7xd8IO/TlL',6,17),(100,'TV9l5dbtUNCE6WVSDQ1jj1gYu9v/6KL4pf68JQHuWok=','sBx+z7tGjXmxMK7I56d5wuBVNujGADSEdboBUOucpPs=','UaYxhY92k1RodIF0aNB3eDmR2bsGi6VKl3OGuzica4pC/wU/KIRdVfzZmofT+rza',6,17),(101,'1KRdckezwDxPNTRZ25S23joh0sopX6y8x2zyWv7aKhE=','BqjBOePjQnHNylbPnb/OuhTpwG66qc0iheh7uIFnDyE=','BHj0MsHLqH3vsdC8imoDejy87iU+fs6EsPyFTKGBr8XD6D9U8YN+A5Rx4lTEzGOC',6,17),(102,'3E0GJkUnF6OvyzwQT62cxEtQ0HVsmoxZy1QF6eXj4BY=','wNr/W8MKkNfx+HndvHbq4H/HU6sDTGhaHvjGiQu1iVo=','VtBULEdvN1Sqn1Ai0qcOKgukdt5FXiiuchL53+lRcK09cqCoCfgKd8r+xBZPzjDi',5,14),(103,'U8u7Mdvk/9OLb5j3Rfpgfu8uZPLQLnxzdhyOveE5yqo=','a1WE6/h70VScP79op0csx77yKelnz6kLYt4kcfR0AUI=','sKusOgBkA5W8Oxb62q0l/bG2WAVNotMzO+h8SIaTZBU9raShrQLgQVpXx0IdqGi/',6,18),(104,'8JkvkqP9YZeWMzZNdjFNarBt5FtG7+9rilEtm4l9nLk=','lr0S9PkqPvU6q9hk+dxurcGHD2Pc9FV1pdS5nK0mccE=','GbLZIgUmWbIeYjzzGT1d0LimeJP42vwiDX2IsvQgmtFxPdMZdSZbL2AYD8VJMA9h',6,18),(105,'v5oDLVHO9XpP6cJveJQp9AQuHvGbJ9PpW/TYeE+J3JM=','WjZf/62Y7j+HZy5KRTUYreHcsw3yhdeNVbCmn9bBPMA=','seC9s0C/0Ry0NWSWXO6lHA7mM8p6hTe1qetimB/FaJDB9WOEhwtVuYtJpu6m407i',6,18),(106,'bItQfL60QC/EXz9QPkgIvwQf3CJSeLBWWkXioe5rDc4=','NAIaBOMySSySQ+OLxUgyA4yokuXZ00Z6oefp06PQRL4=','sJXfB6a11bzgvVSQiTgNO3M5s5g9xzKnNWrZjQbtYbyQ7V60uesCG790fXMQg2Ai',3,9),(107,'AlArjpYB0TjD04kmlGNMunksWkQed9G8tPUPIMtjTXY=','6oZMx0Zp9Htz4hSX3GqC6gDJQ+cDDPF+9s+tMnRLNLQ=','nzY0KTm6QzU29qqSHYq/ufW4Qc3Ro+rzVzpunsaJ2Kgau7EqHDZw+bxpKzM6uWSu',6,18),(108,'G6KfxlvPgKpV5UtqEPecql9NwIOtN7toXXyMpDMf7C8=','zD/lZhyCTRSx+wiFYTVV0YMwz37dyGPTHjpWuIkfGfU=','KZRKahPqn9B0KKivzEpg5UaO6sUqY1bofS8/vcq2PTXX0DuOZIbAH2REfhQr9MHZ',6,18),(109,'u74lHAj3bh6neA24G/EvG1Km/KZvO7ryxRnvawpO3jY=','JsbD+4iG4s9tOx+YFcWBZgapvQEKtLE9sJ1ncTAWfmo=','DYyhhhUNJQtKqf/Y0tamHuSCVaCcPY0chBpv3WoMWYpCvZDHiwq5EGMOQAOLDBMO',1,1),(110,'wqwWb3QZW8owfaSImlIXhFJyOzeWuH2Xg2Ax7BQfzeU=','oMUZjsRmauLa5Dcgpp82ss4O4UE/KIJ89G/C8EdDIEQ=','NUf3i/rQzbee+8gAPIJYFiOiWNgG/MjOp/aurhcyyBLFbDga+omnxDU/Pk0wf2bR',1,3);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `year_level`
--

DROP TABLE IF EXISTS `year_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `year_level` (
  `yr_lvl` int NOT NULL,
  PRIMARY KEY (`yr_lvl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `year_level`
--

LOCK TABLES `year_level` WRITE;
/*!40000 ALTER TABLE `year_level` DISABLE KEYS */;
INSERT INTO `year_level` VALUES (1),(2),(3),(4),(5),(6);
/*!40000 ALTER TABLE `year_level` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29 15:19:28
