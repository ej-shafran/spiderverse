/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_canon_event`
--

DROP TABLE IF EXISTS `dim_canon_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_canon_event` (
  `canon_event_key` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `expected_casualties` int NOT NULL,
  PRIMARY KEY (`canon_event_key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_canon_event`
--

LOCK TABLES `dim_canon_event` WRITE;
/*!40000 ALTER TABLE `dim_canon_event` DISABLE KEYS */;
INSERT INTO `dim_canon_event` VALUES (1,'Uncle Ben''s Death','The tragic death of Uncle Ben due to a criminal act',1),(2,'Radiation Accident','Exposure to radioactive substances resulting in spider-like powers',0),(3,'Police Captain Sacrifice','A heroic sacrifice by a police captain during a battle',1),(4,'Collateral Damage','Damage caused to civilians during a superhero confrontation',5),(5,'Hero''s Identity Exposed','The revelation of the hero''s secret identity to the public',0),(6,'Hero Saves Falling Object','Rescuing civilians from a falling object or debris',2),(7,'Web-Slinging Chase','Engaging in a high-speed chase using web-slinging abilities',0),(8,'Nighttime Patrol','Patrolling the city streets at night to maintain peace and security',0),(9,'Rescue Mission','Saving hostages or innocent individuals from dangerous situations',3),(10,'Final Showdown','Epic battle against a major supervillain',10);
/*!40000 ALTER TABLE `dim_canon_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_location`
--

DROP TABLE IF EXISTS `dim_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_location` (
  `location_key` int NOT NULL AUTO_INCREMENT,
  `universe` varchar(20) NOT NULL,
  `planet` varchar(50) NOT NULL,
  `coordinates` varchar(30) NOT NULL,
  PRIMARY KEY (`location_key`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_location`
--

