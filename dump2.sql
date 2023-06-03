-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: GWS
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `accommodation_options`
--

DROP TABLE IF EXISTS `accommodation_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accommodation_options` (
  `accommodation_id` int(11) NOT NULL,
  `accommodation_name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`accommodation_id`),
  KEY `rating_id` (`rating_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `accommodation_options_ibfk_1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`rating_id`),
  CONSTRAINT `accommodation_options_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_options`
--

LOCK TABLES `accommodation_options` WRITE;
/*!40000 ALTER TABLE `accommodation_options` DISABLE KEYS */;
INSERT INTO `accommodation_options` VALUES
(1,'Grapevine Retreat',6,'Discover tranquility in the heart of wine country at Grapevine Retreat.',7),
(2,'The Wine Cottage Hideaway',7,'The Wine Cottage Hideaway: Escape to a charming wine cottage for a serene retreat.',8),
(3,'Vinetop Estate',17,'Indulge in luxurious accommodations amidst breathtaking vineyard views.',19),
(4,'Vinewood Manor',18,'Experience boutique elegance amidst the beauty of vineyards.',20),
(5,'Oakwood Lodge',28,'Find rustic luxury nestled in the heart of wine country.',31),
(6,'Vino Vista Resort',29,'Enjoy contemporary comforts amidst the serene beauty of vineyards.',32),
(7,'Vino Verde Villa',39,'Experience a luxurious vineyard retreat at Vino Verde Villa.',43),
(8,'Chateau Cellars',40,'Chateau Cellars: Embrace historic charm combined with modern comforts at Chateau Cellars.',44),
(9,'Vineyard Bliss Lodge',50,'Find blissful retreat amongst the tranquil vineyards.',55),
(10,'The Wine Haven Cottage',51,'Discover secluded tranquility at The Wine Haven Cottage.',56);
/*!40000 ALTER TABLE `accommodation_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_and_festivals`
--

DROP TABLE IF EXISTS `events_and_festivals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_and_festivals` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_date` date DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `ticket_price` decimal(8,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `rating_id` (`rating_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `events_and_festivals_ibfk_1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`rating_id`),
  CONSTRAINT `events_and_festivals_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_and_festivals`
--

LOCK TABLES `events_and_festivals` WRITE;
/*!40000 ALTER TABLE `events_and_festivals` DISABLE KEYS */;
INSERT INTO `events_and_festivals` VALUES
(1,'Vino & Music','2023-09-01',4,70.00,'Indulge in the perfect harmony of exquisite wines and melodious tunes at this enchanting event. Cheers to a memorable night of sensory delights!',5),
(2,'Vineyard Harvest Spectacular','2023-09-02',5,81.00,'Immerse yourself in the vibrant atmosphere of a bountiful grape harvest. Celebrate nature\'s bounty with tastings, live music, and joyful festivities.',6),
(3,'A Grape Affair','2023-09-03',15,145.00,'Enter a world of grape-inspired enchantment. Delight in a fusion of fine wines, delectable bites, and captivating experiences, creating an affair to remember.',17),
(4,'Vintage Wine Fest','2023-09-04',16,93.00,'Raise a glass to the timeless elegance of vintage wines. Experience an extraordinary festival featuring rare finds, expert tastings, and a journey through time.',18),
(5,'A Toast to Joy','2023-09-05',26,127.00,'Celebrate life\'s moments with a jubilant toast. Delight in an exquisite selection of wines, delightful company, and an ambiance filled with laughter and joy.',29),
(6,'Sip, Savor, and Celebrate','2023-09-06',27,148.00,'Embark on a flavorful journey as you sip and savor exceptional wines and delectable gastronomic creations. Let the celebration begin!',30),
(7,'Sparkling Nights','2023-09-07',37,70.00,'Experience the allure of effervescence under the starry sky. Toast to the night with a captivating selection of sparkling wines, creating a truly memorable affair.',41),
(8,'Winter Wine Wonderland','2023-09-08',38,108.00,'Step into a magical wonderland of wines during the winter season. Warm your soul with rich, velvety flavors and embrace the festive spirit.',42),
(9,'Wine & Jazz Fusion','2023-09-09',48,63.00,'Let the smooth melodies of jazz complement the elegance of wine. Immerse yourself in a fusion of sophisticated notes and refined tastes.',53),
(10,'Spring Blossom Wine Festival','2023-09-10',49,123.00,'Welcome the arrival of spring amidst blossoming vines. Revel in the freshness of the season with vibrant wines, lively entertainment, and blooming joy.',54);
/*!40000 ALTER TABLE `events_and_festivals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_attractions`
--

DROP TABLE IF EXISTS `local_attractions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_attractions` (
  `attraction_id` int(11) NOT NULL,
  `attraction_name` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`attraction_id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `local_attractions_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_attractions`
--

LOCK TABLES `local_attractions` WRITE;
/*!40000 ALTER TABLE `local_attractions` DISABLE KEYS */;
INSERT INTO `local_attractions` VALUES
(1,'Sagara Falls',1,'Majestic cascades of water plunging down rocky cliffs, creating a mesmerizing natural spectacle.'),
(2,'Binto Festival',1,'A vibrant celebration filled with music, dance, and colorful costumes, showcasing the rich cultural heritage of the region.'),
(3,'Cheque Parade',2,'A lively procession where participants flaunt oversized novelty cheques, symbolizing generosity and jubilation.'),
(4,'Rika Fireworks',2,'A breathtaking pyrotechnic display that illuminates the night sky with a symphony of dazzling colors and explosive patterns.'),
(5,'Palabento orchestra',3,'A harmonious ensemble of talented musicians, playing a diverse repertoire of melodies that captivate the audience\'s hearts.'),
(6,'Mount Hema',3,'A towering peak offering breathtaking panoramic views of pristine landscapes, inviting adventurers to conquer its majestic summit.'),
(7,'Largest Chair in the world',4,'A colossal seating structure, showcasing engineering marvel and offering an extraordinary photo opportunity for visitors.'),
(8,'Mica Balloon Festival',4,'A whimsical event where the sky fills with a kaleidoscope of vibrant hot air balloons, creating a magical and enchanting atmosphere.'),
(9,'Running with the Bulls',5,'A thrilling and adrenaline-pumping tradition where brave individuals dash alongside powerful bulls, showcasing courage and agility.'),
(10,'swimming with the Seals',5,'A delightful aquatic adventure where swimmers can frolic alongside playful seals, witnessing their graceful movements in their natural habitat.');
/*!40000 ALTER TABLE `local_attractions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `continent` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES
(1,'North America','US',1,' 23 Main St, Springfield, CA 12345'),
(2,'North America','US',1,'456 Oak Ave, Lexington, NY 67890'),
(3,'North America','US',1,'789 Maple Ln, Franklin, TX 23456'),
(4,'North America','US',1,'321 Elm St, Greenville, IL 34567'),
(5,'North America','US',1,'654 Pine Rd, Jackson, OH 45678'),
(6,'North America','US',1,'987 Cedar Ave, Madison, PA 56789'),
(7,'North America','US',1,'135 Walnut Dr, Oakland, GA 89012'),
(8,'North America','US',1,'864 Cherry Ct, Richmond, AZ 90123'),
(9,'North America','US',1,'246 Birch St, Arlington, NV 45678'),
(10,'North America','US',1,'579 Willow Ave, Portland, IA 23456'),
(11,'North America','US',1,'802 Spruce Ln, Denver, OR 34567'),
(12,'Europe','France',2,'10 Rue Principale, Paris 75001'),
(13,'Europe','France',2,'25 Rue des Fleurs, Lyon 69002'),
(14,'Europe','France',2,'8 Avenue du Soleil, Marseille 13008'),
(15,'Europe','France',2,'14 Rue de la Fontaine, Bordeaux 33000'),
(16,'Europe','France',2,'6 Place de la Mairie, Toulouse 31000'),
(17,'Europe','France',2,'3 Rue de l\'eglise, Nantes 44000'),
(18,'Europe','France',2,'12 Boulevard des Champs, Nice 06000'),
(19,'Europe','France',2,'19 Rue de la Liberte, Strasbourg 67000'),
(20,'Europe','France',2,'7 Allee des Roses, Lille 59000'),
(21,'Europe','France',2,'2 Avenue de la Mer, Cannes 06400'),
(22,'Europe','France',2,'9 Place de la Republique, Montpellier 34000'),
(23,'Europe','Portugal',3,'Rua Principal, Lisboa 1000-001'),
(24,'Europe','Portugal',3,'Avenida das Flores, Porto 4000-002'),
(25,'Europe','Portugal',3,'Travessa do Sol, Braga 4700-003'),
(26,'Europe','Portugal',3,'Praea da Liberdade, Coimbra 3000-004'),
(27,'Europe','Portugal',3,'Rua da Praia, Faro 8000-005'),
(28,'Europe','Portugal',3,'Largo da Fonte, Aveiro 3800-006'),
(29,'Europe','Portugal',3,'Rua dos Pinheiros, Viseu 3500-007'),
(30,'Europe','Portugal',3,'Avenida Central, Setubal 2900-008'),
(31,'Europe','Portugal',3,'Praea da Republica, Evora 7000-009'),
(32,'Europe','Portugal',3,'Rua das Oliveiras, Guimaraes 4800-010'),
(33,'Europe','Portugal',3,'Avenida da Praia, Portimao 8500-011'),
(34,'Africa','South Africa',4,'123 Main Street, Johannesburg 2000'),
(35,'Africa','South Africa',4,'456 Oak Avenue, Cape Town 8001'),
(36,'Africa','South Africa',4,'789 Maple Lane, Durban 4001'),
(37,'Africa','South Africa',4,'321 Elm Street, Pretoria 0002'),
(38,'Africa','South Africa',4,'654 Pine Road, Port Elizabeth 6001'),
(39,'Africa','South Africa',4,'987 Cedar Close, Bloemfontein 9301'),
(40,'Africa','South Africa',4,'135 Walnut Drive, Kimberley 8301'),
(41,'Africa','South Africa',4,'864 Cherry Lane, East London 5201'),
(42,'Africa','South Africa',4,'246 Birch Street, Pietermaritzburg 3201'),
(43,'Africa','South Africa',4,'579 Willow Avenue, Nelspruit 1200'),
(44,'Africa','South Africa',4,'802 Spruce Street, Polokwane 0699'),
(45,'Europe','Italy',5,'Via Roma, Rome 00100'),
(46,'Europe','Italy',5,'Corso Italia, Milan 20121'),
(47,'Europe','Italy',5,'Piazza del Duomo, Florence 50122'),
(48,'Europe','Italy',5,'Via Veneto, Venice 30124'),
(49,'Europe','Italy',5,'Viale dei Colli, Turin 10100'),
(50,'Europe','Italy',5,'Via Garibaldi, Naples 80142'),
(51,'Europe','Italy',5,'Piazza San Marco, Verona 37121'),
(52,'Europe','Italy',5,'Via Dante, Bologna 40123'),
(53,'Europe','Italy',5,'Corso Vittorio Emanuele, Genoa 16121'),
(54,'Europe','Italy',5,'Piazza della Signoria, Pisa 56126'),
(55,'Europe','Italy',5,'Via XX Settembre, Palermo 90141');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL,
  `rating_title` varchar(255) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES
(1,'A Taste of Excellence at Vineyard Vista',0.3,'\"\"\"Beautiful vineyard, exquisite wines. A must-visit for wine lovers!\"\"\"'),
(2,'Unlocking Bliss at Vintage Reserve Society',0.1,'\"\"\"Great selection, monthly surprises. Perfect for expanding your wine collection.\"\"\"'),
(3,'Culinary Marvels Meet Wine Paradise at Bistro Vin',0.8,'\"\"\"Delicious food, paired with fine wines. A culinary delight!\"\"\"'),
(4,'Fusion Flavors and Fine Wines at Cellar Delights',0.8,'\"\"\"Cozy ambiance, exceptional service. The flavors left me wanting more.\"\"\"'),
(5,'A Toast to Joy: Wine & Music Festival Extravaganza',0.5,'\"\"\"Vibrant atmosphere, live music, and fantastic wines. A memorable experience!\"\"\"'),
(6,'Harvest Bliss: Vineyard Harvest Celebration',0.0,'\"\"\"An extravaganza of flavors and entertainment. Unforgettable moments!\"\"\"'),
(7,'Serenity in Wine Country: Grapevine Retreat',0.5,'\"\"\"Charming retreat, surrounded by vineyards. Serenity at its finest.\"\"\"'),
(8,'Boutique Elegance Amidst Vines: Vinewood Manor',0.9,'\"\"\"Luxurious stay, impeccable service. Pampered in the heart of wine country.\"\"\"'),
(9,'Decoding the Art of Wine Tasting: Masterclass Series',0.0,'\"\"\"Insightful sessions, expert guidance. Expand your wine knowledge.\"\"\"'),
(10,'Exploring Wine Heritage: Vintage Wine Symposium',0.6,'\"\"\"Engaging workshops, wine tasting adventures. Perfect for enthusiasts.\"\"\"'),
(11,'A Scenic Journey Through Vineyard Valleys: Wine Country Trail',0.9,'\"\"\"Breathtaking views, diverse wineries. A journey for the senses.\"\"\"'),
(12,'Discovering Hidden Gems: Vintner\'s Route Expedition',0.0,'\"\"\"Scenic route, hidden gems. Uncover the region\'s best wines.\"\"\"'),
(13,'The Essence of Tradition: Heritage Vineyards',0.6,'\"\"\"Stunning estate, exceptional wines. A wine lover\'s paradise!\"\"\"'),
(14,'The Ultimate Wine Experience: Grand Cru Society',0.4,'\"\"\"Curated selections, personalized service. Elevate your wine experience.\"\"\"'),
(15,'Gastronomic Delights in Wine Country: Vineyard Bistro',0.6,'\"\"\"Mouthwatering dishes, paired with exquisite wines. Culinary perfection!\"\"\"'),
(16,'A Culinary Journey with Wine Pairings: Cellar Fusion',0.6,'\"\"\"Quaint ambiance, delightful flavors. A gastronomic delight!\"\"\"'),
(17,'Vino & Music: A Harmonious Celebration of Wine and Melodies',0.4,'\"\"\"Lively atmosphere, endless wine tastings. A festive celebration!\"\"\"'),
(18,'Vineyard Harvest Spectacular: A Festive Toast to the Season',0.3,'\"\"\"Epicurean adventure, live entertainment. Unforgettable moments!\"\"\"'),
(19,'Luxurious Retreat Amidst Vineyard Beauty: Vinetop Estate',0.1,'\"\"\"Idyllic retreat, vineyard views. Pure relaxation awaits.\"\"\"'),
(20,'Quaint Charm and Serenity: The Wine Cottage Hideaway',0.7,'\"\"\"Luxury at its finest, impeccable hospitality. A dream getaway.\"\"\"'),
(21,'Mastering the Art of Wine Appreciation: Tasting Mastery Workshop',0.6,'\"\"\"Insightful workshops, esteemed experts. Expand your wine knowledge.\"\"\"'),
(22,'Exploring New Horizons: International Wine Symposium',0.8,'\"\"\"Immersive experiences, hands-on learning. Perfect for wine enthusiasts.\"\"\"'),
(23,'Winding Through Enchanting Vistas: The Vine Valley Path',0.8,'\"\"\"Picturesque vineyards, diverse wineries. Discover hidden treasures.\"\"\"'),
(24,'The Winemaker\'s Journey: Vintner\'s Legacy Trail',0.6,'\"\"\"Scenic journey, unforgettable tastings. Explore the region\'s finest.\"\"\"'),
(25,'A Modern Twist on Tradition: Vineyard Elevation',0.7,'\"\"\"Rustic charm, exceptional vintages. A wine lover\'s haven!\"\"\"'),
(26,'The Elite Society of Wine Enthusiasts: Vintage Reserve Circle',0.1,'\"\"\"Handpicked selections, exclusive offers. Indulge in wine paradise.\"\"\"'),
(27,'Epicurean Delights in a Vineyard Setting: Cellar Cuisine',0.0,'\"\"\"Exquisite flavors, impeccable wine pairings. A culinary masterpiece!\"\"\"'),
(28,'A Fusion of Flavors and Fine Wines: Vinoteca Fusion',0.3,'\"\"\"Cosy atmosphere, outstanding service. A feast for the senses.\"\"\"'),
(29,'Sip, Savor, and Celebrate: Wine & Food Extravaganza',0.2,'\"\"\"Buzzing energy, eclectic wines. Celebrate in style!\"\"\"'),
(30,'Autumn Harvest Wine Festival: A Seasonal Delight',0.7,'\"\"\"Captivating performances, tantalizing sips. Unforgettable festivities!\"\"\"'),
(31,'Rustic Luxury in the Heart of Wine Country: Oakwood Lodge',0.9,'\"\"\"Tranquil haven, vineyard backdrop. Escape to serenity.\"\"\"'),
(32,'Contemporary Comforts Amidst Vineyard Serenity: Vino Vista Resort',0.4,'\"\"\"Opulent retreat, personalized attention. Pamper yourself in style.\"\"\"'),
(33,'A Journey into Terroir: Soil and Grape Masterclass',0.9,'\"\"\"Enlightening seminars, industry experts. Elevate your wine knowledge.\"\"\"'),
(34,'The Art of Wine Blending: Create Your Own Vintage',0.6,'\"\"\"Interactive workshops, memorable tastings. Unleash your wine passion.\"\"\"'),
(35,'A Coastal Escape: The Sea Breeze Wine Route',0.9,'\"\"\"Breathtaking landscapes, diverse wineries. A scenic adventure awaits.\"\"\"'),
(36,'The Hidden Gems of Wine Country: Vintner\'s Discovery Trail',0.4,'\"\"\"Hidden gems, vinous treasures. Embark on a wine lover\'s quest.\"\"\"'),
(37,'A Symphony of Wine and Nature: Harmony Hills Estate',0.2,'\"\"\"Elegant setting, outstanding wines. A sensory delight!\"\"\"'),
(38,'The Connoisseur\'s Haven: Reserve Collection Society',0.6,'\"\"\"Curated selections, VIP benefits. Unlock a world of wine.\"\"\"'),
(39,'Gastronomic Delights with Vineyard Views: Terrace Vine',0.4,'\"\"\"Gourmet cuisine, wine-infused bliss. A culinary escapade!\"\"\"'),
(40,'A Celebration of Local Produce and Fine Wines: Farmhouse Cellar',0.3,'\"\"\"Intimate ambiance, delectable creations. A feast for foodies.\"\"\"'),
(41,'Sparkling Nights: Wine and Fireworks Spectacular',0.5,'\"\"\"Enchanting atmosphere, lively tastings. Revel in wine magic!\"\"\"'),
(42,'Winter Wine Wonderland: Holiday Vintner\'s Festival',0.6,'\"\"\"Spectacular showcases, gastronomic delights. Unforgettable memories!\"\"\"'),
(43,'Vineyard Luxury Retreat: Vino Verde Villa',0.2,'\"\"\"Tranquil retreat, vineyard vistas. Embrace relaxation and luxury.\"\"\"'),
(44,' Historic Charm and Modern Comforts: Chateau Cellars',0.7,'\"\"\"Pristine accommodations, impeccable service. Indulge in opulence.\"\"\"'),
(45,'Exploring Old World Wines: Vintage Vintages Seminar',0.9,'\"\"\"Educational seminars, wine connoisseurs. Expand your wine expertise.\"\"\"'),
(46,'Unveiling New Terroirs: Emerging Wine Regions Symposium',0.2,'\"\"\"Interactive classes, hands-on learning. Enhance your wine knowledge.\"\"\"'),
(47,'A Taste of Tuscany: Tuscan Wine Route Adventure',0.6,'\"\"\"Stunning vineyards, diverse wineries. Embark on a wine odyssey.\"\"\"'),
(48,' From Mountains to Valleys: The Wine Explorer\'s Journey',0.5,'\"\"\"Scenic routes, hidden cellar doors. Discover wine wonders.\"\"\"'),
(49,'Boutique Elegance and Artisanal Wines: Vintner\'s Haven Estate',0.9,'\"\"\"Breathtaking vineyard, award-winning wines. A wine enthusiast\'s dream!\"\"\"'),
(50,'The Privileged Cellar: Reserve Connoisseur Club',0.6,'\"\"\"Premium selections, exclusive perks. Elevate your wine journey.\"\"\"'),
(51,'A Gourmet Retreat in Wine Country: Vineyard Gastro',0.5,'\"\"\"Exquisite flavors, sommelier\'s expertise. A culinary symphony!\"\"\"'),
(52,'A Culinary Showcase with Wine Pairings: Cellar Gastronomy',0.7,'\"\"\"Chic ambiance, culinary masterpieces. Delight your taste buds.\"\"\"'),
(53,'Wine & Jazz Fusion: A Rhythmic Celebration of Tastes',0.7,'\"\"\"Vibrant celebrations, remarkable wine tastings. Unforgettable festivities!\"\"\"'),
(54,'Spring Blossom Wine Festival: A Floral Delight for the Senses',0.8,'\"\"\"Gourmet experiences, captivating entertainment. Indulge in wine delights!\"\"\"'),
(55,'Tranquil Seclusion Amidst Vineyard Bliss: Grapevine Haven',0.4,'\"\"\"Secluded sanctuary, vineyard vistas. Escape to tranquility.\"\"\"'),
(56,'Vintage Charm and Modern Luxury: The Wine Manor',0.3,'\"\"\"Luxurious haven, impeccable service. Embrace opulence and relaxation.\"\"\"'),
(57,'Exploring Rare Varietals: Uncharted Wine Expedition',0.4,'\"\"\"Insightful lectures, esteemed educators. Expand your wine expertise.\"\"\"'),
(58,'The Art of Wine and Cheese Pairing: Fromage & Vino Symposium',0.5,'\"\"\"Immersive workshops, hands-on learning. Nurture your wine passion.\"\"\"'),
(59,'Through Sun-Kissed Vineyards: The Golden Grape Route',0.3,'\"\"\"Scenic beauty, diverse wine offerings. Explore a vinous paradise.\"\"\"'),
(60,'A Journey of Terroir and History: Heritage Wine Trail',0.0,'\"\"\"Enchanting paths, hidden wine treasures. Uncover the region\'s best.\"\"\"');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(255) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES
(1,'Napa Valley'),
(2,'Santa Ynez Valley'),
(3,'Barolo'),
(4,'Chianti Classico'),
(5,'Cerasuolo di Vittoria');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants_dining`
--

DROP TABLE IF EXISTS `restaurants_dining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurants_dining` (
  `restaurant_id` int(11) NOT NULL,
  `restaurant_name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `cuisine_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `reservation_options` text DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`),
  KEY `rating_id` (`rating_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `restaurants_dining_ibfk_1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`rating_id`),
  CONSTRAINT `restaurants_dining_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants_dining`
--

LOCK TABLES `restaurants_dining` WRITE;
/*!40000 ALTER TABLE `restaurants_dining` DISABLE KEYS */;
INSERT INTO `restaurants_dining` VALUES
(1,'Savory Bites',2,'International cuisine','A global culinary journey with diverse international cuisine.','Reservations can be made online or by phone.',3),
(2,'Spice Fusion',3,'Fusion cuisine','Innovative fusion flavors from around the world.','Advanced reservations are recommended to secure your table.',4),
(3,'Whisk & Sizzle',13,'Contemporary American cuisine','Contemporary American cuisine in a sophisticated setting.','Book your table in advance for a seamless dining experience.',15),
(4,'Tasteful Temptations',14,'Fine dining with a focus on diverse flavors','Fine dining with artfully crafted dishes.','Reservations are highly recommended to guarantee a table.',16),
(5,'The Hungry Hearth',24,'Comfort food and hearty dishes','Cozy spot serving comforting, hearty dishes.','Call ahead to reserve your spot at this popular eatery.',27),
(6,'Flavor Haven',25,'Eclectic cuisine with a variety of flavors','Eclectic restaurant celebrating diverse flavors.','Reservations can be made online or in person.',28),
(7,'Urban Tastes',35,'Modern urban cuisine with a creative twist','Modern, urban-inspired fusion cuisine.','Book your table in advance to ensure availability.',39),
(8,'Fork & Knife Delights',36,'European-inspired dishes','European-inspired cuisine with flair.','Advanced reservations are recommended for a delightful dining experience.',40),
(9,'Chez Gourmet',46,'French cuisine','Elegant French gastronomy in a refined ambiance.','Secure your table with a reservation for an exquisite French dining experience.',51),
(10,'Zestful Eats',47,'Fresh and vibrant dishes from various cuisines','Fresh and vibrant dishes from various cuisines.','Reservations are accepted and encouraged for a seamless dining experience.',52);
/*!40000 ALTER TABLE `restaurants_dining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `wine_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `regions` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `wine_id` (`wine_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`wine_id`) REFERENCES `wine` (`wine_id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`rating` >= 1 and `rating` <= 100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES
(1,2,95,'Italy','Aromas include tropical fruit, broom, brimstone and dried herb. The palate isn\'t overly expressive, offering unripened apple, citrus and dried sage alongside brisk acidity.','Sicily & Sardinia','Willamette Valley',48),
(2,86,77,'Italy','This is ripe and fruity, a wine that is smooth while still structured. Firm tannins are filled out with juicy red berry fruits and freshened with acidity. It\'s  already drinkable, although it will certainly be better from 2016.','Douro','Lake Michigan Shore',48),
(3,42,99,'US','Tart and snappy, the flavors of lime flesh and rind dominate. Some green pineapple pokes through, with crisp acidity underscoring the flavors. The wine was all stainless-steel fermented.','Oregon','Navarra',36),
(4,117,96,'US','Pineapple rind, lemon pith and orange blossom start off the aromas. The palate is a bit more opulent, with notes of honey-drizzled guava and mango giving way to a slightly astringent, semidry finish.','Michigan','Vittoria',14),
(5,106,91,'Italy','Much like the regular bottling from 2012, this comes across as rather rough and tannic, with rustic, earthy, herbal characteristics. Nonetheless, if you think of it as a pleasantly unfussy country wine, it\'s a good companion to a hearty winter stew.','Northern Spain','Alsace',6),
(6,73,86,'France','Blackberry and raspberry aromas show a typical Navarran whiff of green herbs and, in this case, horseradish. In the mouth, this is fairly full bodied, herbal flavors complement dark plum fruit, while the finish is fresh but grabby.','Alsace','Napa Valley',39),
(7,7,84,'Italy','Here\'s a bright, informal red that opens with aromas of candied berry, white pepper and savory herb that carry over to the palate. It\'s balanced with fresh acidity and soft tannins.','Rheinhessen','Alexander Valley',15),
(8,76,90,'Portugal','This dry and restrained wine offers spice in profusion. Balanced with acidity and a firm texture, it\'s very much for food.','California','Central Coast',49),
(9,43,96,'Framce','Savory dried thyme notes accent sunnier flavors of preserved peach in this brisk, off-dry wine. It\'s fruity and fresh, with an elegant, sprightly footprint.','Mosel','Cafayate',7),
(10,13,98,'South Africa','This has great depth of flavor with its fresh apple and pear fruits and touch of spice. It\'s off dry while balanced with acidity and a crisp texture. Drink now.','Other','Mendoza',34),
(11,104,78,'Portugal','Soft, supple plum envelopes an oaky structure in this Cabernet, supported by 15% Merlot. Coffee and chocolate complete the picture, finishing strong at the end, resulting in a value-priced wine of attractive flavor and immediate accessibility.','Mendoza Province','Ribera del Duero',38),
(12,39,87,'France','This is a dry wine, very spicy, with a tight, taut texture and strongly mineral character layered with citrus as well as pepper. It\'s a food wine with its almost crisp aftertaste.','Virginia','Virginia',37),
(13,76,93,'US','Slightly reduced, this wine offers a chalky, tannic backbone to an otherwise juicy explosion of rich black cherry, the whole accented throughout by firm oak and cigar box.','Beaujolais','Oregon',19),
(14,20,81,'France','This is dominated by oak and oak-driven aromas that include roasted coffee bean, espresso, coconut and vanilla that carry over to the palate, together with plum and chocolate. Astringent, drying tannins give it a rather abrupt finish.','Colchagua Valley','Sicilia',49),
(15,81,79,'US','Building on 150 years and six generations of winemaking tradition, the winery trends toward a leaner style. In this good everyday sipping wine, flavors that range from pear to barely ripe pineapple prove approachable but not distinctive.','Southern Italy','Paso Robles',20),
(16,33,90,'Portugal','Zesty orange peels and apple notes abound in this sprightly, mineral-toned Riesling. Off dry on the palate, yet racy and lean, it\'s a refreshing, easy quaffer with wide appeal.','Maule Valley','Sonoma Coast',28),
(17,49,100,'South Africa','Balsamic vinegar and cheesy oak aromas feed into a palate that\'s braced by a bolt of acidity. A compact set of saucy red-berry and plum flavors features tobacco while the finish is mildly green in flavor, with respectable weight and balance.','Bordeaux','Terre Siciliane',13),
(18,45,82,'Portugal','Raw black-cherry aromas are direct and simple but good. This has a juicy feel that thickens over time, with oak character and extract becoming more apparent. A flavor profile driven by dark-berry fruits and smoldering oak finishes meaty but hot.','Maipo Valley','Cerasuolo di Vittoria',34),
(19,50,93,'South Africa','Desiccated blackberry, leather, charred wood and mint aromas carry the nose on this full-bodied, tannic, heavily oaked Tinto Fino. Flavors of clove and woodspice sit on top of blackberry fruit.','Washington','Clarksburg',47),
(20,37,100,'France','Red fruit aromas pervade on the nose, with cigar box and menthol notes riding in the back. This blend of Merlot, Cabernet Sauvignon and Cabernet Franc is approachable now and ready to be enjoyed.','Central Italy','Beaujolais-Villages',33);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Ryan Brooks','r.brooks@randatmail.com', '$5$rounds=5000$da7bff0d83625261$cW5LzkYr92NHTFz./SgG2QK7oVVB99V6FZ82hGbwuh8'),
(2,'Nicole Foster','n.foster@randatmail.com', '$5$rounds=5000$ad6bc4b136fb1c51$TO9mEiMFVuXa1adJeCtXIIAE4uw1KNSM/u3/leoFGf6'),
(3,'Vincent Hawkins','v.hawkins@randatmail.com', '$5$rounds=5000$e53e0b2299d15a6a$IQmdWaq56EnzxYZhv8TcJzVGqunaj6PuwnfFQoQq2M0'),
(4,'Miley Thompson','m.thompson@randatmail.com', '$5$rounds=5000$839d3719522b2bec$2rX9EoM7B7/rWl4BrY.Xy0LbInMPkUlD6ROT6yWD3L.'),
(5,'Sam Phillips','s.phillips@randatmail.com', '$5$rounds=5000$ce81169f15f8c11c$rFB.aSgEdOna/X1xtoHDQE29q6PdhfVOEcN8F4GUbF/'),
(6,'Tyler Ross','t.ross@randatmail.com', '$5$rounds=5000$dbed4c9d19024416$RIVaIwkji5j1bihJuJomvbJAIhw77hmKhoi7ZQy3LEC'),
(7,'Haris Martin','h.martin@randatmail.com', '$5$rounds=5000$7adb362bcadb1798$B5yaNAVbD76Dzddzn2vBZuH/d0g9a/ar3/4/dvawuX2'),
(8,'Luke Turner','l.turner@randatmail.com', '$5$rounds=5000$352bcb266f7bcea1$O1ii9SlbCydxIa2kK.7k5FPhppGXyw7WYtRFPhlUSOB'),
(9,'Florrie Holmes','f.holmes@randatmail.com', '$5$rounds=5000$4ba34188e9701aff$lQxCtC3G/ozS5C6ga8gGiP1a1eUBl7iJkLsEEkUA73/'),
(10,'Victor Richardson','v.richardson@randatmail.com', '$5$rounds=5000$4d7405107e7035b1$CSzqW8pfFCmddYstHuDRGRM2I09e.HCFjVx2havqV5A'),
(11,'Hailey Ryan','h.ryan@randatmail.com', '$5$rounds=5000$4e662e7321afa4c6$l..ehWyzEqfbbinn8j6wkHk9FuTydO0N8CEe4IkJ34A'),
(12,'Adison Perkins','a.perkins@randatmail.com', '$5$rounds=5000$6eedf21fc1ba17fa$5cumRT7lXFb2lRSzLZm9/bn0U2/arIRokjN0uOhv1g0'),
(13,'Frederick Harrison','f.harrison@randatmail.com', '$5$rounds=5000$fee7bb9f13b39130$xV7vJ.5GZMNTb6CiogEf3Vmf0xoEGQQqMsgWWe/I5/.'),
(14,'Penelope Payne','p.payne@randatmail.com', '$5$rounds=5000$3b101f700caa78bb$sA44zGURNm0HbXNDF8SvB1G.3EFpgLB80fuypo.MEL.'),
(15,'Honey Hunt','h.hunt@randatmail.com', '$5$rounds=5000$8fa912e89d44ddcb$4VoFEVr2F9Zna0Jqp6xYlkgPvpV9LahYIHmRH5fZ/pD'),
(16,'Ted Williams','t.williams@randatmail.com', '$5$rounds=5000$3ddd8fd0fa256402$RGs65vP6A4WKXYto1/2SE6LnQ1HG2wsMomg2oFM4J78'),
(17,'Thomas Edwards','t.edwards@randatmail.com', '$5$rounds=5000$8d7e18d3749dcd38$/.lWw/alSgR/K7z2xxxxLJmd13gGgvZcu55c97khqhA'),
(18,'Kate Bennett','k.bennett@randatmail.com', '$5$rounds=5000$5e1942580c4c37ea$oMVSKhgx7T4kc9BiCHD9TVp4pPDgBXocRD1cE1fbHp3'),
(19,'Kevin Morris','k.morris@randatmail.com', '$5$rounds=5000$992f9f1d8b919095$0OR.VEJ/ua8mgPk5fxFrwofROXQhas/h1lyNIyKfaw.'),
(20,'Michelle Nelson','m.nelson@randatmail.com', '$5$rounds=5000$835b6d82edaea0d4$8Q9JoAdmyEv43nyORuc1Ldbt17mQZ3qCkcK/E.6ypv6'),
(21,'Charlotte Richards','c.richards@randatmail.com', '$5$rounds=5000$b57d04afeec59a18$6Wjp0vhkoISF5L4JyNIxpCFKOMI3841xppplYUmQcyD'),
(22,'Charlotte Cameron','c.cameron@randatmail.com', '$5$rounds=5000$a3f86ab1f1738616$TKJVuSRdRA6hDTvyhR5SpGxQ3DPCyRBx3XG9FGPd/ZD'),
(23,'Rafael Robinson','r.robinson@randatmail.com', '$5$rounds=5000$55f58001c8bcf568$ATKF9LDgYYFPZI.r4X3b3SbRIjkA9yPgHGfJuXCyFy.'),
(24,'Reid Carter','r.carter@randatmail.com', '$5$rounds=5000$ed17b23a04e9565a$/tTurRFWF1iEosFBBLWGUYhCNXrEIiviTeiPVa1QyV3'),
(25,'Ada Gibson','a.gibson@randatmail.com', '$5$rounds=5000$b221e1d880f13421$O0oEpF4hdmPwbkHJ/5pB/ZqtPZNxdpmimUfJ6Z71mg4'),
(26,'Belinda Dixon','b.dixon@randatmail.com', '$5$rounds=5000$5df83ba49079831b$YR3Emra9OXIPpNCjrOcQO9yEQYxGslTXgxl8jNERMW9'),
(27,'Sophia Phillips','s.phillips@randatmail.com', '$5$rounds=5000$7691daad4f47e354$PIfA3bxBUVfNbq.VMIbd.q.0xKAzSjSIMZtv5A/HSy1'),
(28,'Kirsten Sullivan','k.sullivan@randatmail.com', '$5$rounds=5000$6462905f8b8663d8$PNgL0wL95v/7uXtsScepvlD0mi4cdCGNsehUNUcYzB0'),
(29,'Miller Payne','m.payne@randatmail.com', '$5$rounds=5000$e8f414ca2cf29af2$vFCJF/UExGeUIAgbZf4RNu98p3HRqlShMCMgQmegLaC'),
(30,'Rosie Mitchell','r.mitchell@randatmail.com', '$5$rounds=5000$5dd39c8b491e8308$M.hYyTEkAN8jcP2uQ8dUGae.mp/oRKr70hBZtZ5DJRB'),
(31,'Jessica Anderson','j.anderson@randatmail.com', '$5$rounds=5000$654b99216e970618$jEgOnshRqtXyRNFUpBRredJs1i3Doel4HdkPtXDNfV3'),
(32,'Marcus Wells','m.wells@randatmail.com', '$5$rounds=5000$87117de3b89cae02$DR/r3M18m01B4mhKWjQvxVdNmuWYZ6pZjdDkJVB/5p2'),
(33,'Tess Johnston','t.johnston@randatmail.com', '$5$rounds=5000$ad6bdbbe49faf3e9$FDIkT.R0lsCuAICedOSrOPCr9aInW2yJz830TJMFDb1'),
(34,'Frederick Sullivan','f.sullivan@randatmail.com', '$5$rounds=5000$da15383ac1a48e9c$BU0gOyuId/aI7nc77.AhY8sAe.y/XsJcfoOvkCDkwx3'),
(35,'John Morgan','j.morgan@randatmail.com', '$5$rounds=5000$3944d8404fd25522$Dxm3tdFHOjdfL/qT1/vYfL5Y0pcxhWBjT06o6azEAn5'),
(36,'Charlie Carroll','c.carroll@randatmail.com', '$5$rounds=5000$5b08e7cb6658c610$GDDfLvMuxNkrlHa3XE5qPsx11b6z/46Z1JV2dvjsUm8'),
(37,'Patrick Thompson','p.thompson@randatmail.com', '$5$rounds=5000$02d54ded6af5f53b$uyermXLwoZbNbJvu3s5vDoFOC8t519ohfyGeffuJqA2'),
(38,'Dale Ellis','d.ellis@randatmail.com', '$5$rounds=5000$93875951e1d0c36b$KPrBQ7qj1gRu59TUcDhzMQE/DC/0tKXkbGcXJk.qyd0'),
(39,'Sienna Morgan','s.morgan@randatmail.com', '$5$rounds=5000$bab30b8c192d36c1$/N86x.K8T5Z6FYV5p0BlFiiSI2RfvIfR4srwP9ihdM1'),
(40,'Lydia Foster','l.foster@randatmail.com', '$5$rounds=5000$d33ce976dc270d2f$o58FvXepyUuF2BNvFnN5./0qE/0ANIEgu7Bhph/Pcg4'),
(41,'Martin Hill','m.hill@randatmail.com', '$5$rounds=5000$c4555951f668582e$U2Fv7zv7TiLH2g.s5hHliIQSTqrizuO33iMKweHbMJA'),
(42,'Preston Murray','p.murray@randatmail.com', '$5$rounds=5000$3761a8ea5f3c1065$NGIMEIO0vKswLRZ307/McWRLhclAL.Bjrj7mnqJDWL7'),
(43,'April Harper','a.harper@randatmail.com', '$5$rounds=5000$280603c92684e58a$H8LjgajNUMJQKUpXa4WCg2sqhVerBo94yDO0pWDYy.3'),
(44,'Luke Taylor','l.taylor@randatmail.com', '$5$rounds=5000$4ad0af39231be4f6$0IcNJPb2P0btaP7gC.6AshxOS0uEhbPTwh504g4GSM1'),
(45,'Dale Watson','d.watson@randatmail.com', '$5$rounds=5000$2ec2f53e33dff9bc$7fL6oydFluvpWwWFm20c40YMiRxE5m9ElPZ/9aXGFH/'),
(46,'Hailey Hunt','h.hunt@randatmail.com', '$5$rounds=5000$c556b7d5cbb8b47b$.B5d84HLcq/TAWPiDf8xvPtk8tCn1HfKTL17eILDdS2'),
(47,'Charlotte Ross','c.ross@randatmail.com', '$5$rounds=5000$0a1d21f991fe6515$A9qz0ASQg99hexBCymEVFOnwYoaeD4ON884S.CUDwLB'),
(48,'Stuart Taylor','s.taylor@randatmail.com', '$5$rounds=5000$cb2de508b7570b31$WOJ5cmuEpMGzqXXYeQM.8zezWnXeTdXBSdTh.aR7Oe7'),
(49,'Sarah Martin','s.martin@randatmail.com', '$5$rounds=5000$e21bca1eae6632d6$.eM3h/Lg6YNbs/TFpCbcdr7tgZLt0R.l15YA5mruXv8'),
(50,'Aiden Brooks','a.brooks@randatmail.com', '$5$rounds=5000$d96f879e951acd03$1pmmXwfT3/DbWSpoUlBl7vl5kq8kHHpMcgD51o6Bh1/');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_information`
--

DROP TABLE IF EXISTS `weather_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather_information` (
  `weather_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `weather_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weather_id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `weather_information_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_information`
--

LOCK TABLES `weather_information` WRITE;
/*!40000 ALTER TABLE `weather_information` DISABLE KEYS */;
INSERT INTO `weather_information` VALUES
(1,1,'2023-05-26','Sunny, hot summers (mid-80s to mid-90sF) with cooling breezes; mild, wet winters (50sF). Ideal for vineyards in picturesque California.'),
(2,2,'2023-05-27','Pleasant year-round climate with warm, sunny summers (high 70s to low 90sF); mild, wet winters (50sF). Rolling hills and vineyards in Santa Barbara County.'),
(3,3,'2023-05-28','Continental climate with warm summers (high 70s to low 80sF); cold winters, occasional snow. Famous for rich red wines in Italy\'s Piedmont region.'),
(4,4,'2023-05-29','Hot, dry summers (high 80s to low 90sF); mild spring and autumn; relatively mild winters (50sF). Renowned for Chianti wines in Tuscany.'),
(5,5,'2023-05-30','Hot, dry summers (mid-80s to mid-90sF) with sea breeze; mild, wet winters (50sF). Sicilian region producing fruity red wines.');
/*!40000 ALTER TABLE `weather_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wine`
--

DROP TABLE IF EXISTS `wine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wine` (
  `wine_id` int(11) NOT NULL,
  `winery_id` int(11) NOT NULL,
  `wine_name` varchar(255) NOT NULL,
  `wine_type` varchar(255) NOT NULL,
  `vintage` date DEFAULT NULL,
  `region_id` int(11) NOT NULL,
  `fixed_acidity` decimal(5,2) DEFAULT NULL,
  `volatile_acidity` decimal(5,2) DEFAULT NULL,
  `citric_acid` decimal(5,2) DEFAULT NULL,
  `residual_sugar` decimal(5,2) DEFAULT NULL,
  `chlorides` decimal(5,2) DEFAULT NULL,
  `free_sulfur_dioxide` decimal(5,2) DEFAULT NULL,
  `total_sulfur_dioxide` decimal(5,2) DEFAULT NULL,
  `density` decimal(6,4) DEFAULT NULL,
  `pH` decimal(4,2) DEFAULT NULL,
  `sulphates` decimal(5,2) DEFAULT NULL,
  `alcohol` decimal(4,2) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`wine_id`),
  KEY `region_id` (`region_id`),
  KEY `winery_id` (`winery_id`),
  CONSTRAINT `wine_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`),
  CONSTRAINT `wine_ibfk_2` FOREIGN KEY (`winery_id`) REFERENCES `winery` (`winery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine`
--

LOCK TABLES `wine` WRITE;
/*!40000 ALTER TABLE `wine` DISABLE KEYS */;
INSERT INTO `wine` VALUES
(1,1,'Nicosia 2013 VulkaBianco  (Etna)','Sparkling','1872-01-01',1,7.40,0.70,0.00,1.90,0.08,11.00,34.00,0.9978,3.51,0.56,9.40,5,121.00),
(2,1,'Quinta dos Avidagos 2011 Avidagos Red (Douro)','White','2006-01-01',1,7.80,0.88,0.00,2.60,0.10,25.00,67.00,0.9968,3.20,0.68,9.80,5,186.00),
(3,1,'Rainstorm 2013 Pinot Gris (Willamette Valley)','Red','2019-01-01',1,7.80,0.76,0.04,2.30,0.09,15.00,54.00,0.9970,3.26,0.65,9.80,5,54.00),
(4,1,'St. Julian 2013 Reserve Late Harvest Riesling (Lake Michigan Shore)','Dessert','1848-01-01',1,11.20,0.28,0.56,1.90,0.08,17.00,60.00,0.9980,3.16,0.58,9.80,6,234.00),
(5,1,'Sweet Cheeks 2012 Vintner\'s Reserve Wild Child Block Pinot Noir (Willamette Valley)','Rose','1903-01-01',1,7.40,0.70,0.00,1.90,0.08,11.00,34.00,0.9978,3.51,0.56,9.40,5,181.00),
(6,1,'Tandem 2011 Ars In Vitro Tempranillo-Merlot (Navarra)','Fortified','1909-01-01',1,7.40,0.66,0.00,1.80,0.08,13.00,40.00,0.9978,3.51,0.56,9.40,5,239.00),
(7,1,'Terre di Giurfo 2013 Belsito Frappato (Vittoria)','Red ','1980-01-01',1,7.90,0.60,0.06,1.60,0.07,15.00,59.00,0.9964,3.30,0.46,9.40,5,247.00),
(8,1,'Trimbach 2012 Gewurztraminer (Alsace)','Rose ','1892-01-01',1,7.30,0.65,0.00,1.20,0.07,15.00,21.00,0.9946,3.39,0.47,10.00,7,144.00),
(9,1,'Heinz Eifel 2013 Shine Gewarztraminer (Rheinhessen)','Dessert ','1864-01-01',1,7.80,0.58,0.02,2.00,0.07,9.00,18.00,0.9968,3.36,0.57,9.50,7,127.00),
(10,1,'Jean-Baptiste Adam 2012 Les Natures Pinot Gris (Alsace)','Sparkling','1872-01-01',1,7.50,0.50,0.36,6.10,0.07,17.00,102.00,0.9978,3.35,0.80,10.50,5,250.00),
(11,1,'Kirkland Signature 2011 Mountain Cuvae Cabernet Sauvignon (Napa Valley)','Fortified','1826-01-01',1,6.70,0.58,0.08,1.80,0.10,15.00,65.00,0.9959,3.28,0.54,9.20,5,220.00),
(12,1,'Leon Beyer 2012 Gewurztraminer (Alsace)','White','1945-01-01',1,7.50,0.50,0.36,6.10,0.07,17.00,102.00,0.9978,3.35,0.80,10.50,5,64.00),
(13,1,'Louis M. Martini 2012 Cabernet Sauvignon (Alexander Valley)','Sparkling','1940-01-01',1,5.60,0.62,0.00,1.60,0.09,16.00,59.00,0.9943,3.58,0.52,9.90,5,239.00),
(14,1,'Masseria Setteporte 2012 Rosso  (Etna)','Red','1912-01-01',1,7.80,0.61,0.29,1.60,0.11,9.00,29.00,0.9974,3.26,1.56,9.10,5,52.00),
(15,1,'Mirassou 2012 Chardonnay (Central Coast)','Rose','1973-01-01',1,8.90,0.62,0.18,3.80,0.18,52.00,145.00,0.9986,3.16,0.88,9.20,5,211.00),
(16,1,'Richard Backing 2013 Devon Riesling (Mosel)','White','1971-01-01',1,8.90,0.62,0.19,3.90,0.17,51.00,148.00,0.9986,3.17,0.93,9.20,5,155.00),
(17,1,'Felix Lavaque 2010 Felix Malbec (Cafayate)','Fortified','1808-01-01',1,8.50,0.28,0.56,1.80,0.09,35.00,103.00,0.9969,3.30,0.75,10.50,7,188.00),
(18,1,'Gaucho Andino 2011 Winemaker Selection Malbec (Mendoza)','Dessert','2015-01-01',1,8.10,0.56,0.28,1.70,0.37,16.00,56.00,0.9968,3.11,1.28,9.30,5,222.00),
(19,2,'Pradorey 2010 Vendimia Seleccionada Finca Valdelayegua Single Vineyard Crianza  (Ribera del Duero)','Red','1869-01-01',2,7.40,0.59,0.08,4.40,0.09,6.00,29.00,0.9974,3.38,0.50,9.00,4,166.00),
(20,2,'Quiavremont 2012 Meritage (Virginia)','White','1910-01-01',2,7.90,0.32,0.51,1.80,0.34,17.00,56.00,0.9969,3.04,1.08,9.20,6,170.00),
(21,2,'Quiavremont 2012 Vin de Maison Red (Virginia)','Sparkling','1811-01-01',2,8.90,0.22,0.48,1.80,0.08,29.00,60.00,0.9968,3.39,0.53,9.40,6,196.00),
(22,2,'Acrobat 2013 Pinot Noir (Oregon)','Rose','1901-01-01',2,7.60,0.39,0.31,2.30,0.08,23.00,71.00,0.9982,3.52,0.65,9.70,5,113.00),
(23,2,'Baglio di Pianetto 2007 Ficiligno White (Sicilia)','Dessert','1989-01-01',2,7.90,0.43,0.21,1.60,0.11,10.00,37.00,0.9966,3.17,0.91,9.50,5,109.00),
(24,2,'Signature Selection Merlot (Paso Robles)','Fortified','1833-01-01',2,8.50,0.49,0.11,2.30,0.08,9.00,67.00,0.9968,3.17,0.53,9.40,5,108.00),
(25,2,'Canicatta 2009 Aynat Nero d\'Avola (Sicilia)','White','1897-01-01',2,6.90,0.40,0.14,2.40,0.09,21.00,40.00,0.9968,3.43,0.63,9.70,6,52.00),
(26,2,'Castello di Amorosa 2011 King Ridge Vineyard Pinot Noir (Sonoma Coast)','Dessert','1950-01-01',2,6.30,0.39,0.16,1.40,0.08,11.00,23.00,0.9955,3.34,0.56,9.30,5,237.00),
(27,2,'Stemmari 2013 Dalila White (Terre Siciliane)','Sparkling','1920-01-01',2,7.60,0.41,0.24,1.80,0.08,4.00,11.00,0.9962,3.28,0.59,9.50,5,82.00),
(28,2,'Stemmari 2013 Nero d\'Avola (Terre Siciliane)','Fortified','1930-01-01',2,7.90,0.43,0.21,1.60,0.11,10.00,37.00,0.9966,3.17,0.91,9.50,5,209.00),
(29,2,'Terre di Giurfo 2011 Mascaria Barricato  (Cerasuolo di Vittoria)','Red','1943-01-01',2,7.10,0.71,0.00,1.90,0.08,14.00,35.00,0.9972,3.47,0.55,9.40,5,226.00),
(30,2,'Clarksburg Wine Company 2010 Chenin Blanc (Clarksburg)','Rose','1900-01-01',2,7.80,0.65,0.00,2.00,0.08,8.00,16.00,0.9964,3.38,0.59,9.80,6,236.00),
(31,2,'Domaine de la Madone 2012 Nouveau  (Beaujolais-Villages)','Dessert','1901-01-01',2,6.70,0.68,0.07,2.40,0.09,17.00,82.00,0.9958,3.35,0.54,10.10,5,188.00),
(32,3,'Duca di Salaparuta 2010 Calana-ca Nero d\'Avola-Merlot Red (Sicilia)','Sparkling','1986-01-01',3,6.90,0.69,0.00,2.50,0.11,22.00,37.00,0.9966,3.46,0.57,10.60,6,52.00),
(33,3,'Duca di Salaparuta 2011 Calana-ca Grillo-Viognier White (Sicilia)','Red','1817-01-01',3,8.30,0.66,0.12,2.30,0.08,15.00,113.00,0.9966,3.17,0.66,9.80,5,133.00),
(34,3,'Envolve 2010 Puma Springs Vineyard Red (Dry Creek Valley)','Fortified','1830-01-01',3,6.90,0.61,0.12,10.70,0.07,40.00,83.00,0.9993,3.45,0.52,9.40,6,136.00),
(35,3,'Envolve 2011 Sauvignon Blanc (Sonoma Valley)','White','1952-01-01',3,5.20,0.32,0.25,1.80,0.10,13.00,50.00,0.9957,3.38,0.55,9.20,5,147.00),
(36,3,'Erath 2010 Hyland Pinot Noir (McMinnville)','Rose','1849-01-01',3,7.80,0.65,0.00,5.50,0.09,5.00,18.00,0.9986,3.40,0.55,9.60,6,199.00),
(37,3,'Estampa 2011 Estate Viognier-Chardonnay (Colchagua Valley)','Dessert','1844-01-01',3,7.80,0.60,0.14,2.40,0.09,3.00,15.00,0.9975,3.42,0.60,10.80,6,178.00),
(38,3,'Feudi del Pisciotto 2010 Missoni Cabernet Sauvignon (Sicilia)','Sparkling','1923-01-01',3,8.10,0.38,0.28,2.10,0.07,13.00,30.00,0.9968,3.23,0.73,9.70,7,125.00),
(39,3,'Feudi di San Marzano 2011 I Tratturi Primitivo (Puglia)','White','1911-01-01',3,5.70,1.13,0.09,1.50,0.17,7.00,19.00,0.9940,3.50,0.48,9.80,4,212.00),
(40,3,'Feudo di Santa Tresa 2011 Purato Made With Organic Grapes Nero d\'Avola (Sicilia)','Red','1960-01-01',3,7.30,0.45,0.36,5.90,0.07,12.00,87.00,0.9978,3.33,0.83,10.50,5,182.00),
(41,3,'Feudo Montoni 2011 Catarratto (Sicilia)','Fortified','2009-01-01',3,7.30,0.45,0.36,5.90,0.07,12.00,87.00,0.9978,3.33,0.83,10.50,5,220.00),
(42,3,'Hawkins Cellars 2009 Pinot Noir (Willamette Valley)','Rose','1918-01-01',3,8.80,0.61,0.30,2.80,0.09,17.00,46.00,0.9976,3.26,0.51,9.30,4,240.00),
(43,3,'Henry Fessy 2012 Nouveau  (Beaujolais)','Sparkling','1871-01-01',3,7.50,0.49,0.20,2.60,0.33,8.00,14.00,0.9968,3.21,0.90,10.50,6,160.00),
(44,3,'Robert Hall 2011 Sauvignon Blanc (Paso Robles)','Dessert','1853-01-01',3,8.10,0.66,0.22,2.20,0.07,9.00,23.00,0.9968,3.30,1.20,10.30,5,117.00),
(45,3,'Sundance 2011 Merlot (Maule Valley)','White','1821-01-01',3,6.80,0.67,0.02,1.80,0.05,5.00,11.00,0.9962,3.48,0.52,9.50,5,149.00),
(46,3,'Tarara 2010 #SocialSecret Red (Virginia)','Red','1828-01-01',3,4.60,0.52,0.15,2.10,0.05,8.00,65.00,0.9934,3.90,0.56,13.10,4,209.00),
(47,3,'Tasca d\'Almerita 2011 Sallier de la Tour Inzolia (Sicilia)','Fortified','2017-01-01',3,7.70,0.94,0.43,2.20,0.11,22.00,114.00,0.9970,3.25,0.73,9.20,5,141.00),
(48,3,'The White Knight 2011 Riesling (Lake County)','Dessert','1819-01-01',3,8.70,0.29,0.52,1.60,0.11,12.00,37.00,0.9969,3.25,0.58,9.50,5,153.00),
(49,3,'Trump 2011 Sauvignon Blanc (Monticello)','Sparkling','1912-01-01',3,6.40,0.40,0.23,1.60,0.07,5.00,12.00,0.9958,3.34,0.56,9.20,5,140.00),
(50,3,'Vignerons de Bel Air 2011 Eta Indien  (Brouilly)','Rose','1866-01-01',3,5.60,0.31,0.37,1.40,0.07,12.00,96.00,0.9954,3.32,0.58,9.20,5,55.00),
(51,3,'Viticultori Associati Canicatti 2008 Scialo Red (Sicilia)','Red','1882-01-01',3,8.80,0.66,0.26,1.70,0.07,4.00,23.00,0.9971,3.15,0.74,9.20,5,205.00),
(52,3,'Casa Silva 2008 Gran Reserva Petit Verdot (Colchagua Valley)','White','1814-01-01',3,6.60,0.52,0.04,2.20,0.07,8.00,15.00,0.9956,3.40,0.63,9.40,6,110.00),
(53,3,'Cantine di Dolianova 2010 Dolia  (Monica di Sardegna)','Sparkling','1891-01-01',3,6.60,0.50,0.04,2.10,0.07,6.00,14.00,0.9955,3.39,0.64,9.40,6,218.00),
(54,3,'Chacteau de Sours 2011 La Fleur d\'Amalie  (Bordeaux Blanc)','Dessert','1895-01-01',3,8.60,0.38,0.36,3.00,0.08,30.00,119.00,0.9970,3.20,0.56,9.40,5,246.00),
(55,3,'Corvo 2010 Rosso Red (Sicilia)','Rose','1960-01-01',3,7.60,0.51,0.15,2.80,0.11,33.00,73.00,0.9955,3.17,0.63,10.20,6,242.00),
(56,4,'RustRidge 2010 Estate Bottled Chardonnay (Napa Valley)','Fortified','1821-01-01',4,7.70,0.62,0.04,3.80,0.08,25.00,45.00,0.9978,3.34,0.53,9.50,5,80.00),
(57,4,'Souverain 2010 Chardonnay (North Coast)','White','1919-01-01',4,10.20,0.42,0.57,3.40,0.07,4.00,10.00,0.9971,3.04,0.63,9.60,5,75.00),
(58,4,'Tasca d\'Almerita 2011 Sallier de la Tour Grillo (Sicilia)','Red','1859-01-01',4,7.50,0.63,0.12,5.10,0.11,50.00,110.00,0.9983,3.26,0.77,9.40,5,71.00),
(59,4,'Tres Palacios 2011 Reserve Pinot Noir (Maipo Valley)','Dessert','1990-01-01',4,7.80,0.59,0.18,2.30,0.08,17.00,54.00,0.9975,3.43,0.59,10.00,5,167.00),
(60,4,'Mellisoni 2014 Malbec (Columbia Valley (WA))','Sparkling','1825-01-01',4,7.30,0.39,0.31,2.40,0.07,9.00,46.00,0.9962,3.41,0.54,9.40,6,169.00),
(61,4,'Okapi 2013 Estate Cabernet Sauvignon (Napa Valley)','Rose','1893-01-01',4,8.80,0.40,0.40,2.20,0.08,19.00,52.00,0.9980,3.44,0.64,9.20,5,104.00),
(62,4,'Podere dal Nespoli 2015 Prugneto Sangiovese (Romagna)','Fortified','2012-01-01',4,7.70,0.69,0.49,1.80,0.12,20.00,112.00,0.9968,3.21,0.71,9.30,5,91.00),
(63,4,'Ram 2014 Alder Ridge Vineyard Cabernet Franc (Columbia Valley (WA))','Red','1860-01-01',4,7.50,0.52,0.16,1.90,0.09,12.00,35.00,0.9968,3.38,0.62,9.50,7,204.00),
(64,4,'Roland Champion NV Brut Rosa  (Champagne)','Sparkling','1882-01-01',4,7.00,0.74,0.05,2.00,0.08,13.00,54.00,0.9966,3.39,0.57,9.80,5,60.00),
(65,4,'Sevtap 2015 Golden Horn Sauvignon Blanc (Santa Ynez Valley)','White','2019-01-01',4,7.20,0.73,0.05,4.65,0.09,4.00,11.00,0.9962,3.41,0.39,10.90,5,180.00),
(66,4,'Simonnet-Febvre 2015  Chablis','Dessert','1817-01-01',4,7.20,0.73,0.05,4.65,0.09,4.00,11.00,0.9962,3.41,0.39,10.90,5,90.00),
(67,4,'Vignerons des Terres Secrates 2015  Maccon-Milly Lamartine','Fortified','1884-01-01',4,7.50,0.52,0.11,1.50,0.08,11.00,39.00,0.9968,3.42,0.58,9.60,5,156.00),
(68,4,'Basel Cellars 2013 Inspired Red (Columbia Valley (WA))','Rose','1950-01-01',4,6.60,0.71,0.07,1.60,0.08,6.00,15.00,0.9962,3.44,0.58,10.70,5,114.00),
(69,4,'Cocobon 2014 Red (California)','Red','1882-01-01',4,9.30,0.32,0.57,2.00,0.07,27.00,65.00,0.9969,3.28,0.79,10.70,5,215.00),
(70,4,'Collet NV Brut Rosa  (Champagne)','Dessert','2021-01-01',4,8.00,0.71,0.05,1.90,0.07,8.00,19.00,0.9962,3.34,0.95,10.50,6,220.00),
(71,4,'Drumheller 2014 Chardonnay (Columbia Valley (WA))','Sparkling','1890-01-01',4,7.70,0.63,0.08,1.90,0.08,15.00,27.00,0.9967,3.32,0.54,9.50,6,66.00),
(72,4,'Eco Terreno 2013 Old Vine Cabernet Sauvignon (Alexander Valley)','White','1814-01-01',4,7.70,0.67,0.23,2.10,0.09,17.00,96.00,0.9962,3.32,0.48,9.50,5,98.00),
(73,4,'Grifalco 2013 Daginestra  (Aglianico del Vulture)','Fortified','1846-01-01',4,7.70,0.69,0.22,1.90,0.08,18.00,94.00,0.9961,3.31,0.48,9.50,5,213.00),
(74,4,'Hindsight 2013 Bella Vetta Vineyard Cabernet Sauvignon (Howell Mountain)','Rose','1934-01-01',4,8.30,0.68,0.26,2.10,0.08,11.00,43.00,0.9976,3.31,0.53,9.20,4,163.00),
(75,4,'Hindsight 2012 Estate Grown Petite Sirah (Calistoga)','Red','2012-01-01',4,9.70,0.32,0.54,2.50,0.09,28.00,83.00,0.9984,3.28,0.82,9.60,5,238.00),
(76,4,'Mulvane Wine Co. 2013 The Cypher Red (Napa Valley)','Sparkling','1914-01-01',4,8.80,0.41,0.64,2.20,0.09,9.00,42.00,0.9986,3.54,0.66,10.50,5,167.00),
(77,4,'Schmitt Sahne 2015 Riesling (Rheinhessen)','Dessert','1974-01-01',4,8.80,0.41,0.64,2.20,0.09,9.00,42.00,0.9986,3.54,0.66,10.50,5,190.00),
(78,5,'Yalumba 2016 Made With Organic Grapes Chardonnay (South Australia)','White','1924-01-01',5,6.80,0.79,0.00,2.40,0.10,14.00,30.00,0.9966,3.52,0.55,10.70,6,106.00),
(79,5,'Z\'IVO 2015 Rosa of Pinot Noir (Eola-Amity Hills)','Fortified','1801-01-01',5,6.70,0.75,0.12,2.00,0.09,12.00,80.00,0.9958,3.38,0.52,10.10,5,250.00),
(80,5,'Adega Cooperativa do Cartaxo 2014 Bridaeo Touriga Nacional (Tejo)','Rose','1869-01-01',5,8.30,0.63,0.20,1.50,0.08,27.00,119.00,0.9972,3.16,1.12,9.10,4,168.00),
(81,5,'Aresti 2014 Special Release Reserva Carmena-re (Rapel Valley)','Sparkling','1982-01-01',5,6.20,0.45,0.20,1.60,0.07,3.00,15.00,0.9958,3.41,0.56,9.20,5,194.00),
(82,5,'Spyro 2014 Albariao','Red','1900-01-01',5,7.80,0.43,0.70,1.90,0.46,22.00,67.00,0.9974,3.13,1.28,9.40,5,99.00),
(83,5,'Lionel Osmin & Cie 2016 La Raserve Petit Manseng (Vin de France)','Dessert','1955-01-01',5,7.40,0.50,0.47,2.00,0.09,21.00,73.00,0.9970,3.36,0.57,9.10,5,61.00),
(84,5,'Mitolo 2016 Jester Sangiovese Rosa (McLaren Vale)','White','1971-01-01',5,7.30,0.67,0.26,1.80,0.40,16.00,51.00,0.9969,3.16,1.14,9.40,5,238.00),
(85,5,'Napa Cellars 2014 Classic Zinfandel (Napa Valley)','Fortified','2007-01-01',5,6.30,0.30,0.48,1.80,0.07,18.00,61.00,0.9959,3.44,0.78,10.30,6,166.00),
(86,5,'P.J. Valckenberg 2015 Undone Dry Riesling (Rheinhessen)','Rose','1836-01-01',5,6.90,0.55,0.15,2.20,0.08,19.00,40.00,0.9961,3.41,0.59,10.10,5,239.00),
(87,5,'Palencia 2016 Albariao (Ancient Lakes)','Sparkling','1915-01-01',5,8.60,0.49,0.28,1.90,0.11,20.00,136.00,0.9972,2.93,1.95,9.90,6,110.00),
(88,5,'Passaggio 2014 Blau Vineyards Merlot (Knights Valley)','Red','1981-01-01',5,7.70,0.49,0.26,1.90,0.06,9.00,31.00,0.9966,3.39,0.64,9.60,5,171.00),
(89,5,'Poggio Alloro 2014 Le Mandorle Riserva  (Vernaccia di San Gimignano)','Dessert','2012-01-01',5,9.30,0.39,0.44,2.10,0.11,34.00,125.00,0.9978,3.14,1.22,9.50,5,58.00),
(90,5,'Fattoria Sardi 2015 Rosato (Toscana)','Fortified','1886-01-01',5,7.00,0.62,0.08,1.80,0.08,8.00,24.00,0.9978,3.48,0.53,9.00,5,83.00),
(91,5,'Ferrari-Carano 2014 Siena Red (Sonoma County)','White','1922-01-01',5,7.90,0.52,0.26,1.90,0.08,42.00,140.00,0.9964,3.23,0.54,9.50,5,203.00),
(92,5,'Folie Deux 2015 Pinot Gris (Sonoma Coast)','Sparkling','1905-01-01',5,8.60,0.49,0.28,1.90,0.11,20.00,136.00,0.9972,2.93,1.95,9.90,6,175.00),
(93,5,'Franciscan 2013 Magnificat Meritage (Napa Valley)','Rose','1801-01-01',5,8.60,0.49,0.29,2.00,0.11,19.00,133.00,0.9972,2.93,1.98,9.80,5,229.00),
(94,5,'Fuchs 2015 Graner Veltliner (Burgenland)','Red','1889-01-01',5,7.70,0.49,0.26,1.90,0.06,9.00,31.00,0.9966,3.39,0.64,9.60,5,115.00),
(95,5,'Gard 2014 Grand Klasse Reserve Lawrence Vineyards Viognier (Columbia Valley (WA))','Dessert','1960-01-01',5,5.00,1.02,0.04,1.40,0.05,41.00,85.00,0.9938,3.75,0.48,10.50,4,140.00),
(96,5,'Henry Fessy 2015  Julianas','White','1990-01-01',5,4.70,0.60,0.17,2.30,0.06,17.00,106.00,0.9932,3.85,0.60,12.90,6,185.00),
(97,5,'Henry Fessy 2015  Ragnia','Fortified','1940-01-01',5,6.80,0.78,0.00,3.00,0.10,8.00,23.00,0.9965,3.45,0.56,10.70,5,223.00),
(98,5,'Heron Hill 2015 Ingle Vineyard Riesling (Finger Lakes)','Sparkling','1883-01-01',5,7.00,0.50,0.25,2.00,0.07,3.00,22.00,0.9963,3.25,0.63,9.20,5,166.00),
(99,5,'Serpaia di Endrizzi 2010 Dono Riserva  (Morellino di Scansano)','Rose','1843-01-01',5,7.60,0.90,0.06,2.50,0.08,5.00,10.00,0.9967,3.39,0.56,9.80,5,226.00),
(100,5,'Soquel Vineyards 2013 Intreccio Library Selection Red (Napa Valley)','Red','1983-01-01',5,8.10,0.55,0.18,1.90,0.08,13.00,35.00,0.9972,3.30,0.59,9.00,6,94.00),
(101,5,'Ventosa 2015 Pinot Gris (Finger Lakes)','Dessert','1945-01-01',5,8.30,0.61,0.30,2.10,0.08,11.00,50.00,0.9972,3.40,0.61,10.20,6,123.00),
(102,5,'Lamoreaux Landing 2014 Red Oak Vineyard Riesling (Finger Lakes)','White','1905-01-01',5,7.80,0.50,0.30,1.90,0.08,8.00,22.00,0.9959,3.31,0.56,10.40,6,193.00),
(103,5,'Lamoreaux Landing 2014 Yellow Dog Vineyard Riesling (Finger Lakes)','Fortified','1835-01-01',5,8.10,0.55,0.18,1.90,0.08,13.00,35.00,0.9972,3.30,0.59,9.00,6,185.00),
(104,5,'Leyda 2015 Single Vineyard Falaris Hill Chardonnay (Leyda Valley)','Sparkling','1911-01-01',5,8.10,0.58,0.22,2.10,0.08,12.00,65.00,0.9967,3.29,0.51,9.20,5,231.00),
(105,5,'Madonna Alta 2014 Nativo Red (Toscana)','Rose','1889-01-01',5,7.20,0.49,0.24,2.20,0.07,5.00,36.00,0.9960,3.33,0.48,9.40,5,153.00),
(106,5,'Marchesi Antinori 2015 Villa Antinori White (Toscana)','Red','1834-01-01',5,8.10,0.58,0.22,2.10,0.08,12.00,65.00,0.9967,3.29,0.51,9.20,5,85.00),
(107,5,'Marchesi de\' Frescobaldi 2014 Castiglioni Red (Toscana)','Dessert','1949-01-01',5,7.80,0.41,0.68,1.70,0.47,18.00,69.00,0.9973,3.08,1.31,9.30,5,204.00),
(108,5,'Marchesi de\' Frescobaldi 2015 Ammiraglia Massovivo Vermentino (Toscana)','White','1841-01-01',5,6.20,0.63,0.31,1.70,0.09,15.00,64.00,0.9969,3.46,0.79,9.30,5,94.00),
(109,5,'Martin Ranch 2014 J.D. Hurley Zinfandel (Santa Clara Valley)','Fortified','1832-01-01',5,8.00,0.33,0.53,2.50,0.09,18.00,80.00,0.9976,3.37,0.80,9.60,6,165.00),
(110,5,'Ornellaia 2014 Le Volte Red (Toscana)','Sparkling','1908-01-01',5,8.10,0.79,0.52,2.00,0.12,37.00,153.00,0.9969,3.21,0.69,9.30,5,233.00),
(111,5,'Pardon et Fils 2015 Les Quartelets  (Brouilly)','Red','2010-01-01',5,7.80,0.56,0.19,1.80,0.10,12.00,47.00,0.9964,3.19,0.93,9.50,5,146.00),
(112,5,'Piaa 2013 Wolff Vineyard Cabernet Sauvignon (Yountville)','Rose','1978-01-01',5,8.40,0.62,0.09,2.20,0.08,11.00,108.00,0.9964,3.15,0.66,9.80,5,140.00),
(113,5,'Podere Ciona 2014 Semifonte Red (Toscana)','Dessert','1833-01-01',5,8.40,0.60,0.10,2.20,0.09,14.00,111.00,0.9964,3.15,0.66,9.80,5,64.00),
(114,5,'Poggioventoso 2015 Poetico White (Toscana)','White','1817-01-01',5,10.10,0.31,0.44,2.30,0.08,22.00,46.00,0.9988,3.32,0.67,9.70,6,177.00),
(115,5,'Pull 2012 BDX Red (Paso Robles)','Sparkling','1805-01-01',5,7.80,0.56,0.19,1.80,0.10,12.00,47.00,0.9964,3.19,0.93,9.50,5,173.00),
(116,5,'Pull 2013 Chardonnay (Paso Robles)','Fortified','1836-01-01',5,9.40,0.40,0.31,2.20,0.09,13.00,62.00,0.9966,3.07,0.63,10.50,6,154.00),
(117,5,'R2 2013 Camp 4 Vineyard Grenache Blanc (Santa Ynez Valley)','Red','1869-01-01',5,8.30,0.54,0.28,1.90,0.08,11.00,40.00,0.9978,3.39,0.61,10.00,6,137.00),
(118,5,'Rideau 2014 Estate Syrah','Rose','1837-01-01',5,7.80,0.56,0.12,2.00,0.08,7.00,28.00,0.9970,3.37,0.50,9.40,6,192.00),
(119,5,'Tenuta Forconi 2013 Toscano Red (Toscana)','Dessert wine','1838-01-01',5,8.80,0.55,0.04,2.20,0.12,14.00,56.00,0.9962,3.21,0.60,10.90,6,147.00);
/*!40000 ALTER TABLE `wine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wine_clubs_memberships`
--

DROP TABLE IF EXISTS `wine_clubs_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wine_clubs_memberships` (
  `club_id` int(11) NOT NULL,
  `winery_id` int(11) NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `benefits` text DEFAULT NULL,
  `discounts` text DEFAULT NULL,
  `exclusive_events` text DEFAULT NULL,
  `wine_shipment_options` text DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`club_id`),
  KEY `rating_id` (`rating_id`),
  KEY `winery_id` (`winery_id`),
  CONSTRAINT `wine_clubs_memberships_ibfk_1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`rating_id`),
  CONSTRAINT `wine_clubs_memberships_ibfk_2` FOREIGN KEY (`winery_id`) REFERENCES `winery` (`winery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine_clubs_memberships`
--

LOCK TABLES `wine_clubs_memberships` WRITE;
/*!40000 ALTER TABLE `wine_clubs_memberships` DISABLE KEYS */;
INSERT INTO `wine_clubs_memberships` VALUES
(1,1,'Vintage Reserve Society','Access to limited-production wines, personalized recommendations, exclusive events, discounts, and wine education resources.','10% off wine purchases, 15% off merchandise, 20% discount on wine club shipments.','Private barrel tasting, members-only vineyard tour.','Quarterly shipments of 6 bottles, customizable selection available.',2),
(2,2,'Grand Cru Society','Allocation of prestigious wines, exclusive events, personalized wine concierge service, and member discounts.','15% off wine purchases, 20% off merchandise, 25% discount on wine club shipments.','Winemaker\'s dinner, VIP wine blending workshop.','Bi-monthly shipments of 4 bottles, premium wines from different regions.',14),
(3,3,'Vintage Reserve Circle','Quarterly shipments of reserve wines, complimentary tastings, priority access, member discounts, and exclusive events.','10% off wine purchases, 15% off merchandise, 20% discount on wine club shipments.','Library wine tasting, harvest grape stomping party.','Quarterly shipments of 12 bottles, mixed selection including limited editions.',26),
(4,4,'The Connoisseur\'s Haven','Customized wine shipments, VIP access, tastings, special pricing, and insider updates.','15% off wine purchases, 20% off merchandise, 25% discount on wine club shipments.','Cellar tasting, winery excursion to a renowned wine region.','Bi-monthly shipments of 6 bottles, exclusive access to reserve and library releases.',38),
(5,5,'The Privileged Cellar','Quarterly shipments of rare wines, VIP access, personalized consultations, exclusive tastings, and limited-edition collaborations.','20% off wine purchases, 25% off merchandise, 30% discount on wine club shipments.','Vertical tasting, helicopter vineyard tour with gourmet lunch.','Monthly shipments of 3 bottles, highly allocated and rare wines.',50);
/*!40000 ALTER TABLE `wine_clubs_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wine_education`
--

DROP TABLE IF EXISTS `wine_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wine_education` (
  `education_id` int(11) NOT NULL,
  `education_provider` varchar(255) NOT NULL,
  `education_title` varchar(255) NOT NULL,
  `education_type` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`education_id`),
  KEY `rating_id` (`rating_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `wine_education_ibfk_1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`rating_id`),
  CONSTRAINT `wine_education_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine_education`
--

LOCK TABLES `wine_education` WRITE;
/*!40000 ALTER TABLE `wine_education` DISABLE KEYS */;
INSERT INTO `wine_education` VALUES
(1,'Terroir Explorers','Exploring Rare Varietals','Guided Tasting','Discover the unique characteristics and flavors of rare varietals in this captivating educational experience.',8,'2023-09-01','2023-09-10',9),
(2,'Vintage Vines Institute','The Science of Winemaking','Deep Dive','Unveil the secrets of winemaking techniques and delve into the science behind crafting exceptional wines.',9,'2023-09-02','2023-09-11',10),
(3,'Fromage & Vino Symposium','The Art of Wine and Cheese Pairing','Deep Dive','Elevate your tasting experience as you learn the art of pairing wine and cheese for harmonious delights.',19,'2023-09-03','2023-09-12',21),
(4,'VinHistory Tours','A Taste of History','Guided Tasting','Journey through the rich history of wine, unraveling its traditions and cultural significance.',20,'2023-09-04','2023-09-13',22),
(5,'Label Linguists','Decoding Wine Labels','Deep Dive','Decode the language of wine labels and gain insights into regions, varietals, and production methods.',30,'2023-09-05','2023-09-14',33),
(6,'Global Wine Journeys','Unveiling Wine Regions','Deep Dive','Embark on a captivating journey to explore the diverse wine regions and their unique terroir.',31,'2023-09-06','2023-09-15',34),
(7,'Bubbly Beyond','The World of Sparkling Wines','Symposium','Indulge in the effervescent world of sparkling wines as you explore various styles and production methods.',41,'2023-09-07','2023-09-16',45),
(8,'Palate Perfection','Wine and Food Pairing Masterclass','Guided Tasting','Master the art of pairing wine and food, creating delightful culinary experiences.',42,'2023-09-08','2023-09-17',46),
(9,'VineCrafters','From Vine to Glass','Deep Dive','Dive deep into the winemaking process, from vineyard to bottle, and understand the craft behind each step.',52,'2023-09-09','2023-09-18',57),
(10,'BlendMasters','The Art of Wine Blending','Symposium','Unlock your creativity and learn the techniques of wine blending to craft your own signature wines.',53,'2023-09-10','2023-09-19',58);
/*!40000 ALTER TABLE `wine_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wine_tasting_information`
--

DROP TABLE IF EXISTS `wine_tasting_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wine_tasting_information` (
  `tasting_id` int(11) NOT NULL,
  `winery_id` int(11) NOT NULL,
  `tasting_fees` decimal(8,2) DEFAULT NULL,
  `available_varietals` varchar(255) DEFAULT NULL,
  `guided_tours` tinyint(1) DEFAULT NULL,
  `reservation_requirements` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tasting_id`),
  KEY `winery_id` (`winery_id`),
  CONSTRAINT `wine_tasting_information_ibfk_1` FOREIGN KEY (`winery_id`) REFERENCES `winery` (`winery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine_tasting_information`
--

LOCK TABLES `wine_tasting_information` WRITE;
/*!40000 ALTER TABLE `wine_tasting_information` DISABLE KEYS */;
INSERT INTO `wine_tasting_information` VALUES
(1,1,65.00,'Cabernet Sauvignon, Meritage, Pinot Noir',0,'Reservation required for groups of 6 or more, advanced booking recommended for private tours and events.'),
(2,2,123.00,'Pinot Blanc, Pinot Gris, Riesling',1,'Reservation recommended for all tours and tastings, private tours and experiences require advance booking.'),
(3,3,53.00,'Syrah, Chardonnay, White Blend',0,'Reservations recommended for groups of 8 or more, private tastings and vineyard tours require advanced booking.'),
(4,4,97.00,'Gamay, Riesling, Prugnolo Gentile',1,'Reservation required for all tours and tastings, private masterclasses and blending sessions require advance booking.'),
(5,5,31.00,'Sauvignon Blanc, G-S-M, Chardonnay',1,'Reservations strongly recommended for all visits, private tours, tastings, and art experiences require advanced booking.');
/*!40000 ALTER TABLE `wine_tasting_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wine_tips_guides`
--

DROP TABLE IF EXISTS `wine_tips_guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wine_tips_guides` (
  `tip_id` int(11) NOT NULL,
  `tip_title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`tip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine_tips_guides`
--

LOCK TABLES `wine_tips_guides` WRITE;
/*!40000 ALTER TABLE `wine_tips_guides` DISABLE KEYS */;
INSERT INTO `wine_tips_guides` VALUES
(1,'Chill White Wines','Serve white wines chilled, but not too cold, as extreme cold can dull their flavors.'),
(2,'Let Red Breathe','Let red wines breathe for a few minutes after opening the bottle to allow the flavors to develop.'),
(3,'Explore Wine Regions','Don\'t be afraid to experiment with different wine regions and grape varieties to discover new favorites.'),
(4,'Use Proper Glassware','When serving wine, use appropriate glassware to enhance the aromas and flavors.'),
(5,'Pair Light Wines','Pair lighter-bodied wines with delicate dishes and heavier-bodied wines with robust dishes.'),
(6,'Embrace Rose Wine','Rose wines are great for warm weather and can pair well with a variety of foods.'),
(7,'Store Wine Correctly','Store wine in a cool, dark place away from sunlight and heat sources.'),
(8,'Master Wine Tasting','When tasting wine, pay attention to its color, aroma, flavor, and finish.'),
(9,'Try Sparkling Wines','Sparkling wines are versatile and can be enjoyed on their own or paired with a range of foods.'),
(10,'Mind the Temperature','When opening a bottle of sparkling wine, hold the cork firmly and twist the bottle gently to avoid excessive pressure and spillage.'),
(11,'Balance Acidic Wines','If a wine is too acidic, try pairing it with foods that have a higher fat content to balance the flavors.'),
(12,'Aerate Young Reds','Use a wine decanter to aerate and improve the flavors of young, tannic red wines.'),
(13,'Keep a Wine Journal','Keep a wine journal to track your tasting experiences and remember your preferences.'),
(14,'Avoid Plastic Cups','Avoid serving wine in plastic cups, as they can alter the taste of the wine.'),
(15,'Start Light Tastings','When attending a wine tasting, start with lighter wines and gradually move to heavier ones.'),
(16,'Join Wine Club','Join a wine club or attend wine events to expand your knowledge and discover new wines.'),
(17,'Value Over Price','Don\'t judge a wine by its price tag; some excellent wines can be found at affordable prices.'),
(18,'Note Wine Vintages','Take note of the wine\'s vintage, as different years can significantly impact the flavor profile.'),
(19,'Enjoy Sweet Wines','Serve sweet wines with desserts or as an aperitif.'),
(20,'Study Wine Regions','Learn about different wine regions and their signature styles to develop a deeper understanding of wine.'),
(21,'Try Natural Wines','Experiment with food and wine pairings to find combinations that you enjoy.'),
(22,'Age Tannic Wines','If a wine is too tannic, try decanting it or allowing it to age further to soften the tannins.'),
(23,'Sip Fortified Wines','Serve fortified wines like port or sherry in smaller quantities, as they are higher in alcohol content.'),
(24,'Trust Sommelier\'s Recommendations','When ordering wine at a restaurant, don\'t be afraid to ask the sommelier for recommendations or guidance.'),
(25,'Store Wine Horizontally','When storing wine, keep bottles horizontally to keep the cork moist and prevent it from drying out.'),
(26,'Visit Wineries Often','Visit wineries and vineyards for a firsthand experience of the winemaking process.'),
(27,'Don\'t Judge Appearance','Don\'t judge a wine by its appearance; some excellent wines can be lighter or darker than expected.'),
(28,'Pair Chardonnay Right','Serve full-bodied white wines, such as oaked Chardonnay, with creamy dishes or rich seafood.'),
(29,'Embrace Sustainable Wines','Explore natural, organic, and biodynamic wines for a unique and sustainable wine experience.'),
(30,'Trust Your Palate','Keep an open mind when tasting wine; everyone\'s palate is different, and personal preferences vary.'),
(31,'Pair Bubbly Right','Champagne and sparkling wines can be paired with a range of foods, including fried foods, seafood, and cheeses.'),
(32,'Consider Wine Acidity','Take note of the wine\'s acidity level, as it can affect the overall balance and food pairing options.'),
(33,'Pair Wine and Cheese','Experiment with wine and cheese pairings to find complementary flavors and textures.'),
(34,'Decant Sedimented Wines','If a wine has sediment, decant it carefully or use a wine strainer to remove any solids.'),
(35,'Learn Grape Varieties','Learn about different grape varieties and their characteristics to enhance your wine knowledge.'),
(36,'Explore Lesser-known Wines','Don\'t be afraid to try wines from lesser-known regions or grape varieties; they can offer unique and delightful experiences.'),
(37,'Cleanse Palate Frequently','When serving wine at a party, estimate about half a bottle per person to ensure an adequate supply.'),
(38,'Avoid Wine Mishaps','Consider the occasion and the preferences of your guests when selecting wines for an event.'),
(39,'Experiment with Cocktails','Use a wine thermometer to ensure that white wines are served at the right temperature.'),
(40,'Avoid Strong Odors','If a wine is too fruity or sweet for your taste, try serving it with spicy or savory dishes to balance the flavors.'),
(41,'Pair Aromatic Whites','Pair aromatic white wines, such as Gewurztraminer or Riesling, with spicy Asian or Indian cuisine.'),
(42,'Mind Wine Swirling','When attending a wine tasting, cleanse your palate with water or unsalted crackers between tastings to avoid flavor contamination.'),
(43,'Decant Older Reds','Don\'t swirl your wine excessively; a gentle swirl is enough to release the aromas without splashing or spilling.'),
(44,'Preserve Open Bottles','Consider decanting older red wines to separate any sediment and allow the wine to breathe.'),
(45,'Serve Dessert Wines','Use a wine stopper or vacuum pump to preserve opened bottles of wine and extend their shelf life.'),
(46,'Ask Questions Freely','Pair acidic wines with acidic foods, such as citrus or tomato-based dishes.'),
(47,'Experiment with Temps','Experiment with temperature variations when serving wine to find the optimal drinking temperature for different styles.'),
(48,'Discover Trusted Sources','Seek out wine recommendations from trusted sources, such as sommeliers, wine critics, or knowledgeable friends.'),
(49,'Allow Wines to Evolve','Don\'t judge a wine solely on its first impression; some wines evolve and improve with time in the glass.'),
(50,'Pair Wine and Chocolate','Explore wine and chocolate pairings to discover delightful flavor combinations.'),
(51,'Present Wines Stylishly','When serving wine, present the bottle label facing your guests for easy identification and discussion.'),
(52,'Avoid Scent Interference','Avoid using scented hand lotions or perfumes when tasting wine, as they can interfere with the aroma perception.'),
(53,'Match Acidic Foods','Consider the acidity of a wine when pairing it with seafood; high-acid wines can complement the brininess of shellfish.'),
(54,'Learn Wine Terminology','Learn the basics of wine terminology to effectively communicate your preferences and understand wine descriptions.'),
(55,'Chill Dessert Wines','Serve dessert wines slightly chilled to enhance their flavors and balance the sweetness.'),
(56,'Join Online Communities','Join online wine communities or forums to connect with fellow wine enthusiasts and share experiences.'),
(57,'Trust Your Palate','Remember that wine tasting is subjective, and everyone\'s palate is different; trust your own preferences and enjoy the journey.'),
(58,'Open Wine with Care','When opening a bottle of wine, avoid using excessive force, as it can cause the cork to break or crumble.'),
(59,'Experiment with Varieties','Experiment with wine cocktails or wine-based mixed drinks for a refreshing twist.'),
(60,'Avoid Wine and Heat','Avoid exposing wine to strong odors, as they can taint the flavors and aromas.'),
(61,'Consider Main Course','When ordering wine in a restaurant, consider the main course before selecting a bottle to ensure a harmonious pairing.'),
(62,'Learn Winemaking Techniques','Learn about the different winemaking techniques, such as oak aging or fermentation styles, to understand their impact on flavor profiles.'),
(63,'Attend Wine Education','Attend wine education classes or tastings to enhance your knowledge and appreciation of wine.'),
(64,'Avoid Heat Exposure','Avoid storing wine near appliances that generate heat, such as ovens or refrigerators.'),
(65,'Identify Wine Faults','Learn about the different wine faults and their characteristics to identify off-flavors in wine.'),
(66,'Pair Earthy Reds','Pair earthy red wines, such as Pinot Noir or Nebbiolo, with dishes featuring mushrooms or truffles.'),
(67,'Delve into Dessert Wines','Explore the world of dessert wines, including late harvest, ice wine, and fortified styles, for a luscious after-dinner treat.'),
(68,'Match Wine to Occasion','Consider the occasion and the mood when selecting wines; different wines can create different atmospheres.'),
(69,'Learn Winemaker\'s Story','When visiting a winery, take the time to understand the winemaker\'s philosophy and the story behind the wines.'),
(70,'Hold Wine by','When serving wine, hold the glass by the stem to avoid warming the wine with your body heat.'),
(71,'Contrast Flavors','Experiment with wine and food pairings involving contrasting flavors, such as pairing a sweet wine with a salty or tangy dish.'),
(72,'Monitor Wine Temperatures','Learn about the different wine aging potential; some wines are meant to be enjoyed young, while others benefit from years of cellar aging.'),
(73,'Look Beyond Labels','Don\'t judge a wine by its label or packaging; some fantastic wines come in modest bottles.'),
(74,'Pair Spicy Reds','Pair spicy red wines, such as Syrah or Zinfandel, with grilled meats or dishes with bold flavors.'),
(75,'Avoid Over-Chilling','Avoid serving wines that are too cold, as low temperatures can mask the wine\'s aromas and flavors.'),
(76,'Appreciate Terroir Influence','Learn about the concept of terroir and how it influences the characteristics of wines from different regions.'),
(77,'Seek Expert Advice','Don\'t be afraid to ask questions at wine tastings or when purchasing wine; professionals are often eager to share their knowledge.'),
(78,'Cater to Diverse Tastes','When serving wine, offer a variety of styles to cater to different preferences and tastes.'),
(79,'Optimal Sparkling Serve','Experiment with different serving temperatures for sparkling wines; cooler temperatures emphasize the bubbles, while slightly warmer temperatures enhance the flavors.'),
(80,'Practice Wine Moderation','Keep an eye on the alcohol content of wines, especially if you prefer lighter-bodied styles or are planning an extended tasting session.'),
(81,'Embrace Natural Wines','Explore the world of natural wine for a unique and raw expression of grape varietals and terroir.'),
(82,'Match Intensity Levels','When serving wine with cheese, consider the intensity of both the wine and the cheese to ensure a balanced pairing.'),
(83,'Decant Young Reds','Consider decanting young, bold red wines to open up their aromas and soften their tannins.'),
(84,'Wine: A Social Beverage','Remember that wine is a social beverage meant to be enjoyed with friends, family, and good conversation.'),
(85,'Explore Wine Accessories','Keep an open mind when trying wines from different countries or regions; you may discover hidden gems.'),
(86,'Trust Your Senses','Pair sweet wines with dishes featuring fruit or caramelized flavors for a harmonious combination.'),
(87,'Provide Wine Information','When hosting a wine tasting, provide tasting notes or information about the wines to enhance the experience for your guests.'),
(88,'Follow Your Preferences','Trust your own palate and preferences when selecting wines; what matters most is what you enjoy.'),
(89,'Delve into Wine Resources','Explore the world of wine accessories, such as aerators, wine stoppers, or wine thermometers, to enhance your wine experience.'),
(90,'Drink Wine Responsibly','If you\'re unsure about a wine\'s quality or if it\'s gone bad, trust your senses; a wine with off-putting aromas or flavors is likely spoiled.'),
(91,'Texture Matters, Too','Practice moderation when consuming wine; enjoy it in a responsible and mindful manner.'),
(92,'Observe Wine Etiquette','Consider the texture of a wine when pairing it with food; light-bodied wines can complement delicate dishes, while full-bodied wines can stand up to richer fare.'),
(93,'Discover Old vs. New','Take advantage of online wine resources, such as wine blogs or podcasts, for educational and entertaining content.'),
(94,'Offer Wine Variety','When serving wine at a party, offer a range of options, including red, white, and sparkling, to cater to different tastes.'),
(95,'Winery Stories Unveiled','When in doubt about wine etiquette, observe and follow the lead of those around you, especially in formal settings.'),
(96,'Hold Wine by Stem','\"Explore the concept of \"\"old world\"\" versus \"\"new world\"\" wines to understand the stylistic differences between traditional and modern winemaking approaches.\"'),
(97,'Personal Taste Matters','Don\'t be discouraged if you don\'t enjoy a particular wine; everyone\'s taste preferences are unique, and there is a wine out there for everyone.'),
(98,'Wine: Enjoy the Moment','Learn the proper way to hold a wine glass, grasping it by the stem to prevent fingerprints and maintain the wine\'s temperature.'),
(99,'Perfect Wine Glass','When serving wine, start with younger vintages before moving on to older ones to appreciate the evolution of flavors.'),
(100,' Relax, Savor, Appreciate',' Lastly, remember that wine is meant to be enjoyed, so relax, savor the moment, and appreciate the beauty and complexity in every glass.');
/*!40000 ALTER TABLE `wine_tips_guides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wine_trails_and_routes`
--

DROP TABLE IF EXISTS `wine_trails_and_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wine_trails_and_routes` (
  `trail_id` int(11) NOT NULL,
  `trail_name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `itinerary` text DEFAULT NULL,
  `landmarks` text DEFAULT NULL,
  `rating_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`trail_id`),
  KEY `rating_id` (`rating_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `wine_trails_and_routes_ibfk_1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`rating_id`),
  CONSTRAINT `wine_trails_and_routes_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine_trails_and_routes`
--

LOCK TABLES `wine_trails_and_routes` WRITE;
/*!40000 ALTER TABLE `wine_trails_and_routes` DISABLE KEYS */;
INSERT INTO `wine_trails_and_routes` VALUES
(1,'A Coastal Escape',10,'Day 1: Vineyard tours & tastings Day 2: Scenic hike & local cuisine Day 3: Wineries with views & unique varietals Day 4: Charming wine villages & regional delicacies Day 5: Bike ride through vineyards & farewell tasting','#Vineyard tours along the scenic hillsides #Picturesque viewpoints overlooking vineyards #Historic castles and chateaus in the region #Quaint villages known for their winemaking traditions #Local markets offering regional food and wine specialties',11),
(2,'The Hidden Gems of Wine Country',11,'Day 1: Journey to lesser-known wineries Day 2: Interactive wine experiences Day 3: Boutique wineries & passionate winemakers Day 4: Uncover hidden cellar treasures Day 5: Farewell dinner with rare wines & local delights','#Off-the-beaten-path wineries with unique architecture #Vineyards nestled in secluded valleys #Historic wine cellars and aging caves #Charming wine villages known for their hidden gems #Scenic driving routes with panoramic views',12),
(3,'A Taste of Tuscany',21,'Day 1: Vineyard tour & ocean-view tasting Day 2: Wineries along the coast Day 3: Boat trip to island vineyard & seafood pairing Day 4: Beachfront picnics & sunset tastings Day 5: Farewell seaside brunch with coastal wines','#Coastal vineyards with views of the ocean #Beaches and seaside towns dotted along the route #Boat trip to an island vineyard #Seafood restaurants offering wine pairings #Lighthouses and coastal landmarks',23),
(4,'From Mountains to Valleys',22,'Day 1: Private vineyard tour Day 2: Discover small, artisanal wineries Day 3: Historic cellars & heritage vineyards Day 4: Exclusive tastings of hidden gems Day 5: Culminate with a vintner\'s quest trail','#Private vineyard estates with exquisite gardens #Boutique wineries known for limited-production wines #Historic cellars and underground wine vaults #Quaint villages off the tourist path #Scenic countryside with rolling vineyards',24),
(5,'Winding Through Enchanting Vistas',32,'Day 1: Explore iconic vineyards & wine estates Day 2: Immerse in Tuscan wine traditions & cellar tours Day 3: Indulge in farm-to-table experiences & wine pairings Day 4: Visit medieval towns & vineyard-dotted landscapes Day 5: Conclude with a Tuscan feast & exceptional wine tasting','#Vineyards in the Chianti region #Medieval towns such as San Gimignano and Montepulciano #Historic wine estates with vineyard tours #Iconic landmarks like the Leaning Tower of Pisa #Olive groves and cypress-lined roads',35),
(6,'A Scenic Journey Through Vineyard Valleys',33,'Day 1: Venture into mountain vineyards & sip alpine wines Day 2: Descend to valley wineries & taste local favorites Day 3: Scenic drives through picturesque wine regions Day 4: Meet winemakers & delve into their craft Day 5: Wrap up with a wine pairing dinner & valley vistas','#Mountain vineyards with breathtaking views #Valleys with winding rivers and lush landscapes #Alpine villages known for their winemaking traditions #Scenic mountain passes and panoramic viewpoints #Charming towns nestled in valleys',36),
(7,'A Journey of Terroir and History',43,'Day 1: Follow vine-lined trails & indulge in tastings Day 2: Explore hidden valleys & their boutique wineries Day 3: Enjoy panoramic views & vineyard picnics Day 4: Immerse in vineyard activities & blending sessions Day 5: Farewell with a scenic hike & final vineyard visit','#Vine-covered hills and valleys offering scenic beauty #Hidden valleys with tranquil streams and waterfalls #Wineries located in restored old buildings or castles #Picturesque vineyard paths and walking trails #Landmarks showcasing local art and culture',47),
(8,'Through Sun-Kissed Vineyards',44,'Day 1: Journey through picturesque wine country landscapes Day 2: Wine tastings at renowned vineyards & estates Day 3: Discover local wine specialties & food pairings Day 4: Leisurely vineyard walks & breathtaking vistas Day 5: Conclude with a wine appreciation workshop & farewell tasting','#Rolling vineyards stretching as far as the eye can see #Wineries with stunning architectural designs #Valleys dotted with charming wine villages #Landmarks such as historic estates or monuments #Scenic routes showcasing the beauty of the wine country',48),
(9,'A Taste of Tranquility',54,'Day 1: Explore historic vineyards & their terroir Day 2: Visit centuries-old wineries & cellar tours Day 3: Tastings of age-worthy wines & vineyard heritage Day 4: Uncover wine stories & cultural landmarks Day 5: Farewell with a heritage-themed wine dinner & toast','#Vineyards with centuries-old grapevines #Historic wine estates with grand cellars #Landmarks showcasing the region\'s winemaking heritage #Cultural sites like ancient ruins or castles #Historic towns known for their wine-related history',59),
(10,'Uncovering Wine Treasures',55,'Day 1: Discover sun-kissed vineyards & golden wines Day 2: Experience vineyard walks & wine workshops Day 3: Savour sunsets & vineyard picnics Day 4: Meet passionate winemakers & tastings Day 5: Bid farewell with a golden grape tasting & vineyard farewell','#Vineyards bathed in golden sunlight #Landmarks with golden grape sculptures or installations #Hilltop wineries offering panoramic views #Sunflower fields and golden landscapes #Local festivals celebrating the golden grape harvest',60);
/*!40000 ALTER TABLE `wine_trails_and_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wine_varietals`
--

DROP TABLE IF EXISTS `wine_varietals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wine_varietals` (
  `varietal_id` int(11) NOT NULL,
  `winery_id` int(11) NOT NULL,
  `varietal_name` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `flavors` text DEFAULT NULL,
  `characteristics` text DEFAULT NULL,
  `food_pairings` text DEFAULT NULL,
  PRIMARY KEY (`varietal_id`),
  KEY `winery_id` (`winery_id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `wine_varietals_ibfk_1` FOREIGN KEY (`winery_id`) REFERENCES `winery` (`winery_id`),
  CONSTRAINT `wine_varietals_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wine_varietals`
--

LOCK TABLES `wine_varietals` WRITE;
/*!40000 ALTER TABLE `wine_varietals` DISABLE KEYS */;
INSERT INTO `wine_varietals` VALUES
(1,1,'Cabernet Sauvignon',1,'A full-bodied red wine with rich flavors of blackcurrant, black cherry, and hints of cedar and tobacco. It has firm tannins and a long, lingering finish.','Black currant, blackberry, cedar, tobacco.','Full-bodied, bold, tannic','Grilled steak, roasted lamb, aged cheddar'),
(2,1,'Meritage',1,'A Bordeaux-style red blend that combines two or more traditional Bordeaux grape varieties such as Cabernet Sauvignon, Merlot, and Cabernet Franc. It typically exhibits a complex flavor profile with ripe fruit, spice, and structured tannins.','Black cherry, plum, vanilla, spice.','Bordeaux-style blend','Prime rib, mushroom risotto, Gruyere cheese'),
(3,1,'Pinot Noir',1,'A delicate and elegant red wine with notes of red berries, cherry, and earthy undertones. It has a lighter body, lower tannins, and a silky texture.','Red cherry, raspberry, earthy, floral.','Light to medium-bodied, red fruits','Roast duck, salmon, mushroom-based dishes'),
(4,1,'Merlot',1,'A smooth and medium-bodied red wine with flavors of blackberry, plum, and chocolate. It is often described as having a velvety texture and approachable tannins.','Plum, blackberry, chocolate, herbaceous.','Medium to full-bodied, soft tannins','Beef stew, grilled portobello mushrooms, Brie cheese'),
(5,1,'Chardonnay',1,'A versatile white wine that can range from crisp and refreshing to rich and buttery. It often displays flavors of green apple, tropical fruits, and vanilla.','Apple, tropical fruit, butter, vanilla, oak.','Versatile, varying styles','Roast chicken, lobster, creamy pasta dishes'),
(6,1,'Red Blend',1,'A wine made from a combination of red grape varieties, offering a unique flavor profile that depends on the specific grapes used. It can range from fruit-forward and easy-drinking to complex and full-bodied.','Mixed berries, chocolate, spice.','Blend of red grape varieties','BBQ ribs, spicy sausage, smoked Gouda'),
(7,1,'Bordeaux-style Red Blend',1,'A red wine blend inspired by the wines of the Bordeaux region in France. It typically combines Cabernet Sauvignon, Merlot, Cabernet Franc, Malbec, and Petit Verdot, resulting in a structured and age-worthy wine.','Cassis, black cherry, graphite, cedar.','Traditional Bordeaux grapes','Braised short ribs, charcuterie, blue cheese'),
(8,1,'Rhane-style Red Blend',1,' red wine blend that follows the style of the wines from the Rhone Valley in France. It often includes Grenache, Syrah, and Mourvedre, showcasing ripe fruit flavors, spice, and a velvety texture.','Dark fruit, black pepper, lavender, smoked meat.','Inspired by Rhone Valley','Lamb tagine, roasted vegetables, feta cheese'),
(9,1,'Malbec',1,'A medium to full-bodied red wine known for its dark fruit flavors of blackberry and plum, along with hints of cocoa and spices. It has smooth tannins and a lingering finish.','Blackberry, plum, cocoa, violet.','Rich, deep flavors','Grilled flank steak, empanadas, Manchego cheese'),
(10,1,'Zinfandel',1,'A bold and robust red wine with flavors of ripe blackberry, raspberry, and pepper. It can vary from medium to full-bodied and is often associated with American winemaking.','Blackberry, raspberry, black pepper, spice.','Bold, jammy, black fruit','BBQ pulled pork, spicy chili, aged Gouda'),
(11,1,'Sauvignon Blanc',1,'A crisp and refreshing white wine with vibrant acidity and flavors of citrus fruits, green apple, and tropical notes. It can range from herbaceous and grassy to more tropical and fruity.','Citrus, green apple, grass, tropical fruit.','Crisp, refreshing, herbal','Goat cheese, grilled asparagus, seafood ceviche'),
(12,1,'Tempranillo',1,'A medium to full-bodied red wine with flavors of red berries, cherry, and leather. It is often associated with Spanish wines, particularly those from the Rioja and Ribera del Duero regions.','Cherry, plum, leather, tobacco.','Spanish varietal, medium-bodied','Paella, grilled chorizo, Manchego cheese'),
(13,1,'Cabernet Blend',1,'A red wine blend that prominently features Cabernet Sauvignon as the primary grape variety. It may include other Bordeaux varieties, adding complexity and depth to the wine.','Black currant, cherry, tobacco, cedar.','Blend with Cabernet Sauvignon','Beef tenderloin, truffle fries, Stilton cheese'),
(14,1,'Pinot Grigio',1,'A light and crisp white wine with flavors of pear, apple, and citrus. It is known for its refreshing character and easy drinkability.','Citrus, pear, green apple, mineral.','Light-bodied, citrus, apple','Caprese salad, seafood linguine, goat cheese tart'),
(15,1,'Rosa',1,'A pink-colored wine that can be made from various red grape varieties. It offers a range of flavors from fresh berries to floral notes and is typically light and dry.','Strawberry, watermelon, rose petal, refreshing acidity.','Light, dry, pink-colored','Prosciutto-wrapped melon, grilled shrimp skewers, creamy goat cheese'),
(16,1,'Merlot-Cabernet Sauvignon',1,'A medium-bodied red wine with bright acidity and flavors of cherry, plum, and dried herbs. It is the primary grape variety used in Italian Chianti wines.','Black cherry, blackberry, chocolate, spice.','Blend of Merlot and Cabernet Sauvignon','Herb-roasted chicken, roasted vegetables, Camembert cheese'),
(17,1,'Sangiovese',1,'A white wine with a medium body and flavors of apple, pear, and floral notes. It is often associated with the Alsace region in France.','Cherry, strawberry, tomato leaf, dried herbs.','Italian varietal, medium-bodied','Margherita pizza, pasta Bolognese, Pecorino Romano cheese'),
(18,1,'Cabernet',1,'A white wine with a richer and more full-bodied style compared to Pinot Blanc. It showcases flavors of stone fruits, melon, and honey.','Blackberry, black cherry, cedar, tobacco.','Cabernet Sauvignon','Filet mignon, roasted mushrooms, Roquefort cheese'),
(19,2,'Pinot Blanc',2,'A versatile white wine known for its aromatic qualities and a wide range of styles, from dry to sweet. It offers flavors of citrus, peach, and floral notes.','Apple, pear, honey, almond.','White mutation of Pinot Noir','Grilled chicken salad, seafood risotto, Fontina cheese'),
(20,2,'Pinot Gris',2,'A white wine blend from the Alsace region in France, typically featuring aromatic grape varieties like Riesling, Gewurztraminer, and Pinot Gris. It offers a complex and floral flavor profile.','Pear, apple, citrus, floral.','Gray-skinned mutation of Pinot Noir','Grilled scallops, vegetable stir-fry, creamy Brie cheese'),
(21,2,'Riesling',2,'A white wine blend from Alsace, France, typically made from a combination of grape varieties such as Pinot Blanc, Riesling, Gewurztraminer, and Muscat. It showcases a harmonious blend of floral and fruit flavors.','Apple, peach, honey, petrol.','Aromatic, versatile, sweet to dry','Spicy Thai curry, smoked salmon, Gorgonzola cheese'),
(22,2,'Alsace white blend',2,'An aromatic white wine with intense floral aromas, lychee, and spice notes. It has a full-bodied texture and can range from dry to sweet.','Citrus, stone fruit, floral, mineral.','Blend from Alsace, France','Pork schnitzel, sauerkraut, Munster cheese'),
(23,2,'Edelzwicker',2,'A fragrant white wine with pronounced floral aromas and flavors of grape, orange blossom, and exotic fruits. It can be made in a range of styles from dry to sweet.','Tropical fruit, peach, honey, spice.','Alsace blend, diverse grape varieties','Alsatian tarte flambee, quiche Lorraine, Raclette cheese'),
(24,2,'Gewarztraminer',2,'A light and crisp white wine with flavors of green apple, pear, and citrus. It is often associated with wines from Germany and Alsace, France.','Lychee, rose petal, ginger, spice.','Aromatic, floral, spicy','Spicy Asian cuisine, roasted pork, Limburger cheese'),
(25,2,'Muscat',2,'A sparkling wine made from a blend of different grape varieties. It can range from dry to sweet and offers refreshing bubbles and lively acidity.','Orange blossom, apricot, honey, musk.','Fragrant, grapey, sweet','Fresh fruit salad, lemon tart, creamy Havarti cheese'),
(26,2,'Pinot Noir',2,'A white wine with similarities to Pinot Blanc, showcasing flavors of apple, pear, and floral notes. It is often found in the Alsace region.','Citrus, green apple, mineral, white flowers.','Light, fresh, floral','Grilled trout, vegetable frittata, Mimolette cheese'),
(27,2,'White Blend',2,'A white wine grape variety commonly found in Alsace, France. It produces wines with a medium body, floral aromas, and flavors of stone fruits.','Green apple, pear, bread dough, lively bubbles.','Blend for sparkling wine','Oysters, caviar, triple cream Brie cheese'),
(28,2,'Sylvaner',2,'A full-bodied red wine with dark fruit flavors of blackberry, plum, and black pepper. It often displays a smoky and spicy character.','Apple, pear, almond, honey.','Grape variety related to Pinot Blanc','Grilled shrimp salad, smoked salmon canapes, Tomme de Savoie cheese'),
(29,2,'Sparkling Blend',2,'A red wine grape variety commonly grown in Central Europe, known for producing wines with flavors of dark berries, spices, and a hint of tobacco.','Stone fruit, apple, citrus, mineral.','White grape, similar to Chardonnay','Grilled chicken sandwiches, ratatouille, Reblochon cheese'),
(30,2,'Pinot Auxerrois',2,'A white wine grape variety primarily grown in the Friuli region of Italy. It offers flavors of pear, almond, and floral notes with a medium body and crisp acidity.','Blackberry, blueberry, black pepper, smoked meat.','Full-bodied, dark fruits, peppery','Braised short ribs, wild game, aged Pecorino cheese'),
(31,2,'Auxerrois',2,'A white wine grape variety native to Greece, particularly the island of Santorini. It showcases vibrant acidity, mineral notes, and flavors of citrus and stone fruits.','Dark fruit, black pepper, spice, earthy.','Versatile, varying styles','Grilled sausages, roasted beets, Gouda cheese'),
(32,3,'Syrah',3,'A white wine grape variety also known as Pinot Blanc, offering flavors of apple, pear, and a touch of honey. It can range from light and crisp to more full-bodied.','White peach, citrus, almond, honey.','Blend of red grape varieties','Prosciutto-wrapped figs, seafood pasta, Montasio cheese'),
(33,3,'Chardonnay',3,'A white wine grape variety primarily grown in the Piedmont region of Italy, known for producing crisp and citrusy wines with flavors of green apple and lemon.','Lemon, mineral, saline, crisp acidity.','Blend of white grape varieties','Grilled octopus, Greek salad, feta cheese'),
(34,3,'Red Blend',3,'A red wine from Portugal, typically made from indigenous grape varieties such as Touriga Nacional, Touriga Franca, and Tinta Roriz. It can showcase a range of flavors from ripe dark fruits to earthy and spicy notes.','Apple, pear, citrus, almond.','Austrian red grape, medium to full-bodied','Grilled vegetables, seafood paella, Asiago cheese'),
(35,3,'White Blend',3,'An acronym representing a red wine blend typically made from Grenache, Syrah, and Mourvedre grape varieties. It combines the fruity and spicy characteristics of these grapes to create a complex and balanced wine.','Blackberry, cherry, pepper, herbs.','White grape from Friuli region, Italy','Lamb kebabs, roasted eggplant, Manchego cheese'),
(36,3,'Blaufrankisch',3,'A white wine from Portugal, often made from grape varieties like Alvarinho, Arinto, and Encruzado. It offers flavors of citrus, tropical fruits, and crisp acidity.','Black cherry, plum, leather, tobacco.','Greek varietal, crisp, citrusy','Osso buco, truffle risotto, Pecorino cheese'),
(37,3,'Friulano',3,'An Austrian white wine with flavors of green apple, white pepper, and citrus. It exhibits a vibrant acidity and can range from light and refreshing to more full-bodied.','Lemon, green apple, nutty, oxidative.','Italian white grape, fresh, clean','Comte cheese fondue, chicken in cream sauce, Morbier cheese'),
(38,3,'Assyrtico',3,'A white wine grape variety primarily grown in the Veneto region of Italy, known for producing wines with flavors of peach, almond, and floral notes.','Blackberry, plum, black pepper, chocolate.','Full-bodied, bold, tannic','Grilled lamb chops, BBQ ribs, smoked Cheddar cheese'),
(39,3,'Pinot Bianco',3,'A red wine grape variety from Italy, particularly Piedmont, producing wines with flavors of black cherry, plum, and violet. It typically has a lighter body and softer tannins.','Black currant, blackberry, spice, smoked meat.','Bold, jammy, black fruit','Grilled ribeye steak, smoked brisket, blue cheese'),
(40,3,'Cabernet Sauvignon',3,'Also known as Alicante Bouschet, it is a red wine grape variety that produces deeply colored wines with intense flavors of blackberry, black cherry, and spices.','Cherry, rose petal, tar, truffle.','Light to medium-bodied, red fruits','Truffle risotto, braised beef cheeks, Taleggio cheese'),
(41,3,'Zinfandel',3,'A robust red wine with dark fruit flavors of blackberry, plum, and blueberry. It is known for its deep color, full body, and firm tannins.','Cherry, raspberry, black pepper, lively acidity.','Sauvignon Blanc','Pizza Margherita, lasagna, Parmigiano Reggiano cheese'),
(42,3,'Pinot Noir',3,'A red wine blend that prominently features Tempranillo as the primary grape variety. It may include other Spanish varieties such as Garnacha, Mazuelo, and Graciano, adding complexity and structure.','Strawberry, raspberry, violet, light-bodied.','Austrian varietal, dry, peppery','Grilled chicken skewers, charcuterie, Brie cheese'),
(43,3,'Sauvignon',3,'The Italian name for Pinot Noir, often used to describe red wines made from the Pinot Noir grape variety. It offers flavors of red berries, cherry, and earthy undertones.','Blackberry, plum, dark chocolate, firm tannins.','Rich, deep flavors','Florentine steak, wild boar ragu, Pecorino Toscano cheese'),
(44,3,'Graner Veltliner',3,'An Austrian white wine grape variety, showcasing flavors of apple, pear, and white pepper. It has a medium body and a crisp, refreshing character.','Raspberry, bell pepper, tobacco, herbal.','Aromatic, versatile, sweet to dry','Ceviche, spicy Asian fusion dishes, fresh goat cheese'),
(45,3,'Malbec',3,'A red wine grape variety primarily grown in South Africa, known for producing wines with flavors of blackberry, plum, and smoky notes. It often exhibits a medium to full body and can age well.','Cherry, plum, leather, dried herbs.','Blend of Carignan and Grenache','Smoked BBQ ribs, beef empanadas, smoked Gouda cheese'),
(46,3,'Riesling',3,'A red wine grape variety commonly found in Argentina, producing wines with flavors of dark berries, plum, and spice. It is often associated with a smooth texture and medium body.','Citrus, peach, floral, aromatic.','Traditional Bordeaux grapes','Tomato-based pasta dishes, grilled lamb chops, Pecorino cheese'),
(47,3,'Carignan-Grenache',3,'A clone of Sangiovese used in the production of Brunello di Montalcino wines. It offers complex flavors of red fruits, cherry, tobacco, and earthy undertones.','Blackberry, black pepper, tobacco, green bell pepper.','Italian varietal, tannic, dark fruits','Caprese salad, pesto pasta, Pecorino Toscano cheese'),
(48,3,'Bordeaux-style Red Blend',3,'An aromatic white wine grape variety primarily grown in Argentina, known for its floral and citrusy aromas, with flavors of peach, apricot, and lychee.','Cherry, plum, violet, earthy.','Aromatic white grape, oxidative style','Thai curry dishes, roasted pork loin, Brie cheese'),
(49,3,'Sagrantino',3,'A red wine grape variety originally from Bordeaux, now primarily grown in Chile. It showcases flavors of blackberry, green pepper, and spice, with medium to full body and smooth tannins.','Lemon, apple, almond, mineral.','Australian term for Syrah','Grilled sardines, chorizo stew, Sao Jorge cheese'),
(50,3,'Savagnin',3,'The local name for Sangiovese in the Montepulciano region of Tuscany, Italy. It produces wines with flavors of cherry, plum, and herbal notes.','Green apple, honey, white flowers, lively acidity.','Blend of Cabernet Sauvignon and Syrah','Braised lamb shanks, ratatouille, Roquefort cheese'),
(51,3,'Shiraz',3,'An Italian white wine grape variety, particularly associated with Vernaccia di San Gimignano in Tuscany. It offers flavors of green apple, citrus, and almond.','Red fruit, earthy, rustic, medium-bodied.','Italian varietal, medium-bodied','Grilled sea bass, pesto gnocchi, Asiago cheese'),
(52,3,'Cabernet Sauvignon-Syrah',3,'A versatile white wine grape variety known for its high acidity and wide range of styles. It can showcase flavors of apple, pear, honey, and tropical fruits.','Red berries, black pepper, garrigue, spice.','Italian varietal, tannic, high acid','Seafood stew, grilled octopus, Queijo da Serra cheese'),
(53,3,'Sangiovese',3,'A red wine from Portugal, typically made from indigenous grape varieties such as Touriga Nacional, Touriga Franca, and Tinta Roriz. It can showcase a range of flavors from ripe dark fruits to earthy and spicy notes.','Green apple, lemon, almond, mineral.','Italian varietal, high acid, red fruits','Grilled chicken Caesar salad, risotto Milanese, Grana Padano cheese'),
(54,3,'Nebbiolo',3,'A red wine grape variety known for its ripe fruit flavors of strawberry, raspberry, and spice. It can be used as a single varietal or in blends, offering a smooth and approachable character.','Citrus, peach, floral, crisp acidity.','Light-bodied, red fruits, Beaujolais','Pizza with cured meats, pasta with tomato sauce, Taleggio cheese'),
(55,3,'Barbera',3,'An aromatic white wine with floral aromas, flavors of apricot, peach, and tropical fruits. It has a full-bodied texture and can be dry or slightly off-dry.','Peach, apricot, floral, honey.','Blend of red grape varieties','Smoked BBQ brisket, spicy chorizo, Manchego cheese'),
(56,4,'Gamay',4,'A white wine from Portugal, often made from grape varieties like Alvarinho, Arinto, and Encruzado. It offers flavors of citrus, tropical fruits, and crisp acidity.','Pear, apple, almond, honey.','Full-bodied, bold, tannic','Braised beef short ribs, blue cheese burgers, aged Gouda cheese'),
(57,4,'Red Blend',4,'An Austrian white wine with flavors of green apple, white pepper, and citrus. It exhibits a vibrant acidity and can range from light and refreshing to more full-bodied.','Black cherry, plum, violet, light tannins.','Blend of Tannat and Cabernet Sauvignon','Spanish tapas, roasted vegetables, Iberico cheese'),
(58,4,'Cabernet Sauvignon',4,'The grape variety used to produce Prosecco, an Italian sparkling wine. It showcases flavors of apple, pear, and floral notes, with lively bubbles and a crisp finish.','Blackberry, black cherry, licorice, velvety tannins.','Herbaceous, medium-bodied, red fruits','Mushroom risotto, roasted quail, Pecorino cheese'),
(59,4,'Tannat-Cabernet',4,'A medium to full-bodied red wine with flavors of black cherry, plum, and chocolate. It is often described as having a velvety texture and approachable tannins.','Blackberry, blueberry, dark chocolate, powerful tannins.','Medium to full-bodied, soft tannins','Wiener Schnitzel, potato salad, Bergkase cheese'),
(60,4,'Cabernet Franc',4,'A wine made from a combination of white grape varieties, offering a unique flavor profile that depends on the specific grapes used. It can range from light and crisp to rich and aromatic.','Cherry, plum, leather, vanilla.','Light to medium-bodied, red fruits','Argentinean beef empanadas, grilled chorizo, Queso de Bola cheese'),
(61,4,'Merlot',4,'The Australian name for Syrah, representing a full-bodied red wine with bold flavors of blackberry, black pepper, and spices. It often exhibits a rich and smooth texture.','Red cherry, cranberry, earthy, mushroom.','Aromatic, versatile, sweet to dry','Watermelon salad, grilled shrimp, creamy goat cheese'),
(62,4,'Pinot Noir',4,'An aromatic white wine with intense floral aromas, lychee, and spice notes. It has a full-bodied texture and can range from dry to sweet.','Citrus, pear, white pepper, mineral.','Crisp, refreshing, herbal','Wiener Schnitzel, asparagus risotto, Liptauer cheese'),
(63,4,'Riesling',4,'A versatile white wine known for its aromatic qualities and a wide range of styles, from dry to sweet. It offers flavors of citrus, peach, and floral notes.','Blackberry, mulberry, smoke, earthy.','Sauvignon Blanc','Grilled ribeye steak, chimichurri sauce, Manchego cheese'),
(64,4,'Sauvignon Blanc',4,'Zinfandel: A red wine grape variety primarily grown in California, known for its bold flavors of blackberry, raspberry, and pepper. It can produce wines ranging from medium to full-bodied.','Blackberry, cherry, violet, medium-bodied.','Italian varietal, medium-bodied','Roasted chicken, buttery lobster, creamy Brie cheese'),
(65,4,'Sauvignon',4,'A white wine grape variety primarily grown in Spain, particularly in the Rioja region. It offers flavors of citrus, apple, and floral notes, with a crisp and refreshing character.','Strawberry, raspberry, floral, refreshing acidity.','Full-bodied, dark fruits, peppery','Prosecco-battered calamari, peach Bellini, fresh mozzarella'),
(66,4,'Sangiovese',4,'A white wine blend from the Alsace region in France, typically made from a combination of grape varieties such as Riesling, Gewurztraminer, and Pinot Gris. It offers a complex and floral flavor profile.','Citrus, green apple, pear, herbal.','Versatile, varying styles','Herb-crusted lamb chops, roasted mushrooms, Gruyere cheese'),
(67,4,'Syrah',4,'A white wine grape variety also known as Pinot Grigio, offering flavors of apple, pear, and a touch of honey. It can range from light and crisp to more full-bodied.','Blackberry, black cherry, spice, gamey.','Sangiovese clone, rich, tannic','Grilled seafood medley, Mediterranean mezze platter, feta cheese'),
(68,4,'Chardonnay',4,'A red wine from Portugal, typically made from indigenous grape varieties such as Touriga Nacional, Touriga Franca, and Tinta Roriz. It can showcase a range of flavors from ripe dark fruits to earthy and spicy notes.','Blackberry, blueberry, violet, firm tannins.','Argentine white varietal, floral, aromatic','BBQ pulled pork, smoked brisket, smoked Cheddar cheese'),
(69,4,'Sangiovese Grosso',4,'A red wine blend inspired by the wines of the Rhone Valley in France. It often includes Grenache, Syrah, and Mourvedre, showcasing ripe fruit flavors, spice, and a velvety texture.','Cherry, black plum, licorice, medium-bodied.','Chilean varietal, herbal, spicy','Spicy Asian cuisine, curries, blue cheese'),
(70,4,'Torrontas',4,'A popular white wine known for its light and crisp character, offering flavors of citrus, green apple, and stone fruits. It is often associated with Italian wines.','Green apple, pear, herbaceous, mineral.','Sangiovese clone, Tuscan varietal','Spicy Thai dishes, sushi, Roquefort cheese'),
(71,4,'Carmenare',4,'A red wine grape variety primarily grown in the Piedmont region of Italy, known for producing wines with flavors of cherry, rose petal, and truffle. It is the grape used in Barolo and Barbaresco wines.','Raspberry, strawberry, floral, light-bodied.','Italian white varietal, crisp, minerally','BBQ ribs, spicy sausage, aged Gouda cheese'),
(72,4,'Prugnolo Gentile',4,'A red wine grape variety from Italy, particularly Piedmont, producing wines with flavors of blackberry, plum, and violet. It typically has a lighter body and softer tannins.','Apple, citrus, mineral, crisp acidity.','Versatile white varietal, honey, floral','Grilled seafood skewers, paella, Manchego cheese'),
(73,4,'Vernaccia',4,'A red wine grape variety primarily grown in Italy, particularly in Piedmont. It offers bright acidity, flavors of cherry, blackberry, and spice, and can range from light and fresh to more full-bodied.','Plum, black cherry, chocolate, savory.','Blend of white grape varieties','Choucroute garnie, Munster cheese, Alsatian tarte flambee'),
(74,4,'Chenin Blanc',4,'A red wine grape variety primarily grown in the Beaujolais region of France. It produces light-bodied wines with flavors of red berries, cherry, and a hint of floral notes.','Citrus, peach, floral, medium-bodied.','Red wine from Portugal','Grilled scallops, creamy pasta dishes, Camembert cheese'),
(75,4,'White Blend',4,'A wine made from a combination of different red grape varieties, offering a unique flavor profile that depends on the specific grapes used. It can range from light and fruity to bold and complex.','Blackberry, black currant, leather, robust tannins.','Grenache, Syrah, Mourvedre blend','Grilled chorizo, hearty stews, Queijo da Serra cheese'),
(76,4,'Portuguese Red',4,'A red wine blend that combines the robust Tannat grape with the structured Cabernet Sauvignon. It results in a wine with intense dark fruit flavors, firm tannins, and a powerful, full-bodied profile.','Lemon, green apple, almond, saline.','Italian varietal, medium-bodied','Goat cheese salad, grilled asparagus, herb-roasted chicken'),
(77,4,'G-S-M',4,'A red wine grape variety often used in blends, but also produced as a single varietal. It offers flavors of blackcurrant, cherry, and herbal undertones, with a medium to full body and moderate tannins.','Lychee, rose petal, tropical fruit, aromatic.','Full-bodied, bold, tannic','Braised short ribs, ratatouille, feta cheese'),
(78,5,'Sangiovese',5,'A medium to full-bodied red wine with flavors of black cherry, plum, and chocolate. It is often described as having a velvety texture and approachable tannins.','Dark fruit, black pepper, spice, medium-bodied.','Italian white varietal, crisp, citrus','Caprese salad, seafood linguine, goat cheese tart'),
(79,5,'Cabernet Sauvignon',5,'A red wine grape variety known for producing elegant and delicate wines with flavors of red berries, cherry, and earthy nuances. It typically has a lighter body and softer tannins.','Lemon, green apple, herbaceous, crisp acidity.','Crisp, refreshing, herbal','Truffle risotto, braised beef cheeks, Taleggio cheese'),
(80,5,'Cortese',5,'A versatile white wine known for its aromatic qualities and a wide range of styles, from dry to sweet. It offers flavors of citrus, peach, and floral notes.','Citrus, honey, fig, waxy texture.','Herbaceous, medium-bodied, red fruits','Pizza with cured meats, pasta with tomato sauce, Pecorino cheese'),
(81,5,'Sauvignon Blanc',5,'A white wine known for its vibrant acidity and flavors of tropical fruits, citrus, and grassy notes. It can range from crisp and refreshing to more herbaceous and complex.','Blackberry, cherry, tobacco, balanced structure.','Blend of red grape varieties','Margherita pizza, lasagna, Parmigiano Reggiano cheese'),
(82,5,'Cabernet Franc',5,'A red wine grape variety primarily grown in Italy, particularly in Tuscany. It offers flavors of red cherries, plum, and herbal undertones, with medium acidity and tannins.','Black currant, blackberry, pepper, bold.','Red varietal, fruity, medium-bodied','Smoked BBQ brisket, spicy chorizo, Manchego cheese'),
(83,5,'Red Blend',5,'A full-bodied red wine with dark fruit flavors of blackberry, plum, and black pepper. It often displays a smoky and spicy character.','Citrus, pear, almond, refreshing acidity.','Aromatic white varietal, floral, peach','Braised beef short ribs, blue cheese burgers, aged Gouda cheese'),
(84,5,'Grenache',5,'A versatile white wine known for its wide range of styles, from crisp and unoaked to rich and buttery. It offers flavors of apple, citrus, and tropical fruits.','Green apple, citrus, grass, zesty acidity.','White wine from Portugal','Grilled lamb chops, smoked Gouda, charcuterie platter'),
(85,5,'Viognier',5,'A clone of Sangiovese used in the production of Brunello di Montalcino wines. It offers complex flavors of red fruits, cherry, tobacco, and earthy undertones.','Pear, honeydew melon, nutty, medium-bodied.','Austrian varietal, dry, peppery','Spanish tapas, roasted vegetables, Iberico cheese'),
(86,5,'Portuguese White',5,'An aromatic white wine grape variety primarily grown in Argentina, known for its floral and citrusy aromas, with flavors of peach, apricot, and lychee.','Citrus, peach, saline, vibrant acidity.',' Light to medium-bodied, red fruits','Mushroom risotto, roasted quail, Pecorino cheese'),
(87,5,'Graner Veltliner',5,'A red wine grape variety originally from Bordeaux, now primarily grown in Chile. It showcases flavors of blackberry, green pepper, and spice, with medium to full body and smooth tannins.','Lemon, peach, mineral, crisp acidity.','Grenache, Syrah, Mourvedre blend','Wiener Schnitzel, potato salad, Bergkase cheese'),
(88,5,'Pinot Noir',5,'The local name for Sangiovese in the Montepulciano region of Tuscany, Italy. It produces wines with flavors of cherry, plum, and herbal notes.','Black cherry, blackberry, leather, firm tannins.','Italian white varietal, medium-bodied','Grilled steak, roasted lamb, blue cheese'),
(89,5,'G-S-M',5,'An Italian white wine grape variety, particularly associated with Vernaccia di San Gimignano in Tuscany. It offers flavors of green apple, citrus, and almond.','Mixed berries, spice, medium-bodied.','Rich, deep flavors','Braai-grilled meats, boerewors, aged Gouda cheese'),
(90,5,'Garganega',5,'A versatile white wine grape variety known for its high acidity and wide range of styles. It can showcase flavors of apple, pear, honey, and tropical fruits.','Lemon, green apple, saline, dry finish.','Versatile, varying styles','Argentinean beef empanadas, grilled chorizo, Queso de Bola cheese'),
(91,5,'Malbec',5,'A wine made from a combination of white grape varieties, offering a unique flavor profile that depends on the specific grapes used. It can range from light and crisp to rich and aromatic.','Blackberry, plum, black pepper, rustic.','Italian white varietal, used for Prosecco','Watermelon salad, grilled shrimp, creamy goat cheese'),
(92,5,'Chardonnay',5,'A red wine from Portugal, typically made from indigenous grape varieties such as Touriga Nacional, Touriga Franca, and Tinta Roriz. It can showcase a range of flavors from ripe dark fruits to earthy and spicy notes.','Raspberry, cherry, violet, fresh acidity.','Medium to full-bodied, soft tannins','Prime rib, filet mignon, aged cheddar'),
(93,5,'Glera',5,'A white wine from Portugal, often made from grape varieties like Alvarinho, Arinto, and Encruzado. It offers flavors of citrus, tropical fruits, and crisp acidity.','Blackberry, black plum, chocolate, powerful tannins.','Blend of white grape varieties','Beef stew, mushroom risotto, Gruyere cheese'),
(94,5,'Merlot',5,'An Austrian white wine with flavors of green apple, white pepper, and citrus. It exhibits a vibrant acidity and can range from light and refreshing to more full-bodied.','Red cherry, strawberry, floral, light-bodied.','Australian term for Syrah','Roast duck, salmon, mushroom-based dishes'),
(95,5,'White Blend',5,'An Italian white wine grape variety primarily used in the production of Soave wines. It offers flavors of pear, citrus, and almond, with a crisp and dry character.','Green apple, lemon, almond, mineral.','Aromatic, floral, spicy','Beef tenderloin, roasted vegetables, Brie cheese'),
(96,5,'Shiraz',5,'A red wine grape variety known for its deep purple color and flavors of blackberry, plum, and mocha. It often exhibits a full body, velvety texture, and smooth tannins.','Blackberry, plum, spice, full-bodied.','Aromatic, versatile, sweet to dry',' Lobster, creamy pasta dishes, roasted chicken'),
(97,5,'Gewarztraminer',5,'The grape variety used to produce Prosecco, an Italian sparkling wine. It showcases flavors of apple, pear, and floral notes, with lively bubbles and a crisp finish.','Blackberry, black cherry, pepper, structured.','Bold, jammy, black fruit',' BBQ ribs, spicy sausage, smoked Gouda'),
(98,5,'Riesling',5,'A medium to full-bodied red wine with flavors of black cherry, plum, and chocolate. It is often described as having a velvety texture and approachable tannins.','Citrus, pear, floral, crisp acidity.','Spanish white varietal, fresh, citrus','Braised short ribs, charcuterie, blue cheese'),
(99,5,'Zinfandel',5,'A wine made from a combination of white grape varieties, offering a unique flavor profile that depends on the specific grapes used. It can range from light and crisp to rich and aromatic.','Black cherry, plum, cocoa, complex structure.','Blend from Alsace, France','Lamb tagine, roasted vegetables, feta cheese'),
(100,5,'Viura',5,'The Australian name for Syrah, representing a full-bodied red wine with bold flavors of blackberry, black pepper, and spices. It often exhibits a rich and smooth texture.','Blackberry, cherry, vanilla, full-bodied.','Gray-skinned mutation of Pinot Noir','Grilled steak, chimichurri sauce, Manchego cheese'),
(101,5,'Alsace white blend',5,'An aromatic white wine known for its intense floral aromas, lychee, and spice notes. It has a full-bodied texture and can range from dry to slightly sweet.','Green apple, lemon zest, mineral, refreshing acidity.','Red wine from Portugal','BBQ pulled pork, spicy sausage, aged Gouda cheese'),
(102,5,'Pinot Gris',5,'A versatile white wine grape variety that produces wines with highly aromatic profiles, showcasing floral, citrus, and fruity notes. It can be made in both dry and sweet styles.','Cherry, raspberry, floral, medium-bodied.','Sauvignon Blanc','Goat cheese salad, grilled asparagus, herb-roasted chicken'),
(103,5,'Portuguese Red',5,'A red wine grape variety known for its elegance and complexity. It offers flavors of red berries, cherry, and earthy undertones. Pinot Noir wines can range from light and delicate to more structured and age-worthy.','Citrus, pear, white flowers, crisp acidity.','Inspired by Rhone Valley','Tapas, roasted lamb, Manchego cheese'),
(104,5,'Sauvignon',5,'A white wine grape variety that produces light and crisp wines with flavors of green apple, citrus, and floral notes. It is primarily grown in Germany and Alsace, France.','Apricot, honey, white pepper, rich texture.','Light-bodied, citrus, apple','Grilled ribeye steak, roasted mushrooms, Gruyere cheese'),
(105,5,'Rhane-style Red Blend',5,'A wine blend specifically crafted for sparkling wine production. It can be a combination of different grape varieties, offering a range of flavors and textures, from crisp and refreshing to rich and toasty.','Peach, honey, nutmeg, creamy texture.','Italian varietal, tannic, high acid','Caprese salad, seafood linguine, goat cheese tart'),
(106,5,'Pinot Grigio',5,'A white wine grape variety often used in the production of sparkling wines and still wines. It offers flavors of apple, pear, and a touch of spice, with a medium-bodied profile.','White peach, elderflower, light-bodied, crisp acidity.','Italian varietal, medium-bodied, dark fruits','Watermelon salad, grilled shrimp, creamy goat cheese'),
(107,5,'Nebbiolo',5,'A white wine grape variety that is often blended with Pinot Blanc or Pinot Gris. It contributes to wines with flavors of stone fruits, citrus, and a hint of floral notes.','Black cherry, plum, tobacco, medium-bodied.','Italian varietal, high acid, red fruits','Beef stew, mushroom risotto, Brie cheese'),
(108,5,'Dolcetto',5,'A full-bodied red wine grape variety known for its dark fruit flavors of blackberry, plum, and black pepper. It often displays a smoky and spicy character.','Citrus, tropical fruit, herbal, vibrant acidity.','Spanish red varietal, deep color, fruity','Margherita pizza, pasta Bolognese, Pecorino cheese'),
(109,5,'Barbera',5,'A red wine grape variety primarily grown in Central Europe, particularly Austria and Hungary. It offers flavors of black cherry, blackberry, and spice, with medium to full body and moderate tannins.','Pineapple, honey, apricot, luscious sweetness.','Full-bodied, dark fruits, tannic','Prime rib, filet mignon, aged cheddar'),
(110,5,'Garnacha Tintorera',5,'A white wine grape variety predominantly grown in the Friuli-Venezia Giulia region of Italy. It showcases flavors of pear, almond, and citrus, with a medium-bodied profile and refreshing acidity.','Blackberry, black cherry, herbs, medium-bodied.','Full-bodied, dark fruits, peppery','Roasted chicken, seafood pasta, Gruyere cheese'),
(111,5,'Petite Sirah',5,'A white wine grape variety native to the Greek island of Santorini. It offers vibrant acidity, mineral notes, and flavors of citrus, green apple, and tropical fruits.','Cherry, blackberry, tobacco, structured.','Blend with Tempranillo','Grilled scallops, creamy pasta dishes, Camembert cheese'),
(112,5,'Syrah',5,'Also known as Pinot Blanc, it is a white wine grape variety that produces crisp and refreshing wines with flavors of apple, pear, and a touch of honey.','Blackberry, dark plum, black pepper, robust tannins.','Italian term for Pinot Noir','Spicy Thai dishes, sushi, Roquefort cheese'),
(113,5,'Tempranillo Blend',5,'An Austrian white wine grape variety that produces wines with flavors of green apple, white pepper, and spice. It can range from light and refreshing to more full-bodied.','Blackberry, dark chocolate, violet, firm tannins.','Austrian red grape, medium-bodied','Lobster, creamy pasta dishes, roasted chicken'),
(114,5,'Pinot Nero',5,'A red wine grape variety primarily grown in the Umbria region of Italy. It offers intense flavors of blackberry, plum, and spices, with a full-bodied profile and robust tannins.','Sour cherry, tomato leaf, earthy, grippy tannins.','Traditional Bordeaux grapes','Goat cheese salad, grilled asparagus, herb-roasted chicken'),
(115,5,'Roter Veltliner',5,'A white wine grape variety known for its high acidity and distinct nutty, oxidative character. It is primarily grown in the Jura region of France.','Citrus, peach, tropical fruit, lively acidity.','South African varietal, earthy, smoky','Florentine steak, wild boar ragu, Pecorino Toscano cheese'),
(116,5,'Bordeaux-style Red Blend',5,'The Australian name for Syrah, representing a full-bodied red wine with bold flavors of blackberry, black pepper, and spices. It often exhibits a rich and smooth texture.','Blackberry, plum, spice, velvety tannins.','Italian varietal, fruity, medium-bodied','Ceviche, spicy Asian fusion dishes, fresh goat cheese'),
(117,5,'Pinotage',5,'A red wine blend that combines the structure and depth of Cabernet Sauvignon with the spicy and peppery notes of Syrah. It results in a wine with complex flavors and firm tannins.','Apple, pear, white flowers, crisp acidity.','Light, dry, pink-colored','Smoked BBQ ribs, beef empanadas, smoked Gouda cheese'),
(118,5,'Bonarda',5,'A red wine grape variety primarily grown in Italy, particularly in Tuscany. It offers flavors of red cherries.','Cherry, raspberry, herbs, medium-bodied.','Blend of Tannat and Cabernet Sauvignon','Tomato-based pasta dishes, grilled lamb chops, Pecorino cheese'),
(119,5,'Rosa',5,'A red wine grape variety widely planted in the Piedmont region of Italy. It produces wines with bright acidity, vibrant flavors of red cherry, blackberry, and a hint of spice. Barbera wines are known for their approachability and versatility with food pairings.','Blackberry, black plum, violet, firm tannins.','Light, dry, pink-colored','Caprese salad, pesto pasta, Pecorino Toscano cheese');
/*!40000 ALTER TABLE `wine_varietals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winery`
--

DROP TABLE IF EXISTS `winery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `winery` (
  `winery_id` int(11) NOT NULL,
  `winery_name` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`winery_id`),
  KEY `rating_id` (`rating_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `winery_ibfk_1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`rating_id`),
  CONSTRAINT `winery_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winery`
--

LOCK TABLES `winery` WRITE;
/*!40000 ALTER TABLE `winery` DISABLE KEYS */;
INSERT INTO `winery` VALUES
(1,'Kirkland Signature ',1,1,1),
(2,'Kuentz-Baz',12,13,1),
(3,'Herdade Grande',23,25,1),
(4,'Spier',34,38,1),
(5,'Feudi del',45,49,1);
/*!40000 ALTER TABLE `winery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02 10:47:58
