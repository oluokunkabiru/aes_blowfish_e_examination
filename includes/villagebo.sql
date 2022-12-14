-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2021 at 02:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oluokuncbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `classid`, `reg_date`) VALUES
(10, 'ss3', '45c48cce2e2d7fbdea1afc51c7c6ad26', '2021-04-26 20:33:35'),
(9, 'ss 1', '8f14e45fceea167a5a36dedd4bea2543', '2021-03-12 05:42:51'),
(5, 'Primary 5', 'a87ff679a2f3e71d9181a67b7542122c', '2021-01-25 01:24:45'),
(2, 'Primary 1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-01-21 04:10:03'),
(3, 'Primary 2', 'c81e728d9d4c2f636f067f89cc14862c', '2021-01-21 04:10:14'),
(11, '100 level', 'd3d9446802a44259755d38e6d163e820', '2021-03-11 17:57:07'),
(7, 'jss 1', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-03-12 05:45:47'),
(4, 'Primary 3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-01-24 18:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `examinations`
--

CREATE TABLE `examinations` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `subjectid` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `examname` varchar(255) DEFAULT NULL,
  `current_term` varchar(20) NOT NULL,
  `examinationpin` varchar(255) DEFAULT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `visibility` varchar(10) NOT NULL,
  `camera_status` varchar(200) DEFAULT NULL,
  `examinationid` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `duration` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examinations`
--

INSERT INTO `examinations` (`id`, `status`, `subjectid`, `classid`, `description`, `examname`, `current_term`, `examinationpin`, `startdate`, `enddate`, `visibility`, `camera_status`, `examinationid`, `reg_date`, `duration`) VALUES
(7, 'unavailable', '1679091c5a880faf6fb5e6087eb1b2dc', 'a87ff679a2f3e71d9181a67b7542122c', NULL, NULL, 'First term', NULL, '2021-01-27 00:51:53', '2021-01-27 00:51:53', 'no', NULL, '1679091c5a880faf6fb5e6087eb1b2dc', '2021-05-31 08:51:03', '0'),
(10, 'available', 'c20ad4d76fe97759aa27a0c99bff6710', '8f14e45fceea167a5a36dedd4bea2543', 'Mathematics mid term test', 'Mid term test', 'First term', '678', '2021-05-31 13:13:35', '2021-05-31 23:59:59', 'yes', 'on', '45c48cce2e2d7fbdea1afc51c7c6ad26', '2021-05-31 11:35:13', '4'),
(8, 'available', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'e4da3b7fbbce2345d7772b0674a318d5', 'biology test', 'bioloy test', 'First term', '4567', '2021-03-11 12:55:00', '2021-03-10 23:59:59', 'yes', 'off', '8f14e45fceea167a5a36dedd4bea2543', '2021-05-31 08:51:01', '2'),
(16, 'unavailable', 'aab3238922bcc25a6f606eb525ffdc56', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'Let work', 'Basic mathe', 'First term', '345', '2021-05-31 10:59:12', '2021-05-31 23:59:59', 'yes', NULL, '9bf31c7ff062936a96d3c8bd1f8f2ff3', '2021-05-31 08:12:59', '2'),
(5, 'available', 'a87ff679a2f3e71d9181a67b7542122c', 'a87ff679a2f3e71d9181a67b7542122c', 'Science is the world', 'Basic Science', 'First term', '445343', '2021-01-26 03:45:24', '2021-01-26 23:59:59', 'no', NULL, 'a87ff679a2f3e71d9181a67b7542122c', '2021-05-31 08:51:10', '45'),
(15, 'written', '9bf31c7ff062936a96d3c8bd1f8f2ff3', '45c48cce2e2d7fbdea1afc51c7c6ad26', NULL, NULL, 'First term', NULL, '2021-05-24 13:02:39', '2021-05-24 13:02:39', 'no', NULL, 'aab3238922bcc25a6f606eb525ffdc56', '2021-05-31 08:50:21', '0'),
(13, 'available', 'c20ad4d76fe97759aa27a0c99bff6710', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'Mathematics for basics school', 'Mathematic is fun', 'First term', '1234', '2021-05-31 13:08:39', '2021-05-31 23:59:59', 'no', 'off', 'c20ad4d76fe97759aa27a0c99bff6710', '2021-05-31 11:40:36', '30'),
(2, 'written', 'c4ca4238a0b923820dcc509a6f75849b', 'c81e728d9d4c2f636f067f89cc14862c', NULL, NULL, 'First term', NULL, '2021-01-24 05:03:39', '2021-01-24 05:03:39', 'no', NULL, 'c4ca4238a0b923820dcc509a6f75849b', '2021-05-31 08:51:25', '0'),
(14, 'written', 'aab3238922bcc25a6f606eb525ffdc56', '45c48cce2e2d7fbdea1afc51c7c6ad26', NULL, NULL, 'First term', NULL, '2021-05-24 13:01:29', '2021-05-24 13:01:29', 'no', NULL, 'c51ce410c124a10e0db5e4b97fc2af39', '2021-05-31 08:50:27', '0'),
(17, 'available', 'c74d97b01eae257e44aa9d5bade97baf', 'd3d9446802a44259755d38e6d163e820', 'Basic Mathematics for test', 'Set theoy test', 'First term', '09876', '2021-09-18 16:12:23', '2021-09-18 23:59:59', 'yes', NULL, 'c74d97b01eae257e44aa9d5bade97baf', '2021-09-18 14:23:12', '30'),
(3, 'available', '1679091c5a880faf6fb5e6087eb1b2dc', 'c81e728d9d4c2f636f067f89cc14862c', 'Mathematics is fun for primary education', 'Basic Mathematic', 'First term', '231', '2021-03-06 10:23:27', '2021-03-07 23:59:59', 'yes', NULL, 'c81e728d9d4c2f636f067f89cc14862c', '2021-05-31 08:51:21', '6'),
(9, 'written', 'd3d9446802a44259755d38e6d163e820', 'e4da3b7fbbce2345d7772b0674a318d5', NULL, NULL, 'First term', NULL, '2021-03-11 12:10:43', '2021-03-11 12:10:43', 'no', 'on', 'c9f0f895fb98ab9159f51fd0297e236d', '2021-05-31 08:50:49', '0'),
(1, 'available', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'c81e728d9d4c2f636f067f89cc14862c', 'Computer science is new world', 'computer science', 'First term', '121', '2021-01-28 23:38:13', '2021-01-28 23:59:59', 'no', NULL, 'cfcd208495d565ef66e7dff9f98764da', '2021-05-31 08:51:28', '4'),
(12, 'written', 'c51ce410c124a10e0db5e4b97fc2af39', '8f14e45fceea167a5a36dedd4bea2543', NULL, NULL, 'First term', NULL, '2021-03-12 07:52:37', '2021-03-12 07:52:37', 'no', 'off', 'd3d9446802a44259755d38e6d163e820', '2021-05-31 08:50:38', '0'),
(6, 'available', '1679091c5a880faf6fb5e6087eb1b2dc', 'c81e728d9d4c2f636f067f89cc14862c', 'Mathematics is logic', 'Basic Mathematics', 'First term', '1234', '2021-03-06 10:49:24', '2021-03-07 23:59:59', 'yes', NULL, 'e4da3b7fbbce2345d7772b0674a318d5', '2021-05-31 08:51:07', '50'),
(4, 'available', 'c9f0f895fb98ab9159f51fd0297e236d', 'c81e728d9d4c2f636f067f89cc14862c', NULL, NULL, 'First term', NULL, '2021-01-25 03:20:04', '2021-01-25 03:20:04', 'no', NULL, 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-05-31 08:51:16', '0');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `examinationid` varchar(255) NOT NULL,
  `questiontype` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `option_e` text NOT NULL,
  `mark` varchar(255) NOT NULL,
  `correct` varchar(255) NOT NULL,
  `questionid` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `examinationid`, `questiontype`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `mark`, `correct`, `questionid`, `reg_date`) VALUES
(28, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Who is first female student admitted by &lt;b&gt;OICHUB&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Village boy&lt;br&gt;&lt;/p&gt;', 'Maryam&lt;br&gt;', '&lt;p&gt;Mum Dara&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tabitha&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Bunmi&lt;br&gt;&lt;/p&gt;', '2', 'C', '02e74f10e0327ad868d138f2b4fdd6f0', '2021-01-25 12:36:02'),
(64, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;What is A U B from A = {1,3,4} and B = {3,4,1}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{4,3,1,1}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{4,1,3}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{3. 4. 1}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{1, 3,4,3,4,1}&lt;br&gt;&lt;/p&gt;', '', '2', 'B', '03afdbd66e7929b125f8597834fa83a4', '2021-07-07 18:49:30'),
(61, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;What is power of set &lt;b&gt;A = {2,3,4,a,d,g,e}&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;14&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;64&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;128&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;32&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;41&lt;br&gt;&lt;/p&gt;', '3', 'C', '072b030ba126b2f4b2374f342be9ed44', '2021-07-07 18:37:49'),
(60, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;Which of this null set&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;A= { }&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;N = {0}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;B = {c}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;C = []&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;c = ()&lt;br&gt;&lt;/p&gt;', '2', 'A', '093f65e080a295f8076b1c5722a46aa2', '2021-07-07 18:35:16'),
(70, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;Another name for Singleton set is&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Zero set&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;One set&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Unit set&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;First set&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;void set&lt;br&gt;&lt;/p&gt;', '3', 'C', '14bfa6bb14875e45bba028a21ed38046', '2021-07-07 19:07:45'),
(7, 'cfcd208495d565ef66e7dff9f98764da', 'normal', 'What is name &lt;b&gt;shortest&lt;/b&gt; student at OICHUB currently&lt;br&gt;', '&lt;p&gt;Isreal&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tabitha&lt;br&gt;&lt;/p&gt;', 'Mariam', '&lt;p&gt;Village Boy&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Mum Dara&lt;br&gt;&lt;/p&gt;', '2', 'B', '1679091c5a880faf6fb5e6087eb1b2dc', '2021-01-21 10:27:10'),
(44, '45c48cce2e2d7fbdea1afc51c7c6ad26', '', '&lt;p&gt;what 1011&lt;sub&gt;2&lt;/sub&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;101&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;11&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;4&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;12&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;7&lt;br&gt;&lt;/p&gt;', '2', 'B', '17e62166fc8586dfa4d1bc0e1742c08b', '2021-03-12 06:16:56'),
(34, 'e4da3b7fbbce2345d7772b0674a318d5', 'normal', '&lt;p&gt;what is 4&lt;sup&gt;4 &lt;/sup&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;16&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;256&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;64&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;128&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;12334&lt;br&gt;&lt;/p&gt;', '2', 'B', '182be0c5cdcd5072bb1864cdee4d3d6e', '2021-03-06 14:14:45'),
(37, '8f14e45fceea167a5a36dedd4bea2543', 'normal', '&lt;p&gt;is faramora a secondary school&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;true&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;false&lt;br&gt;&lt;/p&gt;', '', '', '', '1', 'A', '19ca14e7ea6328a42e0eb13d585e4c22', '2021-03-11 10:40:29'),
(36, '8f14e45fceea167a5a36dedd4bea2543', 'normal', '&lt;p&gt;Described below image&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;../../questionsfiles/tr1_1615458923.png&quot; style=&quot;width: 50%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;triumph trading limited &lt;br&gt;&lt;/p&gt;', '&lt;p&gt;oka&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;cd&lt;br&gt;&lt;/p&gt;', '', '2', 'A', '1c383cd30b7c298ab50293adfecb7b18', '2021-03-11 10:39:06'),
(20, 'c81e728d9d4c2f636f067f89cc14862c', 'normal', '&lt;p&gt;What is 3&lt;sub&gt;10&lt;/sub&gt; in base 2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1000&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;11&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;011&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;101&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1102&lt;br&gt;&lt;/p&gt;', '2', 'B', '1f0e3dad99908345f7439f8ffabdffc4', '2021-01-25 01:39:54'),
(25, 'c81e728d9d4c2f636f067f89cc14862c', 'normal', '&lt;p&gt;Which of this&amp;nbsp; belong to farmer&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;../../questionsfiles/ab_1611539331.jpg&quot; style=&quot;width: 50%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;../../questionsfiles/img5_1611539345.jpg&quot; style=&quot;width: 50%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;../../questionsfiles/ok_1611539359.jpg&quot; style=&quot;width: 50%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;../../questionsfiles/a_1611539401.JPG&quot; style=&quot;width: 50%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;../../questionsfiles/d_1611539422.JPG&quot; style=&quot;width: 50%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '2', 'C', '1ff1de774005f8da13f42943881c655f', '2021-03-06 09:49:19'),
(52, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;What is Log 100&lt;sub&gt;10&lt;/sub&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;4&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;3&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;43&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1&lt;br&gt;&lt;/p&gt;', '2', 'C', '2838023a778dfaecdc212708f721b788', '2021-04-26 20:22:27'),
(67, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;set of 0.1 to 1 is an example of ...&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;N&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;R&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Q&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;I&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;C&lt;br&gt;&lt;/p&gt;', '3', 'C', '3295c76acbf4caaed33c36b1b5fc2cb1', '2021-07-07 18:59:17'),
(29, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Whose&amp;nbsp; &lt;b&gt;Benefit&amp;nbsp; &lt;/b&gt;is his nickname &lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Kabir&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Village Boy&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tabitha&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Samad&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Bunmi&lt;br&gt;&lt;/p&gt;', '2', 'C', '33e75ff09dd601bbe69f351039152189', '2021-01-25 12:37:57'),
(42, '45c48cce2e2d7fbdea1afc51c7c6ad26', 'normal', '&lt;p&gt;Described this image below&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;../../questionsfiles/tr1_1615529071.png&quot; style=&quot;width: 25%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;true&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;tml&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;tlm&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;ok&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;yes&lt;br&gt;&lt;/p&gt;', '1', 'B', '3416a75f4cea9109507cacd8e2f2aefc', '2021-03-12 06:05:26'),
(31, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;&lt;img src=&quot;../../questionsfiles/Screenshot_2021-01-24 Clear cache on Linux - LinuxConfig org_1611703376.png&quot; style=&quot;width: 25%;&quot;&gt;8th What is name of village boy&amp;nbsp;&lt;/p&gt;', '&lt;p&gt;OLUOKUN KABIRU &lt;b&gt;ADESINA&lt;/b&gt;&lt;/p&gt;', '&lt;p&gt;&lt;i&gt;Kabit&lt;/i&gt;&lt;/p&gt;', '&lt;p&gt;Village boy &lt;u&gt;kabi&lt;/u&gt;&lt;/p&gt;', '', '', '2', 'A', '34173cb38f07f89ddbebc2ac9128303f', '2021-01-26 23:23:20'),
(24, 'c81e728d9d4c2f636f067f89cc14862c', '', '&lt;p&gt;Describe below profession with this image&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;../../questionsfiles/Untitled(1)_1611539231.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Engineer&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Farmer&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Farmer Engineers&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Agricultural Engineer&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Cartapiller Engineer&lt;br&gt;&lt;/p&gt;', '2', 'D', '37693cfc748049e45d87b8c7d8b9aacd', '2021-03-06 09:51:07'),
(22, 'c81e728d9d4c2f636f067f89cc14862c', 'normal', '&lt;p&gt;What is 10&lt;sub&gt;2&amp;nbsp; &lt;/sub&gt;in base 10&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;3&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;4&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;5&lt;br&gt;&lt;/p&gt;', '2', 'B', '3c59dc048e8850243be8079a5c74d079', '2021-01-25 01:42:15'),
(63, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;Venn Diagram was named after...&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;John Venn&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Prof John Vein&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Prof. John Venn&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Prof. Venn John&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;prof john veinn&lt;br&gt;&lt;/p&gt;', '3', 'C', '44f683a84163b3523afe57c2e008bc8c', '2021-07-07 18:46:23'),
(10, 'cfcd208495d565ef66e7dff9f98764da', '', '&lt;p&gt;What is full meaning of &lt;b&gt;OIC&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Omoleewu info and comms&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Omolewu Informations and Commmunincations&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Omolewu Informations and Communications&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Omollewu Informations and Commmunincations&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Omolewu Informations and Commmunincationss&lt;br&gt;&lt;/p&gt;', '5', 'C', '45c48cce2e2d7fbdea1afc51c7c6ad26', '2021-01-28 22:51:32'),
(27, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;What is nickname of Sister Dorcas&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Ajala&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tabitha&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Sabitha&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tabita&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Ajala&lt;br&gt;&lt;/p&gt;', '2', 'B', '4e732ced3463d06de0ca9a15b6153677', '2021-01-25 12:34:20'),
(33, 'e4da3b7fbbce2345d7772b0674a318d5', 'normal', '&lt;p&gt;what is 3&lt;sup&gt;3&lt;/sup&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;9&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;12&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;27&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;4&lt;sub&gt;2 &lt;/sub&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;30&lt;br&gt;&lt;/p&gt;', '2', 'C', '6364d3f0f495b6ab9dcf8d3b5c6e0b01', '2021-03-06 09:30:21'),
(49, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;What is 4&lt;sup&gt;4&lt;/sup&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;32&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;256&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;543&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;128&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;16&lt;br&gt;&lt;/p&gt;', '3', 'B', '642e92efb79421734881b53e1e1b18b6', '2021-04-26 20:14:42'),
(12, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;What is Isreal nickname&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;young eazi&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;eazi money&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Eazi&lt;br&gt;&lt;/p&gt;', '', '', '1', 'C', '6512bd43d9caa6e02c990b0a82652dca', '2021-01-21 11:43:06'),
(59, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;Which is represent natural number&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;N={1,2,3,..n}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;N = {0,1,2,3,..n}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;N = {-infinity, -888, 0 , 1, 2, infinity}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;N = { 0, 2, 4 ...infinity}&lt;br&gt;&lt;/p&gt;', '', '2', 'A', '66f041e16a60928b05a7e228a89c3799', '2021-07-07 18:31:59'),
(48, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;75&lt;sub&gt;10&lt;/sub&gt; to base 2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;111022&lt;sub&gt;2&lt;/sub&gt;&lt;/p&gt;', '&lt;p&gt;111001&lt;sub&gt;2&lt;/sub&gt;&lt;/p&gt;', '&lt;p&gt;I dont know&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1234&lt;sup&gt;2&lt;/sup&gt;&lt;br&gt;&lt;/p&gt;', '', '2', 'B', '67c6a1e7ce56d3d6fa748ab6d9af3fd7', '2021-04-26 20:13:32'),
(46, '45c48cce2e2d7fbdea1afc51c7c6ad26', 'normal', '&lt;p&gt;is Ibadan largest city in &lt;b&gt;Africa?&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;true&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;false&lt;br&gt;&lt;/p&gt;', '', '', '', '2', 'A', '6c8349cc7260ae62e3b1396831a8398f', '2021-03-12 06:15:53'),
(30, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Which is not nickname of OICHUB student&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Village Boy&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tabitha&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Benefit&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Eazi&lt;br&gt;&lt;/p&gt;', 'Sunday&lt;br&gt;', '3', 'E', '6ea9ab1baa0efb9e19094440c317e21b', '2021-01-25 12:39:25'),
(19, 'c81e728d9d4c2f636f067f89cc14862c', 'normal', '&lt;p&gt;Whose picture is this&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;../../questionsfiles/82_465754_1611538661.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;kabir and babtech&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Kabir and Babtech&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;kabir only&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;babtech only&lt;br&gt;&lt;/p&gt;', '', '2', 'B', '6f4922f45568161a8cdf4ad2299f6d23', '2021-01-25 01:38:37'),
(18, 'c81e728d9d4c2f636f067f89cc14862c', 'normal', '&lt;p&gt;What is 2&lt;sup&gt;3 &lt;/sup&gt;&lt;/p&gt;&lt;p&gt;&lt;sup&gt;&lt;br&gt;&lt;/sup&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;6&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;8&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;10&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;9&lt;br&gt;&lt;/p&gt;', '2', 'C', '70efdf2ec9b086079795c442636b55fb', '2021-01-25 01:37:09'),
(58, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;Natural number can be represent .... &lt;br&gt;&lt;/p&gt;', '&lt;p&gt;0 to infinity&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1 to&amp;nbsp; positive infinity&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1 to negative infinity &lt;br&gt;&lt;/p&gt;', '&lt;p&gt;set of positive number starting from 0&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1 to infinity positive whole number&amp;nbsp; &lt;br&gt;&lt;/p&gt;', '2', 'E', '72b32a1f754ba1c09b3695e0cb6cde7f', '2021-07-07 18:26:35'),
(68, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;..... is example of finite set&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Numbers real number between 0.1 and 2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Numbers of natural between 2 and 200&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Numbers of LAUTECH yahoo boys&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Numbers of female yahoo in Nigeria&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Numbers of english Words&lt;br&gt;&lt;/p&gt;', '2', 'B', '735b90b4568125ed6c3f678819b6e058', '2021-07-07 19:03:23'),
(71, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;List the out element of A = {xEN: x&lt;sup&gt;2 &lt;/sup&gt;=9 , x&lt;sup&gt;2&lt;/sup&gt;=25}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{2,3,4,5}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{-3,3,5,-5}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;[3,5,-5,-3]&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{-3,-4, -5, -5}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{3,-4,5,-5}&lt;br&gt;&lt;/p&gt;', '3', 'B', '7cbbc409ec990f19c78c75bd1e06f215', '2021-07-07 19:12:50'),
(62, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;What is between singleton set and null set in term of&amp;nbsp; set representation&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;A = {0} and A = [ ]&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;A = {} and A= []&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;A = {Abuja} and A = {Female Imam}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;A = {Female Imam} and A = {Abuja}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;A = [0] and A = [ ]&lt;br&gt;&lt;/p&gt;', '3', 'C', '7f39f8317fbdb1988ef4c628eba02591', '2021-07-07 18:43:41'),
(26, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Who is l&lt;b&gt;ordspeed&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Afeez&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tomiwa&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tomwa&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tonmwa&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Ibraheem&lt;br&gt;&lt;/p&gt;', '2', 'B', '8e296a067a37563370ded05f5a3bf3ec', '2021-01-25 12:31:54'),
(8, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Who is &lt;b&gt;youngest &lt;/b&gt;student at OICHUB&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Isreal&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Habeeb&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;village boy&lt;br&gt;&lt;/p&gt;', 'Tabitha', 'Pelumi (Benefit)&lt;br&gt;', '1', 'A', '8f14e45fceea167a5a36dedd4bea2543', '2021-01-21 10:28:41'),
(21, 'c81e728d9d4c2f636f067f89cc14862c', 'normal', '&lt;p&gt;What is &lt;sup&gt;2&lt;/sup&gt;/&lt;sub&gt;3&amp;nbsp; &lt;/sub&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;fraction&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;friction&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;infraction&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;profar&lt;br&gt;&lt;/p&gt;', '', '2', 'A', '98f13708210194c475687be6106a3b84', '2021-01-25 01:41:11'),
(53, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;Find x&lt;/p&gt;&lt;p&gt;2x+3 = 6-x&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;3&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;4&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;5&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1&lt;br&gt;&lt;/p&gt;', '2', 'E', '9a1158154dfa42caddbd0694a4e9bdc8', '2021-04-26 20:24:22'),
(16, 'c81e728d9d4c2f636f067f89cc14862c', 'normal', '&lt;p&gt;What is 2+3&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;3&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;5&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;6&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;8&lt;br&gt;&lt;/p&gt;', '2', 'C', '9bf31c7ff062936a96d3c8bd1f8f2ff3', '2021-01-25 01:33:49'),
(57, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', 'What is full meaning of LAUTECH?', '&lt;p&gt;ladoke&lt;/p&gt;', '&lt;p&gt;ladinke&lt;/p&gt;', '&lt;p&gt;londinke&lt;/p&gt;', '&lt;p&gt;lindaiuke&lt;/p&gt;', '', '5', 'A', '9f61408e3afb633e50cdf1b20de6f466', '2021-05-15 14:14:13'),
(43, '45c48cce2e2d7fbdea1afc51c7c6ad26', 'normal', '&lt;p&gt;What is 2&lt;sup&gt;4&lt;/sup&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;16&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;20&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;8&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1&lt;br&gt;&lt;/p&gt;', '', '2', 'A', 'a1d0c6e83f027327d8461063f4ac58a6', '2021-03-12 06:06:37'),
(69, 'c74d97b01eae257e44aa9d5bade97baf', '', '&lt;p&gt;Void set is also called the following except&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Empty&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Null&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Singleton&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Zero&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Unity&lt;br&gt;&lt;/p&gt;', '3', 'C', 'a3f390d88e4c41f2747bfa2f1b5f87db', '2021-07-08 08:20:24'),
(39, '8f14e45fceea167a5a36dedd4bea2543', 'normal', '&lt;p&gt;what is lowest class in upper basic education in oyo state&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;jss 1&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;jss 2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;ss 1&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;ss 2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;I dont know&lt;br&gt;&lt;/p&gt;', '2', 'A', 'a5771bce93e200c36f7cd9dfd0e5deaa', '2021-03-11 10:42:48'),
(38, '8f14e45fceea167a5a36dedd4bea2543', 'normal', '&lt;p&gt;who is faramora principal&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;fawale&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;fawole&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Fawole&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;fawoole&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;faawole&lt;br&gt;&lt;/p&gt;', '3', 'C', 'a5bfc9e07964f8dddeb95fc584cd965d', '2021-03-11 10:41:35'),
(55, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;find x if y=4, u=3&lt;/p&gt;&lt;p&gt;x+u+y = 2x-4u-8y&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;15&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;51&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;10&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;100&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;65&lt;br&gt;&lt;/p&gt;', '3', 'B', 'a684eceee76fc522773286a895bc8436', '2021-04-26 20:29:48'),
(5, 'cfcd208495d565ef66e7dff9f98764da', 'normal', 'How may tribal mark does village boy have on his left chin &lt;br&gt;', '&lt;p&gt;11&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;10&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;12&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;9&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;I don&amp;apos;t know&lt;br&gt;&lt;/p&gt;', '2', 'A', 'a87ff679a2f3e71d9181a67b7542122c', '2021-01-21 10:22:51'),
(15, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Who is &lt;b&gt;Adebisi Abosede Racheal&lt;/b&gt; at OICHUB&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;mum darafunwa&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Alhaja&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Bunmi&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Mum Dara&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tabitha&lt;br&gt;&lt;/p&gt;', '3', 'D', 'aab3238922bcc25a6f606eb525ffdc56', '2021-01-21 11:50:23'),
(56, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;What is fullname of vboy&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;oluokun kabiru &lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Oluokun Kabiru Adesi&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;oluokun kaabir adesina&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Oluokun Kabiru Adesiina&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Oluokun Kabiru Adesina&lt;/p&gt;', '4', 'E', 'b53b3a3d6ab90ce0268229151c9bde11', '2021-04-26 20:31:44'),
(23, 'c81e728d9d4c2f636f067f89cc14862c', 'normal', '&lt;p&gt;Describe &lt;b&gt;OLUOKUN KABIRU&amp;nbsp; &lt;/b&gt;with below image&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;../../questionsfiles/s2_1611539098.jpg&quot; style=&quot;width: 50%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Doctor&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;programmer&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Doctor with &lt;b&gt;AI&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Medical Doctor&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;AI&lt;br&gt;&lt;/p&gt;', '2', 'D', 'b6d767d2f8ed5d21a44b0e5886680cb9', '2021-01-25 01:45:57'),
(51, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;What is 5&lt;sup&gt;3&lt;/sup&gt; in binary &lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1111101&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1111100&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1011101&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;111110100&lt;br&gt;&lt;/p&gt;', '', '2', 'A', 'c0c7c76d30bd3dcaefc96f40275bdc0a', '2021-04-26 20:20:56'),
(32, 'e4da3b7fbbce2345d7772b0674a318d5', '', '&lt;p&gt;what is 2&lt;sub&gt;2  &lt;/sub&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;10&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;11&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;111&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;001&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;303&lt;br&gt;&lt;/p&gt;', '2', 'A', 'c16a5320fa475530d9583c34fd356ef5', '2021-03-06 09:50:27'),
(13, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Who is using system with worst battery at OICHUB&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;village boy&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Tomiwa&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Awoyemi&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Habeeb&lt;br&gt;&lt;/p&gt;', '', '2', 'A', 'c20ad4d76fe97759aa27a0c99bff6710', '2021-01-21 11:44:59'),
(2, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;what is full meaning of &lt;b&gt;CSS&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;cascadnig style sheet&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;cascading style sheet&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;cascading stylesheet&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;cascagning style sheet&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;cascading styling sheet&lt;br&gt;&lt;/p&gt;', '2', 'B', 'c4ca4238a0b923820dcc509a6f75849b', '2021-01-21 10:16:14'),
(14, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;What is actual name of &lt;b&gt;babalawo&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;i&gt;&lt;b&gt;Note :&lt;/b&gt; stop calling him babalawo again, call him with his real name&lt;/i&gt;&lt;br&gt;&lt;b&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Awoyemi&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Yemi&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Ifayemi&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Oduyemi&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Ogunyemi&lt;br&gt;&lt;/p&gt;', '4', 'A', 'c51ce410c124a10e0db5e4b97fc2af39', '2021-01-21 11:48:07'),
(17, 'c81e728d9d4c2f636f067f89cc14862c', 'normal', '&lt;p&gt;What is my name&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;../../questionsfiles/29956704_1611538488.jpg&quot; style=&quot;width: 25%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;kabir&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;village boy&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;you&lt;br&gt;&lt;/p&gt;', '', '1', 'A', 'c74d97b01eae257e44aa9d5bade97baf', '2021-01-25 01:35:40'),
(3, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;What is full meaning of &lt;b&gt;PHP&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;personal home page&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;hypertextpreprocessor&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;hypertext preprocessor&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;hypertext pre processor&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;page home personal&lt;br&gt;&lt;/p&gt;', '2', 'C', 'c81e728d9d4c2f636f067f89cc14862c', '2021-01-21 10:17:55'),
(9, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Who is first student at OICHUB &lt;br&gt;&lt;/p&gt;', '&lt;p&gt;village boy&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Johnson&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;teejohnson&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Oluokun Kabir&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Mum dara&lt;br&gt;&lt;/p&gt;', '3', 'B', 'c9f0f895fb98ab9159f51fd0297e236d', '2021-01-21 10:30:39'),
(1, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;What us full meaning of &lt;b&gt;HTML&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;hypertext preprocessor language&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;hypertext makup language&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;hypertext markp language&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;hypertext markup language&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;all of the above&lt;br&gt;&lt;/p&gt;', '3', 'D', 'cfcd208495d565ef66e7dff9f98764da', '2021-01-21 10:13:44'),
(11, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Which of this is OICHUB logo&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;../../questionsfiles/77082616_1611229196.jpg&quot; style=&quot;width: 149.167px; height: 149.167px;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;../../questionsfiles/76755432_1611229225.jpg&quot; style=&quot;width: 100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '1', 'A', 'd3d9446802a44259755d38e6d163e820', '2021-01-21 11:41:44'),
(41, '45c48cce2e2d7fbdea1afc51c7c6ad26', 'normal', '&lt;p&gt;what is noun&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;naming word&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;names&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;name of persion, animal, place or things&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;I dont know&lt;br&gt;&lt;/p&gt;', '', '2', 'C', 'd645920e395fedad7bbbed0eca3fe2e0', '2021-03-12 06:03:50'),
(40, '8f14e45fceea167a5a36dedd4bea2543', 'normal', '&lt;p&gt;Who is female head in school&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;senior boy&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;senior male&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;captain&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;captai boy&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;senior girl&lt;br&gt;&lt;/p&gt;', '2', 'E', 'd67d8ab4f4c10bf22aa353e27879133c', '2021-03-11 10:44:09'),
(54, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;if x = 2, find &lt;b&gt;y&lt;/b&gt;&lt;/p&gt;&lt;p&gt;2x+4+4y =10+3x&lt;br&gt;&lt;b&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;4&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;23&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;2.2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;2&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;1&lt;br&gt;&lt;/p&gt;', '3', 'D', 'd82c8d1619ad8176d665453cfb2e55f0', '2021-04-26 20:26:33'),
(47, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;Convert 111001&lt;sub&gt;2 &lt;/sub&gt;to base 10&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;57&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;56&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;32&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;12&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;111001&lt;/p&gt;', '3', 'A', 'd9d4f495e875a2e075a1a4a6e1b9770f', '2021-04-26 20:12:23'),
(72, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', '&lt;p&gt;A&lt;sup&gt;&amp;apos;&lt;/sup&gt; is .....&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;U-A&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;A-U&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;U&lt;sup&gt;&amp;apos;&lt;/sup&gt;-A&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;U-A&lt;sup&gt;&amp;apos;&lt;/sup&gt;&lt;br&gt;&lt;/p&gt;', '', '3', 'A', 'e2c420d928d4bf8ce0ff2ec19b371514', '2021-07-07 19:15:14'),
(35, '8f14e45fceea167a5a36dedd4bea2543', 'normal', '&lt;p&gt;what is full meaniing of &lt;b&gt;WHO&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;wold helat orgsni&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;world hearh Organisation&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Waooo Hause Omoge&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;omo oko&lt;br&gt;&lt;/p&gt;', '', '2', 'B', 'e369853df766fa44e1ed0ff613f563bd', '2021-03-11 10:34:26'),
(6, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;What is name of Habeeb new girlfriend as we discuss it here yesterday &lt;br&gt;&lt;/p&gt;', '&lt;p&gt;faidat&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Faridat&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;habeeb vs Faridat&lt;br&gt;&lt;/p&gt;', 'Habeebat&lt;br&gt;', '', '2', 'B', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-01-21 10:24:59'),
(65, 'c74d97b01eae257e44aa9d5bade97baf', '', '&lt;p&gt;Which is null set&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{male with bear}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{female with bear}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{male imam}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{female imam}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{prime numbers greater than 4}&lt;br&gt;&lt;/p&gt;', '3', 'D', 'ea5d2f1c4608232e07d3aa3d998e5135', '2021-07-08 08:18:33'),
(4, 'cfcd208495d565ef66e7dff9f98764da', 'normal', '&lt;p&gt;Do you know that village boy have tribal mark?&lt;/p&gt;&lt;p&gt;if yes, how many?&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;No&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Yes&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;20&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;22&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;18&lt;br&gt;&lt;/p&gt;', '5', 'D', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-01-21 10:20:49'),
(50, 'c20ad4d76fe97759aa27a0c99bff6710', 'normal', '&lt;p&gt;Simplify 2(5+6)/11+5-1&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;9&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;23&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;3&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;6&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;8&lt;br&gt;&lt;/p&gt;', '5', 'D', 'f457c545a9ded88f18ecee47145a72c0', '2021-04-26 20:18:41'),
(45, '45c48cce2e2d7fbdea1afc51c7c6ad26', 'normal', '&lt;p&gt;what is 6+3x3&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;15&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;23&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;12&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;36&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;32&lt;br&gt;&lt;/p&gt;', '2', 'A', 'f7177163c833dff4b38fc8d2872f1ec6', '2021-03-12 06:08:46'),
(66, 'c74d97b01eae257e44aa9d5bade97baf', 'normal', 'Set of count number is &lt;br&gt;', '&lt;p&gt;{1,2,3...infinity}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{0,1,2,3 ... infinity}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;{0.1, 0.2 ... to infinity}&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;[0,1,2,3 .. infinity]&lt;br&gt;&lt;/p&gt;', '', '2', 'B', 'fc490ca45c00b1249bbe3554a4fdf6fb', '2021-07-07 18:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `school_information`
--

CREATE TABLE `school_information` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `current_term` varchar(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `hostsystem` text DEFAULT NULL,
  `about` text DEFAULT NULL,
  `school_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_information`
--

INSERT INTO `school_information` (`id`, `name`, `logo`, `address`, `current_term`, `city`, `state`, `hostsystem`, `about`, `school_id`) VALUES
(2, 'koadit college of ict', '../images/oic.png', 'No 6, Isoko street Isalu Iseyin  Sabo', 'First term', 'Osogbo', 'Osun state', 'koadit pc', NULL, 'cfcd208495d565ef66e7dff9f98764da');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `studentid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `class`, `userid`, `reg_date`, `studentid`) VALUES
(28, 'c81e728d9d4c2f636f067f89cc14862c', 'e369853df766fa44e1ed0ff613f563bd', '2021-03-06 15:29:43', '02e74f10e0327ad868d138f2b4fdd6f0'),
(7, 'c81e728d9d4c2f636f067f89cc14862c', '45c48cce2e2d7fbdea1afc51c7c6ad26', '2021-01-21 14:54:56', '1679091c5a880faf6fb5e6087eb1b2dc'),
(44, '45c48cce2e2d7fbdea1afc51c7c6ad26', '72b32a1f754ba1c09b3695e0cb6cde7f', '2021-04-26 20:33:57', '17e62166fc8586dfa4d1bc0e1742c08b'),
(39, 'c81e728d9d4c2f636f067f89cc14862c', '67c6a1e7ce56d3d6fa748ab6d9af3fd7', '2021-04-10 08:34:38', '19ca14e7ea6328a42e0eb13d585e4c22'),
(36, '8f14e45fceea167a5a36dedd4bea2543', '6c8349cc7260ae62e3b1396831a8398f', '2021-03-12 06:37:39', '1c383cd30b7c298ab50293adfecb7b18'),
(25, 'c81e728d9d4c2f636f067f89cc14862c', '34173cb38f07f89ddbebc2ac9128303f', '2021-01-29 23:30:01', '1ff1de774005f8da13f42943881c655f'),
(52, 'd3d9446802a44259755d38e6d163e820', 'e2c420d928d4bf8ce0ff2ec19b371514', '2021-07-08 08:23:37', '2838023a778dfaecdc212708f721b788'),
(29, 'c4ca4238a0b923820dcc509a6f75849b', '1c383cd30b7c298ab50293adfecb7b18', '2021-03-06 16:02:15', '33e75ff09dd601bbe69f351039152189'),
(42, '45c48cce2e2d7fbdea1afc51c7c6ad26', 'b53b3a3d6ab90ce0268229151c9bde11', '2021-05-04 21:43:24', '3416a75f4cea9109507cacd8e2f2aefc'),
(22, 'c81e728d9d4c2f636f067f89cc14862c', '02e74f10e0327ad868d138f2b4fdd6f0', '2021-01-27 00:32:26', '3c59dc048e8850243be8079a5c74d079'),
(10, 'a87ff679a2f3e71d9181a67b7542122c', 'c51ce410c124a10e0db5e4b97fc2af39', '2021-01-25 02:10:49', '45c48cce2e2d7fbdea1afc51c7c6ad26'),
(27, 'c81e728d9d4c2f636f067f89cc14862c', '6364d3f0f495b6ab9dcf8d3b5c6e0b01', '2021-02-05 11:36:01', '4e732ced3463d06de0ca9a15b6153677'),
(34, '8f14e45fceea167a5a36dedd4bea2543', 'a1d0c6e83f027327d8461063f4ac58a6', '2021-03-12 06:22:11', '6364d3f0f495b6ab9dcf8d3b5c6e0b01'),
(49, 'd3d9446802a44259755d38e6d163e820', '735b90b4568125ed6c3f678819b6e058', '2021-07-07 19:25:52', '642e92efb79421734881b53e1e1b18b6'),
(48, 'd3d9446802a44259755d38e6d163e820', '3295c76acbf4caaed33c36b1b5fc2cb1', '2021-07-07 19:23:55', '67c6a1e7ce56d3d6fa748ab6d9af3fd7'),
(46, '45c48cce2e2d7fbdea1afc51c7c6ad26', '03afdbd66e7929b125f8597834fa83a4', '2021-05-07 12:16:54', '6c8349cc7260ae62e3b1396831a8398f'),
(31, 'e4da3b7fbbce2345d7772b0674a318d5', 'a5bfc9e07964f8dddeb95fc584cd965d', '2021-03-11 10:46:20', '6ea9ab1baa0efb9e19094440c317e21b'),
(26, 'c81e728d9d4c2f636f067f89cc14862c', 'c16a5320fa475530d9583c34fd356ef5', '2021-02-05 11:13:54', '8e296a067a37563370ded05f5a3bf3ec'),
(8, 'c81e728d9d4c2f636f067f89cc14862c', 'd3d9446802a44259755d38e6d163e820', '2021-01-21 14:56:04', '8f14e45fceea167a5a36dedd4bea2543'),
(53, 'd3d9446802a44259755d38e6d163e820', '32bb90e8976aab5298d5da10fe66f21d', '2021-09-18 14:24:26', '9a1158154dfa42caddbd0694a4e9bdc8'),
(16, 'c81e728d9d4c2f636f067f89cc14862c', '1f0e3dad99908345f7439f8ffabdffc4', '2021-01-25 12:46:33', '9bf31c7ff062936a96d3c8bd1f8f2ff3'),
(43, '45c48cce2e2d7fbdea1afc51c7c6ad26', '9f61408e3afb633e50cdf1b20de6f466', '2021-04-29 14:47:50', 'a1d0c6e83f027327d8461063f4ac58a6'),
(5, 'c81e728d9d4c2f636f067f89cc14862c', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-01-21 10:07:12', 'a87ff679a2f3e71d9181a67b7542122c'),
(15, 'c81e728d9d4c2f636f067f89cc14862c', '6f4922f45568161a8cdf4ad2299f6d23', '2021-01-25 12:45:59', 'aab3238922bcc25a6f606eb525ffdc56'),
(24, 'c81e728d9d4c2f636f067f89cc14862c', '33e75ff09dd601bbe69f351039152189', '2021-01-28 22:22:14', 'b6d767d2f8ed5d21a44b0e5886680cb9'),
(51, 'd3d9446802a44259755d38e6d163e820', '14bfa6bb14875e45bba028a21ed38046', '2021-07-08 08:22:54', 'c0c7c76d30bd3dcaefc96f40275bdc0a'),
(32, 'e4da3b7fbbce2345d7772b0674a318d5', 'd67d8ab4f4c10bf22aa353e27879133c', '2021-03-11 10:59:48', 'c16a5320fa475530d9583c34fd356ef5'),
(13, 'c81e728d9d4c2f636f067f89cc14862c', 'c74d97b01eae257e44aa9d5bade97baf', '2021-01-25 12:44:51', 'c20ad4d76fe97759aa27a0c99bff6710'),
(14, 'c81e728d9d4c2f636f067f89cc14862c', '70efdf2ec9b086079795c442636b55fb', '2021-01-25 12:45:13', 'c51ce410c124a10e0db5e4b97fc2af39'),
(21, 'c81e728d9d4c2f636f067f89cc14862c', '37693cfc748049e45d87b8c7d8b9aacd', '2021-01-26 23:35:39', 'c74d97b01eae257e44aa9d5bade97baf'),
(3, 'c81e728d9d4c2f636f067f89cc14862c', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-01-21 10:06:00', 'c81e728d9d4c2f636f067f89cc14862c'),
(9, 'a87ff679a2f3e71d9181a67b7542122c', '6512bd43d9caa6e02c990b0a82652dca', '2021-01-25 01:27:13', 'c9f0f895fb98ab9159f51fd0297e236d'),
(2, 'c81e728d9d4c2f636f067f89cc14862c', 'c4ca4238a0b923820dcc509a6f75849b', '2021-01-21 10:05:34', 'cfcd208495d565ef66e7dff9f98764da'),
(11, 'c81e728d9d4c2f636f067f89cc14862c', 'aab3238922bcc25a6f606eb525ffdc56', '2021-01-25 12:43:57', 'd3d9446802a44259755d38e6d163e820'),
(41, '8f14e45fceea167a5a36dedd4bea2543', 'a684eceee76fc522773286a895bc8436', '2021-04-14 21:28:47', 'd645920e395fedad7bbbed0eca3fe2e0'),
(40, 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'c0c7c76d30bd3dcaefc96f40275bdc0a', '2021-04-10 08:37:38', 'd67d8ab4f4c10bf22aa353e27879133c'),
(47, '45c48cce2e2d7fbdea1afc51c7c6ad26', 'fc490ca45c00b1249bbe3554a4fdf6fb', '2021-05-31 11:36:27', 'd9d4f495e875a2e075a1a4a6e1b9770f'),
(35, '8f14e45fceea167a5a36dedd4bea2543', 'f7177163c833dff4b38fc8d2872f1ec6', '2021-03-12 06:31:53', 'e369853df766fa44e1ed0ff613f563bd'),
(6, 'c81e728d9d4c2f636f067f89cc14862c', 'c9f0f895fb98ab9159f51fd0297e236d', '2021-01-21 14:53:47', 'e4da3b7fbbce2345d7772b0674a318d5'),
(50, 'd3d9446802a44259755d38e6d163e820', 'a3f390d88e4c41f2747bfa2f1b5f87db', '2021-07-07 19:26:42', 'f457c545a9ded88f18ecee47145a72c0'),
(45, '45c48cce2e2d7fbdea1afc51c7c6ad26', '66f041e16a60928b05a7e228a89c3799', '2021-04-26 20:48:22', 'f7177163c833dff4b38fc8d2872f1ec6');

-- --------------------------------------------------------

--
-- Table structure for table `studentexmination`
--

CREATE TABLE `studentexmination` (
  `id` int(11) NOT NULL,
  `questionid` varchar(255) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `examinationid` varchar(255) NOT NULL,
  `answerstatus` varchar(50) NOT NULL,
  `answerid` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `selectedoption` varchar(50) DEFAULT NULL,
  `correctness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentexmination`
--

INSERT INTO `studentexmination` (`id`, `questionid`, `studentid`, `examinationid`, `answerstatus`, `answerid`, `reg_date`, `selectedoption`, `correctness`) VALUES
(1, 'd645920e395fedad7bbbed0eca3fe2e0', 'd645920e395fedad7bbbed0eca3fe2e0', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', 'cfcd208495d565ef66e7dff9f98764da', '2021-04-15 23:58:20', 'A', 'wrong'),
(2, 'f7177163c833dff4b38fc8d2872f1ec6', 'd645920e395fedad7bbbed0eca3fe2e0', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', 'c4ca4238a0b923820dcc509a6f75849b', '2021-04-15 23:58:26', 'A', 'correct'),
(3, 'a1d0c6e83f027327d8461063f4ac58a6', 'd645920e395fedad7bbbed0eca3fe2e0', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', 'c81e728d9d4c2f636f067f89cc14862c', '2021-04-15 23:58:32', 'A', 'correct'),
(4, '3416a75f4cea9109507cacd8e2f2aefc', 'd645920e395fedad7bbbed0eca3fe2e0', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-04-15 23:58:40', 'B', 'correct'),
(5, '17e62166fc8586dfa4d1bc0e1742c08b', 'd645920e395fedad7bbbed0eca3fe2e0', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', 'a87ff679a2f3e71d9181a67b7542122c', '2021-04-15 23:58:53', 'B', 'correct'),
(6, '6c8349cc7260ae62e3b1396831a8398f', 'd645920e395fedad7bbbed0eca3fe2e0', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-04-15 23:58:59', 'A', 'correct'),
(7, '17e62166fc8586dfa4d1bc0e1742c08b', 'a1d0c6e83f027327d8461063f4ac58a6', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', '1679091c5a880faf6fb5e6087eb1b2dc', '2021-04-22 17:39:01', 'A', 'wrong'),
(8, 'd645920e395fedad7bbbed0eca3fe2e0', 'a1d0c6e83f027327d8461063f4ac58a6', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', '8f14e45fceea167a5a36dedd4bea2543', '2021-04-22 17:39:18', 'C', 'correct'),
(9, 'a1d0c6e83f027327d8461063f4ac58a6', 'a1d0c6e83f027327d8461063f4ac58a6', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', 'c9f0f895fb98ab9159f51fd0297e236d', '2021-04-22 17:41:24', 'A', 'correct'),
(10, '3416a75f4cea9109507cacd8e2f2aefc', 'a1d0c6e83f027327d8461063f4ac58a6', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', '45c48cce2e2d7fbdea1afc51c7c6ad26', '2021-04-22 17:41:31', 'A', 'wrong'),
(11, 'f7177163c833dff4b38fc8d2872f1ec6', 'a1d0c6e83f027327d8461063f4ac58a6', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', 'd3d9446802a44259755d38e6d163e820', '2021-04-22 17:41:38', 'A', 'correct'),
(12, '6c8349cc7260ae62e3b1396831a8398f', 'a1d0c6e83f027327d8461063f4ac58a6', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'answered', '6512bd43d9caa6e02c990b0a82652dca', '2021-04-22 17:41:43', 'A', 'correct'),
(13, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', 'c20ad4d76fe97759aa27a0c99bff6710', '2021-04-26 20:36:50', NULL, NULL),
(14, '2838023a778dfaecdc212708f721b788', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'c51ce410c124a10e0db5e4b97fc2af39', '2021-04-26 20:38:32', 'A', 'wrong'),
(15, 'b53b3a3d6ab90ce0268229151c9bde11', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'aab3238922bcc25a6f606eb525ffdc56', '2021-04-26 20:39:08', 'D', 'wrong'),
(16, 'c0c7c76d30bd3dcaefc96f40275bdc0a', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '9bf31c7ff062936a96d3c8bd1f8f2ff3', '2021-04-26 20:39:45', 'A', 'correct'),
(17, 'f457c545a9ded88f18ecee47145a72c0', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'c74d97b01eae257e44aa9d5bade97baf', '2021-04-26 20:40:32', 'A', 'wrong'),
(18, 'a684eceee76fc522773286a895bc8436', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '70efdf2ec9b086079795c442636b55fb', '2021-04-26 20:36:51', NULL, NULL),
(19, '9a1158154dfa42caddbd0694a4e9bdc8', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '6f4922f45568161a8cdf4ad2299f6d23', '2021-04-26 20:41:44', 'D', 'wrong'),
(20, 'd9d4f495e875a2e075a1a4a6e1b9770f', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '1f0e3dad99908345f7439f8ffabdffc4', '2021-04-26 20:36:51', NULL, NULL),
(21, 'd82c8d1619ad8176d665453cfb2e55f0', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '98f13708210194c475687be6106a3b84', '2021-04-26 20:36:51', NULL, NULL),
(22, '642e92efb79421734881b53e1e1b18b6', '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '3c59dc048e8850243be8079a5c74d079', '2021-04-26 20:36:51', NULL, NULL),
(23, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'b6d767d2f8ed5d21a44b0e5886680cb9', '2021-04-26 20:53:43', 'A', 'wrong'),
(24, 'b53b3a3d6ab90ce0268229151c9bde11', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '37693cfc748049e45d87b8c7d8b9aacd', '2021-04-26 20:54:17', 'E', 'correct'),
(25, 'f457c545a9ded88f18ecee47145a72c0', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '1ff1de774005f8da13f42943881c655f', '2021-04-26 20:54:45', 'C', 'wrong'),
(26, 'd9d4f495e875a2e075a1a4a6e1b9770f', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '8e296a067a37563370ded05f5a3bf3ec', '2021-04-26 20:55:17', 'C', 'wrong'),
(27, 'a684eceee76fc522773286a895bc8436', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '4e732ced3463d06de0ca9a15b6153677', '2021-04-26 20:55:46', 'A', 'wrong'),
(28, '2838023a778dfaecdc212708f721b788', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '02e74f10e0327ad868d138f2b4fdd6f0', '2021-04-26 20:56:24', 'E', 'wrong'),
(29, 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '33e75ff09dd601bbe69f351039152189', '2021-04-26 20:57:11', 'C', 'wrong'),
(30, '9a1158154dfa42caddbd0694a4e9bdc8', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '6ea9ab1baa0efb9e19094440c317e21b', '2021-04-26 20:57:54', 'B', 'wrong'),
(31, 'd82c8d1619ad8176d665453cfb2e55f0', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '34173cb38f07f89ddbebc2ac9128303f', '2021-04-26 20:58:33', 'B', 'wrong'),
(32, '642e92efb79421734881b53e1e1b18b6', 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'c16a5320fa475530d9583c34fd356ef5', '2021-04-26 20:59:18', 'B', 'correct'),
(33, 'd9d4f495e875a2e075a1a4a6e1b9770f', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '6364d3f0f495b6ab9dcf8d3b5c6e0b01', '2021-04-29 15:04:24', 'B', 'wrong'),
(34, 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '182be0c5cdcd5072bb1864cdee4d3d6e', '2021-04-29 15:04:30', 'A', 'correct'),
(35, 'd82c8d1619ad8176d665453cfb2e55f0', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'e369853df766fa44e1ed0ff613f563bd', '2021-04-29 15:04:39', 'A', 'wrong'),
(36, '642e92efb79421734881b53e1e1b18b6', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '1c383cd30b7c298ab50293adfecb7b18', '2021-04-29 15:04:46', 'B', 'correct'),
(37, 'a684eceee76fc522773286a895bc8436', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '19ca14e7ea6328a42e0eb13d585e4c22', '2021-04-29 15:04:53', 'A', 'wrong'),
(38, 'f457c545a9ded88f18ecee47145a72c0', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'a5bfc9e07964f8dddeb95fc584cd965d', '2021-04-29 15:05:05', 'A', 'wrong'),
(39, '2838023a778dfaecdc212708f721b788', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'a5771bce93e200c36f7cd9dfd0e5deaa', '2021-04-29 15:05:10', 'C', 'correct'),
(40, '9a1158154dfa42caddbd0694a4e9bdc8', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'd67d8ab4f4c10bf22aa353e27879133c', '2021-04-29 15:05:16', 'B', 'wrong'),
(41, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'd645920e395fedad7bbbed0eca3fe2e0', '2021-04-29 15:05:27', 'B', 'correct'),
(42, 'b53b3a3d6ab90ce0268229151c9bde11', 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '3416a75f4cea9109507cacd8e2f2aefc', '2021-04-29 15:05:37', 'E', 'correct'),
(43, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'a1d0c6e83f027327d8461063f4ac58a6', '2021-05-24 11:52:18', 'A', 'wrong'),
(44, 'b53b3a3d6ab90ce0268229151c9bde11', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '17e62166fc8586dfa4d1bc0e1742c08b', '2021-05-24 09:41:07', 'D', 'wrong'),
(45, 'd82c8d1619ad8176d665453cfb2e55f0', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'f7177163c833dff4b38fc8d2872f1ec6', '2021-05-24 11:53:50', 'A', 'wrong'),
(46, '9a1158154dfa42caddbd0694a4e9bdc8', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '6c8349cc7260ae62e3b1396831a8398f', '2021-05-24 11:52:26', 'B', 'wrong'),
(47, '642e92efb79421734881b53e1e1b18b6', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'd9d4f495e875a2e075a1a4a6e1b9770f', '2021-05-24 11:52:29', 'C', 'wrong'),
(48, 'f457c545a9ded88f18ecee47145a72c0', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '67c6a1e7ce56d3d6fa748ab6d9af3fd7', '2021-05-24 11:54:00', 'B', 'wrong'),
(49, 'd9d4f495e875a2e075a1a4a6e1b9770f', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '642e92efb79421734881b53e1e1b18b6', '2021-05-24 11:54:06', 'A', 'correct'),
(50, '2838023a778dfaecdc212708f721b788', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'f457c545a9ded88f18ecee47145a72c0', '2021-05-24 11:54:13', 'C', 'correct'),
(51, 'c0c7c76d30bd3dcaefc96f40275bdc0a', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'c0c7c76d30bd3dcaefc96f40275bdc0a', '2021-05-24 11:54:18', 'B', 'wrong'),
(52, 'a684eceee76fc522773286a895bc8436', '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '2838023a778dfaecdc212708f721b788', '2021-05-24 11:52:36', 'A', 'wrong'),
(53, '2838023a778dfaecdc212708f721b788', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '9a1158154dfa42caddbd0694a4e9bdc8', '2021-05-08 07:05:22', 'C', 'correct'),
(54, '642e92efb79421734881b53e1e1b18b6', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'd82c8d1619ad8176d665453cfb2e55f0', '2021-05-08 07:05:48', 'B', 'correct'),
(55, 'b53b3a3d6ab90ce0268229151c9bde11', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'a684eceee76fc522773286a895bc8436', '2021-05-08 07:09:31', 'B', 'wrong'),
(56, 'c0c7c76d30bd3dcaefc96f40275bdc0a', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'b53b3a3d6ab90ce0268229151c9bde11', '2021-05-08 07:10:05', 'A', 'correct'),
(57, 'a684eceee76fc522773286a895bc8436', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '9f61408e3afb633e50cdf1b20de6f466', '2021-05-08 07:13:04', 'C', 'wrong'),
(58, 'd82c8d1619ad8176d665453cfb2e55f0', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '72b32a1f754ba1c09b3695e0cb6cde7f', '2021-05-10 15:03:37', 'D', 'correct'),
(59, '9a1158154dfa42caddbd0694a4e9bdc8', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '66f041e16a60928b05a7e228a89c3799', '2021-05-07 12:22:31', NULL, NULL),
(60, 'f457c545a9ded88f18ecee47145a72c0', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '093f65e080a295f8076b1c5722a46aa2', '2021-05-07 12:22:31', NULL, NULL),
(61, 'd9d4f495e875a2e075a1a4a6e1b9770f', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '072b030ba126b2f4b2374f342be9ed44', '2021-05-07 12:22:31', NULL, NULL),
(62, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '7f39f8317fbdb1988ef4c628eba02591', '2021-05-07 12:22:31', NULL, NULL),
(63, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '44f683a84163b3523afe57c2e008bc8c', '2021-05-31 11:45:40', 'A', 'wrong'),
(64, 'd9d4f495e875a2e075a1a4a6e1b9770f', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '03afdbd66e7929b125f8597834fa83a4', '2021-05-31 11:45:46', 'C', 'wrong'),
(65, 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', 'ea5d2f1c4608232e07d3aa3d998e5135', '2021-05-31 11:40:03', NULL, NULL),
(66, 'd82c8d1619ad8176d665453cfb2e55f0', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', 'fc490ca45c00b1249bbe3554a4fdf6fb', '2021-05-31 11:40:03', NULL, NULL),
(67, '2838023a778dfaecdc212708f721b788', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '3295c76acbf4caaed33c36b1b5fc2cb1', '2021-05-31 11:46:12', 'C', 'correct'),
(68, 'f457c545a9ded88f18ecee47145a72c0', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', '735b90b4568125ed6c3f678819b6e058', '2021-05-31 11:46:19', 'B', 'wrong'),
(69, '9a1158154dfa42caddbd0694a4e9bdc8', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'answered', 'a3f390d88e4c41f2747bfa2f1b5f87db', '2021-05-31 11:48:35', 'A', 'wrong'),
(70, '9f61408e3afb633e50cdf1b20de6f466', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '14bfa6bb14875e45bba028a21ed38046', '2021-05-31 11:40:03', NULL, NULL),
(71, 'a684eceee76fc522773286a895bc8436', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '7cbbc409ec990f19c78c75bd1e06f215', '2021-05-31 11:40:03', NULL, NULL),
(72, '642e92efb79421734881b53e1e1b18b6', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', 'e2c420d928d4bf8ce0ff2ec19b371514', '2021-05-31 11:40:04', NULL, NULL),
(73, 'b53b3a3d6ab90ce0268229151c9bde11', 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', 'unanswered', '32bb90e8976aab5298d5da10fe66f21d', '2021-05-31 11:40:04', NULL, NULL),
(89, '14bfa6bb14875e45bba028a21ed38046', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '2a38a4a9316c49e5a833517c45d31070', '2021-07-07 19:30:53', 'E', 'wrong'),
(90, 'e2c420d928d4bf8ce0ff2ec19b371514', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '7647966b7343c29048673252e490f736', '2021-07-07 19:31:08', 'B', 'wrong'),
(91, '7cbbc409ec990f19c78c75bd1e06f215', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '8613985ec49eb8f757ae6439e879bb2a', '2021-07-07 19:31:47', 'A', 'wrong'),
(92, '7f39f8317fbdb1988ef4c628eba02591', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '54229abfcfa5649e7003b83dd4755294', '2021-07-07 19:32:08', 'A', 'wrong'),
(93, '44f683a84163b3523afe57c2e008bc8c', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '92cc227532d17e56e07902b254dfad10', '2021-07-07 19:32:28', 'A', 'wrong'),
(94, '72b32a1f754ba1c09b3695e0cb6cde7f', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '98dce83da57b0395e163467c9dae521b', '2021-07-07 19:33:11', 'A', 'wrong'),
(95, '735b90b4568125ed6c3f678819b6e058', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'f4b9ec30ad9f68f89b29639786cb62ef', '2021-07-07 19:33:32', 'A', 'wrong'),
(96, '3295c76acbf4caaed33c36b1b5fc2cb1', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '812b4ba287f5ee0bc9d43bbf5bbe87fb', '2021-07-07 19:33:48', 'B', 'wrong'),
(97, '03afdbd66e7929b125f8597834fa83a4', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '26657d5ff9020d2abefe558796b99584', '2021-07-07 19:34:23', 'B', 'correct'),
(98, '66f041e16a60928b05a7e228a89c3799', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'e2ef524fbf3d9fe611d5a8e90fefdc9c', '2021-07-07 19:34:38', 'B', 'wrong'),
(99, 'a3f390d88e4c41f2747bfa2f1b5f87db', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'ed3d2c21991e3bef5e069713af9fa6ca', '2021-07-07 19:35:04', 'B', 'wrong'),
(100, 'ea5d2f1c4608232e07d3aa3d998e5135', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'ac627ab1ccbdb62ec96e702f07f6425b', '2021-07-07 19:37:43', 'B', 'wrong'),
(101, '093f65e080a295f8076b1c5722a46aa2', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'f899139df5e1059396431415e770c6dd', '2021-07-07 19:35:51', 'A', 'correct'),
(102, 'fc490ca45c00b1249bbe3554a4fdf6fb', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '38b3eff8baf56627478ec76a704e9b52', '2021-07-07 19:36:08', 'B', 'correct'),
(103, '072b030ba126b2f4b2374f342be9ed44', '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'ec8956637a99787bd197eacd77acce5e', '2021-07-07 19:38:54', 'B', 'wrong'),
(104, '3295c76acbf4caaed33c36b1b5fc2cb1', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '6974ce5ac660610b44d9b9fed0ff9548', '2021-07-08 07:54:43', 'C', 'correct'),
(105, '72b32a1f754ba1c09b3695e0cb6cde7f', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'c9e1074f5b3f9fc8ea15d152add07294', '2021-07-08 07:55:13', 'B', 'wrong'),
(106, '735b90b4568125ed6c3f678819b6e058', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '65b9eea6e1cc6bb9f0cd2a47751a186f', '2021-07-08 07:56:01', 'A', 'wrong'),
(107, '44f683a84163b3523afe57c2e008bc8c', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'f0935e4cd5920aa6c7c996a5ee53a70f', '2021-07-08 07:56:36', 'C', 'correct'),
(108, '7cbbc409ec990f19c78c75bd1e06f215', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'a97da629b098b75c294dffdc3e463904', '2021-07-08 07:57:23', 'C', 'wrong'),
(109, '093f65e080a295f8076b1c5722a46aa2', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'a3c65c2974270fd093ee8a9bf8ae7d0b', '2021-07-08 07:57:41', 'A', 'correct'),
(110, '03afdbd66e7929b125f8597834fa83a4', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '2723d092b63885e0d7c260cc007e8b9d', '2021-07-08 07:58:45', 'D', 'wrong'),
(111, 'fc490ca45c00b1249bbe3554a4fdf6fb', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '5f93f983524def3dca464469d2cf9f3e', '2021-07-08 07:59:04', 'B', 'correct'),
(112, '7f39f8317fbdb1988ef4c628eba02591', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '698d51a19d8a121ce581499d7b701668', '2021-07-08 07:59:36', 'A', 'wrong'),
(113, '14bfa6bb14875e45bba028a21ed38046', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '7f6ffaa6bb0b408017b62254211691b5', '2021-07-08 07:59:51', 'B', 'wrong'),
(114, 'ea5d2f1c4608232e07d3aa3d998e5135', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '73278a4a86960eeb576a8fd4c9ec6997', '2021-07-08 08:00:51', 'D', 'wrong'),
(115, '66f041e16a60928b05a7e228a89c3799', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '5fd0b37cd7dbbb00f97ba6ce92bf5add', '2021-07-08 08:01:07', 'A', 'correct'),
(116, '072b030ba126b2f4b2374f342be9ed44', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '2b44928ae11fb9384c4cf38708677c48', '2021-07-08 08:01:38', 'B', 'wrong'),
(117, 'e2c420d928d4bf8ce0ff2ec19b371514', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'c45147dee729311ef5b5c3003946c48f', '2021-07-08 08:02:01', 'B', 'wrong'),
(118, 'a3f390d88e4c41f2747bfa2f1b5f87db', 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'eb160de1de89d9058fcb0b968dbbbd68', '2021-07-08 08:02:32', 'C', 'correct'),
(119, '093f65e080a295f8076b1c5722a46aa2', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '5ef059938ba799aaa845e1c2e8a762bd', '2021-07-08 08:29:19', 'A', 'correct'),
(120, '735b90b4568125ed6c3f678819b6e058', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '07e1cd7dca89a1678042477183b7ac3f', '2021-07-08 08:30:18', 'D', 'wrong'),
(121, 'e2c420d928d4bf8ce0ff2ec19b371514', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'da4fb5c6e93e74d3df8527599fa62642', '2021-07-08 08:30:40', 'A', 'correct'),
(122, '72b32a1f754ba1c09b3695e0cb6cde7f', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '4c56ff4ce4aaf9573aa5dff913df997a', '2021-07-08 08:31:07', 'E', 'correct'),
(123, '3295c76acbf4caaed33c36b1b5fc2cb1', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'a0a080f42e6f13b3a2df133f073095dd', '2021-07-08 08:31:22', 'B', 'wrong'),
(124, '44f683a84163b3523afe57c2e008bc8c', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '202cb962ac59075b964b07152d234b70', '2021-07-08 08:31:44', 'B', 'wrong'),
(125, 'fc490ca45c00b1249bbe3554a4fdf6fb', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'c8ffe9a587b126f152ed3d89a146b445', '2021-07-08 08:33:15', 'D', 'wrong'),
(126, '7f39f8317fbdb1988ef4c628eba02591', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '3def184ad8f4755ff269862ea77393dd', '2021-07-08 08:38:59', 'C', 'correct'),
(127, '14bfa6bb14875e45bba028a21ed38046', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '069059b7ef840f0c74a814ec9237b6ec', '2021-07-08 08:34:33', 'C', 'correct'),
(128, '03afdbd66e7929b125f8597834fa83a4', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'ec5decca5ed3d6b8079e2e7e7bacc9f2', '2021-07-08 08:34:52', 'B', 'correct'),
(129, '072b030ba126b2f4b2374f342be9ed44', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '76dc611d6ebaafc66cc0879c71b5db5c', '2021-07-08 08:36:17', 'D', 'wrong'),
(130, '7cbbc409ec990f19c78c75bd1e06f215', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'd1f491a404d6854880943e5c3cd9ca25', '2021-07-08 08:36:38', 'B', 'correct'),
(131, 'ea5d2f1c4608232e07d3aa3d998e5135', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '9b8619251a19057cff70779273e95aa6', '2021-07-08 08:36:46', 'D', 'correct'),
(132, 'a3f390d88e4c41f2747bfa2f1b5f87db', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '1afa34a7f984eeabdbb0a7d494132ee5', '2021-07-08 08:37:11', 'C', 'correct'),
(133, '66f041e16a60928b05a7e228a89c3799', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '65ded5353c5ee48d0b7d48c591b8f430', '2021-07-08 08:37:37', 'A', 'correct'),
(134, 'fc490ca45c00b1249bbe3554a4fdf6fb', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '9fc3d7152ba9336a670e36d0ed79bc43', '2021-07-08 08:33:40', 'B', 'correct'),
(135, '44f683a84163b3523afe57c2e008bc8c', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '02522a2b2726fb0a03bb19f2d8d9524d', '2021-07-08 08:34:24', 'C', 'correct'),
(136, '14bfa6bb14875e45bba028a21ed38046', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '7f1de29e6da19d22b51c68001e7e0e54', '2021-07-08 08:34:54', 'C', 'correct'),
(137, '72b32a1f754ba1c09b3695e0cb6cde7f', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '42a0e188f5033bc65bf8d78622277c4e', '2021-07-08 08:35:47', 'E', 'correct'),
(138, '735b90b4568125ed6c3f678819b6e058', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '3988c7f88ebcb58c6ce932b957b6f332', '2021-07-08 08:37:10', 'A', 'wrong'),
(139, '072b030ba126b2f4b2374f342be9ed44', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '013d407166ec4fa56eb1e1f8cbe183b9', '2021-07-08 08:38:14', 'D', 'wrong'),
(140, '7cbbc409ec990f19c78c75bd1e06f215', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', 'e00da03b685a0dd18fb6a08af0923de0', '2021-07-08 08:38:44', 'C', 'wrong'),
(141, '3295c76acbf4caaed33c36b1b5fc2cb1', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '1385974ed5904a438616ff7bdb3f7439', '2021-07-08 08:39:35', 'B', 'wrong'),
(142, 'ea5d2f1c4608232e07d3aa3d998e5135', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'answered', '0f28b5d49b3020afeecd95b4009adf4c', '2021-07-08 08:39:51', 'D', 'correct'),
(143, '03afdbd66e7929b125f8597834fa83a4', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'unanswered', 'a8baa56554f96369ab93e4f3bb068c22', '2021-07-08 08:32:41', NULL, NULL),
(144, '66f041e16a60928b05a7e228a89c3799', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'unanswered', '903ce9225fca3e988c2af215d4e544d3', '2021-07-08 08:32:41', NULL, NULL),
(145, 'a3f390d88e4c41f2747bfa2f1b5f87db', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'unanswered', '0a09c8844ba8f0936c20bd791130d6b6', '2021-07-08 08:32:41', NULL, NULL),
(146, '7f39f8317fbdb1988ef4c628eba02591', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'unanswered', '2b24d495052a8ce66358eb576b8912c8', '2021-07-08 08:32:41', NULL, NULL),
(147, '093f65e080a295f8076b1c5722a46aa2', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'unanswered', 'a5e00132373a7031000fd987a3c9f87b', '2021-07-08 08:32:41', NULL, NULL),
(148, 'e2c420d928d4bf8ce0ff2ec19b371514', '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'unanswered', '8d5e957f297893487bd98fa830fa6413', '2021-07-08 08:32:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studentstartexamination`
--

CREATE TABLE `studentstartexamination` (
  `id` int(11) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `examinationid` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL,
  `examinationtype` varchar(255) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `active_status` int(11) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `grade` varchar(255) DEFAULT NULL,
  `totalquestionanswered` int(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `totalquestions` int(11) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `capture_status` int(11) DEFAULT NULL,
  `captured_photo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`captured_photo`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentstartexamination`
--

INSERT INTO `studentstartexamination` (`id`, `studentid`, `examinationid`, `classid`, `examinationtype`, `starttime`, `endtime`, `duration`, `status`, `active_status`, `reg_date`, `grade`, `totalquestionanswered`, `remark`, `totalquestions`, `score`, `photo`, `capture_status`, `captured_photo`) VALUES
(1, 'd645920e395fedad7bbbed0eca3fe2e0', '45c48cce2e2d7fbdea1afc51c7c6ad26', '8f14e45fceea167a5a36dedd4bea2543', 'cbt', '2021-04-16 00:58:04', '2021-04-16 01:02:04', '4', 'submitted', 0, '2021-04-15 23:59:05', 'A', 6, 'Excellent', 6, '82', '../camera_monitor_photo/adesina-oluokun-kabiru_aokabiru_ss-1_Mid-term-test_start_2021-04-16 00:58:04_end_2021-04-16 01:02:04.png', NULL, NULL),
(2, 'a1d0c6e83f027327d8461063f4ac58a6', '45c48cce2e2d7fbdea1afc51c7c6ad26', '8f14e45fceea167a5a36dedd4bea2543', 'cbt', '2021-04-22 18:38:18', '2021-04-22 18:42:18', '4', 'submitted', 0, '2021-04-22 17:41:59', 'A', 6, 'Excellent', 6, '73', '', NULL, NULL),
(3, '17e62166fc8586dfa4d1bc0e1742c08b', 'c20ad4d76fe97759aa27a0c99bff6710', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'cbt', '2021-04-26 21:36:50', '2021-04-26 21:41:50', '5', 'submitted', 0, '2021-04-26 20:41:50', 'F', 5, 'Very Poor', 10, '7', '', NULL, NULL),
(4, 'f7177163c833dff4b38fc8d2872f1ec6', 'c20ad4d76fe97759aa27a0c99bff6710', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'cbt', '2021-04-26 21:52:28', '2021-04-26 22:02:28', '10', 'submitted', 0, '2021-04-26 21:01:22', 'F', 10, 'Very Poor', 10, '24', '', NULL, NULL),
(5, 'a1d0c6e83f027327d8461063f4ac58a6', 'c20ad4d76fe97759aa27a0c99bff6710', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'cbt', '2021-04-29 15:49:06', '2021-05-31 13:12:03', '3', 'starting', 1, '2021-05-31 11:44:24', 'D', 10, 'Poor', 10, '45', '', NULL, NULL),
(6, '3416a75f4cea9109507cacd8e2f2aefc', 'c20ad4d76fe97759aa27a0c99bff6710', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'cbt', '2021-05-04 22:44:34', '2021-05-24 13:00:43', '3', 'submitted', 0, '2021-05-24 12:03:04', 'F', 10, 'Very Poor', 11, '15', '', NULL, '{\"1\":\"oluokun-kabiru-adesina_okadesina59_1621849197.png\",\"2\":\"oluokun-kabiru-adesina_okadesina59_1621849245.png\",\"3\":\"oluokun-kabiru-adesina_okadesina59_1621849272.png\",\"4\":\"oluokun-kabiru-adesina_okadesina59_1621856493.png\"}'),
(8, '6c8349cc7260ae62e3b1396831a8398f', 'c20ad4d76fe97759aa27a0c99bff6710', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'cbt', '2021-05-14 14:55:12', '2021-05-31 13:12:03', '30', 'starting', 1, '2021-05-31 11:44:24', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(9, '3416a75f4cea9109507cacd8e2f2aefc', 'c51ce410c124a10e0db5e4b97fc2af39', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'theory', '2021-05-24 13:01:29', '2021-05-24 13:01:29', NULL, 'starting', 0, '2021-05-24 11:46:14', 'B', NULL, 'Very Good', NULL, '66', NULL, NULL, NULL),
(10, '3416a75f4cea9109507cacd8e2f2aefc', 'aab3238922bcc25a6f606eb525ffdc56', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'theory', '2021-05-24 13:02:39', '2021-05-24 13:02:39', NULL, 'submitted', 0, '2021-05-24 11:02:39', 'A', NULL, 'Excellent', NULL, '85', NULL, NULL, NULL),
(11, 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c20ad4d76fe97759aa27a0c99bff6710', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'cbt', '2021-05-31 12:40:03', '2021-05-31 13:14:03', '30', 'starting', 1, '2021-09-18 16:03:52', NULL, NULL, NULL, NULL, NULL, '', NULL, '{\"1\":\"Liadi-Kafayat-Olabisi_lkolabisi_1622461334.png\",\"3\":\"Liadi-Kafayat-Olabisi_lkolabisi_1622461736.png\"}'),
(13, '642e92efb79421734881b53e1e1b18b6', 'c74d97b01eae257e44aa9d5bade97baf', 'd3d9446802a44259755d38e6d163e820', 'cbt', '2021-07-07 20:29:58', '2021-07-07 20:37:58', '5', 'submitted', 0, '2021-07-07 19:38:58', 'F', 15, 'Very Poor', 15, '15', '', NULL, NULL),
(14, 'f457c545a9ded88f18ecee47145a72c0', 'c74d97b01eae257e44aa9d5bade97baf', 'd3d9446802a44259755d38e6d163e820', 'cbt', '2021-07-08 08:54:01', '2021-07-08 09:02:01', '5', 'submitted', 0, '2021-07-08 08:02:41', 'F', 15, 'Very Poor', 15, '38', '', NULL, NULL),
(15, 'c0c7c76d30bd3dcaefc96f40275bdc0a', 'c74d97b01eae257e44aa9d5bade97baf', 'd3d9446802a44259755d38e6d163e820', 'cbt', '2021-07-08 09:28:59', '2021-07-08 09:40:39', '5', 'submitted', 0, '2021-07-08 08:41:37', 'B', 15, 'Very Good', 15, '67', '', NULL, '{\"1\":\"Ogunjimi-Thomas-Olanrewaju_otolanrewaju0_1625733181.png\",\"2\":\"Ogunjimi-Thomas-Olanrewaju_otolanrewaju0_1625733247.png\",\"3\":\"Ogunjimi-Thomas-Olanrewaju_otolanrewaju0_1625733256.png\"}'),
(16, '2838023a778dfaecdc212708f721b788', 'c74d97b01eae257e44aa9d5bade97baf', 'd3d9446802a44259755d38e6d163e820', 'cbt', '2021-07-08 09:32:39', '2021-07-08 09:40:39', '5', 'submitted', 0, '2021-07-08 08:40:39', 'F', 9, 'Very Poor', 15, '33', '', NULL, '{\"1\":\"liadi-kafayat-olabisi_lkolabisi1_1625733420.\"}'),
(19, '17e62166fc8586dfa4d1bc0e1742c08b', 'aab3238922bcc25a6f606eb525ffdc56', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'theory', '2021-10-08 20:59:01', '2021-10-08 20:59:01', NULL, 'submitted', 0, '2021-10-08 18:59:01', 'A', NULL, 'Excellent', NULL, '70', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subjectname` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL,
  `subjectid` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subjectname`, `classid`, `subjectid`, `reg_date`) VALUES
(7, 'Mathematics', 'a87ff679a2f3e71d9181a67b7542122c', '1679091c5a880faf6fb5e6087eb1b2dc', '2021-01-25 01:30:04'),
(10, 'biology', 'e4da3b7fbbce2345d7772b0674a318d5', '45c48cce2e2d7fbdea1afc51c7c6ad26', '2021-03-11 10:18:39'),
(12, 'mathematics', 'e4da3b7fbbce2345d7772b0674a318d5', '6512bd43d9caa6e02c990b0a82652dca', '2021-03-12 05:43:41'),
(8, 'Computer Science', 'a87ff679a2f3e71d9181a67b7542122c', '8f14e45fceea167a5a36dedd4bea2543', '2021-01-25 01:30:15'),
(16, 'English', '45c48cce2e2d7fbdea1afc51c7c6ad26', '9bf31c7ff062936a96d3c8bd1f8f2ff3', '2021-05-24 11:02:22'),
(6, 'Basic Science', 'a87ff679a2f3e71d9181a67b7542122c', 'a87ff679a2f3e71d9181a67b7542122c', '2021-01-25 01:26:16'),
(15, 'mathematics', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'aab3238922bcc25a6f606eb525ffdc56', '2021-04-26 20:34:37'),
(13, 'mathematics', '8f14e45fceea167a5a36dedd4bea2543', 'c20ad4d76fe97759aa27a0c99bff6710', '2021-03-12 05:46:46'),
(2, 'english', 'c81e728d9d4c2f636f067f89cc14862c', 'c4ca4238a0b923820dcc509a6f75849b', '2021-01-21 10:07:51'),
(14, 'chemistry', '8f14e45fceea167a5a36dedd4bea2543', 'c51ce410c124a10e0db5e4b97fc2af39', '2021-03-12 05:47:03'),
(17, 'MTH 101', 'd3d9446802a44259755d38e6d163e820', 'c74d97b01eae257e44aa9d5bade97baf', '2021-03-11 17:57:45'),
(3, 'mathematics', 'c4ca4238a0b923820dcc509a6f75849b', 'c81e728d9d4c2f636f067f89cc14862c', '2021-01-21 10:08:05'),
(9, 'Computer programming', 'c81e728d9d4c2f636f067f89cc14862c', 'c9f0f895fb98ab9159f51fd0297e236d', '2021-01-26 23:17:39'),
(11, 'physics', 'e4da3b7fbbce2345d7772b0674a318d5', 'd3d9446802a44259755d38e6d163e820', '2021-03-11 10:24:20'),
(4, 'computer science', 'c81e728d9d4c2f636f067f89cc14862c', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-01-21 10:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `teacherid` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `classid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `userid`, `teacherid`, `reg_date`, `classid`) VALUES
(7, 'd645920e395fedad7bbbed0eca3fe2e0', '1679091c5a880faf6fb5e6087eb1b2dc', '2021-03-11 11:15:52', 'e4da3b7fbbce2345d7772b0674a318d5'),
(10, '2838023a778dfaecdc212708f721b788', '45c48cce2e2d7fbdea1afc51c7c6ad26', '2021-04-11 04:12:13', 'c81e728d9d4c2f636f067f89cc14862c'),
(12, 'd82c8d1619ad8176d665453cfb2e55f0', '6512bd43d9caa6e02c990b0a82652dca', '2021-05-10 16:24:10', '45c48cce2e2d7fbdea1afc51c7c6ad26'),
(8, '3416a75f4cea9109507cacd8e2f2aefc', '8f14e45fceea167a5a36dedd4bea2543', '2021-03-12 05:39:13', 'e4da3b7fbbce2345d7772b0674a318d5'),
(5, 'b6d767d2f8ed5d21a44b0e5886680cb9', 'a87ff679a2f3e71d9181a67b7542122c', '2021-01-25 13:53:18', 'a87ff679a2f3e71d9181a67b7542122c'),
(13, 'ea5d2f1c4608232e07d3aa3d998e5135', 'c20ad4d76fe97759aa27a0c99bff6710', '2021-05-31 11:33:19', '45c48cce2e2d7fbdea1afc51c7c6ad26'),
(2, '8f14e45fceea167a5a36dedd4bea2543', 'c4ca4238a0b923820dcc509a6f75849b', '2021-01-21 10:09:36', 'c81e728d9d4c2f636f067f89cc14862c'),
(3, 'c20ad4d76fe97759aa27a0c99bff6710', 'c81e728d9d4c2f636f067f89cc14862c', '2021-01-25 01:28:25', 'a87ff679a2f3e71d9181a67b7542122c'),
(9, 'd9d4f495e875a2e075a1a4a6e1b9770f', 'c9f0f895fb98ab9159f51fd0297e236d', '2021-03-12 06:44:59', '8f14e45fceea167a5a36dedd4bea2543'),
(1, '1679091c5a880faf6fb5e6087eb1b2dc', 'cfcd208495d565ef66e7dff9f98764da', '2021-01-21 10:09:17', 'c81e728d9d4c2f636f067f89cc14862c'),
(11, '9a1158154dfa42caddbd0694a4e9bdc8', 'd3d9446802a44259755d38e6d163e820', '2021-04-11 09:21:12', 'a87ff679a2f3e71d9181a67b7542122c'),
(6, '19ca14e7ea6328a42e0eb13d585e4c22', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-03-11 10:09:12', 'a87ff679a2f3e71d9181a67b7542122c');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `active_status` int(11) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `schoolid` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `surname`, `firstname`, `lastname`, `username`, `password`, `userid`, `active_status`, `role`, `reg_date`, `phone`, `email`, `schoolid`, `dob`, `avatar`) VALUES
(28, 'kb', 'the', 'vboy', 'ktvboy35', '8fc42c6ddf9966db3b09e84365034357', '02e74f10e0327ad868d138f2b4fdd6f0', 0, 'student', '2021-05-04 13:59:51', NULL, NULL, NULL, NULL, NULL),
(64, 'vilage', 'boy', 'kabir', 'vbkabir0', '1a699ad5e06aa8a6db3bcf9cfb2f00f2', '03afdbd66e7929b125f8597834fa83a4', 0, 'student', '2021-05-14 14:00:42', NULL, NULL, NULL, NULL, '../students_avatar/vilageboykabir_195_1620389814.jpg'),
(63, 'admin2', 'oluokun', 'ade', 'admin0', '62fb43096050b23cdcd8b3fb86f67e42', '093f65e080a295f8076b1c5722a46aa2', NULL, 'admin', '2021-05-03 15:48:44', NULL, NULL, '2', NULL, NULL),
(71, 'Ogunjimi', 'Thomas', 'Olanrewaju', 'otolanrewaju0', 'ef6e65efc188e7dffd7335b646a85a21', '14bfa6bb14875e45bba028a21ed38046', 0, 'student', '2021-07-08 09:00:52', NULL, NULL, NULL, NULL, '../students_avatar/ogunjimithomasolanrewaju_181_1625732574.jpg'),
(7, 'oluokun', 'kabir', 'adesina', 'okadesina57', 'c1621fbecc04b7b7911b982fe585c8d8', '1679091c5a880faf6fb5e6087eb1b2dc', NULL, 'teacher', '2021-04-09 19:19:02', NULL, NULL, NULL, NULL, NULL),
(34, 'oluokun', 'kabiru', 'adesina', 'villagecbt', '813f8ce580f276558ce9e5093468b1ab', '182be0c5cdcd5072bb1864cdee4d3d6e', NULL, 'admin', '2021-04-09 19:18:59', NULL, NULL, 'cfcd208495d565ef66e7dff9f98764da', NULL, NULL),
(37, 'adeegbe', 'joshua', 'femi', 'ajfemi', 'd1133275ee2118be63a577af759fc052', '19ca14e7ea6328a42e0eb13d585e4c22', NULL, 'teacher', '2021-03-11 10:10:36', NULL, NULL, NULL, NULL, NULL),
(36, 'Akinsare', 'adegbagi', 'nil', 'aanil', '39364b470d000733d820f2c7caf9057f', '1c383cd30b7c298ab50293adfecb7b18', NULL, 'student', '2021-03-06 16:02:15', NULL, NULL, NULL, NULL, NULL),
(20, 'aduragbemi', 'israel', 'eazi', 'aieazi', '3f8454b7f2c12cebb1622b6b0dfd1021', '1f0e3dad99908345f7439f8ffabdffc4', 0, 'student', '2021-01-25 13:33:52', NULL, NULL, NULL, NULL, NULL),
(52, 'habeeb', 'kabir', 'abidemi', 'okabidemi', 'c1621fbecc04b7b7911b982fe585c8d8', '2838023a778dfaecdc212708f721b788', NULL, 'teacher', '2021-04-11 09:44:13', NULL, NULL, NULL, NULL, NULL),
(67, 'Asiru', 'Abass', 'Ademola', 'aaademola', 'bb12b25aa9ff79afe7b8cc1e4be2b590', '3295c76acbf4caaed33c36b1b5fc2cb1', 0, 'student', '2021-07-07 19:48:11', NULL, NULL, NULL, NULL, '../students_avatar/asiruabassademola_378_1625685835.jpg'),
(73, 'liadi', 'kafayat', 'olabisi', 'lkolabisi2', '6e71eff99064d565d4bc223dc2c55418', '32bb90e8976aab5298d5da10fe66f21d', 0, 'student', '2021-09-18 15:24:11', NULL, NULL, NULL, NULL, '../students_avatar/liadikafayatolabisi_602_1631975066.png'),
(30, 'ibikunle', 'johnson', 'teejohson', 'ijteejohson', '79ab945544e5bc017a2317b6146ed3aa', '33e75ff09dd601bbe69f351039152189', 0, 'student', '2021-01-28 22:47:16', NULL, NULL, NULL, NULL, NULL),
(42, 'adesina', 'kabir', 'villageboy', 'akoluokun', 'c1621fbecc04b7b7911b982fe585c8d8', '3416a75f4cea9109507cacd8e2f2aefc', NULL, 'teacher', '2021-04-11 09:15:32', NULL, NULL, NULL, NULL, 'staffs_avatar/adesinakabiroluokun_338_1618117519.jpg'),
(31, 'salaudeen', 'mujeeb', 'babatunde', 'smbabatunde', '9fbb9525d7d97558926eda43db0115f9', '34173cb38f07f89ddbebc2ac9128303f', 0, 'student', '2021-02-02 08:54:23', NULL, NULL, NULL, NULL, NULL),
(27, 'Kb', 'The', 'Vboy', 'ktvboy', '8fc42c6ddf9966db3b09e84365034357', '37693cfc748049e45d87b8c7d8b9aacd', 0, 'student', '2021-01-26 23:57:58', NULL, NULL, NULL, NULL, NULL),
(10, 'ajao', 'ibraheem', 'tunde', 'aitunde', 'deefe75ce80066ec60d85d6b78edb24b', '45c48cce2e2d7fbdea1afc51c7c6ad26', 0, 'student', '2021-01-26 23:13:16', NULL, NULL, NULL, NULL, NULL),
(33, 'ologun', 'itunu', 'mary', 'oimary51', 'a676dc063b202119ce7060ca5daa019c', '6364d3f0f495b6ab9dcf8d3b5c6e0b01', 0, 'student', '2021-02-05 11:44:38', NULL, NULL, NULL, NULL, NULL),
(12, 'Kabiru', 'Adesina', 'Oluokun', 'kaoluokun73', 'c691a31ab86436087c9510d879c9d78d', '6512bd43d9caa6e02c990b0a82652dca', 0, 'student', '2021-01-25 02:11:11', NULL, NULL, NULL, NULL, NULL),
(59, 'awolola', 'abidemi', 'ifadara', 'aaifadara0', 'e98033959c886c771e21dc0a19449996', '66f041e16a60928b05a7e228a89c3799', 0, 'student', '2021-05-07 03:40:03', NULL, NULL, NULL, NULL, '../students_avatar/awololaabidemiifadara_394_1619470102.png'),
(50, 'oluokun', 'kabir', 'adesina', 'okadesina58', '', '67c6a1e7ce56d3d6fa748ab6d9af3fd7', NULL, 'student', '2021-04-10 19:15:06', NULL, NULL, NULL, NULL, '../students_avatar/oluokunkabiradesina_880_1618082106.jpg'),
(46, 'Habeeb', 'Vboy', 'Kabir', 'hvkabir', '62fb43096050b23cdcd8b3fb86f67e42', '6c8349cc7260ae62e3b1396831a8398f', 0, 'student', '2021-04-15 05:14:22', NULL, NULL, NULL, NULL, '../students_avatar/habeebvboykabir_552_1618082164.jpg'),
(19, 'muftau', 'habeeblah', 'opeyemi', 'mhopeyemi', '6980c32acb544a194652b21c88962ee3', '6f4922f45568161a8cdf4ad2299f6d23', 0, 'student', '2021-01-25 13:56:55', NULL, NULL, NULL, NULL, NULL),
(18, 'ajala', 'dorcas', 'tabitha', 'adtabitha', '4919ef6bb945013c03d28cfe68f3cb46', '70efdf2ec9b086079795c442636b55fb', 0, 'student', '2021-01-26 19:30:53', NULL, NULL, NULL, NULL, NULL),
(58, 'awolola', 'abidemi', 'ifadara', 'aaifadara', 'e98033959c886c771e21dc0a19449996', '72b32a1f754ba1c09b3695e0cb6cde7f', 0, 'student', '2021-05-03 11:02:38', NULL, NULL, NULL, NULL, '../students_avatar/awololaabidemiifadara_100_1619469204.png'),
(68, 'Ogunjimi', 'Thomas', 'Olanrewaju', 'otolanrewaju', 'ef6e65efc188e7dffd7335b646a85a21', '735b90b4568125ed6c3f678819b6e058', 0, 'student', '2021-09-18 14:19:28', NULL, NULL, NULL, NULL, '../students_avatar/ogunjimithomasolanrewaju_544_1625685952.jpg'),
(8, 'kabir', 'adesina', 'oluokun', 'kaoluokun', 'c691a31ab86436087c9510d879c9d78d', '8f14e45fceea167a5a36dedd4bea2543', 0, 'teacher', '2021-03-11 11:20:11', NULL, NULL, NULL, NULL, NULL),
(53, 'habeeb', 'kabir', 'abidemi', 'hkabidemi', 'c1621fbecc04b7b7911b982fe585c8d8', '9a1158154dfa42caddbd0694a4e9bdc8', 0, 'teacher', '2021-05-31 09:36:25', NULL, NULL, NULL, NULL, 'staffs_avatar/habeebkabirabidemi_821_1620663512.png'),
(57, 'Fanifosi', 'Peace', 'Israel', 'fpisrael', '33ee7e1eb504b6619c1b445ca1442c21', '9f61408e3afb633e50cdf1b20de6f466', 0, 'student', '2021-05-04 13:59:56', NULL, NULL, NULL, NULL, '../students_avatar/fanifosipeaceisrael_837_1618508213.jpg'),
(44, 'sunday', 'john', 'cena', 'sjcena', '527bd5b5d689e2c32ae974c6229ff785', 'a1d0c6e83f027327d8461063f4ac58a6', 0, 'student', '2021-03-12 06:32:33', NULL, NULL, NULL, NULL, NULL),
(69, 'liadi', 'kafayat', 'olabisi', 'lkolabisi0', '6e71eff99064d565d4bc223dc2c55418', 'a3f390d88e4c41f2747bfa2f1b5f87db', 0, 'student', '2021-09-18 14:19:25', NULL, NULL, NULL, NULL, '../students_avatar/liadikafayatolabisi_909_1625686002.jpg'),
(39, 'adesina', 'omolola', 'saida', 'aosaida', '62718e7ba425964f44acd30df1d7c282', 'a5bfc9e07964f8dddeb95fc584cd965d', 0, 'student', '2021-03-11 11:00:16', NULL, NULL, NULL, NULL, NULL),
(55, 'adesina', 'oluokun', 'kabiru', 'aokabiru', '23b53b3b67b99072d8dd4a87e3d8dc5d', 'a684eceee76fc522773286a895bc8436', 0, 'student', '2021-04-16 00:29:45', NULL, NULL, NULL, NULL, '../students_avatar/adesinaoluokunkabiru_987_1618435726.jpg'),
(15, 'adejumo', 'afeez', 'adebayo', 'aaadebayo', '631f5438242f3abf1228dc6e78b164ce', 'aab3238922bcc25a6f606eb525ffdc56', 0, 'student', '2021-01-25 13:38:34', NULL, NULL, NULL, NULL, NULL),
(1, 'admins', 'kabiru', 'adesina', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0, 'admin', '2021-10-14 14:43:44', NULL, NULL, NULL, NULL, NULL),
(56, 'oluokun', 'kabiru', 'adesina', 'okadesina59', '6a03e1a9937912f63c3a233af1440951', 'b53b3a3d6ab90ce0268229151c9bde11', 0, 'student', '2021-05-31 06:11:42', NULL, NULL, NULL, NULL, '../students_avatar/oluokunkabiruadesina_207_1618465848.jpg'),
(23, 'adten', 'first', 'second', 'afsecond', '8b04d5e3775d298e78455efc5ca404d5', 'b6d767d2f8ed5d21a44b0e5886680cb9', NULL, 'teacher', '2021-01-25 13:53:18', NULL, NULL, NULL, NULL, NULL),
(51, 'kabir', 'adesina', 'oluokun', 'kaoluokun74', '813f8ce580f276558ce9e5093468b1ab', 'c0c7c76d30bd3dcaefc96f40275bdc0a', 0, 'student', '2021-04-11 03:50:14', NULL, NULL, NULL, NULL, '../students_avatar/kabiradesinaoluokun_623_1618081856.jpg'),
(32, 'ologun', 'itunu', 'mary', 'oimary', 'a676dc063b202119ce7060ca5daa019c', 'c16a5320fa475530d9583c34fd356ef5', 0, 'student', '2021-02-05 11:37:37', NULL, NULL, NULL, NULL, NULL),
(13, 'Adesina', 'Oluokun', 'Kabir', 'aokabir', '23b53b3b67b99072d8dd4a87e3d8dc5d', 'c20ad4d76fe97759aa27a0c99bff6710', 0, 'teacher', '2021-01-26 23:56:37', NULL, NULL, NULL, NULL, NULL),
(3, 'omotayo', 'isreal', 'gbemi', 'oigbemi', 'a0a9f5d5d59b3d047d645be41440e257', 'c4ca4238a0b923820dcc509a6f75849b', 0, 'student', '2021-01-25 14:05:50', NULL, NULL, NULL, NULL, NULL),
(14, 'village', 'boy', 'Kabir', 'vbkabir', '1a699ad5e06aa8a6db3bcf9cfb2f00f2', 'c51ce410c124a10e0db5e4b97fc2af39', 0, 'student', '2021-05-24 06:54:57', NULL, NULL, NULL, NULL, NULL),
(17, 'samad', 'pelumi', 'benefit', 'spbenefit', 'e01623a4f9daf185b186f495ee163bb6', 'c74d97b01eae257e44aa9d5bade97baf', 0, 'student', '2021-01-25 13:56:42', NULL, NULL, NULL, NULL, NULL),
(9, 'adebisi', 'racheal', 'abosede', 'arabosede', '9e29658df6210d6cfbca8bb7f1bdd80b', 'c9f0f895fb98ab9159f51fd0297e236d', 0, 'student', '2021-01-21 22:35:29', NULL, NULL, NULL, NULL, NULL),
(11, 'adio', 'ifeoluwa', 'ife', 'aiife', 'efbf1eb09d62abd303f12835086e5465', 'd3d9446802a44259755d38e6d163e820', 0, 'student', '2021-01-23 18:46:19', NULL, NULL, NULL, NULL, NULL),
(41, 'adegbenro', 'sakiru', 'oke', 'asoke', '6f660dd1224628d9a49dadeda3846a9d', 'd645920e395fedad7bbbed0eca3fe2e0', 0, 'teacher', '2021-04-11 09:19:14', NULL, NULL, NULL, NULL, 'staffs_avatar/adegbenrosakiruoke_61_1618132754.jpg'),
(40, 'omolola', 'zainab', 'ajoke', 'ozajoke', '6cd4138800dc9fa828798e1ad85ffdf3', 'd67d8ab4f4c10bf22aa353e27879133c', 0, 'student', '2021-03-11 11:09:19', NULL, NULL, NULL, NULL, NULL),
(54, 'habeeb', 'kabir', 'abidemi', 'hkabidemi0', '813f8ce580f276558ce9e5093468b1ab', 'd82c8d1619ad8176d665453cfb2e55f0', 0, 'teacher', '2021-05-31 11:50:22', NULL, NULL, NULL, NULL, 'staffs_avatar/habeebkabirabidemi_545_1618134326.jpg'),
(47, 'victor', 'vboy', 'peace', 'vvpeace', '62fb43096050b23cdcd8b3fb86f67e42', 'd9d4f495e875a2e075a1a4a6e1b9770f', 0, 'teacher', '2021-04-20 07:16:30', NULL, NULL, NULL, NULL, NULL),
(72, 'liadi', 'kafayat', 'olabisi', 'lkolabisi1', '6e71eff99064d565d4bc223dc2c55418', 'e2c420d928d4bf8ce0ff2ec19b371514', 0, 'student', '2021-07-08 08:53:30', NULL, NULL, NULL, NULL, '../students_avatar/liadikafayatolabisi_354_1625732616.jpg'),
(35, 'sunday', 'egbeyale', 'ogami', 'seogami', '5e7fdf80b6ffba92def0dce2f7f00c2c', 'e369853df766fa44e1ed0ff613f563bd', 0, 'student', '2021-03-06 15:37:35', NULL, NULL, NULL, NULL, NULL),
(6, 'awoyemi', 'babalawo', 'mystique', 'abmystique', '958d680cc6e622673f93987d1b212a64', 'e4da3b7fbbce2345d7772b0674a318d5', NULL, 'student', '2021-01-21 10:07:11', NULL, NULL, NULL, NULL, NULL),
(65, 'Oluokun', 'Kabiru', 'Adesina', 'okadesina60', '6a03e1a9937912f63c3a233af1440951', 'ea5d2f1c4608232e07d3aa3d998e5135', NULL, 'teacher', '2021-05-31 11:33:19', NULL, NULL, NULL, NULL, 'staffs_avatar/oluokunkabiruadesina_754_1622460799.jpg'),
(4, 'oluokun', 'kabir', 'adesina', 'okadesina', 'c1621fbecc04b7b7911b982fe585c8d8', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 0, 'student', '2021-01-21 17:18:19', NULL, NULL, NULL, NULL, NULL),
(45, 'Vboy', 'Oje', 'Kb', 'vokb', 'ced1fc1120c2be11dfcb4a38b86a3b2f', 'f7177163c833dff4b38fc8d2872f1ec6', 0, 'student', '2021-03-12 06:38:36', NULL, NULL, NULL, NULL, NULL),
(66, 'Liadi', 'Kafayat', 'Olabisi', 'lkolabisi', '6e71eff99064d565d4bc223dc2c55418', 'fc490ca45c00b1249bbe3554a4fdf6fb', 0, 'student', '2021-05-31 11:53:58', NULL, NULL, NULL, NULL, '../students_avatar/liadikafayatolabisi_914_1622460987.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`examinationid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `subjectid` (`subjectid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `examinationid` (`examinationid`);

--
-- Indexes for table `school_information`
--
ALTER TABLE `school_information`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `class` (`class`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `studentexmination`
--
ALTER TABLE `studentexmination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examinationid` (`examinationid`),
  ADD KEY `questionid` (`questionid`),
  ADD KEY `studentid` (`studentid`);

--
-- Indexes for table `studentstartexamination`
--
ALTER TABLE `studentstartexamination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `examinationid` (`examinationid`),
  ADD KEY `studentstartexamination_ibfk_2` (`studentid`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjectid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacherid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `examinations`
--
ALTER TABLE `examinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `school_information`
--
ALTER TABLE `school_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `studentexmination`
--
ALTER TABLE `studentexmination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `studentstartexamination`
--
ALTER TABLE `studentstartexamination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `examinations`
--
ALTER TABLE `examinations`
  ADD CONSTRAINT `examinations_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`),
  ADD CONSTRAINT `examinations_ibfk_2` FOREIGN KEY (`subjectid`) REFERENCES `subjects` (`subjectid`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`examinationid`) REFERENCES `examinations` (`examinationid`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class`) REFERENCES `class` (`classid`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `studentexmination`
--
ALTER TABLE `studentexmination`
  ADD CONSTRAINT `studentexmination_ibfk_1` FOREIGN KEY (`examinationid`) REFERENCES `examinations` (`examinationid`),
  ADD CONSTRAINT `studentexmination_ibfk_2` FOREIGN KEY (`questionid`) REFERENCES `questions` (`questionid`),
  ADD CONSTRAINT `studentexmination_ibfk_3` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

--
-- Constraints for table `studentstartexamination`
--
ALTER TABLE `studentstartexamination`
  ADD CONSTRAINT `studentstartexamination_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`),
  ADD CONSTRAINT `studentstartexamination_ibfk_2` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`),
  ADD CONSTRAINT `studentstartexamination_ibfk_3` FOREIGN KEY (`examinationid`) REFERENCES `examinations` (`examinationid`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`),
  ADD CONSTRAINT `teachers_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