LOCK TABLES `dim_location` WRITE;
/*!40000 ALTER TABLE `dim_location` DISABLE KEYS */;
INSERT INTO `dim_location` VALUES (1,'616','Earth','40.7128° N, 74.0060° W'),(2,'65','Earth','40.7128° N, 74.0060° W'),(3,'1610','Earth','37.7749° N, 122.4194° W'),(4,'982','Earth','34.0522° N, 118.2437° W'),(5,'TRN421','Earth','40.7128° N, 74.0060° W'),(6,'606','Earth','51.5074° N, 0.1278° W'),(7,'516','Earth','19.0760° N, 72.8777° E'),(8,'216','Earth','40.7128° N, 74.0060° W'),(9,'928','Earth','34.0522° N, 118.2437° W'),(10,'TRN576','Earth','51.5074° N, 0.1278° W'),(11,'617','Earth','37.7749° N, 122.4194° W'),(12,'618','Earth','40.7128° N, 74.0060° W'),(13,'619','Earth','40.7128° N, 74.0060° W'),(14,'620','Earth','37.7749° N, 122.4194° W'),(15,'621','Earth','37.7749° N, 122.4194° W'),(16,'622','Earth','37.7749° N, 122.4194° W'),(17,'623','Earth','37.7749° N, 122.4194° W'),(18,'624','Earth','37.7749° N, 122.4194° W'),(19,'625','Earth','37.7749° N, 122.4194° W'),(20,'626','Earth','37.7749° N, 122.4194° W'),(21,'627','Earth','51.5074° N, 0.1278° W'),(22,'628','Earth','51.5074° N, 0.1278° W'),(23,'635','Earth','51.5074° N, 0.1278° W'),(24,'636','Earth','34.0522° N, 118.2437° W'),(25,'637','Earth','40.7128° N, 74.0060° W'),(26,'638','Earth','19.0760° N, 72.8777° E'),(27,'639','Earth','51.5074° N, 0.1278° W'),(28,'640','Earth','40.7128° N, 74.0060° W'),(29,'641','Earth','34.0522° N, 118.2437° W'),(30,'642','Earth','37.7749° N, 122.4194° W');
/*!40000 ALTER TABLE `dim_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_spider`
--

DROP TABLE IF EXISTS `dim_spider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_spider` (
  `spider_key` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `secret_identity` varchar(100) NOT NULL,
  `species` varchar(100) NOT NULL,
  `age` int NOT NULL,
  `origin_universe` varchar(20) NOT NULL,
  PRIMARY KEY (`spider_key`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_spider`
--

LOCK TABLES `dim_spider` WRITE;
/*!40000 ALTER TABLE `dim_spider` DISABLE KEYS */;
INSERT INTO `dim_spider` VALUES (1,'Spider-Man','Peter Parker','Human',26,'616'),(2,'Spider-Gwen','Gwen Stacy','Human',22,'65'),(3,'Spider-Man','Miles Morales','Human',18,'1610'),(4,'Spider-Girl','Mayday Parker','Human',19,'982'),(5,'Spider-Ham','Peter Porker','Pig',29,'TRN421'),(6,'Arachne','Anya Corazon','Human',21,'606'),(7,'Scarlet Spider','Ben Reilly','Human',28,'516'),(8,'Silk','Cindy Moon','Human',24,'216'),(9,'Spider-Man 2099','Miguel O''Hara','Human',32,'928'),(10,'SP//dr','Peni Parker','Human',16,'TRN576'),(11,'Web-Warrior','Kaine Parker','Human',34,'617'),(12,'Arachnid','Jessica Drew','Human',30,'618'),(13,'Octo-Spider','Otto Octavius','Human',45,'619'),(14,'Web-Sage','Ezekiel Sims','Human',50,'620'),(15,'Tarantula','Silvio Manfredi','Human',70,'621'),(16,'Vampider','Morlun','Vampire',800,'622'),(17,'Shadow-Web','Aaron Davis','Human',38,'623'),(18,'Black Widow','Felicia Hardy','Human',35,'624'),(19,'Scorpion','Mac Gargan','Human',42,'625'),(20,'Webbed Vengeance','Adrian Toomes','Human',60,'626'),(21,'Electro-Web','Max Dillon','Human',36,'627'),(22,'Carnage','Cletus Kasady','Human',40,'628'),(23,'Web-Captain','Carol Danvers','Human',38,'635'),(24,'Ms. Arachnid','Kamala Khan','Human',16,'636'),(25,'Agent Venom','Eddie Brock','Human',34,'637'),(26,'Web-Agent','Flash Thompson','Human',31,'638'),(27,'Arachno-Femme','Felicia Hardy','Human',35,'639'),(28,'Spinner','Eugene Thompson','Human',30,'640'),(29,'Web-Phantom','Michael Morbius','Vampire',37,'641'),(30,'Silver Spider','Miguel O''Hara','Human',25,'642');
/*!40000 ALTER TABLE `dim_spider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_villain`
--

DROP TABLE IF EXISTS `dim_villain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_villain` (
  `villain_key` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `secret_identity` varchar(100) DEFAULT NULL,
  `origin_universe` varchar(20) NOT NULL,
  PRIMARY KEY (`villain_key`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_villain`
--

LOCK TABLES `dim_villain` WRITE;
/*!40000 ALTER TABLE `dim_villain` DISABLE KEYS */;
INSERT INTO `dim_villain` VALUES (1,'Green Goblin','Norman Osborn','616'),(2,'Doctor Octopus','Otto Octavius','616'),(3,'Venom','Eddie Brock','616'),(4,'Carnage','Cletus Kasady','1610'),(5,'Kingpin','Wilson Fisk','2099'),(6,'Sandman','Flint Marko','90214'),(7,'Lizard','Curt Connors','042'),(8,'Kraven the Hunter','Sergei Kravinoff','616'),(9,'Electro','Max Dillon','161'),(10,'Mysterio','Quentin Beck','632'),(11,'Vulture','Adrian Toomes','319'),(12,'Scorpion','Mac Gargan','671'),(13,'Shocker','Herman Schultz','917'),(14,'Rhino','Aleksei Sytsevich','261'),(15,'Chameleon','Dmitri Smerdyakov','556'),(16,'Hobgoblin','Roderick Kingsley','224'),(17,'Black Cat','Felicia Hardy','181'),(18,'Jackal','Miles Warren','009'),(19,'Hammerhead','Joseph Lorenzini','417'),(20,'Silvermane','Silvio Manfredi','802'),(21,'Tombstone','Lonnie Lincoln','173'),(22,'Shriek',NULL,'953'),(23,'Carrion',NULL,'041'),(24,'Demogoblin',NULL,'374'),(25,'Toxin',NULL,'557'),(26,'Morbius','Michael Morbius','872'),(27,'Tinkerer','Phineas Mason','937'),(28,'Stegron','Vincent Stegron','658'),(29,'The Spot','Jonathan Ohnn','799'),(30,'Jack O''Lantern','Jason Macendale','516'),(31,'Boomerang','Fred Myers','287'),(32,'Silver Sable','Silver Sablinova','491'),(33,'Hobgoblin','Ned Leeds','124'),(34,'Tarantula','Anton Miguel Rodriguez','312'),(35,'Cobra','Klaus Voorhees','573'),(36,'Molten Man','Mark Raxton','728'),(37,'Beetle','Abner Jenkins','875'),(38,'Stilt-Man','Wilbur Day','186'),(39,'Big Wheel','Jackson Weele','441'),(40,'White Rabbit','Lorina Dodson','669'),(41,'Kangaroo','Frank Oliver','572'),(42,'Grizzly','Maxwell Markham','713'),(43,'The Shroud','Maximillian Coleridge','889');
/*!40000 ALTER TABLE `dim_villain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_event`
--

DROP TABLE IF EXISTS `fact_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_event` (
  `spider_key` int NOT NULL,
  `canon_event_key` int NOT NULL,
  `villain_key` int DEFAULT NULL,
  `location_key` int NOT NULL,
  `ts` timestamp NOT NULL,
  `casualties` int NOT NULL,
  `is_disruption` tinyint(1) NOT NULL,
  `report` text NOT NULL,
  KEY `spider_key` (`spider_key`),
  KEY `canon_event_key` (`canon_event_key`),
  KEY `villain_key` (`villain_key`),
  KEY `location_key` (`location_key`),
  CONSTRAINT `fact_event_ibfk_1` FOREIGN KEY (`spider_key`) REFERENCES `dim_spider` (`spider_key`),
  CONSTRAINT `fact_event_ibfk_2` FOREIGN KEY (`canon_event_key`) REFERENCES `dim_canon_event` (`canon_event_key`),
  CONSTRAINT `fact_event_ibfk_3` FOREIGN KEY (`villain_key`) REFERENCES `dim_villain` (`villain_key`),
  CONSTRAINT `fact_event_ibfk_4` FOREIGN KEY (`location_key`) REFERENCES `dim_location` (`location_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_event`
--

LOCK TABLES `fact_event` WRITE;
/*!40000 ALTER TABLE `fact_event` DISABLE KEYS */;
INSERT INTO `fact_event` VALUES (1,1,1,1,'2023-05-01 07:00:00',1,0,'Uncle Ben died as expected.'),(1,2,NULL,2,'2023-05-05 12:30:00',0,0,'Radiation accident resulted in powers.'),(2,1,NULL,1,'2023-05-10 15:45:00',0,0,'Alternate universe Uncle Ben died.'),(3,3,4,3,'2023-05-15 09:00:00',1,0,'Police captain sacrificed during battle.'),(4,4,2,4,'2023-05-20 13:20:00',5,0,'Collateral damage during fight.'),(5,5,3,5,'2023-05-25 18:00:00',0,0,'Alternate universe hero''s identity exposed.'),(6,6,6,6,'2023-05-30 06:00:00',2,0,'Rescued civilians from a falling object.'),(7,7,7,7,'2023-06-01 14:30:00',0,0,'Engaged in a web-slinging chase.'),(8,8,NULL,8,'2023-06-04 17:00:00',0,0,'Nighttime patrol in progress.'),(9,9,8,9,'2023-06-07 11:15:00',3,0,'Successful rescue mission.'),(10,10,9,10,'2023-06-10 16:45:00',10,0,'Intense final showdown with a supervillain.');
/*!40000 ALTER TABLE `fact_event` ENABLE KEYS */;
UNLOCK TABLES;

