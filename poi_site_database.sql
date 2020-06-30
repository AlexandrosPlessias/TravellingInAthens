-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 26 Μάη 2015 στις 18:26:30
-- Έκδοση διακομιστή: 5.6.24
-- Έκδοση PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Βάση δεδομένων: `poi_site_database`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `banned_address`
--

CREATE TABLE IF NOT EXISTS `banned_address` (
  `banned_IP_address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `banned_address`
--

INSERT INTO `banned_address` (`banned_IP_address`) VALUES
('::1');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `poi_categories`
--

CREATE TABLE IF NOT EXISTS `poi_categories` (
  `poi_category_id` int(11) NOT NULL,
  `poi_category` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `poi_categories`
--

INSERT INTO `poi_categories` (`poi_category_id`, `poi_category`) VALUES
(1, 'Ξενοδοχεία'),
(2, 'Παραλίες'),
(3, 'Clubs'),
(4, 'Εστιατόρια');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `register_poi`
--

CREATE TABLE IF NOT EXISTS `register_poi` (
  `poi_id` int(11) NOT NULL,
  `poi_name` varchar(30) NOT NULL,
  `poi_text` text NOT NULL,
  `poi_category_id` int(11) NOT NULL,
  `poi_photo` varchar(50) DEFAULT NULL,
  `poi_video` varchar(50) DEFAULT NULL,
  `poi_lat` varchar(30) NOT NULL,
  `poi_lng` varchar(30) NOT NULL,
  `poi_likes` int(11) NOT NULL,
  `username` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `register_poi`
--

INSERT INTO `register_poi` (`poi_id`, `poi_name`, `poi_text`, `poi_category_id`, `poi_photo`, `poi_video`, `poi_lat`, `poi_lng`, `poi_likes`, `username`) VALUES
(1, 'Akanthus Club', 'Leof. Poseidonos\nKalamaki, Athens, Greece \ntel: +30.210.96.80.800', 3, '', 'uploads/Thriler_NIghts_Parties_Akanthus.webm', '37.905579', '23.717482', 1800, 'alexPl'),
(2, 'Nalu cafe bar', 'Λεωφ. Ποσειδώνος\nKalamáki Attiki\nGreece', 3, 'uploads/Nalu-2.jpg', '', '37.905579', '23.717482', 201, 'alexpl'),
(3, 'W CLUB', 'Poseidonos Avenue 58\nGlyfáda Greece\n210 894 7911', 3, 'uploads/w club.jpg', '', ' 37.866015623184126', '23.76794457435608', 2502, 'alexpl'),
(4, 'Electra Hotel', '5 Ermou Str., 10563 \nAthensGreece\n210 337 8000\n', 1, 'uploads/electra-hotel-athens.jpg', '', '37.9756694146866', '23.73308926820755', 300, 'andreasEx'),
(5, 'Poseidon Athens Hotel', '72 Poseidonos Avenue\n17562 Paleo Faliro\nAthens  Greece', 1, '', 'uploads/Athens_Hotel_Poseidon_Hotel.webm', '37.919064428393', '23.70100736618042', 250, 'andreasEx'),
(6, 'Hotel Grande Bretagne', '1 Vasileos Georgiou A''\nstr Syntagma Square \nAthens 105 64 · Greece \n+30 210 3330000  ', 1, 'uploads/grande bretagne.jpg', '', '37.9761430187315', '23.73524844646454', 1001, 'andreasEx'),
(7, 'Παραλία Αστέρα', 'Apollonos 40\nVouliagmeni 166 71\n210 890 1618\n', 2, 'uploads/kaluteres-paralies.jpg', '', '37.81029570909205', '23.77386823296547', 350, 'testUser'),
(8, 'Μαραθώνας', 'Follow us: \n\nFynDay.gr \non Facebook', 2, 'uploads/kalamos.jpg', '', '38.10795230920858', '23.98263931274414', 456, 'testUser'),
(9, 'Varoulko Seaside', 'Pireos 80\nAthens 104 35\n210 522 8400', 4, 'uploads/varoulko.jpg', '', '37.937376', '23.658553', 1501, 'randomUser'),
(10, 'Ορίζοντες', 'Αριστίππου 1 Λυκαβηττός \n210 7210701\n', 4, 'uploads/orizontes.jpg', '', '37.98188945287426', '23.74368667602539', 1300, 'user2015');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `register_users`
--

CREATE TABLE IF NOT EXISTS `register_users` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `mail` varchar(25) NOT NULL,
  `hasvote` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `register_users`
--

INSERT INTO `register_users` (`username`, `password`, `firstname`, `lastname`, `mail`, `hasvote`) VALUES
('alexPl', '12345', 'alex', 'ples', 'cst11068@uop.gr', 1),
('andreasEx', 'andreas123', 'andreas', 'exad', 'cst12kati@uop.gr', 0),
('randomUser', 'asdwer', 'random', 'User', 'andomUser@hotmail.com', 1),
('testUser', '123456', 'test', 'user', 'test@mail.com', 1),
('user2015', '2015', 'Χρήστης', 'Επθετο', 'user2015@gmail.com', 1);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `poi_categories`
--
ALTER TABLE `poi_categories`
  ADD PRIMARY KEY (`poi_category_id`);

--
-- Ευρετήρια για πίνακα `register_poi`
--
ALTER TABLE `register_poi`
  ADD PRIMARY KEY (`poi_id`), ADD KEY `poi_category_id` (`poi_category_id`), ADD KEY `username` (`username`);

--
-- Ευρετήρια για πίνακα `register_users`
--
ALTER TABLE `register_users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `poi_categories`
--
ALTER TABLE `poi_categories`
  MODIFY `poi_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT για πίνακα `register_poi`
--
ALTER TABLE `register_poi`
  MODIFY `poi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `register_poi`
--
ALTER TABLE `register_poi`
ADD CONSTRAINT `register_poi_ibfk_1` FOREIGN KEY (`username`) REFERENCES `register_users` (`username`),
ADD CONSTRAINT `register_poi_ibfk_2` FOREIGN KEY (`poi_category_id`) REFERENCES `poi_categories` (`poi_category_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
