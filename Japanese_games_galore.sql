-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2017 at 02:24 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Japanese games galore`
--

-- --------------------------------------------------------

--
-- Table structure for table `consoles`
--

CREATE TABLE `consoles` (
  `Console_ID` int(30) NOT NULL,
  `Console_Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consoles`
--

INSERT INTO `consoles` (`Console_ID`, `Console_Name`) VALUES
(1, 'Nintendo Entertainment System'),
(2, 'Super Nintendo Entertainment System'),
(3, 'Nintendo64'),
(4, 'Nintendo GameCube'),
(5, 'Nintendo Wii'),
(6, '3DS'),
(7, 'PlayStation'),
(8, 'PlayStation 2'),
(9, 'PlayStation 3'),
(10, 'Sega Genesis');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `Developer_Code` int(30) NOT NULL,
  `Developer_Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`Developer_Code`, `Developer_Name`) VALUES
(1, 'Nintendo'),
(2, 'Intelligent Systems'),
(3, 'Square Soft'),
(4, 'Square Enix'),
(5, 'Atlus'),
(6, 'Rareware'),
(7, 'Givro'),
(8, 'Atari'),
(9, 'Hudson Soft'),
(10, 'RedOctane'),
(11, 'Capcom'),
(12, 'Level-5'),
(13, 'SCE Studio Cambridge'),
(14, 'Sega'),
(15, 'Cavia'),
(16, 'Aksys Games'),
(17, 'Midway Games');

-- --------------------------------------------------------

--
-- Table structure for table `esrb ratings`
--

