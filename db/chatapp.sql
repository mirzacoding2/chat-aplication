-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Feb 2020 pada 16.18
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `attachment_name` text NOT NULL,
  `file_ext` text NOT NULL,
  `mime_type` text NOT NULL,
  `message_date_time` text NOT NULL,
  `ip_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `receiver_id`, `message`, `attachment_name`, `file_ext`, `mime_type`, `message_date_time`, `ip_address`) VALUES
(31, 197, 184, 'ok', '', '', '', '2018-06-13 17:28:45', '::1'),
(32, 197, 184, 'wait..', '', '', '', '2018-06-13 17:28:47', '::1'),
(33, 197, 184, 'NULL', 'Proejct_report_presenation.pptx', '.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', '2018-06-13 17:29:11', '::1'),
(35, 197, 184, 'open the file', '', '', '', '2018-06-13 17:30:34', '::1'),
(37, 197, 184, 'ok', '', '', '', '2018-06-13 17:31:27', '::1'),
(38, 197, 184, 'wait bro..', '', '', '', '2018-06-13 17:31:33', '::1'),
(39, 197, 184, 'NULL', '21_preview.png', '.png', 'image/png', '2018-06-13 17:31:43', '::1'),
(40, 197, 184, 'you got it', '', '', '', '2018-06-13 17:32:05', '::1'),
(44, 197, 184, 'NULL', 'Invoice.pdf', '.pdf', 'application/pdf', '2018-06-13 17:33:03', '::1'),
(45, 185, 184, 'Permisi', '', '', '', '2020-02-10 23:15:03', '::1'),
(48, 185, 185, 'cek', '', '', '', '2020-02-10 23:18:31', '::1'),
(49, 185, 197, 'hai', '', '', '', '2020-02-10 23:19:26', '::1'),
(50, 197, 197, 'bisa bicara', '', '', '', '2020-02-10 23:20:47', '::1'),
(51, 197, 185, 'bisa', '', '', '', '2020-02-10 23:21:16', '::1'),
(52, 197, 197, 'ddsfsdfds', '', '', '', '2020-02-10 23:21:30', '::1'),
(53, 197, 185, 'zfdffd', '', '', '', '2020-02-10 23:21:36', '::1'),
(54, 127, 197, 'tes', '', '', '', '2020-02-10 23:23:02', '::1'),
(55, 197, 184, 'NULL', 'license.txt', '.txt', 'text/plain', '2020-02-10 23:26:40', '::1'),
(56, 184, 197, 'hai', '', '', '', '2020-02-10 23:28:14', '::1'),
(57, 197, 184, 'iya dok', '', '', '', '2020-02-10 23:29:07', '::1'),
(58, 196, 184, 'permisi', '', '', '', '2020-02-10 23:33:15', '::1'),
(59, 196, 184, 'NULL', 'Book1.xlsx', '.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '2020-02-10 23:39:48', '::1'),
(60, 184, 196, 'iya', '', '', '', '2020-02-11 18:01:47', '::1'),
(61, 196, 184, 'ndnsdk', '', '', '', '2020-02-11 18:02:30', '::1'),
(62, 184, 196, 'rfhgrh', '', '', '', '2020-02-11 18:06:22', '::1'),
(63, 196, 184, '\'hfl', '', '', '', '2020-02-11 18:10:07', '::1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL,
  `source` int(5) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `is_email_verify` int(11) NOT NULL,
  `name` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL,
  `alternateEmail` text NOT NULL,
  `mobile_no` text NOT NULL,
  `website` text NOT NULL,
  `picture_url` text NOT NULL,
  `profile_url` text NOT NULL,
  `vendor_file` text NOT NULL,
  `dob` text NOT NULL,
  `gender` text NOT NULL,
  `about` text NOT NULL,
  `type` text NOT NULL,
  `address` text NOT NULL,
  `address_2` text NOT NULL,
  `country` text NOT NULL,
  `language` text NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `pincode` text NOT NULL,
  `ip_address` text NOT NULL,
  `created` text NOT NULL,
  `lastlogged` text NOT NULL,
  `modified` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `source`, `status`, `is_email_verify`, `name`, `first_name`, `last_name`, `email`, `alternateEmail`, `mobile_no`, `website`, `picture_url`, `profile_url`, `vendor_file`, `dob`, `gender`, `about`, `type`, `address`, `address_2`, `country`, `language`, `state`, `city`, `pincode`, `ip_address`, `created`, `lastlogged`, `modified`) VALUES
(127, 'admin@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Admin', 1, 1, 0, 'Admin', 'Super', 'Admin', 'admin@admin.com', '', '', '', 'eligibility-jump.png', '', '', '', '', 'asdfsdfsdfsdf', '', 'Helosdf', '', '', '', '', '', '302039', '::1', '2018-03-21 15:53:01', '', '2018-03-22 07:31:43'),
(184, 'auditor1@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Vendor', 0, 1, 1, 'Auditor', 'Auditor', 'xyz', 'vendor1@xyz.com', '', '', '', '4.png', '', '[\"27042018105604_test - Copy (2).png\",\"27042018105604_test - Copy (3) - Copy.png\"]', '', '', '', '', '', '', '', '', '', '', '', '::1', '2018-04-27 10:56:05', '', ''),
(196, 'client1@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 0, 1, 1, 'Client 1 xyz', 'Client 1', 'xyz', 'client1@xyz.com', '', '', '', '1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2018-04-27 10:56:05', '', ''),
(197, 'client2@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 0, 1, 1, 'Client 2 xyz', 'Client 2', 'xyz', 'client2@xyz.com', '', '', '', '2.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2018-04-27 10:56:05', '', ''),
(202, 'client4@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 1, 1, 0, 'client4', '', '', 'client4@xyz.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-17 22:44:45', '', ''),
(203, 'client3@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 1, 1, 0, 'client3', '', '', 'client3@xyz.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-17 22:51:18', '', ''),
(204, 'client6@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 1, 1, 0, 'Client6', '', '', 'client6@xyz.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-17 22:57:05', '', ''),
(205, 'client5@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 1, 1, 0, 'Client5', '', '', 'client5@xyz.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-17 22:59:34', '', ''),
(206, 'client7@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 1, 1, 0, 'Client7', '', '', 'client7@xyz.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-17 23:00:51', '', ''),
(207, 'client8@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 1, 1, 0, 'Client8', '', '', 'client8@ca.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-18 09:03:11', '', ''),
(208, 'client9@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 1, 1, 0, 'Client9', '', '', 'client9@ca.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-18 09:06:20', '', ''),
(209, 'client10@ca.com', '', 'Client_cs', 1, 0, 0, 'Client10', '', '', 'client10@ca.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-18 09:36:19', '', ''),
(210, 'client11@ca.com', '', 'Client_cs', 1, 0, 0, 'Client11', '', '', 'client11@ca.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-18 09:44:00', '', ''),
(211, 'client20@ca.com', '$2y$12$RyMmZVcqPEt9X2lJbHg1PeFJqcpURF2QOrH4vqMEQELe9wDMLfZYe', 'Client_cs', 1, 0, 0, 'Client20', '', '', 'client20@xyz.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-18 09:47:18', '', ''),
(212, 'client13@ca.com', '', 'Client_cs', 1, 0, 0, 'Client13', '', '', 'client13@ca.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-18 10:04:35', '', ''),
(213, 'client14@ca.com', '', 'Client_cs', 1, 0, 0, 'Client14', '', '', 'client14@ca.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '::1', '2020-02-18 10:05:21', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
