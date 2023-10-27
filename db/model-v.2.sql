-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/10/2023 às 14:07
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `model_api`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clients`
--

CREATE TABLE `clients` (
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `nameClient` varchar(255) NOT NULL,
  `responsible` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clients`
--

INSERT INTO `clients` (`client_id`, `nameClient`, `responsible`, `email`, `phoneNumber`, `age`, `created_at`, `updated_at`) VALUES
(1, 'Jodie Emmerich', 'Medhurst', 'plittel@hotmail.com', '+1.734.386.2137', '11', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(2, 'Luis McKenzie', 'Bailey', 'horacio85@douglas.com', '(518) 734-4895', '54', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(3, 'Prof. Serenity Roob', 'Bashirian', 'streich.nyah@hotmail.com', '+1-231-631-3846', '44', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(4, 'Beryl Windler DVM', 'Graham', 'herzog.eladio@spinka.com', '623.600.7036', '23', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(5, 'Friedrich Mante', 'Pagac', 'zbartoletti@hotmail.com', '707-836-5847', '32', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(6, 'Virginia Wiegand', 'Pfannerstill', 'stella98@white.com', '+1 (414) 765-9583', '17', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(7, 'Golden Williamson', 'Miller', 'nhamill@luettgen.com', '(386) 668-1901', '35', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(8, 'Leo Schmeler V', 'Kemmer', 'kelton.hills@schuppe.org', '352-866-5165', '43', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(9, 'Emory Jakubowski', 'Thiel', 'lockman.georgette@gleichner.com', '+1 (618) 607-3885', '42', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(10, 'Dr. Kieran Pagac', 'Cruickshank', 'kolby63@heathcote.com', '580-673-0292', '41', '2023-10-10 04:13:11', '2023-10-10 04:13:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `institutions`
--

CREATE TABLE `institutions` (
  `institution_id` bigint(20) UNSIGNED NOT NULL,
  `nameInstitution` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `institutions`
--

INSERT INTO `institutions` (`institution_id`, `nameInstitution`, `address`, `phoneNumber`, `created_at`, `updated_at`) VALUES
(1, 'Gorczany, White and Pfannerstill', '231 Dorcas Lock\nVeldaberg, NH 17226-3751', '1-601-338-6309', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(2, 'Feil and Sons', '3923 Jensen Well Apt. 944\nNorvalfurt, SC 33924-1901', '+1.223.357.3622', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(3, 'Smith-Lynch', '8952 Bauch Mews\nNorth Mariam, CA 49484-3353', '1-501-783-4331', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(4, 'Greenholt PLC', '3115 Muller Square Suite 634\nNicolasmouth, UT 64817', '(786) 758-3351', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(5, 'Sipes-Green', '12444 Harvey Isle Suite 256\nEast Andreane, VA 79460-5097', '234-319-1387', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(6, 'Murray and Sons', '622 McLaughlin Squares\nNew Asa, IN 92334', '(574) 772-2138', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(7, 'Sporer Ltd', '203 Haley Key\nEast Ellisbury, OK 19441', '937.750.6967', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(8, 'Collins PLC', '92551 Bartell Radial\nEast Eloise, PA 69995', '(909) 525-6523', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(9, 'Olson Ltd', '8492 Hettinger Club\nCorkeryville, NY 36936', '731-936-5793', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(10, 'Lang Group', '155 Greenfelder Crossing\nWest Consuelomouth, AL 63458-6385', '+12625530131', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(11, 'Satterfield, Tillman and Abernathy', '3780 April Parkway Suite 868\nWyattshire, MO 72824-0687', '+12697808663', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(12, 'Brakus-Ondricka', '853 Schiller Flat Suite 988\nWeimannview, PA 29239', '559-421-3302', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(13, 'Quitzon and Sons', '137 Cassin Plaza Suite 551\nJillianville, MT 03510-4024', '+12603079431', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(14, 'Kemmer-Kilback', '7611 Kulas Isle\nNorth Veda, NM 39228-9036', '707-546-7970', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(15, 'Bradtke LLC', '9408 Ratke Landing\nWest Lelandmouth, WY 52121-5821', '+1-414-753-8098', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(16, 'Stroman Inc', '48611 Betty Forge Suite 038\nNorth Matt, PA 52712', '714-452-5378', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(17, 'Mann, Treutel and Walter', '8885 Barbara Shoals Apt. 779\nSarinamouth, CO 26278', '351-973-5695', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(18, 'Barton PLC', '6109 Tremaine Stravenue Apt. 547\nEast Aubreyport, DE 99012', '+18288431714', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(19, 'Gulgowski-Murphy', '463 Joaquin Isle Suite 563\nMorissettechester, RI 09349', '+17329973240', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(20, 'Herzog-Stokes', '9657 Stefanie Springs\nRaoulmouth, RI 97059', '(810) 556-0208', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(21, 'Swaniawski Inc', '47208 Felicia Light Apt. 693\nEast Saigeside, NJ 09080-7559', '+1-769-988-6054', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(22, 'Roberts, Morissette and Corkery', '98756 Graham Circle Apt. 542\nHaroldstad, ID 97043', '712-681-5782', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(23, 'Stoltenberg-Schneider', '47325 Metz Ford\nWest Emilystad, NJ 88339', '1-216-904-8647', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(24, 'Stamm and Sons', '266 Myriam Roads Apt. 547\nMurazikborough, AL 38476', '401-375-4833', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(25, 'Armstrong PLC', '3263 Kamille Port\nJeremymouth, DE 88639-4278', '(351) 666-3156', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(26, 'O\'Keefe and Sons', '6118 Jakayla Lake\nLake Lucius, IL 75480', '551.767.9673', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(27, 'Flatley PLC', '917 Sadie Parkways\nLake Delfinafort, IN 25752-0758', '(586) 530-6016', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(28, 'Ritchie Inc', '6812 Hodkiewicz Lock\nLake Cole, NH 43564', '+1-262-402-7725', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(29, 'Altenwerth PLC', '48725 Vena Ports Apt. 001\nPort Jon, ID 99764-2694', '1-484-709-3872', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(30, 'Cartwright Group', '97296 Carroll Terrace Suite 441\nWest Grant, AR 43046-2850', '906-777-1589', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(31, 'Hodkiewicz-Walter', '44608 Carmen Point\nLake Gilda, OK 90606-6630', '+18628036494', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(32, 'Nicolas-Kozey', '561 Kaelyn Islands\nLake Manuela, MT 28041-7417', '+1-410-886-4743', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(33, 'Spinka-Predovic', '9610 Greenfelder Vista Suite 063\nHuelsstad, SD 86990-6595', '+17344242963', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(34, 'Kirlin-O\'Kon', '2145 Joshua Mission\nWest Edwinland, MS 73218-0014', '512-355-0373', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(35, 'Hyatt and Sons', '835 Jerde Shore Suite 012\nPort Casimerbury, ND 30186-8430', '+1-281-805-6332', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(36, 'Lakin Group', '4046 Kianna Plain\nCorwinmouth, NM 00256', '+1-260-750-4296', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(37, 'Lubowitz-Stracke', '516 Randy Mission\nLake Fletamouth, NH 70558', '+1 (380) 994-6117', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(38, 'Hermiston Ltd', '132 Brady Lights\nStantonport, AK 56175-5291', '931.505.7854', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(39, 'Walker, Nicolas and Schroeder', '3315 Daisha Common\nSchillerton, SC 04971', '+1-808-589-1245', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(40, 'Grimes LLC', '4925 Payton Canyon Apt. 102\nCristbury, NE 51559', '+1-534-349-8347', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(41, 'Hermann and Sons', '663 Hackett Ridges Suite 295\nWest Jerelview, DC 98558', '+1-708-626-5311', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(42, 'Mann-Becker', '25953 Annie Courts\nAlyciabury, NJ 88789-6901', '+1-361-882-8059', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(43, 'Donnelly-Larkin', '8042 Jacobson Inlet\nFayfurt, ME 10861-9586', '336-537-5192', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(44, 'Hartmann, Walker and Schowalter', '402 Nicolas Plain Apt. 485\nSouth Crystelport, IL 30807', '804.916.9842', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(45, 'Stiedemann Inc', '29264 Mills Rest Apt. 658\nWest Claudineview, TX 01576', '956.668.8834', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(46, 'King Inc', '32062 Wisoky Shoals\nGwenhaven, ME 29165-6934', '281.493.2707', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(47, 'Towne, Mante and Kuvalis', '2583 Predovic Square\nNew Isabell, WI 70706-8585', '1-712-791-2418', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(48, 'Bernier Group', '31870 Feest Terrace Apt. 998\nSouth Everett, NE 93446', '(763) 793-3328', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(49, 'Kovacek LLC', '311 Marley Tunnel Apt. 967\nRethatown, HI 39653-7209', '+1-409-930-5184', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(50, 'Hudson Inc', '2324 Amelie Walk\nSouth Belle, NC 55378', '+19726086027', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(51, 'Little Ltd', '42001 Darren Causeway\nBelleton, ID 21008-1284', '+1.920.242.8990', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(52, 'Hartmann-Waelchi', '369 Oberbrunner Rue\nNew Kaleb, AL 21909', '+13253808461', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(53, 'Feil, Hagenes and Jenkins', '932 Nasir Underpass\nWest Hunterburgh, OH 61376-7468', '+1.380.385.4987', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(54, 'Collins PLC', '929 Graham Shores\nNew Daniellemouth, NM 11146-8182', '712.992.1614', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(55, 'Kuhic Ltd', '591 Juana Court Suite 334\nMedhursttown, UT 63413', '1-276-766-8709', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(56, 'Purdy-Morar', '3368 Juana Expressway\nJayhaven, OH 06122-2303', '+13183216893', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(57, 'Bogan, Wunsch and Witting', '766 Doyle Tunnel Apt. 933\nNorth Marie, SD 60088', '445-223-8736', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(58, 'Weissnat-West', '4866 Gutmann Rapids Suite 693\nMurphyhaven, DE 42493', '820.422.0284', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(59, 'Wisoky, Watsica and Bode', '6740 Waelchi Extensions Suite 593\nPort Aaliyahstad, NM 89668-6257', '+1 (765) 707-2604', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(60, 'Schroeder and Sons', '2608 Jessica Circles Apt. 999\nSchaeferbury, PA 27358-2850', '+1-231-341-7781', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(61, 'Adams, Dibbert and Goyette', '40310 Kaelyn Estate Apt. 666\nQuigleyshire, OR 92033-7371', '231-275-8979', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(62, 'Eichmann-Hessel', '458 Kirlin Trafficway Apt. 930\nCollinport, AZ 65959', '310-472-5273', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(63, 'Gleason-Willms', '87557 Emery Garden\nConnburgh, HI 02408', '+1-520-385-9000', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(64, 'Schroeder-D\'Amore', '363 Balistreri Manors\nNorth Estrellaside, MI 70407', '+1-669-993-1395', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(65, 'Hermann PLC', '702 Veda Garden\nSouth Jena, LA 35960', '(847) 889-4326', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(66, 'Runolfsson Inc', '28158 Ashtyn Mall\nPredovicstad, NY 52125-6765', '+1.364.615.1185', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(67, 'Shanahan Inc', '658 Klocko Route\nCummingsstad, GA 11351-2390', '+1-940-508-6685', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(68, 'Carter, Hegmann and Becker', '543 Zackary Hill Apt. 487\nWest Mateoberg, WY 10555-4759', '940-451-0931', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(69, 'McCullough-Senger', '6083 Kling Lane Apt. 837\nWest Albinafurt, TX 87643-3236', '+1 (330) 215-1602', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(70, 'Spinka-Fisher', '51526 Bashirian Springs\nRutherfordstad, WY 76192', '(678) 990-1745', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(71, 'Hahn, Sipes and Pfannerstill', '7733 Rau Park Suite 359\nMonicahaven, NJ 24365-6494', '1-430-978-0583', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(72, 'Rogahn LLC', '1299 Miguel Street Suite 772\nWizaview, MI 36325', '+16407894364', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(73, 'Considine Ltd', '500 Zoey Highway Apt. 716\nBrennanville, DE 77942-8673', '+16093567795', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(74, 'Carroll Inc', '6199 Maye Roads\nHaagberg, AK 67363-8828', '1-351-498-4701', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(75, 'Jast, Boehm and Hill', '397 Oda Flats\nEast Gabeville, CO 67172', '+1-203-713-2185', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(76, 'Lebsack-Sanford', '297 Wolf Oval\nPort Peggieborough, NC 33308', '+1-346-316-6713', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(77, 'Hyatt LLC', '92601 Howe Mission\nStromanburgh, WA 45022-1644', '830.465.6757', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(78, 'Breitenberg Inc', '55892 Rosemarie Cape\nRethaside, MO 42266-2168', '1-660-923-9211', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(79, 'Bogan Inc', '85004 Keeling Tunnel Suite 124\nValentinville, MS 03514-9236', '(440) 718-2986', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(80, 'Barton, Kreiger and Kris', '351 Dennis Meadow Apt. 440\nPort Zanderport, MO 01118', '+1-817-802-9005', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(81, 'Gislason, Schiller and Keeling', '6267 Mustafa Rue Suite 043\nPort Lillietown, ND 81084-3458', '(814) 867-3382', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(82, 'Skiles PLC', '802 Lulu Place Apt. 945\nWeststad, DE 44202', '+1.678.646.3920', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(83, 'Morar Ltd', '8687 Hudson Union Suite 814\nLueilwitzberg, MA 31456', '223-534-3281', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(84, 'Heller and Sons', '8952 Keeling Union\nEast Russelhaven, UT 41456-7851', '475.614.0797', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(85, 'Herzog, Ledner and Kohler', '5295 Leuschke Roads\nMcDermotttown, SD 88379-5766', '(925) 704-2876', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(86, 'Price, Franecki and Keebler', '964 Wolff Alley\nOrtizstad, KY 99693-7329', '1-405-986-9081', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(87, 'Fisher Inc', '66259 Edison Pine Suite 213\nRobertsview, PA 49991-8671', '+12675635146', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(88, 'Mosciski-Mills', '78498 Ike Drive Apt. 056\nNew Cornellmouth, GA 46366', '+1-949-820-9357', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(89, 'Ortiz-Franecki', '85463 Lilliana Pike\nWinnifredhaven, NH 42771', '1-929-324-0312', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(90, 'Nader-Ryan', '180 Rod Club Suite 039\nLake Lexi, ID 42406', '(720) 730-9149', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(91, 'Welch Inc', '3008 Emard Plains Apt. 319\nJoshchester, DE 30180', '(304) 779-9757', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(92, 'Kling-Rosenbaum', '7237 Toy Crest Apt. 310\nEast Shea, MS 91966-0630', '+1.224.506.3135', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(93, 'Schuppe, Erdman and Bauch', '145 Harrison Court\nIlianamouth, CA 15683-5465', '530-844-8354', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(94, 'Raynor and Sons', '50940 Shawna Pass\nWest Abbey, NY 18202', '551-244-9366', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(95, 'Paucek-Gusikowski', '206 Dustin Estate\nCarrollmouth, MN 65730-8188', '+1-480-487-8505', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(96, 'Williamson, Dickens and Kuhic', '219 Veum Point Apt. 786\nSouth Beth, CT 16672-7869', '770-892-3135', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(97, 'Considine, Collier and Zulauf', '3070 Neoma Streets\nEast Leone, NM 07791', '351-540-8595', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(98, 'Rogahn-Mayer', '2261 Kip Terrace Apt. 496\nNorth Metashire, CO 74170-9423', '+1.239.828.0730', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(99, 'Sipes-Treutel', '63434 Feest Ramp Suite 598\nNew Carloston, NY 12244', '+1-406-331-0733', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(100, 'Leffler Group', '52307 Christiansen Parks\nSouth Twila, DC 89385', '1-484-553-3052', '2023-10-10 04:13:11', '2023-10-10 04:13:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lessons`
--

CREATE TABLE `lessons` (
  `idLesson` bigint(20) UNSIGNED NOT NULL,
  `institution_id` bigint(20) UNSIGNED NOT NULL,
  `segment` varchar(255) NOT NULL,
  `period` varchar(255) NOT NULL,
  `professor` varchar(255) NOT NULL,
  `students` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lessons`
--

INSERT INTO `lessons` (`idLesson`, `institution_id`, `segment`, `period`, `professor`, `students`, `created_at`, `updated_at`) VALUES
(1, 1, 'Barbearia', 'Noite', 'Winona Hartmann', '9', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(2, 2, 'Barbearia', 'Manhã', 'Ricardo Leuschke DVM', '6', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(3, 3, 'Beleza', 'Noite', 'Prof. Joseph Crist II', '9', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(4, 4, 'Beleza', 'Tarde', 'Edwin Bode I', '9', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(5, 5, 'Barbearia', 'Tarde', 'Mack Kemmer', '8', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(6, 6, 'Barbearia', 'Tarde', 'Sarina Torphy', '10', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(7, 7, 'Barbearia', 'Manhã', 'Madisyn Herman', '9', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(8, 8, 'Beleza', 'Manhã', 'Mr. Gregory Gorczany', '8', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(9, 9, 'Beleza', 'Tarde', 'Jennyfer Christiansen', '10', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(10, 10, 'Barbearia', 'Noite', 'Mr. Oren Heathcote DVM', '9', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(11, 11, 'Beleza', 'Tarde', 'Ramiro Blanda', '6', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(12, 12, 'Barbearia', 'Manhã', 'Lula Veum II', '10', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(13, 13, 'Beleza', 'Noite', 'Mrs. Kimberly Ryan Jr.', '6', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(14, 14, 'Barbearia', 'Tarde', 'Carleton Bins', '6', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(15, 15, 'Barbearia', 'Tarde', 'Ms. Ayana Wolff', '10', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(16, 16, 'Barbearia', 'Tarde', 'Quincy Breitenberg', '9', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(17, 17, 'Beleza', 'Manhã', 'Clementine Heaney II', '6', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(18, 18, 'Beleza', 'Manhã', 'Mrs. Candida Goyette PhD', '10', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(19, 19, 'Barbearia', 'Noite', 'Mr. Odell O\'Connell Jr.', '10', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(20, 20, 'Beleza', 'Tarde', 'Mr. Gregg Reinger', '8', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(21, 21, 'Beleza', 'Tarde', 'Dessie Block', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(22, 22, 'Barbearia', 'Noite', 'Chester Effertz', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(23, 23, 'Barbearia', 'Tarde', 'Dr. Ford Ryan I', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(24, 24, 'Barbearia', 'Tarde', 'Kiarra Abshire', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(25, 25, 'Barbearia', 'Manhã', 'Prof. Hal Thiel', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(26, 26, 'Beleza', 'Noite', 'Eric Wuckert', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(27, 27, 'Beleza', 'Manhã', 'Devan Jakubowski', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(28, 28, 'Beleza', 'Manhã', 'Sherman Terry IV', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(29, 29, 'Barbearia', 'Manhã', 'Benton Sipes', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(30, 30, 'Beleza', 'Noite', 'Phoebe Thiel', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(31, 31, 'Beleza', 'Noite', 'Marietta Hand', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(32, 32, 'Barbearia', 'Tarde', 'Dulce Beatty PhD', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(33, 33, 'Barbearia', 'Tarde', 'Aubrey Lubowitz Jr.', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(34, 34, 'Barbearia', 'Manhã', 'Mr. Afton Howell III', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(35, 35, 'Beleza', 'Tarde', 'Elva Bogan', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(36, 36, 'Beleza', 'Noite', 'Garrison Cassin', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(37, 37, 'Beleza', 'Noite', 'Norwood Tremblay', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(38, 38, 'Barbearia', 'Tarde', 'Gerard Padberg', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(39, 39, 'Barbearia', 'Tarde', 'Dr. Josie Buckridge', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(40, 40, 'Barbearia', 'Tarde', 'Sylvia Tillman', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(41, 41, 'Beleza', 'Manhã', 'Dr. Leilani Pacocha III', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(42, 42, 'Barbearia', 'Manhã', 'Lon Leffler', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(43, 43, 'Beleza', 'Noite', 'Prof. Ernesto Skiles Jr.', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(44, 44, 'Barbearia', 'Manhã', 'Alejandra Von', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(45, 45, 'Beleza', 'Noite', 'Jacynthe Erdman', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(46, 46, 'Barbearia', 'Noite', 'Miss Emely Rempel', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(47, 47, 'Barbearia', 'Manhã', 'Kennedy Kunde', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(48, 48, 'Beleza', 'Tarde', 'Bailey Dickinson I', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(49, 49, 'Barbearia', 'Noite', 'Prof. Kiarra Deckow', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(50, 50, 'Barbearia', 'Noite', 'Mr. Fern Will I', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(51, 51, 'Barbearia', 'Tarde', 'Lonie Predovic DDS', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(52, 52, 'Beleza', 'Tarde', 'Hubert Runolfsdottir', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(53, 53, 'Beleza', 'Manhã', 'Eliza Ledner', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(54, 54, 'Barbearia', 'Noite', 'Miss Danielle Kihn', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(55, 55, 'Beleza', 'Manhã', 'Duncan Rempel', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(56, 56, 'Barbearia', 'Tarde', 'Justice Herzog', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(57, 57, 'Beleza', 'Tarde', 'Jessika Lowe', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(58, 58, 'Barbearia', 'Tarde', 'Name Ortiz', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(59, 59, 'Barbearia', 'Noite', 'Cara Murray', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(60, 60, 'Beleza', 'Tarde', 'Skyla Metz', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(61, 61, 'Barbearia', 'Manhã', 'Susanna Hirthe', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(62, 62, 'Beleza', 'Tarde', 'Hellen Kiehn DDS', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(63, 63, 'Barbearia', 'Noite', 'Isabelle Ward', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(64, 64, 'Beleza', 'Noite', 'Precious Hintz', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(65, 65, 'Barbearia', 'Manhã', 'Mr. Werner Kutch V', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(66, 66, 'Beleza', 'Manhã', 'Kareem West', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(67, 67, 'Barbearia', 'Tarde', 'Prof. Xavier Reinger', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(68, 68, 'Barbearia', 'Noite', 'Mr. Colten Bins Jr.', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(69, 69, 'Beleza', 'Manhã', 'Brook Grady', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(70, 70, 'Barbearia', 'Manhã', 'Ms. Anita Greenfelder PhD', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(71, 71, 'Beleza', 'Manhã', 'Susan Tremblay', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(72, 72, 'Barbearia', 'Tarde', 'Prof. Jessyca Cremin', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(73, 73, 'Barbearia', 'Noite', 'Dr. Candido Luettgen', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(74, 74, 'Barbearia', 'Tarde', 'Mrs. Bethany Kihn DVM', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(75, 75, 'Beleza', 'Noite', 'Mrs. Marina O\'Conner', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(76, 76, 'Beleza', 'Manhã', 'Dr. Kenneth White IV', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(77, 77, 'Barbearia', 'Noite', 'Dr. Hulda Herzog V', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(78, 78, 'Barbearia', 'Noite', 'Margaret Welch', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(79, 79, 'Barbearia', 'Manhã', 'Damaris Terry', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(80, 80, 'Beleza', 'Manhã', 'Mr. Marlin Schmeler', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(81, 81, 'Beleza', 'Noite', 'Marcia Douglas', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(82, 82, 'Beleza', 'Noite', 'Stephany Pagac', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(83, 83, 'Barbearia', 'Noite', 'Emmanuel Hermann', '9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(84, 84, 'Beleza', 'Tarde', 'Bernice Becker', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(85, 85, 'Barbearia', 'Tarde', 'Gunnar Rosenbaum', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(86, 86, 'Barbearia', 'Manhã', 'Piper Koelpin', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(87, 87, 'Beleza', 'Tarde', 'Gia Volkman', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(88, 88, 'Beleza', 'Manhã', 'Carlotta Gulgowski', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(89, 89, 'Beleza', 'Noite', 'Dr. Holly Marvin', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(90, 90, 'Beleza', 'Noite', 'Ms. Marlee Berge DDS', '10', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(91, 91, 'Beleza', 'Manhã', 'Dr. Domenico Towne DDS', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(92, 92, 'Barbearia', 'Tarde', 'Mr. Kamryn Bailey DDS', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(93, 93, 'Beleza', 'Noite', 'Oren Hickle Sr.', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(94, 94, 'Beleza', 'Noite', 'Kiana Gutkowski', '6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(95, 95, 'Beleza', 'Manhã', 'Mr. Kennith Blick', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(96, 96, 'Barbearia', 'Tarde', 'Santiago Upton MD', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(97, 97, 'Beleza', 'Tarde', 'Alessia Rutherford', '7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(98, 98, 'Barbearia', 'Tarde', 'Anika Hauck', '8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(99, 99, 'Beleza', 'Tarde', 'Anika Rau III', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(100, 100, 'Barbearia', 'Manhã', 'Tristin Little IV', '5', '2023-10-10 04:13:11', '2023-10-10 04:13:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_09_124624_create_clients_table', 1),
(6, '2023_10_09_124624_create_schedulings_table', 1),
(7, '2023_10_09_124625_create_institutions_table', 1),
(8, '2023_10_09_124625_create_lessons_table', 1),
(9, '2023_10_09_233439_add_foreign_key_to_schedulings_table', 1),
(10, '2023_10_09_233501_add_foreign_key_to_lessons_table', 1),
(11, '2023_10_09_234901_add_unique_key_to_schedulings_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `schedulings`
--

CREATE TABLE `schedulings` (
  `idSchedulings` bigint(20) UNSIGNED NOT NULL,
  `idLesson` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) NOT NULL,
  `confirmationCode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `schedulings`
--

INSERT INTO `schedulings` (`idSchedulings`, `idLesson`, `client_id`, `date`, `confirmationCode`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2008-09-01 08:49:04', '3da26735e778e82be94ac119cf3d94eb', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(2, 2, 1, '2003-04-28 08:38:05', '1a1f83773ac64f7b4c5d6d2eb99aff29', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(3, 3, 1, '1995-03-07 11:25:04', '222de578e989dd661c9fb143741dab2b', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(4, 4, 1, '1995-07-08 09:15:22', '51e84252d5f3e082002be4737e021e9d', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(5, 5, 1, '1976-05-26 06:07:00', '5d5d0f37fd168f4f58263e6a8197b9ae', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(6, 6, 1, '1996-05-18 21:06:33', '11f6aedbdf4950ad190061091d102a3b', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(7, 7, 1, '1970-07-16 18:01:12', 'a19ded8ae30bc7df1996b43e94292e6c', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(8, 8, 1, '2020-01-01 11:26:08', '3500def709483be470b4ae10e1ad8e7c', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(9, 9, 1, '1983-12-04 18:04:41', '1a20715ba0b6a0fcc5f84fd156a39916', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(10, 10, 1, '1974-10-28 01:47:22', '252db1be898271ede6146cf54758f121', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(11, 11, 2, '2014-09-25 00:53:30', '232ed9b10b7d2d5f60f099facf1212a4', '2023-10-10 04:13:10', '2023-10-10 04:13:10'),
(12, 12, 2, '1996-06-18 17:30:21', 'd136ec608bc6331b31113acb72caa749', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(13, 13, 2, '2004-11-21 04:31:05', '63ecbedf0fd4979016941c5b50e5e11b', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(14, 14, 2, '2010-03-22 04:47:39', '57d864bbdd1881dbdf908d03a921fd5b', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(15, 15, 2, '1975-01-23 04:57:09', '0519bc82ca72ccf4d172ac8c4c10c03d', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(16, 16, 2, '2018-07-30 09:39:38', '4e46922472e7a8e83b700b4561481097', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(17, 17, 2, '2020-04-26 23:40:23', 'ef66ec337156fcd32f6a57b4e89033c7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(18, 18, 2, '2010-12-27 05:26:05', '839dc0e5613df3c1c7d9a008d2d6ab38', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(19, 19, 2, '1997-10-11 14:50:31', 'a8cceae73bb8e93fca1cf0c35ecf1dca', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(20, 20, 2, '1985-02-24 07:16:08', '78eea4e5f46d0eacbd9b6f48a1b7f9a4', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(21, 21, 3, '2021-05-08 03:17:56', '8c606652bb30d86c0e68974297f5d3d9', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(22, 22, 3, '2022-03-21 15:17:40', '871d76133fd247085d4705f89a7d86c8', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(23, 23, 3, '2003-10-03 12:19:18', 'cc5b9479e22a7db75d6f046c8d283c83', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(24, 24, 3, '2022-09-21 09:58:53', '75680f5b604ed2d1f188420d6a78f0cb', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(25, 25, 3, '2010-08-28 08:49:00', 'b23d7c4bd5481c54658aa1e620bf85f3', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(26, 26, 3, '1982-08-02 16:46:14', 'fa718d5e796862f87015d7d42228b5c7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(27, 27, 3, '2006-11-17 20:29:12', 'c86ccb0bc86847c6e05ea3ab3e08b8e6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(28, 28, 3, '1989-11-28 23:17:46', 'e9465b57ab63991d80ee6fd164d79867', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(29, 29, 3, '1987-04-03 05:27:59', '58a9ebc4d95b7b31ee7d2809d610b179', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(30, 30, 3, '1989-04-29 12:21:09', '619ec8a42efa7e2260e5537642e6a94b', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(31, 31, 4, '1998-09-17 01:27:58', '6c73fa9ac09e72c7843bf36079f9a225', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(32, 32, 4, '1982-11-24 11:26:26', 'c72291a713e6bcfe7ca7e7da4dd7c820', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(33, 33, 4, '1986-10-12 06:28:37', '96a0e389468df9741708655227dce2bd', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(34, 34, 4, '1983-01-17 17:40:42', 'e7395910f46e6e5f30f704d4509a921a', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(35, 35, 4, '2005-09-15 21:27:03', 'de99ce1589eade9e426577ecb6f05d73', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(36, 36, 4, '1990-04-30 17:22:56', 'c886a48f147ca3c62bc5548094dc17a1', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(37, 37, 4, '2019-02-28 04:35:59', 'ab60df64a1211faf6bcea489f267e024', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(38, 38, 4, '2023-03-31 21:20:42', 'bdd7f7dfaadc3cb09055043e3b2aba83', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(39, 39, 4, '1970-02-01 01:29:01', 'c82f619adcb9201cb9ea3b517d9b5665', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(40, 40, 4, '1988-09-16 20:46:24', '7224ddb62c11b5edff5188f67b878708', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(41, 41, 5, '2019-11-10 13:53:38', 'e3d03c02afc5a8bffd8a8002da7e0d71', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(42, 42, 5, '1994-10-30 07:20:45', '324dfa372d34cd959bc9ebd975bb7156', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(43, 43, 5, '2005-11-26 17:41:15', '5bc459b0519a0228a7ab830186611b25', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(44, 44, 5, '1976-05-09 20:57:53', '8f6d3c71e8d5ff43ac2dd8a76dc13c1a', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(45, 45, 5, '1977-12-06 23:16:23', '3c787074a75b734ee05e48dd37078895', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(46, 46, 5, '1983-08-31 23:27:27', 'b2acd54e6720921f5de25dd04ac7c486', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(47, 47, 5, '2007-03-07 19:42:31', 'e4d11e071dddca4c25bcae09e6ac8f08', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(48, 48, 5, '2023-02-16 02:32:34', 'f80ff661dfcd58b4c5f02ef7d5678913', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(49, 49, 5, '1971-10-24 16:14:02', '207f2c7fe538d58c4858d247ec7ee2b3', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(50, 50, 5, '1982-05-21 17:26:59', '8fc56a0638a82bfa20757c1654a8628f', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(51, 51, 6, '1987-02-27 22:28:36', '46702b599a608ed6160312369ad19776', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(52, 52, 6, '2001-07-11 07:18:49', 'fd169097b12791e709a4a94ff3aabccb', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(53, 53, 6, '2009-10-23 21:20:42', '82a6a478146244fcafa8f5c1f68d2748', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(54, 54, 6, '1996-06-18 08:32:05', 'ffb39af6614c60c9427ddfd9e2de899d', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(55, 55, 6, '2012-07-20 15:47:27', '8907a51398e1e261d961eb86931f3227', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(56, 56, 6, '2003-03-07 08:44:05', '656493b8602146efe6a7c0a89e82becb', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(57, 57, 6, '2017-11-17 14:33:07', 'd6bfe6adcf37d6f512866c09f9479ffa', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(58, 58, 6, '1970-06-29 14:23:03', '37392a192e7f957204b8281842702d45', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(59, 59, 6, '2016-08-23 15:19:43', 'f6dc87522e0b0e12ca7d87cb271c020e', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(60, 60, 6, '2021-07-13 09:09:39', 'fdd2c9121f3eac91347a2d8d89aa643f', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(61, 61, 7, '1985-05-01 21:33:45', '4c73c3d14e8c2085acdfadb4d2c514e6', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(62, 62, 7, '1986-02-12 14:12:38', 'fc19db09acf32d89f4368d659ea987cd', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(63, 63, 7, '1978-02-17 11:01:06', 'fd330322ac25b8d267edb7fe19625b9e', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(64, 64, 7, '1983-07-21 20:32:05', 'fed0543ba50b97f596b89478a7e73404', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(65, 65, 7, '1998-07-28 19:53:57', '066826974178ea63814961e0f526a1f7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(66, 66, 7, '2003-05-09 21:40:12', '972df381fa608d1c17e455ff9eec2b2c', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(67, 67, 7, '1983-01-13 22:58:21', 'd60ac7549de13e6a3f01faba470c631d', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(68, 68, 7, '1978-06-06 21:18:30', 'ecf465f0cdf1adf1c30a828cc7d60c14', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(69, 69, 7, '1981-04-08 01:43:36', '664893bed05172c493a9d160ad10bda7', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(70, 70, 7, '1974-10-19 12:10:21', '9ad96cacb0850ed033defe044cbc0ece', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(71, 71, 8, '1979-06-13 19:35:25', '4806f30a351424307a6e42dfb4c8247e', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(72, 72, 8, '2017-11-10 15:58:55', 'e6b4a6d08a4f22daba2bddbafd6e8660', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(73, 73, 8, '2006-01-16 17:08:03', 'e9c6b7248c041ce5f9a7611df932577e', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(74, 74, 8, '1975-06-05 18:22:42', 'a3dfc37242ef7cd2221c810addee82c0', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(75, 75, 8, '1995-02-01 11:48:54', 'fabf8955453c46d903a6468a1bd9583f', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(76, 76, 8, '2004-02-10 21:34:22', 'dac9863d779888a8b88b265ecaa59d7d', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(77, 77, 8, '1972-10-18 01:30:33', 'd8f17e5765dfbbb650b494c618281211', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(78, 78, 8, '1985-04-15 17:40:41', '8e3a678fca0e7664bf5e89e45a683e9a', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(79, 79, 8, '1991-12-02 03:04:48', '1846fda7dd6000a7016170c51fdd91de', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(80, 80, 8, '2015-09-14 05:21:49', '2a481aa858777ccf3b10a2d64c04351c', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(81, 81, 9, '1994-09-21 09:15:37', '0d6bd316bdab352c20587d57f5210221', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(82, 82, 9, '2018-09-05 15:40:41', 'b8c22d6cff314a46741e7de4f680ddef', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(83, 83, 9, '1984-06-25 07:50:12', '30b2aab8df0bd99f44a8603208cab65f', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(84, 84, 9, '1997-08-13 06:24:08', 'e0c93f0c9328d98088256fa4bc8845d0', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(85, 85, 9, '2009-07-28 01:10:07', '7cb710808150c42348478a01f3492cf4', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(86, 86, 9, '2020-04-12 07:28:12', '64c568ba9d83d605726ef5d49455119c', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(87, 87, 9, '1971-08-14 13:45:44', 'a2a91961d90b43222f6ab90a3c978323', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(88, 88, 9, '1975-06-19 16:45:55', '27390030a8c646964605ad87879364ba', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(89, 89, 9, '2018-10-08 15:22:03', '106ee45a9699b2dea49673361ef2a8ef', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(90, 90, 9, '2020-09-25 19:32:22', '75d615b099876d934f71048a91836cd4', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(91, 91, 10, '1970-04-10 13:24:04', '45242f58c893e01bd940f619e9899da1', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(92, 92, 10, '2019-08-02 14:08:54', '0fce8d5ede532a5290919a725c340c79', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(93, 93, 10, '2023-01-08 08:34:31', '4b51057de90c1b1e432bb8b05fad4b4d', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(94, 94, 10, '1975-05-07 19:48:29', '81ca4bbbc0448cf5e6b7a6dc53333dde', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(95, 95, 10, '1991-06-18 11:02:08', '52aae5e234af112d949970a006bc442f', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(96, 96, 10, '2000-09-28 21:59:20', '0ced1409d089bab73e7820967139e416', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(97, 97, 10, '1992-01-16 07:33:43', 'a7cd2073ff9a2be164da2e3ae4ec4faf', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(98, 98, 10, '1970-02-18 07:05:46', 'b1e907653e9288d515127006c66ee1fc', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(99, 99, 10, '1979-03-29 14:12:50', '16b6d87e235e11f5687f95347870c4d5', '2023-10-10 04:13:11', '2023-10-10 04:13:11'),
(100, 100, 10, '2002-04-27 14:18:16', 'bf06635fb6de7a06ac544cdad12416ea', '2023-10-10 04:13:11', '2023-10-10 04:13:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`institution_id`);

--
-- Índices de tabela `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`idLesson`),
  ADD KEY `lessons_institution_id_foreign` (`institution_id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `schedulings`
--
ALTER TABLE `schedulings`
  ADD PRIMARY KEY (`idSchedulings`),
  ADD UNIQUE KEY `schedulings_confirmationcode_unique` (`confirmationCode`),
  ADD KEY `schedulings_idlesson_foreign` (`idLesson`),
  ADD KEY `schedulings_client_id_foreign` (`client_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `institutions`
--
ALTER TABLE `institutions`
  MODIFY `institution_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `lessons`
--
ALTER TABLE `lessons`
  MODIFY `idLesson` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `schedulings`
--
ALTER TABLE `schedulings`
  MODIFY `idSchedulings` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`institution_id`);

--
-- Restrições para tabelas `schedulings`
--
ALTER TABLE `schedulings`
  ADD CONSTRAINT `schedulings_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`),
  ADD CONSTRAINT `schedulings_idlesson_foreign` FOREIGN KEY (`idLesson`) REFERENCES `lessons` (`idLesson`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