CREATE TABLE `esrb ratings` (
  `ESRB_ID` int(30) NOT NULL,
  `ESRB_Rating` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `esrb ratings`
--

INSERT INTO `esrb ratings` (`ESRB_ID`, `ESRB_Rating`) VALUES
(1, 'E'),
(2, 'E 10+'),
(3, 'T'),
(4, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `Game_ID` int(30) NOT NULL,
  `Game_Name` varchar(40) CHARACTER SET ascii NOT NULL,
  `Console_Name` varchar(40) CHARACTER SET ascii NOT NULL,
  `Primary_Genre` varchar(40) CHARACTER SET ascii NOT NULL,
  `Secondary_Genre` varchar(40) CHARACTER SET ascii DEFAULT NULL,
  `ESRB_Rating` varchar(40) CHARACTER SET ascii NOT NULL,
  `Developer_Name` varchar(40) CHARACTER SET ascii NOT NULL,
  `Release_Date` date NOT NULL,
  `Price_Number` int(40) DEFAULT NULL,
  `Images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`Game_ID`, `Game_Name`, `Console_Name`, `Primary_Genre`, `Secondary_Genre`, `ESRB_Rating`, `Developer_Name`, `Release_Date`, `Price_Number`, `Images`) VALUES
(1, 'StarTropics', 'Nintendo Entertainment System', 'Action-Adventure', NULL, 'A 10+', 'Nintendo', '1990-12-01', 5, '/opt/lampp/htdocs/Website_proj/old_games/Startropics_box.png'),
(2, 'StarTropics 2', 'Nintendo Entertainment System', 'Action-Adventure', NULL, 'E', 'Nintendo', '1992-03-01', 9, '/opt/lampp/htdocs/Website_proj/old_games/Zodasrevenge_box.png'),
(3, 'Super Mario Bros.', 'Nintendo Entertainment System', 'Action-Adventure', NULL, 'E', 'Nintendo', '1985-09-13', NULL, '/opt/lampp/htdocs/Website_proj/old_games/Super_Mario_box.png'),
(4, 'E.V.O:The Search for Eden', 'Super Nintendo Entertainment System', 'Action RPG', NULL, 'E', 'Givro', '1992-12-21', 200, '/opt/lampp/htdocs/Website_proj/old_games/eden-box-us.png'),
(5, 'Final Fantasy VI', 'Super Nintendo Entertainment System', 'Action RPG', NULL, 'T', 'Square Soft', '1994-04-02', 70, '/opt/lampp/htdocs/Website_proj/old_games/Final_Fantasy_VI.png'),
(6, 'Chrono Trigger', 'Super Nintendo Entertainment System', 'Adventure RPG', NULL, 'E 10+', 'Square Soft', '1995-03-11', 100, '/opt/lampp/htdocs/Website_proj/old_games/Chrono_Trigger_cover.png'),
(7, 'Super Mario Kart', 'Super Nintendo Entertainment System', 'Racing RPG', NULL, 'E', 'Nintendo', '1992-08-27', 80, '/opt/lampp/htdocs/Website_proj/old_games/mario_kart.png'),
(8, 'DonkeyKong 64', 'Nintendo64', 'Action Platformer', NULL, 'E', 'Rareware', '1999-11-24', 22, '/opt/lampp/htdocs/Website_proj/old_games/DK64.png'),
(9, 'Conkers Bad Fur Day', 'Nintendo64', 'Action-Platformer', NULL, 'M', 'Rareware', '2001-03-05', NULL, '/opt/lampp/htdocs/Website_proj/old_games/Conkersbfd_box.png'),
(10, 'Gauntlet Legends', 'Nintendo64', 'Dungeon Crawler', 'Hack-N-Slash', 'T', 'Atari', '1998-10-01', 24, '/opt/lampp/htdocs/Website_proj/old_games/n64_gauntlet_legends.png'),
(11, 'Fire Emblem: Path of Radiance', 'Nintendo GameCube', 'Tactical RPG', NULL, 'T', 'Intelligent Systems', '2005-04-20', 100, '/opt/lampp/htdocs/Website_proj/new_games/Fire_Emblem_PoR_Box.jpg'),
(12, 'Legend of Zelda: The Wind Waker', 'Nintendo GameCube', 'Action-Platformer', NULL, 'E', 'Nintendo', '2002-12-13', 30, '/opt/lampp/htdocs/Website_proj/new_games/ZeldaWindWakerCover.jpg'),
(13, 'Mario Party 4', 'Nintendo GameCube', 'Party', NULL, 'E', 'Hudson Soft', '2002-10-21', NULL, '/opt/lampp/htdocs/Website_proj/new_games/Mario_Party_4.jpg'),
(14, 'Fire Emblem: Radiant Dawn', 'Nintendo Wii', 'Tactical RPG', NULL, 'E 10+', 'Intelligent Systems', '2007-02-22', 60, '/opt/lampp/htdocs/Website_proj/new_games/FE_Radiant_Dawn_Box.jpg'),
(15, 'Guitar Hero III: Legend of Rock', 'Nintendo Wii', 'Musical', 'Rythm', 'T', 'RedOctane', '2007-10-28', NULL, '/opt/lampp/htdocs/Website_proj/new_games/guitar-hero-III.jpg'),
(16, 'Metroid Prime 3:Corruption', 'Nintendo Wii', 'Action-Adventure', 'First Person Shooter', 'T', 'Nintendo', '2007-08-27', 6, '/opt/lampp/htdocs/Website_proj/new_games/Metroid_Prime_3_Box.jpg'),
(17, 'Chrono Trigger (DS)', '3DS', 'Adventure RPG', NULL, 'E 10+', 'Square Enix', '2008-11-25', 20, '/opt/lampp/htdocs/Website_proj/new_games/ChronoTriggerDSBox.jpg'),
(18, 'Final Fantasy IV (DS)', '3DS', 'Action RPG', NULL, 'T', 'Square Enix', '2007-12-20', 0, '/opt/lampp/htdocs/Website_proj/new_games/final_fantasy_iv_ds.jpg'),
(19, 'Rythm Heaven', '3DS', 'Musical', NULL, 'E', 'Nintendo', '2008-07-31', NULL, '/opt/lampp/htdocs/Website_proj/new_games/RhythmHeaven.jpg'),
(20, 'Final Fantasy VII', 'PlayStation', 'Action RPG', NULL, 'T', 'Square Soft', '1997-01-31', 25, '/opt/lampp/htdocs/Website_proj/old_games/Final_Fantasy_VII.png'),
(21, 'Breath of Fire III', 'PlayStation', 'Action RPG', NULL, 'T', 'Capcom', '1997-09-11', 30, '/opt/lampp/htdocs/Website_proj/old_games/Breathoffire3_box.png'),
(22, 'Frogger', 'PlayStation', 'Action RPG', NULL, 'E', 'SCE Studio Cambridge', '1997-09-30', NULL, '/opt/lampp/htdocs/Website_proj/old_games/Froggercover.png'),
(23, 'SMT:Persona 3', 'PlayStation 2', 'Mystery RPG', 'Social Simulation', 'M', 'Atlus', '2006-07-13', 10, '/opt/lampp/htdocs/Website_proj/new_games/Persona3cover.jpg'),
(24, 'SMT:Persona 4', 'PlayStation 2', 'Mystery RPG', 'Social Simulation', 'M', 'Atlus', '2008-07-10', 10, '/opt/lampp/htdocs/Website_proj/new_games/SMT_Persona_4.jpg'),
(25, 'Dark Cloud 2', 'PlayStation 2', 'Action RPG', NULL, 'T', 'Level-5', '2002-11-28', 60, '/opt/lampp/htdocs/Website_proj/new_games/Dark_Cloud2_Coverart.jpg'),
(26, 'Final Fantasy XIII', 'PlayStation 3', 'Action RPG', NULL, 'T', 'Square Enix', '2009-12-17', NULL, '/opt/lampp/htdocs/Website_proj/new_games/final-fantasy-XIII.jpg'),
(27, 'Hakuoki:Stories of the Shinsengumi', 'PlayStation 3', 'Romance Interactive Novel', 'Dating Simulation', 'M', 'Aksys games', '2014-05-06', 20, '/opt/lampp/htdocs/Website_proj/new_games/Hakuoki_Cover.jpg'),
(28, 'Nier', 'PlayStation 3', 'Action RPG', NULL, 'M', 'Cavia', '2010-04-22', 20, '/opt/lampp/htdocs/Website_proj/new_games/Nier_cover.jpg'),
(29, 'Mortal Kombat', 'Sega Genesis', 'Fighter', 'Action Murder', 'M', 'Midway Games', '1993-09-13', 6, '/opt/lampp/htdocs/Website_proj/old_games/Mortal_Kombat_cover.png'),
(30, 'Jurassic Park', 'Sega Genesis', 'Action-Adventure', 'Platformer', 'E', 'Sega', '1993-08-27', 5, '/opt/lampp/htdocs/Website_proj/old_games/Jurassic_Park_Sega_game.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `genre query`
-- (See below for the actual view)
--
CREATE TABLE `genre query` (
`Game_Name` varchar(40)
,`Primary_Genre` varchar(40)
,`Secondary_Genre` varchar(40)
,`Console_Name` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `Images`
--

CREATE TABLE `Images` (
  `Image_ID` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Images`
--

INSERT INTO `Images` (`Image_ID`, `Image`) VALUES
(1, '/opt/lampp/htdocs/Website_proj/old_games/Startropics_box.png'),
(2, '/opt/lampp/htdocs/Website_proj/old_games/Zodasrevenge_box.png'),
(3, '/opt/lampp/htdocs/Website_proj/old_games/Super_Mario_box.png'),
(4, '/opt/lampp/htdocs/Website_proj/old_games/eden-box-us.png'),
(5, '/opt/lampp/htdocs/Website_proj/old_games/Final_Fantasy_VI.png'),
(6, '/opt/lampp/htdocs/Website_proj/old_games/Chrono_Trigger_cover.png'),
(7, '/opt/lampp/htdocs/Website_proj/old_games/mario_kart.png'),
(8, '/opt/lampp/htdocs/Website_proj/old_games/DK64.png'),
(9, '/opt/lampp/htdocs/Website_proj/old_games/Conkersbfd_box.png'),
(10, '/opt/lampp/htdocs/Website_proj/old_games/n64_gauntlet_legends.png'),
(11, '/opt/lampp/htdocs/Website_proj/old_games/Final_Fantasy_VII.png'),
(12, '/opt/lampp/htdocs/Website_proj/old_games/Breathoffire3_box.png'),
(13, '/opt/lampp/htdocs/Website_proj/old_games/Froggercover.png'),
(14, '/opt/lampp/htdocs/Website_proj/old_games/Mortal_Kombat_cover.png'),
(15, '/opt/lampp/htdocs/Website_proj/old_games/Jurassic_Park_Sega_game.png'),
(16, '/opt/lampp/htdocs/Website_proj/new_games/Fire_Emblem_PoR_Box.jpg'),
(17, '/opt/lampp/htdocs/Website_proj/new_games/ZeldaWindWakerCover.jpg'),
(18, '/opt/lampp/htdocs/Website_proj/new_games/Mario_Party_4.jpg'),
(19, '/opt/lampp/htdocs/Website_proj/new_games/FE_Radiant_Dawn_Box.jpg'),
(20, '/opt/lampp/htdocs/Website_proj/new_games/guitar-hero-III.jpg'),
(21, '/opt/lampp/htdocs/Website_proj/new_games/Metroid_Prime_3_Box.jpg'),
(22, '/opt/lampp/htdocs/Website_proj/new_games/ChronoTriggerDSBox.jpg'),
(23, '/opt/lampp/htdocs/Website_proj/new_games/final_fantasy_iv_ds.jpg'),
(24, '/opt/lampp/htdocs/Website_proj/new_games/RhythmHeaven.jpg'),
(25, '/opt/lampp/htdocs/Website_proj/new_games/Persona3cover.jpg'),
(26, '/opt/lampp/htdocs/Website_proj/new_games/SMT_Persona_4.jpg'),
(27, '/opt/lampp/htdocs/Website_proj/new_games/Dark_Cloud2_Coverart.jpg'),
(28, '/opt/lampp/htdocs/Website_proj/new_games/final-fantasy-XIII.jpg'),
(29, '/opt/lampp/htdocs/Website_proj/new_games/Hakuoki_Cover.jpg'),
(30, '/opt/lampp/htdocs/Website_proj/new_games/Nier_cover.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `non-nintendo games and their esrb ratings`
-- (See below for the actual view)
--
CREATE TABLE `non-nintendo games and their esrb ratings` (
`Game_Name` varchar(40)
,`ESRB_Rating` varchar(40)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `non-traditional genres`
-- (See below for the actual view)
--
CREATE TABLE `non-traditional genres` (
`Game_Name` varchar(40)
,`Primary_Genre` varchar(40)
,`Secondary_Genre` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `Price_ID` int(30) NOT NULL,
  `Price_Number` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`Price_ID`, `Price_Number`) VALUES
(1, 5),
(2, 6),
(3, 9),
(4, 10),
(5, 15),
(6, 20),
(7, 22),
(8, 24),
(9, 25),
(10, 30),
(11, 60),
(12, 70),
(13, 80),
(14, 100),
(15, 200);

-- --------------------------------------------------------

--
-- Table structure for table `primary genre`
--

CREATE TABLE `primary genre` (
  `Genre1_ID` int(30) NOT NULL,
  `Primary_Genre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `primary genre`
--

INSERT INTO `primary genre` (`Genre1_ID`, `Primary_Genre`) VALUES
(1, 'Musical'),
(2, 'Action RPG'),
(3, 'Mystery RPG'),
(4, 'Dungeon Crawler'),
(5, 'Action RPG'),
(6, 'Tactical RPG'),
(7, 'Action-Adventure'),
(8, 'Action-Platformer'),
(9, 'Racing RPG'),
(10, 'Fighter'),
(11, 'Romance Interactive Novel'),
(12, 'Party');

-- --------------------------------------------------------

--
-- Table structure for table `secondary genre`
--

CREATE TABLE `secondary genre` (
  `Genre2_ID` int(30) NOT NULL,
  `Secondary_Genre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secondary genre`
--

INSERT INTO `secondary genre` (`Genre2_ID`, `Secondary_Genre`) VALUES
(1, 'Hack-N-Slash'),
(2, 'Action Murder'),
(3, 'Dating Simulation'),
(4, 'First Person Shooter'),
(5, 'Platformer'),
(6, 'Social Simulation'),
(7, 'Rythm');

-- --------------------------------------------------------

--
-- Table structure for table `year published`
--

CREATE TABLE `year published` (
  `Year_ID` int(30) NOT NULL,
  `Release_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year published`
--

INSERT INTO `year published` (`Year_ID`, `Release_Date`) VALUES
(1, '1985-09-13'),
(2, '1990-12-01'),
(3, '1992-03-01'),
(4, '1992-08-27'),
(5, '1992-12-21'),
(6, '1993-08-27'),
(7, '1993-09-13'),
(8, '1994-04-02'),
(9, '1995-03-11'),
(10, '1997-01-31'),
(11, '1997-09-11'),
(12, '1997-09-30'),
(13, '1998-10-01'),
(14, '1999-11-24'),
(15, '2001-03-05'),
(16, '2002-10-21'),
(17, '2002-11-28'),
(18, '2002-12-13'),
(19, '2005-04-20'),
(20, '2006-07-13'),
(21, '2007-02-22'),
(22, '2007-08-27'),
(23, '2007-10-28'),
(24, '2007-12-20'),
(25, '2008-07-10'),
(26, '2008-07-31'),
(27, '2008-11-25'),
(28, '2009-12-17'),
(29, '2010-04-22'),
(30, '2014-05-06');

-- --------------------------------------------------------

--
-- Structure for view `genre query`
--
DROP TABLE IF EXISTS `genre query`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `genre query`  AS  select `games`.`Game_Name` AS `Game_Name`,`games`.`Primary_Genre` AS `Primary_Genre`,`games`.`Secondary_Genre` AS `Secondary_Genre`,`consoles`.`Console_Name` AS `Console_Name` from (`games` join `consoles` on((convert(`games`.`Console_Name` using latin1) = `consoles`.`Console_Name`))) order by `consoles`.`Console_Name` ;

-- --------------------------------------------------------

--
-- Structure for view `non-nintendo games and their esrb ratings`
--
DROP TABLE IF EXISTS `non-nintendo games and their esrb ratings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `non-nintendo games and their esrb ratings`  AS  select `games`.`Game_Name` AS `Game_Name`,`games`.`ESRB_Rating` AS `ESRB_Rating` from `games` where (`games`.`Developer_Name` <> 'Nintendo') ;

-- --------------------------------------------------------

--
-- Structure for view `non-traditional genres`
--
DROP TABLE IF EXISTS `non-traditional genres`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `non-traditional genres`  AS  select `games`.`Game_Name` AS `Game_Name`,`games`.`Primary_Genre` AS `Primary_Genre`,`games`.`Secondary_Genre` AS `Secondary_Genre` from `games` where ((not((`games`.`Primary_Genre` like '%action%'))) and (not((`games`.`Primary_Genre` like '%adventure%')))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consoles`
--
ALTER TABLE `consoles`
  ADD PRIMARY KEY (`Console_ID`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`Developer_Code`);

--
-- Indexes for table `esrb ratings`
--
ALTER TABLE `esrb ratings`
  ADD PRIMARY KEY (`ESRB_ID`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`Game_ID`);

--
-- Indexes for table `Images`
--
ALTER TABLE `Images`
  ADD PRIMARY KEY (`Image_ID`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`Price_ID`);

--
-- Indexes for table `primary genre`
--
ALTER TABLE `primary genre`
  ADD PRIMARY KEY (`Genre1_ID`);

--
-- Indexes for table `secondary genre`
--
ALTER TABLE `secondary genre`
  ADD PRIMARY KEY (`Genre2_ID`);

--
-- Indexes for table `year published`
--
ALTER TABLE `year published`
  ADD PRIMARY KEY (`Year_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consoles`
--
ALTER TABLE `consoles`
  MODIFY `Console_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `Developer_Code` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `esrb ratings`
--
ALTER TABLE `esrb ratings`
  MODIFY `ESRB_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `Game_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `Images`
--
ALTER TABLE `Images`
  MODIFY `Image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `Price_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `primary genre`
--
ALTER TABLE `primary genre`
  MODIFY `Genre1_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `secondary genre`
--
ALTER TABLE `secondary genre`
  MODIFY `Genre2_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `year published`
--
ALTER TABLE `year published`
  MODIFY `Year_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
