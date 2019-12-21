-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2019 at 04:05 AM
-- Server version: 5.6.40-84.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logixbui_golimo`
--

-- --------------------------------------------------------

--
-- Table structure for table `aauth_login_attempts`
--

CREATE TABLE `aauth_login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(39) DEFAULT '0',
  `timestamp` datetime DEFAULT NULL,
  `login_attempts` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aauth_login_attempts`
--

INSERT INTO `aauth_login_attempts` (`id`, `ip_address`, `timestamp`, `login_attempts`) VALUES
(2, '::1', '2019-05-02 00:27:18', 2),
(3, '::1', '2019-05-02 05:49:58', 3),
(6, '::1', '2019-05-14 04:49:09', 1),
(57, '116.72.22.113', '2019-06-11 08:05:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_pms`
--

CREATE TABLE `aauth_pms` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `receiver_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `date_sent` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `pm_deleted_sender` int(1) NOT NULL,
  `pm_deleted_receiver` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_users`
--

CREATE TABLE `aauth_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `forgot_exp` text,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text,
  `verification_code` text,
  `totp_secret` varchar(16) DEFAULT NULL,
  `ip_address` text,
  `roleid` int(1) NOT NULL,
  `picture` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_users`
--

INSERT INTO `aauth_users` (`id`, `email`, `pass`, `username`, `banned`, `last_login`, `last_activity`, `date_created`, `forgot_exp`, `remember_time`, `remember_exp`, `verification_code`, `totp_secret`, `ip_address`, `roleid`, `picture`) VALUES
(10, 'martyn.benjamin@gmail.com', 'ca16350c55ced81d071bd550cbc5e92ad319ab41b84ed342a96cf79e4d03f02a', 'admin', 0, '2019-07-03 04:34:22', '2019-07-03 04:34:22', '2019-04-24 06:44:55', NULL, '2019-06-22 00:00:00', '75uEQgxaF0hbGjvf', NULL, NULL, '103.17.83.144', 5, '1561004134755822466.jpeg'),
(11, 'demo@gmail.com', 'ca16350c55ced81d071bd550cbc5e92ad319ab41b84ed342a96cf79e4d03f02a', 'Team Leader', 0, '2019-05-01 23:56:14', '2019-05-01 23:56:14', '2019-04-24 06:44:55', NULL, '2019-05-03 00:00:00', 'cEOM2F1UsihDezJ9', NULL, NULL, '::1', 2, 'example.png'),
(12, 'abc@gmail.com', 'ca16350c55ced81d071bd550cbc5e92ad319ab41b84ed342a96cf79e4d03f02a', 'abc', 0, '2019-05-14 01:24:50', '2019-05-14 01:24:50', '2019-04-24 06:44:55', NULL, '2019-05-14 00:00:00', 'TRSLvF5fiMck8PwI', NULL, NULL, '::1', 2, 'example.png'),
(13, 'test@test.com', 'cd0b3bc90d519a0bfd72a020ea307cad68dba92c91ace606785f93c704b0a6c1', 'Team Leader', 0, '2019-06-14 05:06:22', '2019-06-14 05:06:22', '2019-05-16 01:56:31', NULL, '2019-05-31 00:00:00', 'NS8rjLPopsyEA5nh', NULL, NULL, '103.17.82.222', 3, 'example.png'),
(14, 'teamleader@teamleader.com', 'c5ed6fdca6ec1a079f1548048ca369ee947b9c9682817ed28f5bd8ae81dd3405', 'teamleader', 0, '2019-06-22 02:05:29', '2019-06-22 02:05:29', '2019-05-30 01:38:47', NULL, NULL, NULL, NULL, NULL, '116.72.20.163', 3, 'example.png'),
(15, 'teamleader2@teamleader.com', 'd8b64bb104e9100102b2ddf960585f9b7ec9d758bcf36865b3c090be1fbad099', 'teamleader2', 0, '2019-07-02 06:29:14', '2019-07-02 06:29:14', '2019-05-30 01:48:05', NULL, '2019-06-22 00:00:00', 'VTzoU1CNaf3IqZyM', NULL, NULL, '139.5.20.79', 3, '15610985801939499156.png'),
(16, 'psh@gmail.com', '48ff7413b802e8d8e01607bc1a53fa1e0bded323657bcda80eddf7db068dc288', 'pushpak07', 0, '2019-06-19 08:13:46', '2019-06-19 08:13:46', '2019-06-05 06:48:59', NULL, NULL, NULL, NULL, NULL, '45.126.147.170', 2, '15608506971076196642.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_variables`
--

CREATE TABLE `aauth_user_variables` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(5) NOT NULL,
  `acn` varchar(35) NOT NULL,
  `holder` varchar(100) NOT NULL,
  `adate` datetime NOT NULL,
  `lastbal` decimal(16,2) DEFAULT '0.00',
  `code` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `acn`, `holder`, `adate`, `lastbal`, `code`) VALUES
(1, '12345678', 'Company Sales Account', '2018-01-01 00:00:00', '-25000.00', 'Company Sales Account');

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) DEFAULT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, 'c4ef70e75cce8a958ab297c9', 0, 0, 0, NULL, '2019-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `app_system`
--

