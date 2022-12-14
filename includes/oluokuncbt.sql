-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2022 at 04:16 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

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
  `duration` varchar(20) NOT NULL,
  `display` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `school_id` varchar(255) NOT NULL,
  `activation_key` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `theme` varchar(255) NOT NULL DEFAULT 'navbar-dark'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_information`
--

INSERT INTO `school_information` (`id`, `name`, `logo`, `address`, `current_term`, `city`, `state`, `hostsystem`, `about`, `school_id`, `activation_key`, `last_update`, `theme`) VALUES
(3, 'MCAN LODGE', '../images/oic.png', 'hghgjh hghj hg j', 'First term', 'Abuja', 'FCT ABUJA', 'MCAN', NULL, 'c81e728d9d4c2f636f067f89cc14862c', '==ANwcDNzQDO2YTM', '2022-10-31 15:02:56', 'sidebar-light-warning');

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
  `scores` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`scores`)),
  `score` float NOT NULL DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  `capture_status` int(11) DEFAULT NULL,
  `captured_photo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`captured_photo`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'admins', 'kabiru', 'adesina', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, 'admin', '2022-10-31 15:15:37', NULL, NULL, NULL, NULL, NULL),
(129, 'olokun', 'kabiru', 'adesina', 'admin3', '21232f297a57a5a743894a0e4a801fc3', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 'admin', '2022-10-05 21:14:05', NULL, NULL, 'cfcd208495d565ef66e7dff9f98764da', NULL, NULL),
(131, 'Sunday', 'annonymus', 'anousmousy 2', 'admin1', '21232f297a57a5a743894a0e4a801fc3', 'd1f491a404d6854880943e5c3cd9ca25', NULL, 'admin', '2022-10-31 14:05:28', NULL, NULL, 'c81e728d9d4c2f636f067f89cc14862c', NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examinations`
--
ALTER TABLE `examinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_information`
--
ALTER TABLE `school_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentexmination`
--
ALTER TABLE `studentexmination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentstartexamination`
--
ALTER TABLE `studentstartexamination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

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
