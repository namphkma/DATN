-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2021 at 04:45 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `idSubject` varchar(255) NOT NULL,
  `idUser` varchar(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `value` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `idSubject`, `idUser`, `date`, `value`, `createdAt`, `updatedAt`) VALUES
(1, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '11/04/2021', 1, '2021-04-11 04:36:40', '2021-04-11 14:30:32'),
(2, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '11/04/2021', 1, '2021-04-11 14:26:54', '2021-04-11 14:30:31'),
(3, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '11/04/2021', 0, '2021-04-11 14:26:55', '2021-04-11 14:30:34'),
(4, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '08/04/2021', 1, '2021-04-11 14:31:56', '2021-04-11 14:31:56'),
(5, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '08/04/2021', 1, '2021-04-11 14:31:56', '2021-04-11 14:31:56'),
(6, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '12/04/2021', 1, '2021-04-12 01:21:55', '2021-04-12 01:21:55'),
(7, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '12/04/2021', 1, '2021-04-12 01:21:57', '2021-04-12 01:21:57'),
(8, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '13/04/2021', 1, '2021-04-12 15:50:03', '2021-04-12 15:50:03'),
(9, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '14/04/2021', 1, '2021-04-12 15:50:06', '2021-04-12 15:50:06'),
(10, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '02/02/2021', 1, '2021-04-12 15:50:11', '2021-04-12 15:50:11'),
(11, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '03/02/2021', 1, '2021-04-12 15:50:13', '2021-04-12 15:50:13'),
(12, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '04/02/2021', 1, '2021-04-12 15:50:16', '2021-04-12 15:50:16'),
(13, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '05/02/2021', 1, '2021-04-12 15:50:18', '2021-04-12 15:50:18'),
(14, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '06/02/2021', 1, '2021-04-12 15:50:21', '2021-04-12 15:50:21'),
(15, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '07/02/2021', 1, '2021-04-12 15:50:23', '2021-04-12 15:50:23'),
(16, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '08/02/2021', 1, '2021-04-12 15:50:26', '2021-04-12 15:50:26'),
(17, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '09/02/2021', 1, '2021-04-12 15:50:28', '2021-04-12 15:50:28'),
(18, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '10/02/2021', 1, '2021-04-12 15:50:30', '2021-04-12 15:50:30'),
(19, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '11/02/2021', 1, '2021-04-12 15:50:33', '2021-04-12 15:50:33'),
(20, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '11/02/2021', 1, '2021-04-12 15:50:33', '2021-04-12 15:50:33'),
(21, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '11/02/2021', 1, '2021-04-12 15:50:34', '2021-04-12 15:50:34'),
(22, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '12/02/2021', 1, '2021-04-12 15:50:37', '2021-04-12 15:50:37'),
(23, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '12/02/2021', 1, '2021-04-12 15:50:37', '2021-04-12 15:50:37'),
(24, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '12/02/2021', 1, '2021-04-12 15:50:37', '2021-04-12 15:50:37'),
(25, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '13/02/2021', 1, '2021-04-12 15:50:39', '2021-04-12 15:50:39'),
(26, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '13/02/2021', 1, '2021-04-12 15:50:40', '2021-04-12 15:50:40'),
(27, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '13/02/2021', 1, '2021-04-12 15:50:40', '2021-04-12 15:50:40'),
(28, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '14/02/2021', 1, '2021-04-12 15:50:43', '2021-04-12 15:50:43'),
(29, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '14/02/2021', 1, '2021-04-12 15:50:43', '2021-04-12 15:50:43'),
(30, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '14/02/2021', 1, '2021-04-12 15:50:44', '2021-04-12 15:50:44'),
(31, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '15/02/2021', 1, '2021-04-12 15:50:46', '2021-04-12 15:50:46'),
(32, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '15/02/2021', 1, '2021-04-12 15:50:47', '2021-04-12 15:50:47'),
(33, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '15/02/2021', 1, '2021-04-12 15:50:47', '2021-04-12 15:50:47'),
(34, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '17/02/2021', 1, '2021-04-12 15:50:49', '2021-04-12 15:50:49'),
(35, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '17/02/2021', 1, '2021-04-12 15:50:50', '2021-04-12 15:50:50'),
(36, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '17/02/2021', 1, '2021-04-12 15:50:50', '2021-04-12 15:50:50'),
(37, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '19/02/2021', 1, '2021-04-12 15:50:52', '2021-04-12 15:50:52'),
(38, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '19/02/2021', 1, '2021-04-12 15:50:52', '2021-04-12 15:50:52'),
(39, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '19/02/2021', 1, '2021-04-12 15:50:53', '2021-04-12 15:50:53'),
(40, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '01/04/2021', 1, '2021-04-12 16:00:22', '2021-04-12 16:00:22'),
(41, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '01/04/2021', 1, '2021-04-12 16:00:23', '2021-04-12 16:00:23'),
(42, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '01/04/2021', 1, '2021-04-12 16:00:24', '2021-04-12 16:00:24'),
(43, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '03/04/2021', 1, '2021-04-12 16:00:30', '2021-04-12 16:00:30'),
(44, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '03/04/2021', 1, '2021-04-12 16:00:31', '2021-04-12 16:00:31'),
(45, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '03/04/2021', 1, '2021-04-12 16:00:31', '2021-04-12 16:00:31'),
(46, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '19/04/2021', 1, '2021-04-19 15:41:10', '2021-04-19 15:41:10'),
(47, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '19/04/2021', 1, '2021-04-19 15:41:11', '2021-04-19 15:41:11'),
(48, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '19/04/2021', 1, '2021-04-19 15:41:12', '2021-04-19 15:41:12'),
(49, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '20/04/2021', 1, '2021-04-19 15:41:29', '2021-04-19 15:41:29'),
(50, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '20/04/2021', 1, '2021-04-19 15:41:29', '2021-04-19 15:41:29'),
(51, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '20/04/2021', 1, '2021-04-19 15:41:30', '2021-04-19 15:41:30'),
(52, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '18/04/2021', 1, '2021-04-19 15:43:39', '2021-04-19 15:43:39'),
(53, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '18/04/2021', 1, '2021-04-19 15:43:39', '2021-04-19 15:43:39'),
(54, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '18/04/2021', 1, '2021-04-19 15:43:40', '2021-04-19 15:43:40'),
(55, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '15/04/2021', 1, '2021-04-19 15:43:46', '2021-04-19 15:43:46'),
(56, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '15/04/2021', 1, '2021-04-19 15:43:46', '2021-04-19 15:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `idCalendar` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `idCalendar`, `name`, `time`, `type`, `status`, `createdAt`, `updatedAt`) VALUES
(1, '886f8b0d-1dc1-44c7-9d0c-77c28735a821', 'AT13H', 1619627536, 'success', 1, '2021-04-28 16:32:46', '2021-04-28 16:32:46'),
(2, 'e6cbb1dd-feb6-4c23-8a98-a3599b174809', 'Đi họp lớp', 1619481600, 'error', 1, '2021-04-28 16:37:59', '2021-04-28 16:37:59'),
(6, '9ae936d5-6ca0-4a2e-bcb5-a9ebcba2afe2', '(9h15 - 12h15) KHMT: Chương 1', 1622143062, 'success', 1, '2021-05-04 15:44:22', '2021-05-04 15:44:22'),
(7, 'a7a2d0a2-2b90-4641-a6f0-177a81481c34', '(15h15 - 17h15) KHMT: Chương 2', 1620143062, 'success', 1, '2021-05-04 15:44:22', '2021-05-04 15:44:22'),
(8, 'dc377f43-76f2-4106-a8e7-df85e2ae6a70', '(7h - 9h) KTMT01: Chương 1', 1620266033, 'success', 1, '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(9, '115b04ad-1e81-46e5-9209-89581b100e07', '(9h15 - 12h15) KTMT01: Chương 6', 1620352433, 'success', 1, '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(10, '8c8cadb2-20d4-481f-8b9e-05721cd37bb0', '(7h - 9h) KTMT01: Chương 2', 1620352433, 'error', 1, '2021-05-05 01:49:48', '2021-05-09 14:27:02'),
(11, '6049e73d-2b31-45f1-a2cc-7cd8262f6e61', '(7h - 9h) ATM01: Chương 7', 1620870833, 'success', 1, '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(13, 'c3b108ce-4b03-4018-87e2-db166f1f9084', '(9h15 - 12h15)KHMT01: Chương 3', 1620870833, 'success', 1, '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(14, '7cce7d9e-24d6-46a3-8d63-b9d6fcfd1d81', '(9h15 - 12h15) KTMT01: Chương 4', 1620957233, 'success', 1, '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(17, '18e4400c-cf70-4a73-b86b-dba5485d52ab', 'Thi hết môn ATM', 1621907633, 'error', 1, '2021-05-05 01:52:19', '2021-05-05 01:52:19'),
(18, 'de72fe5d-eb97-40db-bfb5-75aee7d93af3', 'Thi hết môn ATM', 1622253492, 'error', 1, '2021-05-05 01:58:22', '2021-05-05 01:58:22'),
(19, '442568af-c922-47fd-b050-0425466e6a97', 'Báo cáo đồ án đợt 2', 1619882658, 'processing', 1, '2021-05-05 15:24:26', '2021-05-05 16:46:45'),
(20, '6654ac33-3030-41bb-a796-2cf863220254', 'Nghỉ do dịch covid', 1620552195, 'error', 1, '2021-05-09 09:23:31', '2021-05-09 09:23:31'),
(21, '5f327e9e-9272-4a57-a36d-5fb6a3a5ae63', 'Ôn tập chương 123', 1622127122, 'error', 1, '2021-05-09 14:52:13', '2021-05-09 14:52:13'),
(22, 'db437077-4ec6-43a4-a0aa-033c869c860a', 'Ôn tập học kì 2', 1621608738, 'success', 1, '2021-05-09 14:52:30', '2021-05-09 14:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `idClass` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `studentNum` int(11) DEFAULT NULL,
  `totalStudent` int(11) NOT NULL,
  `idTeacher` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `idClass`, `name`, `studentNum`, `totalStudent`, `idTeacher`, `status`, `note`) VALUES
(4, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', 'AT13G', 15, 30, '0b1f0429-f703-4bee-ad03-29f7bbbb71ef', 1, ''),
(5, '277b704e-ed7a-49f7-bbd8-b9ffa10a09a3', 'AT13C', 20, 30, '4561c342-adaa-445f-81c1-de7313bd9980', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_file`
--

CREATE TABLE `class_file` (
  `id` int(11) NOT NULL,
  `idClass` varchar(255) NOT NULL,
  `idFile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_file`
--

INSERT INTO `class_file` (`id`, `idClass`, `idFile`) VALUES
(1, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', 'c1fa923e-0cc8-4a78-a8ef-7a9a92d70b40'),
(3, '277b704e-ed7a-49f7-bbd8-b9ffa10a09a3', 'bd1d0cb8-f4af-4cfd-9478-0e2b29753340'),
(4, '277b704e-ed7a-49f7-bbd8-b9ffa10a09a3', 'ce45a259-4964-4f39-899e-2078b92656ba'),
(5, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', 'b65baff9-43cf-4d53-92f3-92d7a5b0fa66'),
(6, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', 'a9fc35b0-5e4c-4801-b8d4-12e2eadae2be'),
(7, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', '46bd3007-4c49-46ae-ad63-266f83976070');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `idFile` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `idUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `idFile`, `name`, `type`, `url`, `status`, `idUser`) VALUES
(24, '29a6f239-b7e5-450a-be8e-f2904ac15935', '397922.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/397922.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150031Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=94892b61e9451191c7db3532d83d5894a74d0a373b6d951fefb10acac1baa873', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(25, '41c01954-c194-4649-99a9-b8ad0b4784fc', 'The_Art_of_Intrusion.pdf', 'application/pdf', 'https://minio.hisoft.com.vn/huytq/The_Art_of_Intrusion.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150048Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=d3a107b47d48987decdfac5e7a867b821b58e156d4fad8262dd682866fe89109', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(26, '9cfc8903-7b10-4a5b-982b-8f836296c7cb', 'i_dgfUd018svc2v9c11xtqppy_6vj672.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/i_dgfUd018svc2v9c11xtqppy_6vj672.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150047Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=e5d8afe8fce02d38144fb397799925ecea26f6a332e64773e8d8698a1176676e', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(27, '7a5f78d7-f5de-4a87-a4b0-7bc4c9eaa78f', 'i_dgfUd018svc2v9c11xtqppy_6vj672.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/i_dgfUd018svc2v9c11xtqppy_6vj672.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150049Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=260dee95e5bfc5bfae4958383ac62e41bfdf8600e64b36f7623f6c6b1dbbb13a', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(28, 'c9a5f8b5-e704-49e1-883f-85481a31995d', 'i_dgfUd018svc2v9c11xtqppy_6vj672.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/i_dgfUd018svc2v9c11xtqppy_6vj672.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150051Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=a7b855125e6b98e5f2a2f0e1e2da656ba1ef36643bbc2722beb86f1a923e496d', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(29, 'cd80386d-5558-4bde-a7bc-ac32c4eac5c7', '669047.png', 'image/png', 'https://minio.hisoft.com.vn/huytq/669047.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150051Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=18d0a282a7cbc5629ece508522de65079ae24de5870104ee0407543a9f9eb2de', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(30, '75d75f59-57d2-4d45-b8bb-32c35d0da130', '677276.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/677276.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150052Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=53b677064c5c575a044b27a0db83ce77e4c5c6450b0495f80e35841507c2a3d8', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(31, '86923ec5-c8a5-4696-88f7-b50e89a85283', '727965.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/727965.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150052Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=f6411ee83f21c4d80f1130c99e77169f70f4e74e3bd6ca00f07e62d8a3ac008f', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(32, '1b44430c-54c7-4427-9641-721132c14e55', '157971503_439076477207619_2769775645873143925_n.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/157971503_439076477207619_2769775645873143925_n.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150055Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=4fe533366b5775eb62623ed927033dfb1e149adf6d9734c5d57ccc8f7c903b34', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(33, '2c48760b-46a1-4a34-82af-c94ceb896256', 'EwFXlZlVIAM2PEN.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/EwFXlZlVIAM2PEN.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150054Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=e8b719a7079f3dcce45be73380a2946cc48abd0702719dfb44a19f58f717ccd6', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(34, 'a128719f-7400-4d17-bd2b-d322668d9eab', 'Rosie Gone.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/Rosie%20Gone.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150054Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=ffa918ff7bbe6865cd6340719b08e5deda087f1d33f0b7140e4fbf7aa896872f', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(35, '06456eb5-226e-4185-aa91-82b25a741fef', 'R.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/R.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150053Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=2cf2f95571dc585d4bbee12ff9a5cf41931d80dd915e32a0e387fd97c7bfaff4', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(36, 'ede163ba-e442-4c8d-b4da-0d8b9551ca78', 'blackpink-rose-on-the-ground-uhdpaper.com-4K-7.3321.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/blackpink-rose-on-the-ground-uhdpaper.com-4K-7.3321.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150056Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=9a95782feea941e9e3ad116cb92bf749c9132b14dc1aaec9f805c431e914f3be', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(37, '998f4715-c9d9-43da-a46a-d2c7c462290c', 'rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3320.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3320.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150057Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=c69cc3fb912c814c906565a27b8382e3e8c38ba53c5b72dd4461ae2cf25fdaa9', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(38, 'd7692f42-9768-46b0-9b86-482c43354e99', 'rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3318.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3318.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150057Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=0bea6fe1de3f4466465968351c84d03683032eb2647abb79a70651052f00f8c3', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(39, '7d5243a1-cdfa-4074-8277-2c2e7a6e85c5', 'The_Art_of_Intrusion.pdf', 'application/pdf', 'https://minio.hisoft.com.vn/huytq/The_Art_of_Intrusion.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150058Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=4f1a0329479164f95e7575e462d838708fbabd3ce9c7fbc7e53fc63262bde067', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(40, '3820b156-4c62-44a6-a8fc-1c944b9464d6', '662491.png', 'image/png', 'https://minio.hisoft.com.vn/huytq/662491.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150101Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=ba7e0ae635917cf743b1b3dc0cb850f15dd25a924bc6eb720b817bd567f9a054', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(41, '2247042e-63ab-414e-9a6e-a4877fd7f570', '702760.png', 'image/png', 'https://minio.hisoft.com.vn/huytq/702760.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150101Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=8632d124b8556fba4fe6da465959cc8b5f349e365c3dd83c2773f4cbd8cc43f0', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(42, 'c0135331-4143-43fc-a6e2-1f9dbcf90d5a', '669047.png', 'image/png', 'https://minio.hisoft.com.vn/huytq/669047.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150100Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=ccc1fccbcdb9f5bb7318091a6de883c413d12fec5fa5164a5371bbd5641c4f0a', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(43, 'e9fdbcdf-b5db-448d-9343-c68f57f59bdc', '727985.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/727985.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150059Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=641138e111b28bb1b54d08424be14194f42adbc7bc2f51fdbd16a78cf32aa039', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(44, 'a499593e-df16-4e4f-9067-a12f74be190c', 'EwAjjcpVcAE-G6o.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/EwAjjcpVcAE-G6o.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150102Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=39ea319aad31754fba07282fddd239431b1828b9c73ec93e93dc82491294faf4', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(45, 'cfd730e9-0cfc-44c4-84f0-e44a22bbbaf8', 'EwPzOyxUUAMgGSp.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/EwPzOyxUUAMgGSp.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150103Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=eff297f24ea67589e9f7f097d8cd6e492a39b25a2e4771f3313006446a8c3027', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(46, 'f1dafcb5-9f5e-408c-89a6-5809a3b28dbe', 'EwQANvtVgAE8xD_.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/EwQANvtVgAE8xD_.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150104Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=32516a1346aa2699cbc563129da01346940e48507b4d95d803d1ca839d87b4c5', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(47, 'cdfb4585-8779-4af0-9bdb-c986686b951f', 'rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3317.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3317.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150105Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=4ddd6da4781e8a00b89081b824d52339e5b82d65661635772bf0464d55b2a249', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(48, '553463f5-63b1-41c2-80ae-9d47d300a281', 'rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3320.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3320.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150107Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=5ba2bbe9bb01f840e94a57cc7905cb08144442250847dd8991850d0bc8e858b9', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(49, '293677bb-a183-4b00-82df-e8709b2e73ed', 'rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3318.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3318.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150107Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=bdb44542c75ca0c4db168dcf31bb9f60a6c72479de335006b2332e631335a111', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(50, 'c26a0bfd-bf21-4b95-87d9-f26b2ded585f', 'rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3317.jpg', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/rose-on-the-ground-blackpink-uhdpaper.com-4K-7.3317.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210419%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210419T150106Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=dffb34fae0689cae044e53399f80b2127282cee2fafc691c5b6080507f5270f6', 1, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(57, '2ddff041-5885-44d7-8c99-53478348b1e8', 'Ngu phap Tieng Anh Co Ban den Nang cao.pdf', 'application/pdf', 'https://minio.hisoft.com.vn/huytq/Ngu%20phap%20Tieng%20Anh%20Co%20Ban%20den%20Nang%20cao.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210422%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210422T145301Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=3417187592d69433605ba2b54cad0a402500c1622c10e95cade03c0fb5104171', 1, 'eee34d64-8cca-44df-ae9c-557c14d776fa'),
(64, '46bd3007-4c49-46ae-ad63-266f83976070', 'DSC04499.JPG', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/DSC04499.JPG?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210509%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210509T090743Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=d626c6971e4c484b6248a1a88b6602a2601c9cae605e281ce0f3a99c2540a669', 1, '0b1f0429-f703-4bee-ad03-29f7bbbb71ef'),
(68, 'e98f5f73-0204-4d6e-9a28-528d364aec76', 'DSC04582.JPG', 'image/jpeg', 'https://minio.hisoft.com.vn/huytq/DSC04582.JPG?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=FKjV60DxexBajLfTkpTmxBE3PGbYmEon%2F20210509%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210509T090804Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=6da538503cdd554519f8590369eb1c29341d02c7591b61eec987c4b7e6d2cbd4', 1, '0b1f0429-f703-4bee-ad03-29f7bbbb71ef');

-- --------------------------------------------------------

--
-- Table structure for table `file_subject`
--

CREATE TABLE `file_subject` (
  `id` int(11) NOT NULL,
  `idSubject` varchar(255) NOT NULL,
  `idFile` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_subject`
--

INSERT INTO `file_subject` (`id`, `idSubject`, `idFile`, `createdAt`, `updatedAt`) VALUES
(2, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'ae6ee394-b9e9-48fd-825c-61807cf785e1', '2021-04-19 16:41:47', '2021-04-19 16:41:47'),
(3, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '513206a9-54c5-4a0d-b44a-f885cc2a400a', '2021-04-19 16:42:20', '2021-04-19 16:42:20'),
(4, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6b70157d-8e20-4560-a0b5-a459f557d1f9', '2021-04-19 16:42:52', '2021-04-19 16:42:52'),
(8, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'e98f5f73-0204-4d6e-9a28-528d364aec76', '2021-04-28 00:32:36', '2021-04-28 00:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `permisson`
--

CREATE TABLE `permisson` (
  `id` int(11) NOT NULL,
  `idPermisson` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permisson`
--

INSERT INTO `permisson` (`id`, `idPermisson`, `name`, `status`) VALUES
(1, '1', 'ADMIN', 'true'),
(2, '2', 'TEACHER', 'true'),
(3, '3', 'STUDENT', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE `point` (
  `id` int(11) NOT NULL,
  `idPoint` varchar(255) NOT NULL,
  `pointDiligence` float DEFAULT NULL,
  `pointMidTerm` float DEFAULT NULL,
  `pointEndTerm` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `point`
--

INSERT INTO `point` (`id`, `idPoint`, `pointDiligence`, `pointMidTerm`, `pointEndTerm`, `createdAt`, `updatedAt`) VALUES
(1, '29a6f239-b7e5-450a-be8e-f2904ac15935', 4, 9, 9, '2021-04-08 16:25:42', '2021-04-08 15:21:57'),
(2, '5ab0ba99-3952-4c42-a186-d2f3193d70d6', 7, 9, 9, '2021-04-08 15:15:39', '2021-04-08 15:27:50'),
(3, 'e740cd24-06c5-41c2-99b1-16c2092e2329', 10, 9, 8, '2021-04-08 15:27:16', '2021-04-08 15:27:16'),
(4, 'e6cc6537-0bfe-486f-afa9-903c3952d938', 10, 6, 7, '2021-04-08 15:27:37', '2021-04-08 15:27:37'),
(5, 'c7280b46-20ae-44d6-8021-825d02d4f648', NULL, NULL, NULL, '2021-04-11 14:24:51', '2021-04-11 14:24:51'),
(6, '7c0fae85-ba88-4d26-bd9d-55ba677588c6', 8, 9, 9, '2021-04-11 14:25:20', '2021-04-12 15:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `point_user_subject`
--

CREATE TABLE `point_user_subject` (
  `id` int(11) NOT NULL,
  `idPoint` varchar(255) DEFAULT NULL,
  `idSubject` varchar(255) NOT NULL,
  `idUser` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `point_user_subject`
--

INSERT INTO `point_user_subject` (`id`, `idPoint`, `idSubject`, `idUser`, `createdAt`, `updatedAt`) VALUES
(7, '29a6f239-b7e5-450a-be8e-f2904ac15935', '93f033eb-5386-4004-bf2e-c755ce060b29', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '2021-04-07 16:04:14', '2021-04-08 15:25:09'),
(8, '7c0fae85-ba88-4d26-bd9d-55ba677588c6', '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '6ae33a91-14dc-4875-9af7-988d9232daed', '2021-04-07 16:04:17', '2021-04-11 14:25:20'),
(10, NULL, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '4561c342-adaa-445f-81c1-de7313bd9980', '2021-04-07 16:08:58', '2021-04-07 16:08:58'),
(11, NULL, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '0b1f0429-f703-4bee-ad03-29f7bbbb71ef', '2021-04-07 16:09:02', '2021-04-07 16:09:02'),
(12, NULL, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '68ec4ef8-cd87-49f5-a498-65f569a65838', '2021-04-08 14:14:23', '2021-04-08 14:14:23'),
(13, NULL, '93f033eb-5386-4004-bf2e-c755ce060b29', 'd6ae583b-4f7b-4238-bb63-513de7329df7', '2021-04-08 15:25:04', '2021-04-08 15:25:04'),
(14, 'e740cd24-06c5-41c2-99b1-16c2092e2329', '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '2021-04-08 15:26:57', '2021-04-08 15:27:16'),
(15, 'e6cc6537-0bfe-486f-afa9-903c3952d938', '93f033eb-5386-4004-bf2e-c755ce060b29', '6ae33a91-14dc-4875-9af7-988d9232daed', '2021-04-08 15:27:04', '2021-04-08 15:27:37'),
(16, NULL, '0aa48735-ce56-4589-8bd7-529b2e91e69f', 'bd1de2c7-2ad2-4518-80c6-bfad2d52dc6d', '2021-04-09 15:47:48', '2021-04-09 15:47:48'),
(17, NULL, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', '08e332ff-6168-4738-822f-369c1149dd46', '2021-04-19 15:46:10', '2021-04-19 15:46:10'),
(18, NULL, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'bd1de2c7-2ad2-4518-80c6-bfad2d52dc6d', '2021-04-19 15:47:14', '2021-04-19 15:47:14'),
(19, NULL, 'f5de7737-c384-44c5-a3b9-b107ded0fbcb', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '2021-05-04 15:47:30', '2021-05-04 15:47:30'),
(20, NULL, '04b331fa-8b14-449c-860a-6ad6cd8aebbd', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '2021-05-05 01:49:56', '2021-05-05 01:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `idSubject` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `totalStudent` int(11) DEFAULT NULL,
  `studentNum` int(11) DEFAULT NULL,
  `idTeacher` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lessonNum` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `idSubject`, `name`, `code`, `totalStudent`, `studentNum`, `idTeacher`, `status`, `lessonNum`, `credit`, `note`) VALUES
(1, '6b5440fd-e961-4089-acf9-1b7926a5e9b5', 'Mật mã ứng dụng', 'MMUD', 30, 10, '0b1f0429-f703-4bee-ad03-29f7bbbb71ef', 1, 30, 4, ''),
(2, '93f033eb-5386-4004-bf2e-c755ce060b29', 'An toàn hệ điều hành', 'ATHĐH', 30, 10, '4561c342-adaa-445f-81c1-de7313bd9980', 1, 35, 3, ''),
(3, '0aa48735-ce56-4589-8bd7-529b2e91e69f', 'Phân tích thiết kế hệ thống', 'PTTKHT', 30, 5, '4561c342-adaa-445f-81c1-de7313bd9980', 1, 40, 3, ''),
(4, 'f5de7737-c384-44c5-a3b9-b107ded0fbcb', 'Khoa học máy tính', 'KHMT', 30, NULL, '4561c342-adaa-445f-81c1-de7313bd9980', 1, 0, 0, ''),
(5, '04b331fa-8b14-449c-860a-6ad6cd8aebbd', 'Kiến trúc máy tính', 'KTMT01', 30, NULL, '0b1f0429-f703-4bee-ad03-29f7bbbb71ef', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject_calendar`
--

CREATE TABLE `subject_calendar` (
  `id` int(11) NOT NULL,
  `idCalendar` varchar(255) NOT NULL,
  `idSubject` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_calendar`
--

INSERT INTO `subject_calendar` (`id`, `idCalendar`, `idSubject`, `createdAt`, `updatedAt`) VALUES
(1, 'a7a2d0a2-2b90-4641-a6f0-177a81481c34', 'f5de7737-c384-44c5-a3b9-b107ded0fbcb', '2021-05-04 15:44:22', '2021-05-04 15:44:22'),
(2, '9ae936d5-6ca0-4a2e-bcb5-a9ebcba2afe2', 'f5de7737-c384-44c5-a3b9-b107ded0fbcb', '2021-05-04 15:44:22', '2021-05-04 15:44:22'),
(3, 'dc377f43-76f2-4106-a8e7-df85e2ae6a70', '04b331fa-8b14-449c-860a-6ad6cd8aebbd', '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(4, '8c8cadb2-20d4-481f-8b9e-05721cd37bb0', '04b331fa-8b14-449c-860a-6ad6cd8aebbd', '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(5, '6049e73d-2b31-45f1-a2cc-7cd8262f6e61', '04b331fa-8b14-449c-860a-6ad6cd8aebbd', '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(7, '115b04ad-1e81-46e5-9209-89581b100e07', '04b331fa-8b14-449c-860a-6ad6cd8aebbd', '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(8, 'c3b108ce-4b03-4018-87e2-db166f1f9084', '04b331fa-8b14-449c-860a-6ad6cd8aebbd', '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(10, '7cce7d9e-24d6-46a3-8d63-b9d6fcfd1d81', '04b331fa-8b14-449c-860a-6ad6cd8aebbd', '2021-05-05 01:49:48', '2021-05-05 01:49:48'),
(12, '5f327e9e-9272-4a57-a36d-5fb6a3a5ae63', '04b331fa-8b14-449c-860a-6ad6cd8aebbd', '2021-05-09 14:52:13', '2021-05-09 14:52:13'),
(13, 'db437077-4ec6-43a4-a0aa-033c869c860a', '04b331fa-8b14-449c-860a-6ad6cd8aebbd', '2021-05-09 14:52:30', '2021-05-09 14:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `resetPasswordExpires` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `idUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `resetPasswordToken`, `resetPasswordExpires`, `state`, `idUser`) VALUES
(4, 'AT130624', 'trangquanghuy1998@gmail.com', '$2b$10$o0ltZZfQNIP7WhCzKF7VsOWV2P7tVg4UhJowAm1HpqbbYnnF1vpZi', 'dda902eb65860ea0e83aba5948e77953da984d93', '2021-04-02 10:26:32', '1', 'eee34d64-8cca-44df-ae9c-557c14d776fa'),
(6, 'AT130620', 'trangquanghuy1998@gmail.com', '$2b$10$SFyxl2f7a/ixqutH7y2ZkuTr1RxiUpf1E8NRbBuTOtiYKo5/aOCdC', NULL, NULL, '1', '6ae33a91-14dc-4875-9af7-988d9232daed'),
(8, 'hoangvanb', 'hoangvanb@gmail.com', '$2b$10$RWThgmOWLHpTFyMp.k0Vd.9UelEedVUsESR6hno02iiphEpGlz5VW', NULL, NULL, '1', '4561c342-adaa-445f-81c1-de7313bd9980'),
(9, 'admin', 'trangquanghuy1998@gmail.com', '$2b$10$a4Xf7Lzdd45tyuMjTH0fHOenQbpEeLUGr3SklRU.udx6bqdBoRBGi', NULL, NULL, '1', '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(10, 'phungthihang', 'phungthihang@gmail.com', '$2b$10$46ZEL6dwOS9XaAWVmriBpec4TKpMdbNIlXrErb0aKw4Ndpm.1b.hG', NULL, NULL, '1', '68ec4ef8-cd87-49f5-a498-65f569a65838'),
(11, 'nguyenthingocanh', 'nguyenthingocanh@gmail.com', '$2b$10$GXKw2KjzrLcT3ZmK6AbyPOefx9ps/jSpR2bBWM2hn0J/IUgucZF4S', NULL, NULL, '1', 'bd1de2c7-2ad2-4518-80c6-bfad2d52dc6d'),
(12, 'nguyenthithanh', 'nguyenthithanh@gmail.com', '$2b$10$pipIUp4vwGVoBYBX9BuBx.5G2P7m.gILj5lgkIuMumf.ge9xHvyx6', NULL, NULL, '1', '0b1f0429-f703-4bee-ad03-29f7bbbb71ef'),
(13, 'nguyenduchuy', 'nguyenduchuy@gmail.com', '$2b$10$fbrzVjvcB2ZKDTByKfAaR.0GZDvfsOn3rh5HigeoIjq.7crh6kksS', NULL, NULL, '1', 'd6ae583b-4f7b-4238-bb63-513de7329df7'),
(14, 'nguyentrunghieu', 'nguyentrunghieu@gmail.com', '$2b$10$I5BwQBp9uzVA1zuTNIKDOea/FTA.qawsnketakUPgRoSvWrXJyRsW', NULL, NULL, '1', '08e332ff-6168-4738-822f-369c1149dd46');

-- --------------------------------------------------------

--
-- Table structure for table `user_calendar`
--

CREATE TABLE `user_calendar` (
  `id` int(11) NOT NULL,
  `idCalendar` varchar(255) NOT NULL,
  `idUser` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_calendar`
--

INSERT INTO `user_calendar` (`id`, `idCalendar`, `idUser`, `createdAt`, `updatedAt`) VALUES
(1, '886f8b0d-1dc1-44c7-9d0c-77c28735a821', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '2021-04-28 16:32:46', '2021-04-28 16:32:46'),
(2, 'e6cbb1dd-feb6-4c23-8a98-a3599b174809', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '2021-04-28 16:37:59', '2021-04-28 16:37:59'),
(6, '18e4400c-cf70-4a73-b86b-dba5485d52ab', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '2021-05-05 01:52:19', '2021-05-05 01:52:19'),
(7, 'de72fe5d-eb97-40db-bfb5-75aee7d93af3', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '2021-05-05 01:58:22', '2021-05-05 01:58:22'),
(8, '442568af-c922-47fd-b050-0425466e6a97', 'eee34d64-8cca-44df-ae9c-557c14d776fa', '2021-05-05 15:24:26', '2021-05-05 15:24:26'),
(9, '6654ac33-3030-41bb-a796-2cf863220254', '8cfb43e9-2ca5-408d-a36d-0cf9818ce036', '2021-05-09 09:23:31', '2021-05-09 09:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_class`
--

CREATE TABLE `user_class` (
  `id` int(11) NOT NULL,
  `idClass` varchar(255) NOT NULL,
  `idUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_class`
--

INSERT INTO `user_class` (`id`, `idClass`, `idUser`) VALUES
(3, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(4, '277b704e-ed7a-49f7-bbd8-b9ffa10a09a3', '8cfb43e9-2ca5-408d-a36d-0cf9818ce036'),
(10, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', '0b1f0429-f703-4bee-ad03-29f7bbbb71ef'),
(11, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', '4561c342-adaa-445f-81c1-de7313bd9980'),
(14, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', '6ae33a91-14dc-4875-9af7-988d9232daed'),
(15, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', 'eee34d64-8cca-44df-ae9c-557c14d776fa'),
(19, '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', 'bd1de2c7-2ad2-4518-80c6-bfad2d52dc6d');

-- --------------------------------------------------------

--
-- Table structure for table `user_file`
--

CREATE TABLE `user_file` (
  `id` int(11) NOT NULL,
  `idFile` varchar(255) NOT NULL,
  `idUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_file`
--

INSERT INTO `user_file` (`id`, `idFile`, `idUser`) VALUES
(1, '6f438b3f-f5ff-4025-9009-4d8a1a13f77a', '0b1f0429-f703-4bee-ad03-29f7bbbb71ef'),
(2, '446eb05c-2dff-4d6e-8098-70da95f0ce4c', '0b1f0429-f703-4bee-ad03-29f7bbbb71ef');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `idUser` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `idClass` varchar(255) DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `permissionId` int(1) NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `idUser`, `username`, `fullName`, `gender`, `dob`, `idClass`, `studentId`, `address`, `phone`, `email`, `permissionId`, `avatar`, `status`) VALUES
(2, 'eee34d64-8cca-44df-ae9c-557c14d776fa', 'AT130624', 'Trần Quang Huy', 'male', '30/04/1998', '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', 'AT130624', 'Ba Vì Hà Nội', '0978727524', 'trangquanghuy1998@gmail.com', 3, 'https://img.wattpad.com/cd471fc4dd291a20ddfe2bac628e36c5b4bd0343/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f517a64516f5563526445437554773d3d2d3436303434393034342e313465306261303465643831333232363834343136313435353631352e6a7067', 1),
(4, '6ae33a91-14dc-4875-9af7-988d9232daed', 'AT130625', 'Hoàng Thị Hồng Nhung', 'female', '02/04/1998', NULL, 'AT130624', 'Ba Vì Hà Nội', '0978727524', 'rosiequeen@gmail.com', 3, 'https://kenh14cdn.com/thumb_w/600/203336854389633024/2021/2/3/photo1612344530913-1612344532623792727595.png', 1),
(6, '4561c342-adaa-445f-81c1-de7313bd9980', '', 'Hoàng Văn B', 'male', '14/08/1998', '', 'AT130626', 'Hà Nội', '0123456789', 'hoangvanb@gmail.com', 2, NULL, 1),
(7, '8cfb43e9-2ca5-408d-a36d-0cf9818ce036', 'admin', 'Nguyễn Văn Khánh', 'male', '28/03/1998', '', 'AT130982', 'Hạ Long', '0975441225', 'halong102@gmail.com', 1, 'https://s.memehay.com/files/posts/20201128/meme-cho-vang-adu-vjp-a-du-vip.jpg', 1),
(8, '68ec4ef8-cd87-49f5-a498-65f569a65838', 'phungthihang', 'Phùng Thị Hằng', 'female', '27/03/1998', NULL, 'AT130600', 'Hà Tây', '0985633221', 'phungthihang@gmail.com', 3, 'https://otakugo.net/wp-content/uploads/2018/12/moe-la-gi-dinh-nghia-y-nghia.jpeg', 1),
(9, 'bd1de2c7-2ad2-4518-80c6-bfad2d52dc6d', 'nguyenthingocanh', 'Nguyễn Thị Ngọc Ánh', 'female', '07/11/1998', '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', 'AT130641', 'Hà Nội', '0963552441', 'nguyenthingocanh@gmail.com', 3, 'https://i.kym-cdn.com/entries/icons/original/000/030/710/dd0.png', 1),
(10, '0b1f0429-f703-4bee-ad03-29f7bbbb71ef', 'nguyenthithanh', 'Nguyễn Thị Thanh 1', 'female', '07/11/1998', '6d1e58a4-92d2-4d26-a0ab-ad766be9dd17', NULL, 'Tây Đằng', '0395445221', 'nguyenthithanh@gmail.com', 2, NULL, 1),
(11, 'd6ae583b-4f7b-4238-bb63-513de7329df7', 'nguyenduchuy', 'Nguyễn Đức Huy', 'male', '11/06/1998', NULL, 'AT130621', 'Hoàng Mai', '0384551442', 'nguyenduchuy@gmail.com', 3, 'https://previews.123rf.com/images/codexserafinius/codexserafinius1710/codexserafinius171000033/87650389-fuck-you-hand-finger-logo-icon-.jpg', 1),
(12, '08e332ff-6168-4738-822f-369c1149dd46', 'nguyentrunghieu', 'Nguyễn Trung Hiếu', 'male', '05/04/2021', NULL, 'AT130620', 'Hà Nội', '0422556874', 'nguyentrunghieu@gmail.com', 3, 'http://tranphamthanh.wap.sh/images/2.gif', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_file`
--
ALTER TABLE `class_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_subject`
--
ALTER TABLE `file_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permisson`
--
ALTER TABLE `permisson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point_user_subject`
--
ALTER TABLE `point_user_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_calendar`
--
ALTER TABLE `subject_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_calendar`
--
ALTER TABLE `user_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_class`
--
ALTER TABLE `user_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_file`
--
ALTER TABLE `user_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `class_file`
--
ALTER TABLE `class_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `file_subject`
--
ALTER TABLE `file_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permisson`
--
ALTER TABLE `permisson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `point`
--
ALTER TABLE `point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `point_user_subject`
--
ALTER TABLE `point_user_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject_calendar`
--
ALTER TABLE `subject_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_calendar`
--
ALTER TABLE `user_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_class`
--
ALTER TABLE `user_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_file`
--
ALTER TABLE `user_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