CREATE TABLE `app_system` (
  `id` int(1) NOT NULL,
  `cname` char(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(30) NOT NULL,
  `region` varchar(40) NOT NULL,
  `country` varchar(30) NOT NULL,
  `postbox` varchar(15) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `taxid` varchar(20) NOT NULL,
  `tax` int(11) NOT NULL,
  `currency` varchar(4) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `currency_format` int(1) NOT NULL,
  `prefix` varchar(5) NOT NULL,
  `dformat` int(1) NOT NULL,
  `zone` varchar(25) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `lang` varchar(20) DEFAULT 'english'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_system`
--

INSERT INTO `app_system` (`id`, `cname`, `address`, `city`, `region`, `country`, `postbox`, `phone`, `email`, `taxid`, `tax`, `currency`, `currency_format`, `prefix`, `dformat`, `zone`, `logo`, `lang`) VALUES
(1, 'Bamboo is Better', '412 Example South Street,', 'Los Angeles', 'FL', 'USA', '123', '410-987-89-60', 'test@example.com', '23442', 1, '$', 0, 'SRN', 2, 'US/Eastern', '1556091612354279320.png', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `acn` varchar(50) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `enable` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `billing_terms`
--

CREATE TABLE `billing_terms` (
  `id` int(4) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` int(1) NOT NULL,
  `terms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billing_terms`
--

INSERT INTO `billing_terms` (`id`, `title`, `type`, `terms`) VALUES
(1, 'Payment on receipt', 0, 'Payment due on receipt');

-- --------------------------------------------------------

--
-- Table structure for table `breaktimesforshow`
--

CREATE TABLE `breaktimesforshow` (
  `id` int(11) NOT NULL,
  `start_break_time` time NOT NULL,
  `end_break_time` time NOT NULL,
  `detail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `breaktimesforshow`
--

INSERT INTO `breaktimesforshow` (`id`, `start_break_time`, `end_break_time`, `detail_id`) VALUES
(41, '10:30:00', '11:00:00', 28),
(42, '10:30:00', '16:00:00', 29),
(43, '14:30:00', '14:45:00', 30),
(44, '16:00:00', '16:15:00', 31),
(45, '10:30:00', '11:30:00', 32),
(46, '10:30:00', '11:30:00', 33),
(47, '10:30:00', '11:30:00', 34),
(48, '10:30:00', '11:30:00', 35),
(49, '11:00:00', '11:45:00', 36),
(50, '13:00:00', '14:00:00', 37),
(51, '10:30:00', '11:30:00', 38),
(52, '14:00:00', '15:00:00', 38),
(53, '10:30:00', '11:30:00', 38),
(54, '12:00:00', '13:00:00', 38),
(55, '11:00:00', '11:30:00', 39);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('07c910d345734c0ca28229a16b2209fd42aab2d9', '45.126.146.147', 1562126877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323132363837373b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('28c2af11c9aa5dbbf0f52b3166c9bdcfd547bd4a', '139.5.20.79', 1562065301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323036353132363b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('40244be5a0584192051708e06a09fe2a5008db0f', '45.126.146.147', 1562128329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323132383332393b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('4334be606284e29ebdf7b396aec50eb8021225d4', '45.126.146.147', 1562129858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323132393835383b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('440810cf212cc300cf1b0a35b8784641457be963', '45.126.146.147', 1562131193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323133313139333b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('603ef529d27f51c51c0549d6db4923be27c1c6e3', '45.126.146.147', 1562130803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323133303830333b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('652037bac31090581adfe1e11ff8256ccc3a79fa', '139.5.20.79', 1562069317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323036393331373b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('6d2697c5e061868a3cce347f96025a749dfb9e8e', '103.17.83.144', 1562144006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323134333938383b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('6d537ad3e3da30261c465383486f11cc1d37c542', '45.126.146.147', 1562131230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323133313139333b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('6fa1649eda4aff7e158eca84efd5cd00fe854d57', '139.5.20.79', 1562062675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323036323637353b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('72e186f7b98661534246f680f6994393282819dc', '45.126.146.147', 1562128860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323132383836303b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('7348caae597320eba14158c060226e0ebd650140', '45.126.146.147', 1562127818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323132373831383b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('7678e6660e8daff258c79e577b53e83a0f620b27', '45.126.146.147', 1562126480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323132363438303b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('850c177e7cfc223ea1f842819d574408239f50b1', '139.5.20.79', 1562063233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323036333233333b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('8a242135d2b5b0993b3fe7f5c5aa4c0b6015acba', '139.5.20.79', 1562072785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323037323738343b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('8b4f855c04c0995e79ca654ca17bdeb798f50114', '45.126.146.147', 1562129488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323132393438383b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('aeb7a105352f7bcdba80c60853e0bbf1c80bd1e1', '139.5.20.79', 1562069730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323036393733303b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('c77a3028aae6c6caeeab6809046b70e8c4f8d1f4', '139.5.20.79', 1562072784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323037323738343b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('cc873c8353f6c32948b48ac870bd9a0b0396bbe3', '139.5.20.79', 1562072427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323037323432373b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('d0217dd48735a547e9b7238947323d6a1c87128e', '45.126.146.147', 1562130357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323133303335373b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('d10befd11c5249e983881571c5892c71618dce10', '45.126.146.147', 1562127516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323132373531363b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('dbe26e2a22fca583954aed07a47c200412f27881', '45.126.146.147', 1562127190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323132373139303b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b),
('e0c14d8a149ca25eb22e03d78ca31004292cae7b', '103.17.83.144', 1562143285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323134333238353b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('e3b74c27fedd6d364d1da82c00da7202bd263a3f', '139.5.20.79', 1562068597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323036383539373b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('e5952fbe42c40c402127598dca23c7c06a73e8c5', '103.17.83.144', 1562143988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323134333938383b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('e7936d2729e67a019a725e537b41039ec6472127', '103.17.83.144', 1562143649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323134333634393b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b),
('f6ba307829d0eec4d56200d1c79c53c0a4adba59', '139.5.20.79', 1562063973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323036333937333b69647c733a323a223130223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32353a226d617274796e2e62656e6a616d696e40676d61696c2e636f6d223b6c6f67676564696e7c623a313b6661766f75726974655f776562736974657c733a313a2235223b);

-- --------------------------------------------------------

--
-- Table structure for table `conf`
--

CREATE TABLE `conf` (
  `id` int(1) NOT NULL DEFAULT '1',
  `bank` int(1) NOT NULL,
  `acid` int(11) NOT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `recaptcha_p` varchar(255) DEFAULT NULL,
  `captcha` int(1) NOT NULL,
  `recaptcha_s` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conf`
--

INSERT INTO `conf` (`id`, `bank`, `acid`, `ext1`, `ext2`, `recaptcha_p`, `captcha`, `recaptcha_s`) VALUES
(1, 1, 1, 'ltr', '0', '0', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `corn_job`
--

CREATE TABLE `corn_job` (
  `id` int(1) NOT NULL,
  `cornkey` varchar(50) NOT NULL,
  `rec_email` int(11) DEFAULT NULL,
  `email` int(11) DEFAULT NULL,
  `rec_due` int(11) DEFAULT NULL,
  `recemail` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corn_job`
--

INSERT INTO `corn_job` (`id`, `cornkey`, `rec_email`, `email`, `rec_due`, `recemail`) VALUES
(1, '345648', 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(4) NOT NULL,
  `code` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `symbol` varchar(3) DEFAULT NULL,
  `rate` decimal(10,3) NOT NULL,
  `thous` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `dpoint` char(1) CHARACTER SET latin1 NOT NULL,
  `decim` int(2) NOT NULL,
  `cpos` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `symbol`, `rate`, `thous`, `dpoint`, `decim`, `cpos`) VALUES
(1, 'USD', 'X', '1.000', ',', '.', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postbox` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `picture` varchar(100) NOT NULL DEFAULT 'example.png',
  `gid` int(5) NOT NULL DEFAULT '1',
  `company` varchar(100) DEFAULT NULL,
  `taxid` varchar(100) DEFAULT NULL,
  `name_s` varchar(100) DEFAULT NULL,
  `phone_s` varchar(100) DEFAULT NULL,
  `email_s` varchar(100) DEFAULT NULL,
  `address_s` varchar(100) DEFAULT NULL,
  `city_s` varchar(100) DEFAULT NULL,
  `region_s` varchar(100) DEFAULT NULL,
  `country_s` varchar(100) DEFAULT NULL,
  `postbox_s` varchar(100) DEFAULT NULL,
  `balance` float(16,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `city`, `region`, `country`, `postbox`, `email`, `picture`, `gid`, `company`, `taxid`, `name_s`, `phone_s`, `email_s`, `address_s`, `city_s`, `region_s`, `country_s`, `postbox_s`, `balance`) VALUES
(1, 'customer 1', '8745874587', '302,west road ', 'surat', 'Gujarat', 'India', '395009', 'customer1@customer.com', 'example.png', 1, 'abc', NULL, 'customer 1', '8745874587', '302,west road ', 'surat', 'Gujarat', 'India', 'India', '395009', 50000.00),
(2, 'customer 2', '8569856985', '504, East road', 'surat', 'Gujarat', 'India', '390559', 'customer2@customer.com', 'example.png', 1, 'xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35000.00);

-- --------------------------------------------------------

--
-- Table structure for table `customers_group`
--

CREATE TABLE `customers_group` (
  `id` int(10) NOT NULL,
  `title` varchar(60) DEFAULT NULL,
  `summary` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers_group`
--

INSERT INTO `customers_group` (`id`, `title`, `summary`) VALUES
(1, 'TradeShow', 'Customers acquired at trade shows'),
(2, 'StoreWalk-in', 'Customers who walk into stores or visit Kiosks'),
(3, 'Corporate', 'Corporate or Business clients');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `cdate` date NOT NULL,
  `permission` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_profile`
--

CREATE TABLE `employee_profile` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postbox` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `phonealt` varchar(15) DEFAULT NULL,
  `picture` varchar(50) NOT NULL DEFAULT 'example.png',
  `sign` varchar(100) DEFAULT 'sign.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_profile`
--

INSERT INTO `employee_profile` (`id`, `username`, `name`, `address`, `city`, `region`, `country`, `postbox`, `phone`, `phonealt`, `picture`, `sign`) VALUES
(10, 'admin', 'BusinessOwner', 'Test Street', 'Test City', NULL, 'Test Country', '123456', '12345678', '0', '1561004134755822466.jpeg', 'sign.png'),
(11, 'demo_123', 'demo', 'demo', 'surat', 'hindu', 'india', '145214', '548541254', '1452145411', 'example.png', 'sign.png'),
(12, 'abc', 'abc', 'asd', 'surat', 'Hindu', 'India', '123456', '12345678', '12345678', 'example.png', 'sign.png'),
(13, 'test', 'jhon doe', '119 Plantin en Moretuslei', 'Antwerpen', 'Active', NULL, NULL, '322726401', NULL, 'example.png', 'sign.png'),
(14, 'teamleader', 'teamleader', '19bis Rue des Trois Frères', 'Paris', 'Active', NULL, NULL, '142518349', NULL, 'example.png', 'sign.png'),
(15, 'teamleader2', 'teamleader2', 'Route du Champ de Manoeuvre, Paris, France Route du Champ de Manoeuvre', 'Paris', NULL, '', '', '141741707', '', '15610985801939499156.png', 'sign.png'),
(16, 'pushpak07', 'Pushpak', 'surat', 'surat', NULL, 'India', '145214', '1234567890', '4125412541', '15608506971076196642.jpeg', 'sign.png');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(7) NOT NULL DEFAULT '#3a87ad',
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` varchar(50) NOT NULL DEFAULT 'true',
  `rel` int(2) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` int(1) NOT NULL,
  `income` bigint(20) NOT NULL,
  `expense` bigint(20) NOT NULL,
  `sales` bigint(20) NOT NULL,
  `netincome` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`id`, `income`, `expense`, `sales`, `netincome`) VALUES
(1, 9999, 3333, 99999, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `invoicedate` date NOT NULL,
  `invoiceduedate` date NOT NULL,
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `shipping` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `total` decimal(16,2) DEFAULT '0.00',
  `pmethod` varchar(14) DEFAULT NULL COMMENT '1.cash 2.credit',
  `notes` varchar(255) DEFAULT NULL,
  `status` enum('paid','due','canceled','partial') NOT NULL DEFAULT 'due',
  `csd` int(5) NOT NULL DEFAULT '0',
  `eid` int(4) NOT NULL,
  `pamnt` decimal(16,2) DEFAULT '0.00',
  `items` int(11) NOT NULL,
  `taxstatus` enum('yes','no') NOT NULL DEFAULT 'yes' COMMENT '1.yes 2.no',
  `discstatus` tinyint(1) NOT NULL COMMENT '1.yes 2.no',
  `format_discount` enum('%','flat','b_p','bflat') NOT NULL DEFAULT '%',
  `refer` varchar(20) DEFAULT NULL,
  `term` int(3) NOT NULL,
  `multi` int(4) DEFAULT NULL,
  `salesperson_id` int(11) DEFAULT NULL,
  `booth_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `tid`, `invoicedate`, `invoiceduedate`, `subtotal`, `shipping`, `discount`, `tax`, `total`, `pmethod`, `notes`, `status`, `csd`, `eid`, `pamnt`, `items`, `taxstatus`, `discstatus`, `format_discount`, `refer`, `term`, `multi`, `salesperson_id`, `booth_id`) VALUES
(1, 15, '2019-06-19', '2019-06-22', '500.00', '400.00', '20.00', '10.00', '10000.00', '1', 'This is test invoice 1 for booth 1 for show 27 ', 'due', 10, 12, '10000.00', 2, 'yes', 1, '%', NULL, 0, NULL, 16, 19),
(2, 2, '2019-06-21', '2019-06-26', '45000.00', '3000.00', '14.00', '10.00', '67000.00', '1', 'This is invlice 2 for show 27, booth 19, salesperson 16', 'due', 0, 1, '45000.00', 2, 'yes', 1, '%', NULL, 1, NULL, 16, 19),
(3, 1, '2019-06-12', '2019-06-18', '200.00', '300.00', '25.00', '10.00', '25000.00', '1', 'This is test invoice 1 for booth 26 for show 30', 'due', 0, 1, '0.00', 20, 'yes', 1, '%', '0', 0, NULL, 12, 26),
(4, 17, '2019-06-13', '2019-06-18', '0.00', '0.00', '5.00', '7.00', '47000.00', '2', 'This is invlice 2 for show 30, booth 27, salesperson 12', 'due', 0, 0, '0.00', 0, 'yes', 1, '%', NULL, 0, NULL, 12, 27);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `product` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `totaltax` decimal(16,2) DEFAULT '0.00',
  `totaldiscount` decimal(16,2) DEFAULT '0.00',
  `product_des` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int(11) NOT NULL,
  `type` int(3) NOT NULL,
  `rid` int(11) NOT NULL,
  `col1` varchar(255) NOT NULL,
  `col2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `exp` text NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`id`, `pid`, `name`, `sdate`, `edate`, `exp`, `color`) VALUES
(1, 1, 'A1', '2019-04-24', '2019-04-24', '', '#0b97f4'),
(3, 2, 'sfs', '2019-05-10', '2019-05-10', '<p>dfsdf</p>', '#0b97f4'),
(4, 2, 'milestone 1', '2019-05-11', '2019-05-11', '<p>adfsedfedsfdsewf</p>', '#0b97f4'),
(5, 2, 'Desktop Pc', '2019-05-11', '2019-05-11', '<p>adadadfad</p>', '#0b97f4'),
(6, 2, 'Mile stone 2', '2019-05-20', '2019-05-20', '<p>Milestone 2</p>', '#0b97f4'),
(7, 2, 'this is new test', '2019-05-24', '2019-05-24', '<p>this is new test<br></p>', '#00ff00');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `cdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_payment`
--

CREATE TABLE `online_payment` (
  `id` int(11) NOT NULL,
  `default_acid` int(11) NOT NULL DEFAULT '1',
  `currency_code` varchar(3) NOT NULL,
  `enable` int(1) NOT NULL,
  `bank` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_payment`
--

INSERT INTO `online_payment` (`id`, `default_acid`, `currency_code`, `enable`, `bank`) VALUES
(1, 1, 'USD', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `packinglist_request_show`
--

CREATE TABLE `packinglist_request_show` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_request_qty` int(11) NOT NULL,
  `product_approve_qty` int(11) DEFAULT NULL,
  `product_requested_by` int(11) DEFAULT NULL,
  `product_approved_by` int(11) DEFAULT NULL,
  `product_requested_at` varchar(30) DEFAULT NULL,
  `product_approved_at` varchar(30) DEFAULT NULL,
  `show_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `product_confirm_at` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packinglist_request_show`
--

INSERT INTO `packinglist_request_show` (`id`, `product_id`, `product_request_qty`, `product_approve_qty`, `product_requested_by`, `product_approved_by`, `product_requested_at`, `product_approved_at`, `show_id`, `status`, `product_confirm_at`) VALUES
(55, 7, 50, 40, 15, 10, '2019-06-07 05:42:33', '2019-06-07 05:43:13', 22, 2, '2019-06-07 05:43:36'),
(56, 6, 40, 30, 15, 10, '2019-06-07 05:42:33', '2019-06-07 05:43:16', 22, 2, '2019-06-07 05:45:11'),
(57, 7, 20, 10, 15, 10, '2019-06-07 05:47:10', '2019-06-07 05:47:37', 22, 2, '2019-06-07 05:48:07'),
(58, 6, 30, 20, 15, 10, '2019-06-07 05:47:10', '2019-06-07 05:47:40', 22, 2, '2019-06-07 06:00:25'),
(59, 7, 30, 30, 15, 10, '2019-06-07 06:04:09', '2019-06-07 06:04:29', 22, 2, '2019-06-07 06:15:56'),
(60, 6, 40, 35, 15, 10, '2019-06-07 06:04:09', '2019-06-07 06:04:33', 22, 2, '2019-06-07 06:12:10'),
(61, 7, 20, 10, 15, 10, '2019-06-07 06:09:44', '2019-06-07 06:10:01', 22, 2, '2019-06-07 06:11:28'),
(62, 6, 20, 10, 15, 10, '2019-06-07 06:09:44', '2019-06-07 06:10:04', 22, 2, '2019-06-07 06:10:35'),
(63, 7, 10, 5, 15, 10, '2019-06-07 06:17:17', '2019-06-07 06:17:34', 22, 2, '2019-06-07 06:18:50'),
(64, 6, 10, 5, 15, 10, '2019-06-07 06:17:17', '2019-06-07 06:17:37', 22, 2, '2019-06-07 06:17:55'),
(65, 7, 10, 8, 13, 10, '2019-06-08 03:29:43', '2019-06-08 03:33:02', 23, 2, '2019-06-08 03:35:37'),
(66, 6, 5, 5, 13, 10, '2019-06-08 03:29:43', '2019-06-08 03:33:07', 23, 1, NULL),
(67, 7, 0, 15, 15, 10, '2019-06-10 08:06:01', '2019-06-11 02:33:46', 22, 1, NULL),
(68, 6, 2, 15, 15, 10, '2019-06-10 08:06:01', '2019-06-19 08:01:42', 22, 2, '2019-06-19 08:11:04'),
(69, 7, 10, 4, 15, 10, '2019-06-11 04:21:59', '2019-06-25 00:21:48', 22, 1, NULL),
(70, 6, 15, 15, 15, 10, '2019-06-11 04:22:00', '2019-06-11 05:01:58', 22, 2, '2019-06-19 07:48:37'),
(71, 7, 20, 15, 15, 10, '2019-06-11 04:55:55', '2019-06-11 04:56:38', 22, 2, '2019-06-11 05:20:02'),
(72, 6, 30, 15, 15, 10, '2019-06-11 04:55:55', '2019-06-11 04:56:35', 22, 2, '2019-06-11 04:57:13'),
(79, 7, 10, 7, 15, 10, '2019-06-11 10:00:20', '2019-06-11 10:02:50', 27, 2, '2019-06-12 00:25:08'),
(80, 6, 15, 7, 15, 10, '2019-06-11 10:00:20', '2019-06-11 10:03:06', 27, 2, '2019-06-11 10:07:44'),
(81, 7, 10, 15, 15, NULL, '2019-06-13 23:59:11', NULL, 27, 0, NULL),
(82, 6, 10, 5, 15, 10, '2019-06-13 23:59:11', '2019-06-14 00:01:16', 27, 2, '2019-06-14 00:02:39'),
(97, 7, 10, 7, 14, 10, '2019-06-14 04:52:47', '2019-06-14 04:53:44', 28, 2, '2019-06-14 04:54:29'),
(98, 6, 10, 15, 14, NULL, '2019-06-14 04:52:47', NULL, 28, 0, NULL),
(99, 7, 100, 12500, 15, 10, '2019-06-17 04:44:43', '2019-06-17 04:48:00', 32, 2, '2019-06-17 04:50:15'),
(100, 6, 50, 15, 15, NULL, '2019-06-17 04:44:43', NULL, 32, 0, NULL),
(101, 7, 150, 15, 15, NULL, '2019-06-17 04:47:10', NULL, 32, 0, NULL),
(102, 6, 200, 15, 15, NULL, '2019-06-17 04:47:10', NULL, 32, 0, NULL),
(103, 7, 1, 1, 15, 10, '2019-06-19 07:46:18', '2019-06-25 00:21:51', 22, 1, NULL),
(104, 6, 1, 1, 15, 10, '2019-06-19 07:46:18', '2019-06-25 00:21:56', 22, 1, NULL),
(105, 7, 4, 2, 15, 10, '2019-06-19 07:47:35', '2019-06-25 00:21:59', 22, 1, NULL),
(106, 6, 4, 4, 15, 10, '2019-06-19 07:47:35', '2019-06-25 00:22:02', 22, 1, NULL),
(107, 7, 4, 2, 15, 10, '2019-06-19 07:49:06', '2019-06-25 00:22:05', 22, 1, NULL),
(108, 6, 4, 3, 15, 10, '2019-06-19 07:49:06', '2019-06-25 00:22:09', 22, 1, NULL),
(109, 7, 22, 10, 15, 10, '2019-06-19 08:33:54', '2019-06-25 00:21:24', 22, 1, NULL),
(110, 6, 33, 8, 15, 10, '2019-06-19 08:33:54', '2019-06-25 00:21:21', 22, 1, NULL),
(111, 7, 6, 5, 15, 10, '2019-06-19 08:35:35', '2019-06-25 00:21:11', 22, 1, NULL),
(112, 6, 9, 15, 15, NULL, '2019-06-19 08:35:35', NULL, 22, 0, NULL),
(113, 7, 10, 15, 15, NULL, '2019-06-19 08:38:17', NULL, 27, 0, NULL),
(114, 6, 15, 15, 15, 10, '2019-06-19 08:38:17', '2019-06-19 08:40:04', 27, 1, NULL),
(115, 7, 50, 15, 15, NULL, '2019-06-20 00:08:34', NULL, 35, 0, NULL),
(116, 6, 50, 30, 15, 10, '2019-06-20 00:08:34', '2019-06-20 00:09:15', 35, 2, '2019-06-20 00:09:46'),
(117, 7, 21, 15, 15, NULL, '2019-06-20 04:59:23', NULL, 35, 0, NULL),
(118, 6, 25, 15, 15, NULL, '2019-06-20 04:59:23', NULL, 35, 0, NULL),
(119, 7, 5, 15, 15, NULL, '2019-06-20 05:01:28', NULL, 31, 0, NULL),
(120, 6, 7, 15, 15, NULL, '2019-06-20 05:01:28', NULL, 31, 0, NULL),
(121, 7, 700, 800, 15, 10, '2019-06-21 01:37:26', '2019-06-21 01:38:02', 34, 2, '2019-06-21 02:26:22'),
(122, 6, 20, 15, 15, 10, '2019-06-21 01:37:26', '2019-06-21 01:53:21', 34, 1, NULL),
(123, 7, 200, 15, 15, NULL, '2019-06-21 01:56:03', NULL, 34, 0, NULL),
(124, 6, 201, 20, 15, 10, '2019-06-21 01:56:03', '2019-06-21 02:00:33', 34, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enable` enum('Yes','No') NOT NULL,
  `key1` varchar(255) NOT NULL,
  `key2` varchar(255) DEFAULT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `dev_mode` enum('true','false') NOT NULL,
  `ord` int(5) NOT NULL,
  `surcharge` decimal(16,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `enable`, `key1`, `key2`, `currency`, `dev_mode`, `ord`, `surcharge`) VALUES
(1, 'Stripe', 'Yes', 'sk_test_secratekey', 'sk_test_publickey', 'USD', 'true', 1, '0.00'),
(2, 'Authorize.Net', 'Yes', 'TRANSACTIONKEY', 'LOGINID', 'AUD', 'true', 2, '0.00'),
(3, 'Pin Payments', 'Yes', 'TEST', 'none', 'AUD', 'true', 3, '0.00'),
(4, 'PayPal', 'Yes', 'MyPayPalClientId', 'MyPayPalSecret', 'USD', 'true', 4, '0.00'),
(5, 'SecurePay', 'Yes', 'ABC0001', 'abc123', 'AUD', 'true', 5, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `pcat` int(3) NOT NULL DEFAULT '1',
  `warehouse` int(11) NOT NULL DEFAULT '1',
  `product_name` varchar(50) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_price` decimal(16,2) DEFAULT '0.00',
  `fproduct_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(16,2) NOT NULL DEFAULT '0.00',
  `disrate` decimal(16,2) NOT NULL DEFAULT '0.00',
  `qty` int(11) NOT NULL,
  `product_des` text,
  `alert` int(11) NOT NULL,
  `product_width` varchar(30) DEFAULT NULL,
  `product_height` varchar(30) DEFAULT NULL,
  `product_lenght` varchar(30) DEFAULT NULL,
  `product_weight` varchar(30) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `quick_pick` int(11) DEFAULT NULL,
  `SKU_number` varchar(30) DEFAULT NULL,
  `UPC_barcode` text,
  `Package_quanity_in_bx` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pcat`, `warehouse`, `product_name`, `product_code`, `product_price`, `fproduct_price`, `taxrate`, `disrate`, `qty`, `product_des`, `alert`, `product_width`, `product_height`, `product_lenght`, `product_weight`, `color`, `quick_pick`, `SKU_number`, `UPC_barcode`, `Package_quanity_in_bx`) VALUES
(6, 1, 1, 'product_1', '874521', '1000.00', '5000.00', '20.00', '10.00', 728, 'product 1', 20, '20', '20', '20', '21', '#F45548', 0, '1254125412', '1245214521', 100),
(7, 1, 1, 'product_2', '874231', '3000.00', '2000.00', '1000.00', '0.00', 14900, 'this is product 2', 20, '20', '20', '45', '12', NULL, 0, '1254125412', '1452145214', 100);

-- --------------------------------------------------------

--
-- Table structure for table `product_cat`
--

CREATE TABLE `product_cat` (
  `id` int(3) NOT NULL,
  `title` varchar(100) NOT NULL,
  `extra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_cat`
--

INSERT INTO `product_cat` (`id`, `title`, `extra`) VALUES
(1, 'General', 'General Product Category');

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(3) NOT NULL,
  `title` varchar(100) NOT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `warehouse_type` int(11) NOT NULL DEFAULT '1' COMMENT '1 : warehouse , 2 : store, 3 : virtual TL',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `title`, `extra`, `warehouse_type`, `user_id`) VALUES
(1, 'Main Warehouse', 'Main Warehouse D', 1, 10),
(2, 'teamleader2 warehouse', 'This waarehouse is assign to team leader :  teamleader2', 3, 15),
(3, 'teamleaderwarehouse', 'Warehouse', 3, 13);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `p_id` varchar(20) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `status` enum('Waiting','Pending','Terminated','Finished','Progress') NOT NULL DEFAULT 'Pending',
  `priority` enum('Low','Medium','High','Urgent') DEFAULT 'Medium',
  `progress` int(3) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `sdate` date NOT NULL,
  `edate` date DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `phase` varchar(255) DEFAULT NULL,
  `note` text,
  `worth` decimal(16,2) DEFAULT '0.00',
  `ptype` int(1) DEFAULT NULL,
  `classification` varchar(30) NOT NULL,
  `quota` text NOT NULL,
  `budget` float NOT NULL,
  `employee_id` varchar(250) NOT NULL,
  `setupdate` date NOT NULL,
  `hourlyrate` float NOT NULL,
  `tlcomission` float NOT NULL,
  `default_warehouse` int(11) NOT NULL,
  `shipping_option` varchar(30) NOT NULL,
  `task_communication` int(11) NOT NULL,
  `setuptime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `p_id`, `name`, `status`, `priority`, `progress`, `cid`, `sdate`, `edate`, `tag`, `phase`, `note`, `worth`, `ptype`, `classification`, `quota`, `budget`, `employee_id`, `setupdate`, `hourlyrate`, `tlcomission`, `default_warehouse`, `shipping_option`, `task_communication`, `setuptime`) VALUES
(1, '1', 'Test show', 'Progress', 'Low', 0, 0, '2019-04-24', '2019-04-27', 'Some tag', 'Phase 1', '', '10000.00', 1, '', '', 0, '0', '2019-05-09', 0, 0, 0, '', 0, '00:00:00'),
(2, '1', 'abc', 'Progress', 'Medium', 0, NULL, '2019-05-10', NULL, 'hghj', NULL, '             This is dummy Notes.                                       ', '0.00', NULL, 'Store', '10', 100, '', '2019-05-10', 100, 100, 1, 'Pick-up', 1, '10:11:00'),
(3, '1', 'abc', 'Waiting', 'Medium', NULL, NULL, '2019-05-09', NULL, 'hghj', NULL, 'gjhgb', '0.00', NULL, 'Store', '10', 100, '10,11', '2019-05-03', 100, 100, 1, 'Ship', 0, '22:11:00'),
(4, '1', 'abc', 'Waiting', 'Medium', NULL, NULL, '2019-05-09', NULL, 'hghj', NULL, 'gjhgb', '0.00', NULL, 'Store', '10', 100, '10,11', '2019-05-03', 100, 100, 1, 'Ship', 0, '10:30:00'),
(5, '1', 'abc', 'Waiting', 'Medium', NULL, NULL, '2019-05-09', NULL, 'hghj', NULL, 'gjhgb', '0.00', NULL, 'Store', '10', 100, '10,11', '2019-05-03', 100, 100, 1, 'Ship', 0, '10:30:00'),
(6, '1', 'abc', 'Waiting', 'Medium', NULL, NULL, '2019-05-09', NULL, 'hghj', NULL, 'gjhgb', '0.00', NULL, 'Store', '10', 100, '10,11', '2019-05-01', 100, 100, 1, 'Ship', 0, '22:30:00'),
(7, '1', 'abc', 'Waiting', 'Medium', NULL, NULL, '2019-05-09', NULL, 'hghj', NULL, 'gjhgb', '0.00', NULL, 'Store', '10', 100, '10,11', '2019-05-02', 100, 100, 1, 'Ship', 0, '10:30:00'),
(8, '1', 'abc', 'Waiting', 'Medium', NULL, NULL, '2019-05-09', NULL, 'hghj', NULL, 'gjhgb', '0.00', NULL, 'store', '10', 100, '10,11', '2019-05-04', 100, 100, 1, 'Ship', 0, '03:00:00'),
(9, '1', 'Smart Phone', 'Waiting', 'Medium', NULL, NULL, '2019-05-11', NULL, 'Lorem,Ipsum,injected,humour', NULL, 'ABC', '0.00', NULL, 'store', '10', 10000, '10,11', '2019-05-03', 12, 12, 1, 'Ship', 0, '10:30:00'),
(10, '1', 'Smart Phone', 'Waiting', 'Medium', NULL, NULL, '2019-05-11', NULL, 'Lorem,Ipsum,passage,Finibus,Bonorum', NULL, 'sdsd', '0.00', NULL, 'store', '0', 0, '10,11', '2019-05-11', 12, 12, 1, 'Ship', 0, '10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `project_meta`
--

CREATE TABLE `project_meta` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `meta_key` int(11) NOT NULL,
  `meta_data` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `key3` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_meta`
--

INSERT INTO `project_meta` (`id`, `pid`, `meta_key`, `meta_data`, `value`, `key3`) VALUES
(1, 1, 12, NULL, '[Project Created]  @2019-04-24 04:15:59', NULL),
(2, 1, 2, 'true', 'true', NULL),
(4, 1, 12, NULL, '[Project Edited]  @2019-04-24 04:16:31', NULL),
(5, 1, 19, '10', NULL, NULL),
(6, 1, 12, NULL, '[Milestone] A1 @2019-04-24 04:18:53', NULL),
(7, 1, 8, '1', '1', NULL),
(8, 0, 2, NULL, NULL, NULL),
(9, 0, 19, '10', NULL, NULL),
(10, 0, 2, NULL, NULL, NULL),
(11, 0, 19, '10', NULL, NULL),
(12, 0, 19, '11', NULL, NULL),
(13, 0, 2, NULL, NULL, NULL),
(14, 0, 19, '10', NULL, NULL),
(15, 0, 2, NULL, NULL, NULL),
(16, 0, 19, '10', NULL, NULL),
(17, 0, 2, NULL, NULL, NULL),
(18, 0, 19, '10', NULL, NULL),
(19, 0, 2, NULL, NULL, NULL),
(20, 0, 19, '10', NULL, NULL),
(21, 0, 2, NULL, NULL, NULL),
(22, 0, 19, '10', NULL, NULL),
(23, 0, 2, NULL, NULL, NULL),
(24, 0, 19, '10', NULL, NULL),
(25, 0, 2, NULL, NULL, NULL),
(26, 0, 19, '10', NULL, NULL),
(27, 0, 2, NULL, NULL, NULL),
(28, 0, 19, '10', NULL, NULL),
(29, 0, 2, NULL, NULL, NULL),
(30, 0, 19, '10', NULL, NULL),
(31, 0, 2, NULL, NULL, NULL),
(32, 0, 19, '10', NULL, NULL),
(33, 0, 2, NULL, NULL, NULL),
(34, 0, 19, '10', NULL, NULL),
(35, 0, 2, NULL, NULL, NULL),
(36, 0, 19, '10', NULL, NULL),
(37, 0, 2, NULL, NULL, NULL),
(38, 0, 19, '10', NULL, NULL),
(39, 0, 2, NULL, NULL, NULL),
(40, 0, 19, '10', NULL, NULL),
(41, 0, 2, NULL, NULL, NULL),
(42, 0, 19, '10', NULL, NULL),
(43, 0, 2, NULL, NULL, NULL),
(44, 0, 19, '10', NULL, NULL),
(45, 0, 2, NULL, NULL, NULL),
(46, 0, 19, '10', NULL, NULL),
(47, 0, 2, NULL, NULL, NULL),
(48, 0, 2, NULL, NULL, NULL),
(49, 0, 2, NULL, NULL, NULL),
(50, 0, 2, NULL, NULL, NULL),
(51, 0, 2, NULL, NULL, NULL),
(52, 0, 19, '10', NULL, NULL),
(53, 0, 2, NULL, NULL, NULL),
(54, 0, 19, '10', NULL, NULL),
(55, 0, 2, NULL, NULL, NULL),
(56, 0, 19, '10', NULL, NULL),
(57, 0, 2, NULL, NULL, NULL),
(58, 0, 19, '10', NULL, NULL),
(59, 0, 2, NULL, NULL, NULL),
(60, 0, 2, NULL, NULL, NULL),
(61, 0, 2, NULL, NULL, NULL),
(62, 0, 2, NULL, NULL, NULL),
(63, 0, 2, NULL, NULL, NULL),
(64, 0, 2, NULL, NULL, NULL),
(65, 0, 2, NULL, NULL, NULL),
(66, 2, 12, NULL, '[Project Created]  @2019-05-09 05:26:24', NULL),
(67, 2, 2, NULL, NULL, NULL),
(68, 4, 12, NULL, '[Project Created]  @2019-05-09 05:29:25', NULL),
(69, 4, 2, NULL, NULL, NULL),
(70, 5, 12, NULL, '[Project Created]  @2019-05-09 05:31:20', NULL),
(71, 5, 2, NULL, NULL, NULL),
(72, 6, 12, NULL, '[Project Created]  @2019-05-09 05:33:54', NULL),
(73, 6, 2, NULL, NULL, NULL),
(74, 7, 12, NULL, '[Project Created]  @2019-05-09 05:35:10', NULL),
(75, 7, 2, NULL, NULL, NULL),
(76, 0, 2, NULL, NULL, NULL),
(77, 0, 2, NULL, NULL, NULL),
(78, 8, 12, NULL, '[Project Created]  @2019-05-09 05:41:36', NULL),
(79, 8, 2, NULL, NULL, NULL),
(80, 1, 12, NULL, '[Milestone] Smart Phone @2019-05-09 23:49:12', NULL),
(81, 2, 12, NULL, '[Milestone] sfs @2019-05-09 23:50:53', NULL),
(82, 1, 12, NULL, 'Smart Phone @2019-05-09 23:53:29', NULL),
(83, 1, 12, NULL, 'Desktop Pc @2019-05-09 23:55:57', NULL),
(84, 1, 12, NULL, 'jhon doe @2019-05-09 23:56:05', NULL),
(85, 1, 12, NULL, 'Tablets @2019-05-09 23:56:32', NULL),
(86, 1, 12, NULL, 'Mobile Accessories @2019-05-09 23:56:44', NULL),
(87, 1, 12, NULL, 'jhon doe @2019-05-09 23:56:58', NULL),
(88, 1, 12, NULL, 'Smart Phone @2019-05-09 23:57:26', NULL),
(89, 1, 12, NULL, 'Smart Phone @2019-05-10 00:03:28', NULL),
(90, 1, 12, NULL, 'Mobile Accessories @2019-05-10 00:04:25', NULL),
(91, 1, 12, NULL, 'Mobile Accessories @2019-05-10 00:05:09', NULL),
(92, 1, 12, NULL, 'Smart Phone @2019-05-10 00:05:16', NULL),
(93, 1, 12, NULL, 'aaa @2019-05-10 00:06:34', NULL),
(94, 1, 12, NULL, 'Smart Phone @2019-05-10 00:07:01', NULL),
(95, 1, 12, NULL, 'ASD @2019-05-10 00:07:17', NULL),
(96, 2, 12, NULL, '[Project Edited]  @2019-05-10 02:43:04', NULL),
(97, 2, 12, NULL, '[Project Edited]  @2019-05-10 02:43:33', NULL),
(98, 2, 12, NULL, '[Project Edited]  @2019-05-10 02:47:45', NULL),
(99, 2, 12, NULL, '[Show Edited]  @2019-05-10 06:00:17', NULL),
(100, 2, 12, NULL, 'Mobile Accessories @2019-05-10 06:02:16', NULL),
(101, 2, 12, NULL, 'shivani joshi @2019-05-10 06:12:10', NULL),
(102, 2, 12, NULL, '[Show Edited]  @2019-05-10 06:17:34', NULL),
(103, 2, 8, '3', '2', NULL),
(104, 2, 8, '3', '3', NULL),
(105, 2, 12, NULL, '[Milestone] milestone 1 @2019-05-11 03:27:13', NULL),
(106, 2, 12, NULL, '[Milestone] Desktop Pc @2019-05-11 04:09:46', NULL),
(107, 9, 12, NULL, '[Project Created]  @2019-05-11 04:38:09', NULL),
(108, 9, 2, NULL, NULL, NULL),
(109, 10, 12, NULL, '[Project Created]  @2019-05-11 04:39:25', NULL),
(110, 10, 2, NULL, NULL, NULL),
(111, 16, 2, NULL, NULL, NULL),
(112, 2, 13, '10', 'sdefdsafdsafdsaf<br><small>@2019-05-16 02:38:16</small>', NULL),
(113, 2, 13, '10', 'dfSFcsdfdfczxcZDF<br><small>@2019-05-16 02:40:03</small>', NULL),
(114, 2, 13, '10', 'dfsFdSF<br><small>@2019-05-16 02:47:15</small>', NULL),
(115, 2, 13, '10', 'thvbyvy65yv6<br><small>@2019-05-16 03:11:00</small>', NULL),
(116, 2, 12, NULL, '[Milestone] Mile stone 2 @2019-05-20 06:19:17', NULL),
(117, 2, 8, '6', '4', NULL),
(118, 2, 12, NULL, '[Milestone] this is new test @2019-05-24 06:12:58', NULL),
(119, 1, 8, '1', '4', NULL),
(120, 1, 8, '1', '5', NULL),
(121, 1, 8, '1', '6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `invoicedate` date NOT NULL,
  `invoiceduedate` date NOT NULL,
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `shipping` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `total` decimal(16,2) DEFAULT '0.00',
  `pmethod` varchar(14) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` enum('paid','due','canceled','partial') DEFAULT 'due',
  `csd` int(5) NOT NULL DEFAULT '0',
  `eid` int(4) NOT NULL,
  `pamnt` decimal(16,2) DEFAULT '0.00',
  `items` int(11) NOT NULL,
  `taxstatus` enum('yes','no') DEFAULT 'yes',
  `discstatus` tinyint(1) NOT NULL,
  `format_discount` enum('%','flat','b_p','bflat') DEFAULT NULL,
  `refer` varchar(20) DEFAULT NULL,
  `term` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `product` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(16,2) DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `totaltax` decimal(16,2) DEFAULT '0.00',
  `totaldiscount` decimal(16,2) DEFAULT '0.00',
  `product_des` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `invoicedate` date NOT NULL,
  `invoiceduedate` date NOT NULL,
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `shipping` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `total` decimal(16,2) DEFAULT '0.00',
  `pmethod` varchar(14) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` enum('pending','accepted','rejected') DEFAULT 'pending',
  `csd` int(5) NOT NULL DEFAULT '0',
  `eid` int(4) NOT NULL,
  `pamnt` decimal(16,2) NOT NULL,
  `items` int(11) NOT NULL,
  `taxstatus` enum('yes','no') DEFAULT 'yes',
  `discstatus` tinyint(1) NOT NULL,
  `format_discount` enum('%','flat','b_p','bflat') DEFAULT '%',
  `refer` varchar(20) DEFAULT NULL,
  `term` int(3) NOT NULL,
  `proposal` text,
  `multi` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotes_items`
--

CREATE TABLE `quotes_items` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `product` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(16,2) DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `totaltax` decimal(16,2) DEFAULT '0.00',
  `totaldiscount` decimal(16,2) DEFAULT '0.00',
  `product_des` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rec_invoices`
--

CREATE TABLE `rec_invoices` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `invoicedate` date NOT NULL,
  `invoiceduedate` date NOT NULL,
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `shipping` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `total` decimal(16,2) DEFAULT '0.00',
  `pmethod` varchar(14) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` enum('paid','due','canceled','partial') NOT NULL DEFAULT 'due',
  `csd` int(5) NOT NULL DEFAULT '0',
  `eid` int(4) NOT NULL,
  `pamnt` decimal(16,2) DEFAULT '0.00',
  `items` int(11) NOT NULL,
  `taxstatus` enum('yes','no') DEFAULT 'yes',
  `discstatus` tinyint(1) DEFAULT NULL,
  `format_discount` enum('%','flat','b_p','bflat') DEFAULT '%',
  `refer` varchar(20) DEFAULT NULL,
  `term` int(3) NOT NULL,
  `rec` varchar(10) NOT NULL,
  `ron` enum('Recurring','Stopped') DEFAULT 'Recurring',
  `multi` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rec_invoice_items`
--

CREATE TABLE `rec_invoice_items` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `product` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(16,2) DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `totaltax` decimal(16,2) DEFAULT '0.00',
  `totaldiscount` decimal(16,2) DEFAULT '0.00',
  `product_des` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` int(4) NOT NULL,
  `invoices` int(11) NOT NULL,
  `sales` decimal(16,2) DEFAULT '0.00',
  `items` int(11) NOT NULL,
  `income` decimal(16,2) DEFAULT '0.00',
  `expense` decimal(16,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesperson_request`
--

CREATE TABLE `salesperson_request` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_request_qty` int(11) NOT NULL,
  `product_approve_qty` int(11) NOT NULL,
  `product_requested_by` int(11) NOT NULL,
  `product_requested_to` int(11) NOT NULL,
  `product_approved_by` int(11) NOT NULL,
  `product_requested_at` varchar(30) DEFAULT NULL,
  `product_approved_at` varchar(30) DEFAULT NULL,
  `show_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `product_confirm_at` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesperson_request`
--

INSERT INTO `salesperson_request` (`id`, `product_id`, `product_request_qty`, `product_approve_qty`, `product_requested_by`, `product_requested_to`, `product_approved_by`, `product_requested_at`, `product_approved_at`, `show_id`, `status`, `product_confirm_at`) VALUES
(19, 7, 5, 4, 16, 15, 15, '2019-06-12 08:56:34', '2019-06-12 09:02:38', 27, 2, '2019-06-12 09:03:34'),
(20, 6, 5, 4, 16, 15, 15, '2019-06-12 08:56:34', '2019-06-12 08:59:33', 27, 1, NULL),
(21, 7, 10, 0, 16, 15, 0, '2019-06-14 00:12:22', NULL, 27, 0, NULL),
(22, 6, 10, 0, 16, 15, 0, '2019-06-14 00:12:22', NULL, 27, 0, NULL),
(23, 7, 7, 0, 16, 14, 0, '2019-06-14 04:56:17', NULL, 28, 0, NULL),
(24, 6, 11, 0, 16, 14, 0, '2019-06-14 04:56:17', NULL, 28, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showbooth`
--

CREATE TABLE `showbooth` (
  `id` int(11) NOT NULL,
  `size` varchar(30) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `teamleader_id` varchar(200) DEFAULT NULL,
  `prid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showbooth`
--

INSERT INTO `showbooth` (`id`, `size`, `cost`, `description`, `product_id`, `teamleader_id`, `prid`, `user_id`) VALUES
(3, '10', '22', 'Booth 1', 1, '13', 2, 10),
(4, '14', '233', 'Booth 2', 1, '11,13', 2, 10),
(5, '3ft', '12.5', ' This is Test Check', 2, '11', 2, 13),
(8, '15ft', '15000', 'This is Booth for show Show twsting', 1, '13', 18, 10),
(9, '17ft', '1500', 'This is second booth for Show Testing', 1, '13', 18, 10),
(10, '18Ft', '2999', 'This is check for activity log', 1, '13', 18, 10),
(11, '24ft', '55', 'This is booth 1 for show 22', 6, '14', 22, 10),
(12, '15ft', '25000', 'This is for product 3', 7, '15', 22, 10),
(13, '15th ft', '2000', 'This is test booth', 5, '14', 23, 10),
(14, '14ft', '3000', 'This is demo of booth', 6, '14,15', 23, 10),
(15, '12 x56', '1200', '77888', 6, '13', 23, 10),
(16, '12', '12', 'Test description', 6, '14', 22, 10),
(17, '13', '13', 'Test descr iption final', 7, '14', 22, 10),
(18, '14', '14', '', 6, NULL, 22, 10),
(19, '15ft', '3000', ' This is test 1', 6, '15', 27, 10),
(20, '15ft', '2000', '', 6, NULL, 28, 10),
(21, '15ft', '1500', '', 6, NULL, 29, 10),
(22, '15ft', '1200', 'This is TEST Booth', 6, NULL, 32, 10),
(23, '17ft', '1250', '  This is test 2', 7, '14', 32, 10),
(24, '20ft', '400', 'Test 3', 6, NULL, 32, 10),
(25, '17ft', '2000', 'This is booth 2 for show project_1 27', 7, '15', 27, 10),
(26, '7ft', '2000', 'This is test booth for show SDA 30', 6, NULL, 30, 10),
(27, '5ft', '4500', 'This is test booth for show SDA 30 123', 7, NULL, 30, 10),
(28, '15ft', '1750', 'This is discription', 6, '19', 33, 10),
(29, '12ft', '1670', 'Booth Yesha panwala', 6, '20', 33, 10);

-- --------------------------------------------------------

--
-- Table structure for table `showmeta`
--

CREATE TABLE `showmeta` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `metakey` int(11) NOT NULL,
  `meatadata` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL,
  `key3` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showmeta`
--

INSERT INTO `showmeta` (`id`, `sid`, `metakey`, `meatadata`, `value`, `key3`) VALUES
(1, 2, 12, '', 'Desktop Pc @2019-05-10 06:53:26', NULL),
(2, 2, 12, '', 'Desktop Pc @2019-05-10 08:09:37', NULL),
(3, 2, 12, '', '[Milestone] Desktop Pc @2019-05-11 04:11:26', NULL),
(4, 16, 12, '', '[Show Created]  @2019-05-11 05:09:29', NULL),
(5, 16, 12, '', '[Show Edited]  @2019-05-11 05:25:45', NULL),
(6, 16, 12, '', '[Show Edited]  @2019-05-11 05:26:02', NULL),
(7, 5, 12, '', '[Show Edited]  @2019-05-11 05:33:32', NULL),
(8, 2, 12, '', '[Show Edited]  @2019-05-11 05:37:03', NULL),
(9, 2, 13, '10', 'sdfsg<br><small>@2019-05-16 03:26:15</small>', NULL),
(10, 2, 13, '10', 'sdfsg<br><small>@2019-05-16 03:26:21</small>', NULL),
(11, 2, 13, '10', 'dfsdfdsf<br><small>@2019-05-16 03:27:10</small>', NULL),
(12, 2, 12, '', '[Milestone] Social Media @2019-05-20 05:25:37', NULL),
(18, 2, 12, '', 'ghfghfghfgh @2019-05-24 05:22:46', NULL),
(15, 17, 12, '', '[Show Created]  @2019-05-21 05:52:20', NULL),
(16, 18, 12, '', '[Show Created]  @2019-05-21 07:44:12', NULL),
(40, 18, 10, '', 'Milestone_1[Milestone Added]  @2019-05-27 05:43:24', NULL),
(19, 2, 9, '579', '842730HowtofixMsvcr110.dllerrors-DLLDownloader.com.txt', NULL),
(21, 2, 12, '', '[Milestone] Mobile Accessories @2019-05-24 05:46:18', NULL),
(22, 2, 12, '', '[Milestone] Smart Phone @2019-05-24 05:47:23', NULL),
(23, 2, 12, '', '[Milestone] jhon doe @2019-05-24 05:48:32', NULL),
(24, 2, 12, '', '[Milestone] this is new test @2019-05-24 06:13:36', NULL),
(25, 2, 12, '', 'fvdzfzfdf @2019-05-24 06:18:51', NULL),
(26, 2, 9, '7660', '183440TaskDetails.txt', NULL),
(41, 22, 12, '', '[Show Created]  @2019-05-27 06:59:10', NULL),
(28, 2, 12, '', '[Milestone] beff @2019-05-24 06:44:28', NULL),
(29, 2, 10, '', 'admin @2019-05-25 01:40:32', NULL),
(30, 2, 10, '', 'admin @2019-05-25 01:43:18', NULL),
(31, 2, 10, '', 'jhon doe [Milestone Deleted] admin @2019-05-25 01:44:01', NULL),
(32, 2, 12, '', '[Milestone] Smart Phone @2019-05-25 02:39:18', NULL),
(33, 2, 12, '', '[Milestone] Smart Phone @2019-05-25 02:45:49', NULL),
(34, 2, 12, '', '[Milestone] Smart Phone @2019-05-25 02:48:03', NULL),
(35, 2, 10, '', 'm1[Milestone Added] admin @2019-05-25 02:56:14', NULL),
(36, 2, 10, '', 'this is new test [Milestone Deleted]  @2019-05-25 03:08:07', NULL),
(37, 2, 10, '', 'm1 [Milestone Deleted]  @2019-05-25 03:15:42', NULL),
(38, 2, 10, '', 'M1[Milestone Added]  @2019-05-25 03:21:37', NULL),
(42, 18, 5, '', '[Booth Added]  @2019-05-27 07:23:31', NULL),
(43, 18, 9, '9253', '7680112019-05-271243registerednurse.png', NULL),
(44, 22, 5, '', '[Booth Added]  @2019-05-31 06:07:01', NULL),
(45, 22, 10, '', 'milestone 1[Milestone Added]  @2019-05-31 06:10:59', NULL),
(46, 22, 5, '', '[Booth Added]  @2019-06-06 02:54:21', NULL),
(47, 23, 12, '', '[Show Created]  @2019-06-06 11:39:00', NULL),
(48, 23, 5, '', '[Booth Added]  @2019-06-06 11:39:52', NULL),
(49, 23, 5, '', '[Booth Added]  @2019-06-06 11:39:59', NULL),
(50, 23, 5, '', '[Booth Added]  @2019-06-06 15:39:15', NULL),
(51, 23, 5, '', '[Booth Added]  @2019-06-06 15:50:17', NULL),
(52, 22, 10, '', 'Milestone 2[Milestone Added]  @2019-06-07 00:56:21', NULL),
(53, 24, 12, '', '[Show Created]  @2019-06-07 02:29:55', NULL),
(54, 25, 12, '', '[Show Created]  @2019-06-07 02:30:50', NULL),
(55, 26, 12, '', '[Show Created]  @2019-06-07 02:31:59', NULL),
(56, 23, 5, '', '[Booth Added]  @2019-06-08 03:16:46', NULL),
(57, 23, 5, '', '[Booth Added]  @2019-06-08 03:19:47', NULL),
(58, 22, 5, '', '[Booth Added]  @2019-06-10 02:24:38', NULL),
(59, 22, 5, '', '[Booth Added]  @2019-06-10 02:26:30', NULL),
(60, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:17', NULL),
(61, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:19', NULL),
(62, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:19', NULL),
(63, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:20', NULL),
(64, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:20', NULL),
(65, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:20', NULL),
(66, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:20', NULL),
(67, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:20', NULL),
(68, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:20', NULL),
(69, 22, 5, '', '[Booth Added]  @2019-06-10 02:29:24', NULL),
(70, 22, 5, '', '[Booth Added]  @2019-06-10 02:32:31', NULL),
(71, 22, 5, '', '[Booth Added]  @2019-06-10 02:33:53', NULL),
(72, 22, 10, '', 'Milestone 2 [Milestone Deleted]  @2019-06-11 03:47:02', NULL),
(73, 27, 12, '', '[Show Created]  @2019-06-11 09:17:23', NULL),
(74, 27, 5, '', '[Booth Added]  @2019-06-11 09:51:37', NULL),
(75, 28, 12, '', '[Show Created]  @2019-06-14 02:59:53', NULL),
(76, 28, 5, '', '[Booth Added]  @2019-06-14 03:00:55', NULL),
(77, 29, 12, '', '[Show Created]  @2019-06-14 05:20:16', NULL),
(78, 29, 5, '', '[Booth Added]  @2019-06-14 05:25:39', NULL),
(79, 29, 9, '2725', '974523venaktdiscussion.txt', NULL),
(80, 30, 12, '', '[Show Created]  @2019-06-14 06:17:25', NULL),
(81, 31, 12, '', '[Show Created]  @2019-06-14 06:42:01', NULL),
(82, 27, 10, '', 'ml1[Milestone Added]  @2019-06-14 07:27:33', NULL),
(83, 32, 12, '', '[Show Created]  @2019-06-14 07:46:51', NULL),
(84, 32, 5, '', '[Booth Added]  @2019-06-17 02:35:04', NULL),
(85, 32, 5, '', '[Booth Added]  @2019-06-17 02:38:21', NULL),
(86, 32, 5, '', '[Booth Added]  @2019-06-17 02:39:50', NULL),
(87, 32, 10, '', 'milestone 1[Milestone Added]  @2019-06-17 02:44:10', NULL),
(88, 32, 10, '', 'Mlestone 2[Milestone Added]  @2019-06-17 03:04:26', NULL),
(89, 32, 12, '', '[Show Edited]  @2019-06-17 03:16:30', NULL),
(90, 32, 12, '', '[Show Edited]  @2019-06-17 03:23:42', NULL),
(91, 32, 12, '', '[Show Edited]  @2019-06-17 03:25:41', NULL),
(92, 32, 12, '', '[Show Edited]  @2019-06-17 03:26:35', NULL),
(93, 32, 12, '', '[Show Edited]  @2019-06-17 03:26:55', NULL),
(94, 32, 10, '', 'Milestone 2[Milestone Added]  @2019-06-18 06:16:56', NULL),
(95, 27, 12, '', '[Show Edited]  @2019-06-19 00:30:48', NULL),
(96, 33, 12, '', '[Show Created]  @2019-06-19 06:27:47', NULL),
(97, 34, 12, '', '[Show Created]  @2019-06-19 06:52:09', NULL),
(98, 35, 12, '', '[Show Created]  @2019-06-19 07:14:01', NULL),
(99, 34, 12, '', '[Show Edited]  @2019-06-21 00:41:44', NULL),
(100, 36, 12, '', '[Show Created]  @2019-06-21 00:45:16', NULL),
(101, 33, 12, '', '[Show Edited]  @2019-06-21 01:02:39', NULL),
(102, 37, 12, '', '[Show Created]  @2019-06-21 01:04:58', NULL),
(103, 38, 12, '', '[Show Created]  @2019-06-21 01:32:40', NULL),
(104, 27, 5, '', '[Booth Added]  @2019-06-22 02:50:18', NULL),
(105, 30, 5, '', '[Booth Added]  @2019-06-22 02:56:40', NULL),
(106, 30, 5, '', '[Booth Added]  @2019-06-22 02:57:17', NULL),
(107, 33, 5, '', '[Booth Added]  @2019-06-22 06:47:10', NULL),
(108, 33, 5, '', '[Booth Added]  @2019-06-22 06:47:39', NULL),
(109, 39, 12, '', '[Show Created]  @2019-07-02 07:58:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `showmilestone`
--

CREATE TABLE `showmilestone` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `exp` text NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showmilestone`
--

INSERT INTO `showmilestone` (`id`, `pid`, `name`, `sdate`, `edate`, `exp`, `color`) VALUES
(9, 2, 'M1', '2019-05-25', '2019-05-25', '<p>M1</p>', '#0b97f4'),
(10, 18, 'Milestone_1', '2019-05-27', '2019-05-27', '<p>Milestone_1<br></p>', '#0b97f4'),
(11, 22, 'milestone 1', '2019-05-27', '2019-05-27', '<p>This is milestone first<br></p>', '#e01f54'),
(13, 27, 'ml1', '2019-06-14', '2019-06-14', '<p>sdsd<br></p>', '#0b97f4'),
(14, 32, 'milestone 1', '2019-06-17', '2019-06-18', '<p>milestone 1<br></p>', '#0b97f4'),
(16, 32, 'Milestone 2', '2019-06-18', '2019-06-18', '<p>Mileston 2<br></p>', '#0b97f4');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `show_id` varchar(255) DEFAULT NULL,
  `show_name` varchar(255) NOT NULL,
  `show_status` enum('Waiting','Pending','Terminated','Finished') NOT NULL DEFAULT 'Waiting',
  `show_attendence` float NOT NULL,
  `show_budget` decimal(10,0) NOT NULL,
  `show_quota` float NOT NULL,
  `show_assign_to` varchar(255) DEFAULT NULL,
  `show_start_date` date NOT NULL,
  `show_end_date` date NOT NULL,
  `show_setup_date` date NOT NULL,
  `show_setup_time` time DEFAULT NULL,
  `show_hourly_wage` float NOT NULL,
  `show_note` text NOT NULL,
  `show_tl_commission` float NOT NULL,
  `show_default_warehouse` int(11) NOT NULL,
  `show_shipping_option` varchar(30) NOT NULL,
  `show_tag` text NOT NULL,
  `show_task_communication` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `show_id`, `show_name`, `show_status`, `show_attendence`, `show_budget`, `show_quota`, `show_assign_to`, `show_start_date`, `show_end_date`, `show_setup_date`, `show_setup_time`, `show_hourly_wage`, `show_note`, `show_tl_commission`, `show_default_warehouse`, `show_shipping_option`, `show_tag`, `show_task_communication`, `created_at`) VALUES
(2, '1002', 'XYX', 'Finished', 10, '100', 1000, '11,12', '2019-05-11', '2019-05-12', '2019-05-11', '10:30:00', 10000, 'This is my test', 100000, 1, 'Pick-up', 'hbjjhnkj', 1, '2019-05-09 12:03:16'),
(23, 'SW_4R7OD', 'The Show', 'Waiting', 0, '0', 0, '11,12', '2019-06-12', '2019-07-13', '2019-06-08', '04:08:00', 0, '', 0, 1, 'Ship', 'Sometag', 0, '2019-06-06 15:39:00'),
(24, 'SW_6VQ10', 'Smart Phone', 'Waiting', 0, '0', 0, '12', '2019-06-05', '2019-06-11', '2019-06-03', '10:00:00', 0, '<p>lmkl</p>', 0, 1, 'Ship', 'Lorem,Ipsum,injected,humour', 0, '2019-06-07 06:29:55'),
(18, 'SHOW123', 'show testing', 'Waiting', 10, '500', 20, '11,12', '2019-05-01', '2019-05-16', '2019-05-09', '10:30:00', 10, '<p>Hi, This is dummy Data.&nbsp;</p>', 100000, 1, 'Ship', 'scsadc', 1, '2019-05-21 11:44:12'),
(22, 'SW_390DU', 'Pr1', 'Waiting', 0, '0', 0, '11', '2019-05-27', '2019-05-27', '2019-05-27', '10:30:00', 10, '<p>ABC</p>', 100000, 1, 'Ship', 'scsadc', 1, '2019-05-27 10:59:10'),
(26, 'SW_YUB2F', 'ASD', 'Waiting', 0, '0', 0, '16', '2019-06-04', '2019-06-18', '2019-06-12', '10:01:00', 0, '<p>efrefr<br></p>', 0, 1, 'Ship', 'asd', 0, '2019-06-07 06:31:59'),
(27, 'SW_XSSRX', 'project_1 testing', 'Waiting', 10, '10000', 10, '16', '2019-06-19', '2019-06-19', '2019-06-19', '00:00:00', 10, '<p>This is test add show testing. <br></p>', 10, 1, 'Ship', 'tag1', 1, '2019-06-11 13:17:23'),
(28, 'SW_BYCTE', 'Bombay', 'Waiting', 10, '10000', 10, '16', '2019-06-07', '2019-06-14', '2019-06-09', '10:00:00', 10, '            ', 10, 1, 'Ship', 'abc', 0, '2019-06-14 06:59:53'),
(29, 'SW_V5RBC', 'Delhi', 'Waiting', 0, '0', 0, '16', '2019-06-14', '2019-06-15', '2019-06-13', '10:00:00', 0, '            ', 0, 1, 'Ship', 'test', 0, '2019-06-14 09:20:16'),
(30, 'SW_CVAZ8', 'sda', 'Waiting', 0, '0', 0, '12,16', '2019-05-29', '2019-06-13', '2019-06-03', '10:00:00', 0, '<p>sad<br></p>', 0, 1, 'Ship', 'ABC', 0, '2019-06-14 10:17:25'),
(31, 'SW_DW2Z2', 'ssadasd', 'Waiting', 10, '100000', 10, '16', '2019-06-06', '2019-06-12', '2019-06-09', '00:00:00', 10, '', 10, 1, 'Ship', 'abc', 0, '2019-06-14 10:42:01'),
(32, 'SW_W64N4', '12345', 'Waiting', 15, '30', 10, '12', '2019-06-17', '2019-06-17', '2019-06-17', '00:00:00', 2, '            <b>This is updated Notes.</b><br>', 5, 1, 'Ship', '123434', 0, '2019-06-14 11:46:51'),
(33, 'SW_30B0F', 'yesha panwala', 'Pending', 5, '5', 5, '11,12,16', '2019-06-21', '2019-06-21', '2019-06-21', '00:00:00', 2, '<p>ABC<br></p>', 5, 1, 'Ship', 'moving company,big boys moving', 0, '2019-06-19 10:27:47'),
(34, 'SW_964X1', 'Any', 'Waiting', 2, '2', 2, '11,16', '2019-06-21', '2019-06-21', '2019-06-21', '00:00:00', 2, '<p>ABC<br></p>', 5, 1, 'Pick-up', 'moving company,big boys moving', 1, '2019-06-19 10:52:09'),
(35, 'SW_5ZY7U', 'Marriage function', 'Waiting', 2, '2', 2, '16', '2019-06-18', '2019-06-21', '2019-06-16', '00:00:00', 2, '', 2, 1, 'Ship', 'moving company,big boys moving', 1, '2019-06-19 11:14:01'),
(36, 'SW_OFCSQ', 'show test', 'Waiting', 2, '2', 2, '16', '2019-06-22', '2019-06-23', '2019-06-22', '10:30:00', 2, '<p>Notes<br></p>', 2, 1, 'Ship', 'ABC', 1, '2019-06-21 04:45:16'),
(37, 'SW_UD7TT', 'show_check', 'Pending', 2, '3', 2, '16', '2019-06-21', '2019-06-21', '2019-06-21', '00:00:00', 1, '<p>testing<br></p>', 1, 1, 'Pick-up', 'tag1', 0, '2019-06-21 05:04:58'),
(38, 'SW_UZB8Z', 'e1', 'Waiting', 1, '1', 1, '12', '2019-06-21', '2019-06-22', '2019-06-20', '00:00:00', 1, '<p>1</p>', 1, 1, 'Ship', 'scsadc', 0, '2019-06-21 05:32:40'),
(39, 'SW_BT3TR', 'aaaaa', 'Waiting', 0, '0', 0, '16', '2019-07-02', '2019-07-04', '2019-07-02', '10:30:00', 0, '<p>This is test baseurl<br></p>', 0, 1, 'Ship', 'as', 0, '2019-07-02 11:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `showtodolist`
--

CREATE TABLE `showtodolist` (
  `id` int(11) NOT NULL,
  `showtaskname` varchar(200) NOT NULL,
  `showtaskstatus` enum('Due','Done','Progress','') NOT NULL,
  `showtaskdate` date NOT NULL,
  `showtaskstart` date NOT NULL,
  `showtaskdue` date NOT NULL,
  `showtaskdescription` text NOT NULL,
  `showtaskeid` int(11) DEFAULT NULL,
  `showtaskaid` int(11) NOT NULL,
  `showrelated` int(11) NOT NULL,
  `showpriority` enum('Low','Medium','High','Urgent') NOT NULL,
  `sid` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showtodolist`
--

INSERT INTO `showtodolist` (`id`, `showtaskname`, `showtaskstatus`, `showtaskdate`, `showtaskstart`, `showtaskdue`, `showtaskdescription`, `showtaskeid`, `showtaskaid`, `showrelated`, `showpriority`, `sid`, `milestone_id`) VALUES
(11, 'Task 1', 'Done', '2019-05-13', '2019-05-13', '2019-05-13', 'Task 1 for milestone 1', 11, 11, 1, 'Medium', 2, 9),
(12, 'Task 2', 'Due', '2019-05-13', '2019-05-13', '2019-05-13', 'Task 2 for milestone 1', 13, 11, 1, 'Low', 2, 9),
(13, 'Smart Phone', 'Due', '2019-05-27', '2019-05-27', '2019-05-27', '<p>ABC</p>', 13, 10, 1, 'Low', 18, 10),
(14, 'Task 1', 'Due', '2019-05-31', '2019-05-27', '2019-05-27', '<p>This is task 1 for milestone 1<br></p>', 15, 10, 1, 'Low', 22, 11),
(15, 'Task 2', 'Progress', '2019-05-31', '2019-05-27', '2019-05-27', '<p>This is task 2<br></p>', 15, 10, 1, 'Low', 22, 11),
(17, 't1', 'Due', '2019-06-14', '2019-06-14', '2019-06-14', '<p>swds<br></p>', 15, 10, 1, 'Low', 27, 13),
(18, 'T1', 'Due', '2019-06-17', '2019-06-17', '2019-06-17', '<p>This is t1<br></p>', NULL, 10, 1, 'Low', 32, 14),
(19, 'R1', 'Due', '2019-06-18', '2019-06-18', '2019-06-18', '<p>qweqe<br></p>', 18, 10, 1, 'Low', 32, 14),
(20, 'Task 3', 'Due', '2019-06-18', '2019-06-18', '2019-06-18', '<p>Task 3<br></p>', 18, 10, 1, 'Low', 32, 14);

-- --------------------------------------------------------

--
-- Table structure for table `show_break_times`
--

CREATE TABLE `show_break_times` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_working_time` time NOT NULL,
  `end_working_time` time NOT NULL,
  `salesperson` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `assign_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `show_break_times`
--

INSERT INTO `show_break_times` (`id`, `date`, `start_working_time`, `end_working_time`, `salesperson`, `show_id`, `assign_by`) VALUES
(28, '2019-06-07', '10:30:00', '17:30:00', 16, 28, 10),
(29, '2019-06-08', '10:30:00', '17:30:00', 16, 28, 10),
(30, '2019-06-07', '10:30:00', '17:30:00', 16, 28, 14),
(31, '2019-06-08', '10:30:00', '17:30:00', 16, 28, 14),
(32, '2019-06-07', '10:30:00', '17:30:00', 16, 28, 14),
(33, '2019-06-08', '10:30:00', '17:30:00', 16, 28, 14),
(34, '2019-06-07', '10:30:00', '17:30:00', 16, 28, 14),
(35, '2019-06-08', '10:30:00', '17:30:00', 16, 28, 14),
(36, '2019-06-07', '10:30:00', '17:30:00', 16, 28, 14),
(37, '2019-06-08', '10:30:00', '17:30:00', 16, 28, 14),
(38, '2019-06-15', '10:30:00', '17:30:00', 16, 27, 10),
(39, '2019-06-21', '10:30:00', '17:30:00', 16, 34, 15);

-- --------------------------------------------------------

--
-- Table structure for table `show_location`
--

CREATE TABLE `show_location` (
  `id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_person` varchar(30) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `extension` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `address` text NOT NULL,
  `location` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `show_request`
--

CREATE TABLE `show_request` (
  `id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `teamleader_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-no response, 1-Accepted, 2-rejected',
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `show_request`
--

INSERT INTO `show_request` (`id`, `show_id`, `teamleader_id`, `status`, `delete_flag`, `requested_at`) VALUES
(11, 22, 15, 1, 0, '2019-05-30 06:50:17'),
(3, 18, 13, 1, 1, '2019-05-22 04:36:19'),
(10, 22, 14, 1, 0, '2019-05-30 06:05:36'),
(9, 22, 13, 1, 0, '2019-05-27 12:35:56'),
(12, 23, 13, 1, 0, '2019-06-08 07:15:29'),
(13, 23, 15, 0, 0, '2019-06-11 13:20:59'),
(15, 27, 15, 1, 0, '2019-06-11 13:34:45'),
(16, 28, 15, 1, 0, '2019-06-14 07:01:43'),
(17, 28, 14, 1, 0, '2019-06-14 07:08:20'),
(18, 32, 15, 1, 0, '2019-06-17 08:37:39'),
(19, 33, 14, 1, 0, '2019-06-19 11:03:40'),
(20, 33, 15, 1, 0, '2019-06-19 11:06:33'),
(21, 35, 15, 1, 0, '2019-06-19 11:28:00'),
(22, 34, 15, 1, 0, '2019-06-19 11:36:30'),
(24, 31, 15, 1, 0, '2019-06-19 12:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `stock_return`
--

CREATE TABLE `stock_return` (
  `id` int(11) NOT NULL,
  `tid` int(8) NOT NULL,
  `invoicedate` date NOT NULL,
  `invoiceduedate` date NOT NULL,
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `shipping` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `total` decimal(16,2) DEFAULT '0.00',
  `pmethod` varchar(14) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` enum('pending','accepted','rejected','partial','canceled') DEFAULT 'pending',
  `csd` int(5) NOT NULL DEFAULT '0',
  `eid` int(4) NOT NULL,
  `pamnt` decimal(16,2) DEFAULT '0.00',
  `items` int(11) NOT NULL,
  `taxstatus` enum('yes','no') DEFAULT 'yes',
  `discstatus` tinyint(1) NOT NULL,
  `format_discount` enum('%','flat','b_p','bflat') DEFAULT NULL,
  `refer` varchar(20) DEFAULT NULL,
  `term` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock_return_items`
--

CREATE TABLE `stock_return_items` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `product` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(16,2) DEFAULT '0.00',
  `tax` decimal(16,2) DEFAULT '0.00',
  `discount` decimal(16,2) DEFAULT '0.00',
  `subtotal` decimal(16,2) DEFAULT '0.00',
  `totaltax` decimal(16,2) DEFAULT '0.00',
  `totaldiscount` decimal(16,2) DEFAULT '0.00',
  `product_des` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfer_history`
--

CREATE TABLE `stock_transfer_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `teamleader_transfer_id` int(11) NOT NULL,
  `teamleader_accept_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0.not approved 1.approved',
  `created_at` varchar(30) NOT NULL,
  `show_id` int(11) NOT NULL,
  `transfertype` int(11) NOT NULL COMMENT '0.manualy 1.full'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_transfer_history`
--

INSERT INTO `stock_transfer_history` (`id`, `product_id`, `teamleader_transfer_id`, `teamleader_accept_id`, `qty`, `status`, `created_at`, `show_id`, `transfertype`) VALUES
(18, 7, 15, 13, 300, 1, '2019-06-13 02:30:40', 22, 0),
(19, 6, 15, 13, 300, 1, '2019-06-13 02:30:40', 22, 0),
(20, 7, 13, 14, 300, 1, '2019-06-13 04:28:33', 22, 0),
(26, 7, 15, 13, 300, 1, '2019-06-13 06:35:45', 22, 0),
(27, 6, 15, 13, 300, 1, '2019-06-13 06:35:45', 22, 0),
(28, 7, 15, 13, 300, 1, '2019-06-13 08:48:13', 22, 0),
(29, 6, 15, 13, 300, 1, '2019-06-13 08:48:13', 22, 0),
(30, 7, 15, 14, 300, 1, '2019-06-13 08:53:45', 22, 0),
(31, 7, 14, 13, 300, 1, '2019-06-13 08:55:51', 22, 0),
(32, 6, 14, 15, 300, 1, '2019-06-13 08:55:51', 22, 0),
(33, 7, 13, 14, 300, 1, '2019-06-13 09:17:36', 22, 0),
(34, 6, 13, 14, 300, 1, '2019-06-13 09:17:36', 22, 0),
(35, 6, 14, 15, 300, 1, '2019-06-13 09:30:10', 22, 0),
(36, 7, 14, 15, 300, 1, '2019-06-13 09:30:10', 22, 0),
(37, 6, 14, 13, 300, 1, '2019-06-13 09:30:31', 22, 0),
(38, 7, 14, 13, 300, 1, '2019-06-13 09:30:31', 22, 0),
(39, 7, 13, 14, 300, 1, '2019-06-13 09:38:27', 22, 0),
(40, 6, 13, 14, 300, 1, '2019-06-13 09:38:27', 22, 0),
(41, 7, 13, 15, 300, 1, '2019-06-13 09:38:47', 22, 0),
(42, 6, 13, 15, 300, 1, '2019-06-13 09:38:47', 22, 0),
(43, 7, 13, 14, 300, 0, '2019-06-13 09:41:57', 22, 0),
(44, 6, 13, 14, 300, 0, '2019-06-13 09:41:57', 22, 0),
(45, 7, 15, 0, 20, 0, '2019-06-21 06:51:58', 31, 0),
(46, 6, 15, 0, 20, 0, '2019-06-21 06:51:58', 31, 0);

-- --------------------------------------------------------

--
-- Table structure for table `storebooth`
--

CREATE TABLE `storebooth` (
  `id` int(11) NOT NULL,
  `size` varchar(30) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `description` text,
  `product_id` int(11) NOT NULL,
  `teamleader_id` varchar(200) DEFAULT NULL,
  `prid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storebooth`
--

INSERT INTO `storebooth` (`id`, `size`, `cost`, `description`, `product_id`, `teamleader_id`, `prid`, `user_id`) VALUES
(1, 'ada', 'sas', 'asds', 1, NULL, 2, 0),
(2, 'ada', 'sas', 'asds', 1, NULL, 2, 0),
(3, 'df', 'sfcsdf', 'vdsfsdf', 1, '10,11', 2, 0),
(4, 'df', 'sfcsdf', 'vdsfsdf', 1, '10,11', 2, 0),
(5, 'asa', 'sas', 'asas', 1, '10,11', 2, 0),
(6, 'asa', 'sas', 'asas', 1, '10,11', 2, 0),
(7, 'sd', 'sadsad', 'sadsad', 1, '10,11', 2, 0),
(8, '23', '232', '2131', 1, '10,11', 2, 0),
(9, 'sdf', 'zasfdsadf', 'asdasd', 1, '10,11,13', 2, 0),
(10, '12jnjm', '12dd', 'sfsdfdsf', 1, '10,11', 2, 10),
(11, 'sad', 'sad', 'asdasd', 1, '10,11', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postbox` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `picture` varchar(100) NOT NULL DEFAULT 'example.png',
  `gid` int(5) NOT NULL DEFAULT '1',
  `company` varchar(100) DEFAULT NULL,
  `taxid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_smtp`
--

CREATE TABLE `sys_smtp` (
  `id` int(11) NOT NULL,
  `host` varchar(100) NOT NULL,
  `port` int(11) NOT NULL,
  `auth` enum('true','false') NOT NULL,
  `auth_type` enum('none','tls','ssl') NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_smtp`
--

INSERT INTO `sys_smtp` (`id`, `host`, `port`, `auth`, `auth_type`, `username`, `password`, `sender`) VALUES
(1, 'smtp.com', 587, 'true', 'none', 'support@example.com', '123456', 'support@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `teamleader_apply_show`
--

CREATE TABLE `teamleader_apply_show` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `TeamLeader_id` int(11) NOT NULL,
  `applied_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamleader_apply_show`
--

INSERT INTO `teamleader_apply_show` (`id`, `project_id`, `TeamLeader_id`, `applied_at`) VALUES
(1, 6, 10, '2019-05-13 10:56:33'),
(2, 2, 13, '2019-05-21 15:24:41'),
(3, 2, 13, '2019-05-21 15:28:55'),
(4, 2, 13, '2019-05-21 15:29:04'),
(5, 2, 13, '2019-05-21 15:30:30'),
(6, 1, 13, '2019-05-21 16:18:38'),
(7, 1, 13, '2019-05-21 16:19:16'),
(8, 1, 10, '2019-05-21 16:23:24'),
(9, 1, 13, '2019-05-21 16:24:06'),
(10, 1, 13, '2019-05-21 16:24:26'),
(11, 1, 13, '2019-05-21 16:24:28'),
(12, 1, 13, '2019-05-21 16:25:43'),
(13, 1, 13, '2019-05-21 16:28:01'),
(14, 1, 10, '2019-05-21 16:32:33'),
(15, 1, 10, '2019-05-21 16:37:25'),
(16, 1, 13, '2019-05-21 16:37:51'),
(17, 1, 13, '2019-05-21 16:38:42'),
(18, 1, 13, '2019-05-21 16:39:53'),
(19, 1, 13, '2019-05-21 16:39:59'),
(20, 1, 13, '2019-05-21 16:40:07'),
(21, 1, 13, '2019-05-21 16:40:52'),
(22, 1, 13, '2019-05-21 16:45:05'),
(23, 1, 13, '2019-05-21 16:45:17'),
(24, 1, 13, '2019-05-21 16:50:34'),
(25, 1, 13, '2019-05-21 16:51:23'),
(26, 1, 13, '2019-05-21 16:51:36'),
(27, 1, 13, '2019-05-21 16:52:32'),
(28, 1, 13, '2019-05-21 16:56:35'),
(29, 1, 13, '2019-05-21 17:01:58'),
(30, 1, 13, '2019-05-21 17:02:11'),
(31, 1, 13, '2019-05-21 17:02:20'),
(32, 1, 13, '2019-05-21 17:05:08'),
(33, 1, 13, '2019-05-21 17:09:30'),
(34, 1, 13, '2019-05-21 17:12:07'),
(35, 1, 13, '2019-05-21 17:12:14'),
(36, 1, 13, '2019-05-21 17:12:20'),
(37, 1, 13, '2019-05-21 17:12:28'),
(38, 1, 13, '2019-05-21 17:14:38'),
(39, 1, 13, '2019-05-21 17:16:22'),
(40, 1, 13, '2019-05-21 17:17:32'),
(41, 1, 13, '2019-05-21 17:18:22'),
(42, 1, 13, '2019-05-21 17:18:25'),
(43, 1, 13, '2019-05-21 17:18:29'),
(44, 1, 13, '2019-05-21 17:18:35'),
(45, 1, 13, '2019-05-21 17:20:56'),
(46, 1, 13, '2019-05-21 17:22:15'),
(47, 1, 13, '2019-05-21 17:32:02'),
(48, 1, 13, '2019-05-21 17:35:04'),
(49, 1, 13, '2019-05-21 17:35:44'),
(50, 1, 13, '2019-05-21 17:36:23'),
(51, 1, 13, '2019-05-21 17:45:07'),
(52, 1, 13, '2019-05-21 17:49:53'),
(53, 1, 13, '2019-05-21 17:50:07'),
(54, 1, 13, '2019-05-21 17:50:25'),
(55, 1, 13, '2019-05-21 17:50:40'),
(56, 1, 13, '2019-05-21 17:51:03'),
(57, 1, 13, '2019-05-21 17:51:40'),
(58, 1, 13, '2019-05-21 17:52:04'),
(59, 1, 13, '2019-05-21 17:52:44'),
(60, 1, 13, '2019-05-21 17:52:56'),
(61, 1, 13, '2019-05-21 17:53:17'),
(62, 1, 13, '2019-05-21 17:53:27'),
(63, 1, 10, '2019-05-22 09:09:16'),
(64, 1, 13, '2019-05-22 09:50:58'),
(65, 1, 13, '2019-05-22 09:53:03'),
(66, 1, 13, '2019-05-22 09:57:02'),
(67, 1, 13, '2019-05-22 10:03:34'),
(68, 1, 13, '2019-05-22 10:06:23'),
(69, 1, 13, '2019-05-22 10:06:32'),
(70, 1, 13, '2019-05-22 10:09:21'),
(71, 1, 13, '2019-05-22 10:11:12'),
(72, 1, 13, '2019-05-22 10:11:29'),
(73, 1, 13, '2019-05-22 10:16:15'),
(74, 1, 13, '2019-05-22 10:16:35'),
(75, 1, 13, '2019-05-22 10:16:52'),
(76, 1, 13, '2019-05-22 10:18:09'),
(77, 1, 13, '2019-05-22 10:20:36'),
(78, 1, 13, '2019-05-22 10:21:11'),
(79, 1, 13, '2019-05-22 10:21:17'),
(80, 1, 13, '2019-05-22 10:21:26'),
(81, 1, 13, '2019-05-22 10:21:36'),
(82, 1, 13, '2019-05-22 10:21:42'),
(83, 1, 13, '2019-05-22 10:21:47'),
(84, 1, 13, '2019-05-22 10:21:52'),
(85, 1, 13, '2019-05-22 10:24:17'),
(86, 1, 10, '2019-05-22 10:26:16'),
(87, 1, 10, '2019-05-22 10:26:47'),
(88, 1, 13, '2019-05-22 11:40:49'),
(89, 1, 10, '2019-05-22 11:42:11'),
(90, 1, 10, '2019-05-22 12:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `teamleader_products`
--

CREATE TABLE `teamleader_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `teamleader_id` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teamleader_products`
--

INSERT INTO `teamleader_products` (`id`, `product_id`, `warehouse_id`, `teamleader_id`, `total_qty`, `status`) VALUES
(7, 7, 2, 15, 13400, 1),
(8, 6, 2, 15, 135, 1),
(9, 6, 2, 14, 100, 1),
(10, 7, 2, 14, 100, 1),
(11, 7, 3, 13, 100, 1),
(12, 6, 3, 13, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `cid` int(11) NOT NULL,
  `status` enum('Solved','Processing','Waiting') NOT NULL,
  `section` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_th`
--

CREATE TABLE `tickets_th` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `message` text,
  `cid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `cdate` datetime NOT NULL,
  `attach` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `todolist`
--

CREATE TABLE `todolist` (
  `id` int(11) NOT NULL,
  `tdate` date NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` enum('Due','Done','Progress') NOT NULL DEFAULT 'Due',
  `start` date NOT NULL,
  `duedate` date NOT NULL,
  `description` text,
  `eid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `related` int(11) NOT NULL,
  `priority` enum('Low','Medium','High','Urgent') NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todolist`
--

INSERT INTO `todolist` (`id`, `tdate`, `name`, `status`, `start`, `duedate`, `description`, `eid`, `aid`, `related`, `priority`, `rid`) VALUES
(2, '2019-05-10', 'Mobile Accessories', 'Done', '2019-05-10', '2019-05-10', '<p>ghjbkjh uhmuijoij</p>', 10, 10, 1, 'Medium', 2),
(3, '2019-05-11', 'ABC', 'Due', '2019-05-02', '2019-05-04', '<p>AVgjhkjh hujhkji huihjoijlkml<br></p>', 11, 10, 1, 'High', 2),
(5, '2019-05-27', 'Mobile Accessories', 'Done', '2019-05-27', '2019-05-27', '<p>ASX</p>', 10, 10, 1, 'Low', 1),
(6, '2019-05-27', 'Mobile Accessories', 'Done', '2019-05-27', '2019-05-27', '<p>AVC</p>', 10, 10, 1, 'Low', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `acid` int(11) NOT NULL,
  `account` varchar(200) NOT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `cat` varchar(200) NOT NULL,
  `debit` decimal(16,2) DEFAULT '0.00',
  `credit` decimal(16,2) DEFAULT '0.00',
  `payer` varchar(200) DEFAULT NULL,
  `payerid` int(11) NOT NULL DEFAULT '0',
  `method` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  `tid` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `ext` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `acid`, `account`, `type`, `cat`, `debit`, `credit`, `payer`, `payerid`, `method`, `date`, `tid`, `eid`, `note`, `ext`) VALUES
(1, 1, 'Company Sales Account', 'Expense', 'Sales', '25000.00', '0.00', 'customer 1 ', 1, 'Cash', '2019-07-02', 0, 10, 'This is testing purpose 1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions_cat`
--

CREATE TABLE `transactions_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions_cat`
--

INSERT INTO `transactions_cat` (`id`, `name`) VALUES
(1, 'Sales'),
(2, 'Purchase'),
(3, 'Booth rental'),
(4, 'Display purchase'),
(5, 'Show expenses');

-- --------------------------------------------------------

--
-- Table structure for table `univarsal_api`
--

CREATE TABLE `univarsal_api` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `key1` varchar(255) DEFAULT NULL,
  `key2` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `other` text,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `univarsal_api`
--

INSERT INTO `univarsal_api` (`id`, `name`, `key1`, `key2`, `url`, `method`, `other`, `active`) VALUES
(1, 'Goo.gl URL Shortner', 'yourkey', '0', '0', '0', '0', 0),
(2, 'Twilio SMS API', 'ac', 'key', '+11234567', '0', '0', 1),
(3, 'Company Support', '1', '1', 'support@gmail.com', NULL, '<p>Your footer</p>', 1),
(4, 'Currency', '.', ',', '2', 'l', NULL, NULL),
(5, 'Exchange', 'key1', 'key2', 'USD', NULL, NULL, 1),
(6, 'New Invoice Notification', '[{Company}] Invoice #{BillNumber} Generated', NULL, NULL, NULL, 'Dear Client,\r\nWe are contacting you in regard to a payment received for invoice # {BillNumber} that has been created on your account. You may find the invoice with below link.\r\n\r\nView Invoice\r\n{URL}\r\n\r\nWe look forward to conducting future business with you.\r\n\r\nKind Regards,\r\nTeam\r\n{CompanyDetails}', NULL),
(7, 'Invoice Payment Reminder', '[{Company}] Invoice #{BillNumber} Payment Reminder', NULL, NULL, NULL, '<p>Dear Client,</p><p>We are contacting you in regard to a payment reminder of invoice # {BillNumber} that has been created on your account. You may find the invoice with below link. Please pay the balance of {Amount} due by {DueDate}.</p><p>\r\n\r\n<b>View Invoice</b></p><p><span style=\"font-size: 1rem;\">{URL}\r\n</span></p><p><span style=\"font-size: 1rem;\">\r\nWe look forward to conducting future business with you.</span></p><p><span style=\"font-size: 1rem;\">\r\n\r\nKind Regards,\r\n</span></p><p><span style=\"font-size: 1rem;\">\r\nTeam\r\n</span></p><p><span style=\"font-size: 1rem;\">\r\n{CompanyDetails}</span></p>', NULL),
(8, 'Invoice Refund Proceeded', '{Company} Invoice #{BillNumber} Refund Proceeded', NULL, NULL, NULL, '<p>Dear Client,</p><p>\r\nWe are contacting you in regard to a refund request processed for invoice # {BillNumber} that has been created on your account. You may find the invoice with below link. Please pay the balance of {Amount}  by {DueDate}.\r\n</p><p>\r\nView Invoice\r\n</p><p>{URL}\r\n</p><p>\r\nWe look forward to conducting future business with you.\r\n</p><p>\r\nKind Regards,\r\n</p><p>\r\nTeam\r\n\r\n{CompanyDetails}</p>', NULL),
(9, 'Invoice payment Received', '{Company} Payment Received for Invoice #{BillNumber}', NULL, NULL, NULL, '<p>Dear Client,\r\n</p><p>We are contacting you in regard to a payment received for invoice  # {BillNumber} that has been created on your account. You can find the invoice with below link.\r\n</p><p>\r\nView Invoice</p><p>\r\n{URL}\r\n</p><p>\r\nWe look forward to conducting future business with you.\r\n</p><p>\r\nKind Regards,\r\n</p><p>\r\nTeam\r\n</p><p>\r\n{CompanyDetails}</p>', NULL),
(10, 'Invoice Overdue Notice', '{Company} Invoice #{BillNumber} Generated for you', NULL, NULL, NULL, '<p>Dear Client,</p><p>\r\nWe are contacting you in regard to an Overdue Notice for invoice # {BillNumber} that has been created on your account. You may find the invoice with below link.\r\nPlease pay the balance of {Amount} due by {DueDate}.\r\n</p><p>View Invoice\r\n</p><p>{URL}\r\n</p><p>\r\nWe look forward to conducting future business with you.\r\n</p><p>\r\nKind Regards,\r\n</p><p>\r\nTeam</p><p>\r\n\r\n{CompanyDetails}</p>', NULL),
(11, 'Quote Proposal', '{Company} Quote #{BillNumber} Generated for you', NULL, NULL, NULL, '<p>Dear Client,</p><p>\r\nWe are contacting you in regard to a new quote # {BillNumber} that has been created on your account. You may find the quote with below link.\r\n</p><p>\r\nView Invoice\r\n</p><p>{URL}\r\n</p><p>\r\nWe look forward to conducting future business with you.</p><p>\r\n\r\nKind Regards,</p><p>\r\n\r\nTeam</p><p>\r\n\r\n{CompanyDetails}</p>', NULL),
(12, 'Purchase Order Request', '{Company} Purchase Order #{BillNumber} Requested', NULL, NULL, NULL, '<p>Dear Client,\r\n</p><p>We are contacting you in regard to a new purchase # {BillNumber} that has been requested on your account. You may find the order with below link. </p><p>\r\n\r\nView Invoice\r\n</p><p>{URL}</p><p>\r\n\r\nWe look forward to conducting future business with you.</p><p>\r\n\r\nKind Regards,\r\n</p><p>\r\nTeam</p><p>\r\n\r\n{CompanyDetails}</p>', NULL),
(13, 'Stock Return Mail', '{Company} New purchase return # {BillNumber}', NULL, NULL, NULL, 'Dear Client,\r\n\r\nWe are contacting you in regard to a new purchase return # {BillNumber} that has been requested on your account. You may find the order with below link.\r\n\r\nView Invoice\r\n\r\n{URL}\r\n\r\nWe look forward to conducting future business with you.\r\n\r\nKind Regards,\r\n\r\nTeam\r\n\r\n{CompanyDetails}', NULL),
(30, 'New Invoice Notification', NULL, NULL, NULL, NULL, 'Dear Customer, new invoice  # {BillNumber} generated. {URL} Regards', NULL),
(31, 'Invoice Payment Reminder', NULL, NULL, NULL, NULL, 'Dear Customer, Please make payment of invoice  # {BillNumber}. {URL} Regards', NULL),
(32, 'Invoice Refund Proceeded', NULL, NULL, NULL, NULL, 'Dear Customer, Refund generated of invoice # {BillNumber}. {URL} Regards', NULL),
(33, 'Invoice payment Received', NULL, NULL, NULL, NULL, 'Dear Customer, Payment received of invoice # {BillNumber}. {URL} Regards', NULL),
(34, 'Invoice Overdue Notice', NULL, NULL, NULL, NULL, 'Dear Customer, Dear Customer,Payment is overdue of invoice # {BillNumber}. {URL} Regards', NULL),
(35, 'Quote Proposal', NULL, NULL, NULL, NULL, 'Dear Customer, Dear Customer, a quote created for you # {BillNumber}. {URL} Regards', NULL),
(36, 'Purchase Order Request', NULL, NULL, NULL, NULL, 'Dear Customer, Dear, a purchased order for you # {BillNumber}. {URL} Regards', NULL),
(51, 'QT#', 'PO#', 'REC#', 'SR#', 'TRN#', 'SRN#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `var_key` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `full_index` (`id`,`sender_id`,`receiver_id`,`date_read`);

--
-- Indexes for table `aauth_users`
--
ALTER TABLE `aauth_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acn` (`acn`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_system`
--
ALTER TABLE `app_system`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_terms`
--
ALTER TABLE `billing_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breaktimesforshow`
--
ALTER TABLE `breaktimesforshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `conf`
--
ALTER TABLE `conf`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `corn_job`
--
ALTER TABLE `corn_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gid` (`gid`);

--
-- Indexes for table `customers_group`
--
ALTER TABLE `customers_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_profile`
--
ALTER TABLE `employee_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel` (`rel`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice` (`tid`),
  ADD KEY `eid` (`eid`),
  ADD KEY `csd` (`csd`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice` (`tid`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_payment`
--
ALTER TABLE `online_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packinglist_request_show`
--
ALTER TABLE `packinglist_request_show`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pcat` (`pcat`),
  ADD KEY `warehouse` (`warehouse`);

--
-- Indexes for table `product_cat`
--
ALTER TABLE `product_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `project_meta`
--
ALTER TABLE `project_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `meta_key` (`meta_key`),
  ADD KEY `key3` (`key3`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice` (`tid`),
  ADD KEY `eid` (`eid`),
  ADD KEY `csd` (`csd`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice` (`tid`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice` (`tid`),
  ADD KEY `eid` (`eid`),
  ADD KEY `csd` (`csd`);

--
-- Indexes for table `quotes_items`
--
ALTER TABLE `quotes_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice` (`tid`);

--
-- Indexes for table `rec_invoices`
--
ALTER TABLE `rec_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice` (`tid`),
  ADD KEY `eid` (`eid`),
  ADD KEY `csd` (`csd`);

--
-- Indexes for table `rec_invoice_items`
--
ALTER TABLE `rec_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice` (`tid`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesperson_request`
--
ALTER TABLE `salesperson_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showbooth`
--
ALTER TABLE `showbooth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showmeta`
--
ALTER TABLE `showmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `sid_2` (`sid`);

--
-- Indexes for table `showmilestone`
--
ALTER TABLE `showmilestone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showtodolist`
--
ALTER TABLE `showtodolist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_break_times`
--
ALTER TABLE `show_break_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_location`
--
ALTER TABLE `show_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_request`
--
ALTER TABLE `show_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_return`
--
ALTER TABLE `stock_return`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice` (`tid`),
  ADD KEY `eid` (`eid`),
  ADD KEY `csd` (`csd`);

--
-- Indexes for table `stock_return_items`
--
ALTER TABLE `stock_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice` (`tid`) KEY_BLOCK_SIZE=1024 USING BTREE;

--
-- Indexes for table `stock_transfer_history`
--
ALTER TABLE `stock_transfer_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storebooth`
--
ALTER TABLE `storebooth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_smtp`
--
ALTER TABLE `sys_smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamleader_apply_show`
--
ALTER TABLE `teamleader_apply_show`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamleader_products`
--
ALTER TABLE `teamleader_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_th`
--
ALTER TABLE `tickets_th`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions_cat`
--
ALTER TABLE `transactions_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `univarsal_api`
--
ALTER TABLE `univarsal_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aauth_users`
--
ALTER TABLE `aauth_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billing_terms`
--
ALTER TABLE `billing_terms`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `breaktimesforshow`
--
ALTER TABLE `breaktimesforshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers_group`
--
ALTER TABLE `customers_group`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_profile`
--
ALTER TABLE `employee_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `packinglist_request_show`
--
ALTER TABLE `packinglist_request_show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product_cat`
--
ALTER TABLE `product_cat`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `project_meta`
--
ALTER TABLE `project_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quotes_items`
--
ALTER TABLE `quotes_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rec_invoices`
--
ALTER TABLE `rec_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rec_invoice_items`
--
ALTER TABLE `rec_invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salesperson_request`
--
ALTER TABLE `salesperson_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `showbooth`
--
ALTER TABLE `showbooth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `showmeta`
--
ALTER TABLE `showmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `showmilestone`
--
ALTER TABLE `showmilestone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `showtodolist`
--
ALTER TABLE `showtodolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `show_break_times`
--
ALTER TABLE `show_break_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `show_location`
--
ALTER TABLE `show_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `show_request`
--
ALTER TABLE `show_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `stock_return`
--
ALTER TABLE `stock_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_return_items`
--
ALTER TABLE `stock_return_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_transfer_history`
--
ALTER TABLE `stock_transfer_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `storebooth`
--
ALTER TABLE `storebooth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teamleader_apply_show`
--
ALTER TABLE `teamleader_apply_show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `teamleader_products`
--
ALTER TABLE `teamleader_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tickets_th`
--
ALTER TABLE `tickets_th`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transactions_cat`
--
ALTER TABLE `transactions_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `univarsal_api`
--
ALTER TABLE `univarsal_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