-- Create a stored procedure to generate additional random events
DELIMITER //
CREATE PROCEDURE generate_random_events(IN num_events INT)
BEGIN
  DECLARE counter INT DEFAULT 0;
  DECLARE spider_key INT;
  DECLARE v_canon_event_key INT;
  DECLARE villain_key INT;
  DECLARE location_key INT;
  DECLARE ts TIMESTAMP;
  DECLARE casualties INT;
  DECLARE is_disruption INT;
  DECLARE report TEXT;
  
  WHILE counter < num_events DO
    SET spider_key = FLOOR(RAND() * 30) + 1;
    SET v_canon_event_key = FLOOR(RAND() * 10) + 1;
    SET villain_key = FLOOR(RAND() * 42) + 1;
    SET location_key = spider_key;
    SET ts = TIMESTAMPADD(MINUTE, FLOOR(RAND() * 44640) + 1, '2023-05-01 00:00:00');
    SET casualties = FLOOR(RAND() * 10);
    SET is_disruption = FLOOR(RAND() * 2);
    
    SELECT name INTO report FROM dim_canon_event WHERE canon_event_key = v_canon_event_key LIMIT 1;

    IF is_disruption = 1 THEN
      SET report = CONCAT('Event "', report, '" disrupted.');
    ELSE
      SET report = CONCAT('Event "', report, '" occurred.');
    END IF;

    INSERT INTO fact_event (spider_key, canon_event_key, villain_key, location_key, ts, casualties, is_disruption, report)
    VALUES (spider_key, v_canon_event_key, villain_key, location_key, ts, casualties, is_disruption, report);

    SET counter = counter + 1;
  END WHILE;
END //
DELIMITER ;

-- Generate additional fake data using the stored procedure
CALL generate_random_events(100);

-- Drop the stored procedure after use
DROP PROCEDURE IF EXISTS generate_random_events;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

