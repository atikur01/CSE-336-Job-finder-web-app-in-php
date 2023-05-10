-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 07:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atiksblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(255) NOT NULL,
  `cat_name` text NOT NULL,
  `cat_des` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_des`) VALUES
(34, 'Web Developement', 'Full Stack Web Developer'),
(35, 'Networking', 'Network Engineer'),
(36, 'Security', 'Security Specialist'),
(37, 'PHP', 'PHP Developer');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(255) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_content` longtext NOT NULL,
  `post_ctg` varchar(255) NOT NULL,
  `post_author` varchar(60) NOT NULL,
  `post_date` date NOT NULL,
  `post_summery` longtext NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_content`, `post_ctg`, `post_author`, `post_date`, `post_summery`, `author_id`) VALUES
(5, 'Full Stack Web Developer', 'We are seeking a talented Full Stack Web Developer to join our team. As a Full Stack Web Developer, you will be responsible for designing and implementing web-based applications and solutions. The ideal candidate must have a minimum of a bachelor`s degree in computer science or a related field, as well as a strong understanding of web development technologies and frameworks.', 'Web', 'Atik', '2023-05-10', 'We are seeking a talented Full Stack Web Developer to join our team. As a Full Stack Web Developer, you will be responsible for designing and implementing web-based applications and solutions. The ideal candidate must have a minimum of a bachelor`s degree in computer science or a related field, as well as a strong understanding of web development technologies and frameworks.', 2),
(6, 'Network Engineer', 'Install and configure software, servers, routers, firewall and other network devices.\r\nInstall, configure and troubleshoot hardware and software on PCs, laptops and other office equipment.\r\nMonitor network performance and integrity.\r\nResolve issues and provide all IT related support (e.g. PABX, CCTV, Projector, UPS, Printers, Scanner, Smart phone, Attendance device and other IT equipment).\r\nCommunicate with users when needed and assist team members on technical issues.\r\nCreate, oversee and test security measures (e.g. access authentication and disaster recovery).\r\nIdentify and address vulnerabilities in networks and computer systems.\r\nSuggest improvements to network performance, capacity and scalability.\r\nMaintain complete technical documentation.', 'Networking', 'Atik', '2023-05-10', 'Install and configure software, servers, routers, firewall and other network devices.\r\nInstall, configure and troubleshoot hardware and software on PCs, laptops and other office equipment.\r\nMonitor network performance and integrity.\r\nResolve issues and provide all IT related support (e.g. PABX, CCTV, Projector, UPS, Printers, Scanner, Smart phone, Attendance device and other IT equipment).\r\nCommunicate with users when needed and assist team members on technical issues.\r\nCreate, oversee and test security measures (e.g. access authentication and disaster recovery).\r\nIdentify and address vulnerabilities in networks and computer systems.\r\nSuggest improvements to network performance, capacity and scalability.\r\nMaintain complete technical documentation.', 2),
(7, 'Security Specialist', 'Contribute to building a new identity data mode.\r\nBuild logic and detailed specifications to enhance the current user access model\r\nImplement and maintain a central Identity and user access management system using leading technologies.\r\nConfigure, deploy Identity Management solution for managing the end-to-end life-cycle of user identities across all enterprise resources, both on-premise and cloud based platforms.\r\nBuild integrations between directories such as OpenLDAP, Azure AD, Google Directory, and other tools and services, and sync data between services.\r\nConfigure and deploy Access Management: Seamless single sign-on to any application with Real-time external authorization based on XACML, ABAC, and RBAC for a broad variety of platforms and environments', 'Security', 'Atik', '2023-05-10', 'Contribute to building a new identity data mode.\r\nBuild logic and detailed specifications to enhance the current user access model\r\nImplement and maintain a central Identity and user access management system using leading technologies.\r\nConfigure, deploy Identity Management solution for managing the end-to-end life-cycle of user identities across all enterprise resources, both on-premise and cloud based platforms.\r\nBuild integrations between directories such as OpenLDAP, Azure AD, Google Directory, and other tools and services, and sync data between services.\r\nConfigure and deploy Access Management: Seamless single sign-on to any application with Real-time external authorization based on XACML, ABAC, and RBAC for a broad variety of platforms and environments', 2),
(8, 'PHP Developer', 'Full-stack PHP developer\r\nWe are looking for some Mid-level Software engineers on PHP Laravel and React.JS Programmers to integrate API. As a full-stack developer, you`ll develop and design front and back-end web architecture.\r\nCandidate should have knowledge of multiple front-end languages and libraries (e.g., HTML/ CSS, Bootstrap, PHP, OOP, MySQL, Laravel Framework, JavaScript, ES6, React, Redux, Express Js, Next.js, jQuery, JSON, Socket.io).\r\nYou`ll also ensure that applications are responsive, and work with graphic designers to design web features, among other things.\r\nPlease do not apply if you don`t have direct PHP(Laravel) & React.js development', 'PHP', 'Atik', '2023-05-10', 'Full-stack PHP developer\r\nWe are looking for some Mid-level Software engineers on PHP Laravel and React.JS Programmers to integrate API. As a full-stack developer, you`ll develop and design front and back-end web architecture.\r\nCandidate should have knowledge of multiple front-end languages and libraries (e.g., HTML/ CSS, Bootstrap, PHP, OOP, MySQL, Laravel Framework, JavaScript, ES6, React, Redux, Express Js, Next.js, jQuery, JSON, Socket.io).\r\nYou`ll also ensure that applications are responsive, and work with graphic designers to design web features, among other things.\r\nPlease do not apply if you don`t have direct PHP(Laravel) & React.js development', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(2, 'Atik', 'Rahman', 'k6eirv@outlook.com', '$2y$10$rniNZp2tywoEQjElg7Xv/eG5ibFRTAj4IypviGJSwE.g.tIKVvaVG'),
(3, 'test', 'test', 'test@test.com', '$2y$10$ypVSKxkBmyE4qAU.TjjWTewI8VFhSV6hNfzzF3gQbt9luJEj./MEK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
