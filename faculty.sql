-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 17, 2024 at 09:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sharda`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `employee_code` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `intercom_no` int(11) DEFAULT NULL,
  `block` varchar(10) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `room_no` varchar(10) DEFAULT NULL,
  `cabin_cubicle_no` varchar(10) DEFAULT NULL,
  `joining_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `employee_code`, `designation`, `department`, `mobile_no`, `email_id`, `intercom_no`, `block`, `floor`, `room_no`, `cabin_cubicle_no`, `joining_date`) VALUES
(1, 'Prof. (Dr.) Parma Nand', 4075, 'Prof., Dean Acad. & Pro-VC', 'Computer Science', '9810446717', 'parma.nand@sharda.ac.in', 2508, '3', NULL, 'GROUND', NULL, '0000-00-00'),
(2, 'Prof.(Dr.) Sankar Ramamoorthy', 9536, 'Prof. & Dean,SET', 'Computer Science', '9910273899', 'shankar.ramamoorthy@sharda.ac.in', 2437, '1', 0, '1', '1', NULL),
(3, 'Prof.(Dr.) Sanjeev Kumar Pippal', 9836, 'Prof. & Head', 'Computer Science', '9971582888', 'sanjeev.pippal@sharda.ac.in', 2464, 'I', 3, '303', '303', '0000-00-00'),
(4, 'Prof. (Dr.) Anil Kumar Sagar', 6096, 'Professor', 'Computer Science', '9412163839', 'anil.sagar@sharda.ac.in', NULL, 'III', 1, '102', '5', '0000-00-00'),
(5, 'Prof. (Dr.) Ambuj Agarwal', 8569, 'Professor', 'Computer Science', '9412246459', 'ambuj.agarwal@sharda.ac.in', NULL, 'III', 3, '102', '7', '0000-00-00'),
(6, 'Prof. (Dr.) Ganesh Gupta', 8903, 'Professor', 'Computer Science', '9910153426', 'ganesh.gupta@sharda.ac.in', NULL, 'III', 1, '103', '3', '0000-00-00'),
(7, 'Dr. Vasudha Arora', 9620, 'Professor', 'Computer Science', '9999885200', 'vasudha.arora@sharda.ac.in', NULL, 'III', 1, '102', '12', '0000-00-00'),
(8, 'Dr. Bhawna Mallcik', NULL, 'Prof. & Director, TLC', 'Computer Science', '9899172723', 'bhawna.mallick@sharda.ac.in', NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(9, 'Dr. Mandeep Kaur', 4508, 'Associate Professor', 'Computer Science', '9999502273', 'mandeep.kaur@sharda.ac.in', 2964, 'I', 3, '317', '30', '0000-00-00'),
(10, 'Dr. Gaurav Raj', 6097, 'Associate Professor', 'Computer Science', '8587010020', 'gaurav.raj@sharda.ac.in', NULL, 'III', 1, '102', '11', '0000-00-00'),
(11, 'Dr. Vishal Jain', 6745, 'Associate Professor', 'Computer Science', '9899997263', 'vishal.jain@sharda.ac.in', NULL, 'III', 1, '102', '3', '0000-00-00'),
(12, 'Dr. Nihar Ranjan Roy', 6859, 'Associate Professor', 'Computer Science', '9810977908', 'nihar.ranjan@sharda.ac.in', NULL, 'III', 1, '102', '9', '0000-00-00'),
(13, 'Dr. Rajendra Kumar', 7500, 'Associate Professor', 'Computer Science', '7017763451', 'rajendra.kumar@sharda.ac.in', NULL, 'III', 3, '102', '8', '0000-00-00'),
(14, 'Dr. Saumya Chaturvedi', 7526, 'Associate Professor', 'Computer Science', '8383889671', 'saumya.chaturvedi@sharda.ac.in', NULL, 'I', 3, '317', '7', '0000-00-00'),
(15, 'Dr. Subrata Sahana', 5637, 'Associate Professor', 'Computer Science', '9313056608', 'subrata.sahana@sharda.ac.in', NULL, 'III', 1, '102', '12', '0000-00-00'),
(16, 'Dr. Ashish Chakraverti', 7762, 'Associate Professor', 'Computer Science', '9717978667', 'ashish.chakraverti@sharda.ac.in', NULL, 'I', 3, '317', '26', '0000-00-00'),
(17, 'Dr. Shree Harsh Attri', 7812, 'Associate Professor', 'Computer Science', '9810421143', 'shree.harsh@sharda.ac.in', NULL, 'I', 3, '317', '12', '0000-00-00'),
(18, 'Dr. Vivek Sharma', 7818, 'Associate Professor', 'Computer Science', '9717200103', 'vivek.sharma@sharda.ac.in', NULL, 'I', 2, '215', '5', '0000-00-00'),
(19, 'Dr. Amrita', 759, 'Associate Professor', 'Computer Science', '9953121640', 'amrita.prasad@sharda.ac.in', NULL, 'II', 1, '102A', '2', '0000-00-00'),
(20, 'Dr. Gouri Shankar Mishra', 511, 'Associate Professor', 'Computer Science', '9654249954', 'gourisankar.mishra@sharda.ac.in', NULL, 'III', 3, '302', '10', '0000-00-00'),
(21, 'Dr. Mayank Kumar Goyal', 5553, 'Associate Professor', 'Computer Science', '9136780090', 'mayank.goyal2@sharda.ac.in', NULL, 'I', 3, '317', '20', '0000-00-00'),
(22, 'Dr. Shiraz Khurana', 7976, 'Associate Professor', 'Computer Science', '9466786100', 'shiraz.khurana@sharda.ac.in', NULL, 'II', 0, 'BASEMENT', '7', '0000-00-00'),
(23, 'Dr. Sudeep Varshney', 758, 'Associate Professor', 'Computer Science', '9873257466', 'sudeep.varshney@sharda.ac.in', NULL, 'III', 3, '315', '6', '0000-00-00'),
(24, 'Dr. Jabir Ali', 8406, 'Associate Professor', 'Computer Science', '8979089327', 'jabir.ali@sharda.ac.in', NULL, 'I', 3, '317', '11', '0000-00-00'),
(25, 'Dr. Sandeep Kumar', 8567, 'Associate Professor', 'Computer Science', '8527026776', 'sandeep.kumar16@sharda.ac.in', NULL, 'I', 3, '317', '3', '0000-00-00'),
(26, 'Dr. Renu Mishra', 8855, 'Associate Professor', 'Computer Science', '8178469975', 'renu.mishra@sharda.ac.in', NULL, 'III', 3, '315', '4', '0000-00-00'),
(27, 'Dr. S. Jerald Nirmal Kumar', 8915, 'Associate Professor', 'Computer Science', '9894774758', 'jerald.nirmal@sharda.ac.in', NULL, 'III', 3, '302', '28', '0000-00-00'),
(28, 'Dr. Amrit Kumar Agrawal', 9000, 'Associate Professor', 'Computer Science', '8303482762', 'amrit.agrawal@sharda.ac.in', NULL, 'I', 3, '317', '1', '0000-00-00'),
(29, 'Dr. Pradeep Kumar Singh', 9009, 'Associate Professor', 'Computer Science', '9474187567', 'pradeep.singh1@sharda.ac.in', NULL, 'III', 3, '315', '5', '0000-00-00'),
(30, 'Dr. Nishant Gupta', 7733, 'Associate Professor', 'Computer Science', '9911025245', 'nishant.gupta@sharda.ac.in', NULL, 'I', 3, '317', '2', '0000-00-00'),
(31, 'Dr. Sonia Setia', 7820, 'Associate Professor', 'Computer Science', '8383007704', 'sonia.setia@sharda.ac.in', NULL, 'I', 2, '215', '4', '0000-00-00'),
(32, 'Dr. Megha Chhabra', 534, 'Associate Professor', 'Computer Science', '8373905165', 'megha.chhabra@sharda.ac.in', NULL, 'III', 3, '302', '14B', '0000-00-00'),
(33, 'Dr. Shelja Sharma', 9598, 'Associate Professor', 'Computer Science', '9310879557', 'shelja.sharma@sharda.ac.in', NULL, 'III', 3, '302', '5', '0000-00-00'),
(34, 'Dr. Krishan Kumar', 9602, 'Associate Professor', 'Computer Science', '9990060886', 'krishan.kumar3@sharda.ac.in', NULL, 'III', 1, '103', '4', '0000-00-00'),
(35, 'Dr. Shipra Shukla', 9646, 'Associate Professor', 'Computer Science', '9617097536', 'shipra.shukla@sharda.ac.in', NULL, 'I', 2, '215', '4', '0000-00-00'),
(36, 'Dr. Pushpendra Kumar Rajput', 542, 'Associate Professor', 'Computer Science', '7503502805', 'pushpendrakumar.rajput@sharda.ac.in', NULL, 'III', 3, '302', '7', '0000-00-00'),
(37, 'Dr. Nidhi Gupta', 9750, 'Associate Professor', 'Computer Science', '8586923187', 'nidhi.gupta1@sharda.ac.in', NULL, 'I', 3, '317', '20', '0000-00-00'),
(38, 'Dr. Pawan Kumar Verma', 9846, 'Associate Professor', 'Computer Science', '8126748459', 'pawan.verma@sharda.ac.in', NULL, 'III', 3, '302', '23', '0000-00-00'),
(39, 'Dr. Avinash Kumar Sharma', 9887, 'Associate Professor', 'Computer Science', '9999495546', 'avinash.sharma1@sharda.ac.in', NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(40, 'Dr. Amar Nath Singh', 9898, 'Associate Professor', 'Computer Science', '9337881763', 'amar.singh3@sharda.ac.in', NULL, NULL, 5, '503', 'DENTAL', '0000-00-00'),
(41, 'Dr. Yojna Arora', 9987, 'Associate Professor', 'Computer Science', '9871987221', 'yojna.arora@sharda.ac.in', NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(42, 'Dr. Sanjay Pratap Singh Chauhan', 9991, 'Associate Professor', 'Computer Science', '9871498875', 'sanjay.chauhan2@sharda.ac.in', NULL, 'III', 3, '302', '15', '0000-00-00'),
(43, 'Dr. Ashwani Kumar', 10021, 'Associate Professor', 'Computer Science', '8107198887', 'ashwani.kumar1@sharda.ac.in', NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(44, 'Dr. Ali Imam Abidi', 4813, 'Asst. Professor', 'Computer Science', '9935263889', 'ali.abidi@sharda.ac.in', NULL, 'III', 3, '302', '17', '2018-08-13'),
(45, 'Dr. Hoor Fatima', 5990, 'Asst. Professor', 'Computer Science', '8860900442', 'hoor.fatima@sharda.ac.in', NULL, 'I', 3, '317', '22', '2019-07-15'),
(46, 'Dr. Keshav Gupta', 7732, 'Asst. Professor', 'Computer Science', '9873488459', 'keshav.gupta@sharda.ac.in', NULL, 'I', 2, '220', '1', '2021-11-22'),
(47, 'Dr. Bharat Bhushan', 6342, 'Asst. Professor', 'Computer Science', '9958973930', 'bharat.bhushan@sharda.ac.in', NULL, 'II', 0, 'BASEMENT', '5', '2020-10-08'),
(48, 'Dr. Anuj Kumar', 7514, 'Asst. Professor', 'Computer Science', '9313346934', 'anuj.kumar15@sharda.ac.in', NULL, 'II', 0, 'BASEMENT', '6', '2021-08-02'),
(49, 'Dr. Vivek Kumar Singh', 7565, 'Asst. Professor', 'Computer Science', '9412639061', 'vivek.singh1@sharda.ac.in', NULL, 'III', 3, '302', '6', '2021-09-01'),
(50, 'Dr. Anjali', 7863, 'Asst. Professor', 'Computer Science', '9811649065', 'anjali1@sharda.ac.in', NULL, 'I', 3, '317', '19', '2022-01-17'),
(51, 'Dr. Mohd Shariq', 8980, 'Asst. Professor', 'Computer Science', '8527466641', 'mohd.shariq1@sharda.ac.in', NULL, 'III', 3, '302', '22', '2022-11-11'),
(52, 'Dr. Kusum Lata', 8771, 'Asst. Professor', 'Computer Science', '8219809972', 'kusumlata.1@sharda.ac.in', NULL, 'III', 3, '302', '14A', '2022-09-07'),
(53, 'Dr. Priyanka Tyagi', 9168, 'Asst. Professor', 'Computer Science', '9811395850', 'priyanka.tyagi@sharda.ac.in', NULL, 'III', 3, '302', '25', '2022-09-07'),
(54, 'Dr. Rani Astya', 4074, 'Asst. Professor', 'Computer Science', '9818221080', 'rani.astya@sharda.ac.in', NULL, 'III', 1, '102', '10', '2017-02-11'),
(55, 'Dr. Saurabh Kumar', 8999, 'Asst. Professor', 'Computer Science', '8218827767', 'saurabh.kumar1@sharda.ac.in', NULL, 'I', 1, '119', '1', '2022-11-10'),
(56, 'Dr. Amrit Suman', 9473, 'Asst. Professor', 'Computer Science', '9810038392', 'Amrit.Suman@sharda.ac.in', NULL, 'I', 3, '317', '18', '2023-04-10'),
(57, 'Dr. Smita Tiwari', 9554, 'Asst. Professor', 'Computer Science', '9899616588', 'smita.tiwari@sharda.ac.in', NULL, 'III', 3, '302', '11', '2023-05-10'),
(58, 'Dr. Shikha Verma', 9585, 'Asst. Professor', 'Computer Science', '9811363085', 'shikha.verma@sharda.ac.in', NULL, 'I', 3, '317', '28', '2023-05-24'),
(59, 'Dr. Nidhi Bansal', 9587, 'Asst. Professor', 'Computer Science', '8394867570', 'nidhi.bansal@sharda.ac.in', NULL, 'I', 1, '214', '1', '2023-05-24'),
(60, 'Dr. Ramneet', 9612, 'Asst. Professor', 'Computer Science', '9878937770', 'ramneet@sharda.ac.in', NULL, 'III', 3, '315', '20', '2023-06-05'),
(61, 'Dr. Javed Ahmad', 9743, 'Asst. Professor', 'Computer Science', '8287560956', 'javed.ahmad@sharda.ac.in', NULL, '', 5, '503', 'DENTAL', '2023-07-13'),
(62, 'Dr. Swati Singal', 9768, 'Asst. Professor', 'Computer Science', '8744045255', 'swati.singal@sharda.ac.in', NULL, 'I', 3, '317', '15', '2023-07-25'),
(63, 'Dr. Shobhit Tyagi', 9245, 'Asst. Professor', 'Computer Science', '7011134858', 'shobhit.tyagi@sharda.ac.in', NULL, 'III', 1, '102', '4', '2023-01-23'),
(64, 'Dr. Arpita', 9810, 'Asst. Professor', 'Computer Science', '9034846712', 'arpita@sharda.ac.in', NULL, '', 5, '503', 'DENTAL', '2023-08-14'),
(65, 'Dr. Abhishek Singh Verma', 5666, 'Asst. Professor', 'Computer Science', '9899152325', 'abhishek.verma1@sharda.ac.in', NULL, 'III', 1, '102', '15', '2019-08-14'),
(66, 'Dr. Priti Kumari', 9912, 'Asst. Professor', 'Computer Science', '8527921169', 'priti.kumari2@sharda.ac.in', NULL, '', 5, '503', 'DENTAL', '2023-09-06'),
(67, 'Mr. Dharm Raj', 4274, 'Asst. Professor', 'Computer Science', '8920025836', 'dharm.raj@sharda.ac.in', NULL, 'I', 2, '215', '2', '2017-12-27'),
(68, 'Mr. Amit Upadhyay', 513, 'Asst. Professor', 'Computer Science', '9718342590', 'amitkumar.upadhyay@sharda.ac.in', NULL, 'I', 2, '215', '1', '2010-08-23'),
(69, 'Ms. Kanika Singla', 5099, 'Asst. Professor', 'Computer Science', '8447158148', 'kanika.singla@sharda.ac.in', NULL, 'III', 3, '302', '2', '2019-01-02'),
(70, 'Ms. Deepti Sahu', 3030, 'Asst. Professor', 'Computer Science', '7566473608', 'deepti.sahu@sharda.ac.in', NULL, 'I', 3, '317', '6', '2016-08-01'),
(71, 'Mr. Sushant Jhingran', 5989, 'Asst. Professor', 'Computer Science', '8470922024', 'sushant.jhingran@sharda.ac.in', NULL, 'III', 3, '302', '24', '2014-08-04'),
(72, 'Ms. Gunjan Aggarwal', 3311, 'Asst. Professor', 'Computer Science', '9899354852', 'gunjan.aggarwal@sharda.ac.in', NULL, 'I', 3, '317', '4', '2016-08-24'),
(73, 'Mr. Murari Kumar Singh', 7552, 'Asst. Professor', 'Computer Science', '9910959350', 'murari.kumar@sharda.ac.in', NULL, 'III', 3, '302', '18', '2021-08-17'),
(74, 'Ms. Namita Sharma', 7717, 'Asst. Professor', 'Computer Science', '9891658939', 'namita.sharma@sharda.ac.in', NULL, 'III', 1, '102', '13', '2021-11-11'),
(75, 'Mr. Akash Bhasney', 7720, 'Asst. Professor', 'Computer Science', '7428249222', 'akash.bhasney@sharda.ac.in', NULL, 'III', 1, '103', '2', '2021-11-15'),
(76, 'Ms. Preeti Dubey', 4701, 'Asst. Professor', 'Computer Science', '8010573162', 'preeti.dubey@sharda.ac.in', NULL, 'III', 3, '302', '8', '2018-07-18'),
(77, 'Ms. Saptadeepa Kalita', 8702, 'Asst. Professor', 'Computer Science', '7048901586', 'saptadeepa.kalita@sharda.ac.in', NULL, 'I', 2, '214', '1', '2022-08-30'),
(78, 'Ms. Jyoti Pruthi', 8709, 'Asst. Professor', 'Computer Science', '9034886117', 'jyoti.6@sharda.ac.in', NULL, 'III', 3, '315', '22', '2022-08-23'),
(79, 'Ms. Shruti N. Mehta', 5134, 'Asst. Professor', 'Computer Science', '9654124980', 'shruti.nagpal@sharda.ac.in', NULL, 'III', 3, '315', '19', '2022-08-24'),
(80, 'Ms. Konika Abid', 8950, 'Asst. Professor', 'Computer Science', '7500112501', 'konika.abid@sharda.ac.in', NULL, 'III', 3, '315', '23', '2022-10-27'),
(81, 'Mr. Amit Pratap Singh', 8952, 'Asst. Professor', 'Computer Science', '8285282322', 'amit.singh@sharda.ac.in', NULL, 'III', 3, '315', '21', '2022-10-31'),
(82, 'Mr. Mukesh Jha', 8954, 'Asst. Professor', 'Computer Science', '9540417848', 'mukesh.jha@sharda.ac.in', NULL, 'III', 3, '302', '3', '2022-11-01'),
(83, 'Mr. Jitendra Singh', 8953, 'Asst. Professor', 'Computer Science', '8527252974', 'jitendra.singh2@sharda.ac.in', NULL, 'III', 3, '302', '1', '2022-11-01'),
(84, 'Ms. Pirya Sharma', 8985, 'Asst. Professor', 'Computer Science', '9891739676', 'priya.sharma@sharda.ac.in', NULL, 'III', 3, '315', '24', '2023-11-07'),
(85, 'Mr. Tushar Mehrotra', 9017, 'Asst. Professor', 'Computer Science', '9557575556', 'tushar.mehrotra@sharda.ac.in', NULL, 'III', 3, '302', '26', '2022-11-15'),
(86, 'Ms. Ekta Singh', 9031, 'Asst. Professor', 'Computer Science', '9910198022', 'ekta.singh@sharda.ac.in', NULL, 'III', 3, '102', '14', '2022-11-24'),
(87, 'Ms. Akanksha Shangloo', 9050, 'Asst. Professor', 'Computer Science', '9149523611', 'akanksha.shangloo@sharda.ac.in', NULL, 'II', 0, 'BASEMENT', '2', '2022-12-01'),
(88, 'Mr. Bal Krishna Saraswat', 9005, 'Asst. Professor', 'Computer Science', '7409940899', 'bal.saraswat@sharda.ac.in', NULL, 'I', 2, '213', '1', '2022-11-14'),
(89, 'Ms. Lisha Yugal', 9175, 'Asst. Professor', 'Computer Science', '9958222173', 'lisha.yugal@sharda.ac.in', NULL, 'II', 0, 'BASEMENT', '1', '2022-12-26'),
(90, 'Mr. Prashant Upadhyay', 9185, 'Asst. Professor', 'Computer Science', '9716519312', 'prashant.upadhyay@sharda.ac.in', NULL, 'I', 3, '317', '5', '2023-01-02'),
(91, 'Mr. Raghuraj Singh', 9247, 'Asst. Professor', 'Computer Science', '7017109085', 'raghuraj.yadav@sharda.ac.in', NULL, 'III', 1, '102', '4', '2023-01-23'),
(92, 'Mr. Akhilesh Kumar Singh', 9256, 'Asst. Professor', 'Computer Science', '9792633078', 'akhilesh.singh1@sharda.ac.in', NULL, 'III', 3, '302', '13', '2023-01-27'),
(93, 'Mr. Himanshu Sharma', 9339, 'Asst. Professor', 'Computer Science', '9997380477', 'himanshu.sharma1@sharda.ac.in', NULL, 'I', 3, '317', '16', '2023-02-20'),
(94, 'Mr. Anubhava Srivastava', 9537, 'Asst. Professor', 'Computer Science', '7985845320', 'anubhava.srivastava@sharda.ac.in', NULL, 'I', 3, '317', '17', '2023-05-03'),
(95, 'Mr. Tapas Kumar Mishra', 9567, 'Asst. Professor', 'Computer Science', '8005329756', 'tapas.mishra@sharda.ac.in', NULL, 'I', 1, '215', '3', '2023-05-17'),
(96, 'Mr. Shashank Singh', 9578, 'Asst. Professor', 'Computer Science', '7007691935', 'shashank.singh1@sharda.ac.in', NULL, 'I', 1, '215', '3', '2023-05-22'),
(97, 'Ms. Rosey Chauhan', 9599, 'Asst. Professor', 'Computer Science', '7838744024', 'rosey.jadon@sharda.ac.in', NULL, 'I', 3, '317', '28', '2023-06-01'),
(98, 'Mr. Ajeet Kumar Sharma', 9616, 'Asst. Professor', 'Computer Science', '9634477686', 'ajeet.sharma@sharda.ac.in', NULL, 'III', 3, '302', '9', '2023-06-05'),
(99, 'Mr. Nikhil Ranjan', 9745, 'Asst. Professor', 'Computer Science', '7000875618', 'nikhil.ranjan@sharda.ac.in', NULL, NULL, 503, 'DENTAL', '13', '2023-07-13'),
(100, 'Mr. Virendra Pal Singh', 9763, 'Asst. Professor', 'Computer Science', '9958764650', 'virendra.singh1@sharda.ac.in', NULL, NULL, 5, '503', 'DENTAL', '2023-07-25'),
(101, 'Mr. Avinash Kumar', 6341, 'Asst. Professor', 'Computer Science', '9625131621', 'avinash.kumar5@sharda.ac.in', NULL, NULL, NULL, NULL, NULL, '2023-08-01'),
(102, 'Mr. Aditya Kumar', 6725, 'Asst. Professor', 'Computer Science', '8210526404', 'aditya.kumar1@sharda.ac.in', NULL, 'I', 3, '317', '13', '2023-08-01'),
(103, 'Mr. Arun Kant Dwivedi', 9817, 'Asst. Professor', 'Computer Science', '7428052204', 'arun.dwivedi@sharda.ac.in', NULL, 'I', 2, '211', '1', '2023-08-16'),
(104, 'Mr. Prem Prakash Agrawal', 9827, 'Asst. Professor', 'Computer Science', '9971679652', 'prem.agrawal@sharda.ac.in', NULL, '5', 503, 'DENTAL', '21', '2023-08-21'),
(105, 'Mr. Mohammad Asim', 9828, 'Asst. Professor', 'Computer Science', '9999020400', 'mohammad.asim@sharda.ac.in', NULL, '5', 503, 'DENTAL', '21', '2023-08-21'),
(106, 'Mr. Rashmi Rathi Upadhyay', 9889, 'Asst. Professor', 'Computer Science', '7387456533', 'rashmi.upadhyay@sharda.ac.in', NULL, '5', 503, 'DENTAL', '4', '2023-09-04'),
(107, 'Ms. Surbhi Vijh', 9899, 'Asst. Professor', 'Computer Science', '8527456029', 'surbhi.vijh@sharda.ac.in', NULL, '5', 503, 'DENTAL', '4', '2023-09-04'),
(108, 'Mr. Shivam Tiwari', 9893, 'Asst. Professor', 'Computer Science', '7275055907', 'shivam.tiwari1@sharda.ac.in', NULL, '5', 503, 'DENTAL', '4', '2023-09-04'),
(109, 'Mr. Kali Charan', 9913, 'Asst. Professor', 'Computer Science', '8860786281', 'kalicharan.2@sharda.ac.in', NULL, '5', 503, 'DENTAL', '6', '2023-09-06'),
(110, 'Mr. Durgesh Klumar', 10003, 'Asst. Professor', 'Computer Science', '9457471140', 'durgesh.kumar1@sharda.ac.in', NULL, '5', 503, 'DENTAL', '5', '2023-10-05'),
(111, 'Mr. Pankaj Sharma', 10080, 'Asst. Professor', 'Computer Science', '9887745072', 'pankaj.sharma7@sharda.ac.in', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'karan kumar', 620, 'block-1', 'cse', '6207071618', 'karna@gmail.com', 20, '3', 3, '313', 'A', '2024-04-08'),
(122, 'sum', 15, 'block- 2', '', '', NULL, 0, '7', 0, '', '', '0000-00-00'),
(123, 'Sumit Gupta', 158, 'khv', '', '', 'stgupta@gmail.com', 0, '', 0, '', '', '0000-00-00'),
(124, 'agrim gupta', 10, 'block- 2', 'cse', '65191531615', 'ewnd@gmail.com', 0, '', 0, '', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
