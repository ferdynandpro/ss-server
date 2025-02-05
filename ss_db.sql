-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2025 pada 09.47
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ss_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `operation` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `record_id` int(11) NOT NULL,
  `changes` text DEFAULT NULL,
  `performed_by` varchar(255) DEFAULT NULL,
  `performed_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `table_name`, `operation`, `record_id`, `changes`, `performed_by`, `performed_at`) VALUES
(1, 'discounts', 'UPDATE', 14, 'Before: {\"customer_id\": 9, \"product_id\": 21, \"discount_price\": 213312.00, \"discount_date\": \"2024-12-17 14:18:10\"} | After: {\"customer_id\": 9, \"product_id\": 21, \"discount_price\": 2134.00, \"discount_date\": \"2024-12-17 14:18:10\"}', 'root@localhost', '2024-12-23 22:24:05'),
(2, 'discounts', 'DELETE', 14, 'Deleted: {\"customer_id\": 9, \"product_id\": 21, \"discount_price\": 2134.00, \"discount_date\": \"2024-12-17 14:18:10\"}', 'root@localhost', '2024-12-23 22:24:09'),
(3, 'customers', 'UPDATE', 9, 'Before: {\"customer_name\": \"saddddddddddddddddddddddddddddddddddddd\", \"phone_number\": \"08213167452\"} | After: {\"customer_name\": \"asd\", \"phone_number\": \"08213167452\"}', 'root@localhost', '2024-12-23 22:26:48'),
(4, 'customers', 'INSERT', 102, 'Inserted: {\"customer_name\": \"ferdynand\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-23 22:50:13'),
(5, 'customers', 'INSERT', 102, 'New Record:\n{\"customer_name\": \"ferdynand\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-23 22:50:13'),
(6, 'customers', 'INSERT', 103, 'New Record:\n{\"customer_name\": \"saverine\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-23 23:08:56'),
(7, 'customers', 'UPDATE', 9, 'Before:\n{\n    \"customer_name\": \"asd\",\n    \"phone_number\": \"08213167452\"\n}\nAfter:\n{\n    \"customer_name\": \"love\",\n    \"phone_number\": \"08213167452\"\n}', 'root@localhost', '2024-12-23 23:15:07'),
(8, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 123124.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-23 22:07:41\",\n    \"last_edited_by\": \"Nina\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 123124.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-24 05:46:21\",\n    \"last_edited_by\": \"Nina\"\n}', 'root@localhost', '2024-12-24 05:46:21'),
(9, 'customers', 'UPDATE', 9, 'Before:\n{\n    \"customer_name\": \"love\",\n    \"phone_number\": \"08213167452\"\n}\nAfter:\n{\n    \"customer_name\": \"asdddddddddddddddd\",\n    \"phone_number\": \"08213167452\"\n}', 'root@localhost', '2024-12-24 05:53:40'),
(10, 'customers', 'DELETE', 10, 'Deleted Record:\n{\"customer_name\": \"asdddddddddddddddd\", \"phone_number\": \"08213167452\"}', 'root@localhost', '2024-12-24 10:47:57'),
(11, 'discounts', 'UPDATE', 21, 'Before:\n{\n    \"customer_id\": 20,\n    \"product_id\": 9,\n    \"discount_price\": 7777.00,\n    \"discount_date\": \"2024-12-17 14:29:44\",\n    \"last_updated\": \"2024-12-21 09:46:26\",\n    \"last_edited_by\": \"ferdynand\"\n}\nAfter:\n{\n    \"customer_id\": 20,\n    \"product_id\": 9,\n    \"discount_price\": 7777.00,\n    \"discount_date\": \"2024-12-17 14:29:44\",\n    \"last_updated\": \"2024-12-24 10:50:04\",\n    \"last_edited_by\": \"Nina\"\n}', 'root@localhost', '2024-12-24 10:50:04'),
(12, 'discounts', 'INSERT', 37, 'New Record:\n{\"customer_id\": 12, \"product_id\": 21, \"discount_price\": 124.00, \"discount_date\": \"2024-12-25 10:28:40\", \"last_updated\": \"2024-12-25 10:28:40\", \"last_edited_by\": null}', 'root@localhost', '2024-12-25 10:28:40'),
(13, 'discounts', 'INSERT', 38, 'New Record:\n{\"customer_id\": 83, \"product_id\": 56, \"discount_price\": 1234.00, \"discount_date\": \"2024-12-25 20:21:29\", \"last_updated\": \"2024-12-25 20:21:29\", \"last_edited_by\": null}', 'root@localhost', '2024-12-25 20:21:29'),
(14, 'discounts', 'DELETE', 16, 'Deleted Record:\n{\"customer_id\": 20, \"product_id\": 10, \"discount_price\": 123124.00, \"discount_date\": \"2024-12-17 14:20:39\", \"last_updated\": \"2024-12-22 21:59:16\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-27 19:39:04'),
(15, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 123124.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-24 05:46:21\",\n    \"last_edited_by\": \"Nina\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 214.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-27 19:39:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 19:39:08'),
(16, 'discounts', 'INSERT', 39, 'New Record:\n{\"customer_id\": 9, \"product_id\": 13, \"discount_price\": 2134.00, \"discount_date\": \"2024-12-27 19:41:42\", \"last_updated\": \"2024-12-27 19:41:42\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 19:41:42'),
(17, 'discounts', 'INSERT', 40, 'New Record:\n{\"customer_id\": 83, \"product_id\": 11, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 19:57:46\", \"last_updated\": \"2024-12-27 19:57:46\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 19:57:46'),
(18, 'discounts', 'INSERT', 41, 'New Record:\n{\"customer_id\": 20, \"product_id\": 68, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:01:38\", \"last_updated\": \"2024-12-27 20:01:38\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:01:38'),
(19, 'discounts', 'INSERT', 42, 'New Record:\n{\"customer_id\": 90, \"product_id\": 68, \"discount_price\": 1243.00, \"discount_date\": \"2024-12-27 20:04:09\", \"last_updated\": \"2024-12-27 20:04:09\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:04:09'),
(20, 'discounts', 'INSERT', 43, 'New Record:\n{\"customer_id\": 83, \"product_id\": 9, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:12:13\", \"last_updated\": \"2024-12-27 20:12:13\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:12:13'),
(21, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:12:13\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:17:02\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:17:02'),
(22, 'discounts', 'INSERT', 44, 'New Record:\n{\"customer_id\": 83, \"product_id\": 9, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:17:39\", \"last_updated\": \"2024-12-27 20:17:39\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:17:39'),
(23, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:17:39\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:17:48\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:17:48'),
(24, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:17:48\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:28:22\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:28:22'),
(25, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:28:22\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:33:11\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:33:11'),
(26, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:17:02\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:33:18\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:33:18'),
(27, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:33:11\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:22\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:36:22'),
(28, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:22\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:23\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:36:23'),
(29, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:23\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:44\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:36:44'),
(30, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:44\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:47\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:36:47'),
(31, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 21300213.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:36:47\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 99999999.99,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:38:14\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:38:14'),
(32, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:33:18\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:38:21\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:38:21'),
(33, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 99999999.99,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:38:14\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 0.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:43:52\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:43:52'),
(34, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 0.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:43:52\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:43:56\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:43:56'),
(35, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:43:56\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:44:08'),
(36, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:27\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:44:27'),
(37, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:27\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:30\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:44:30'),
(38, 'discounts', 'INSERT', 45, 'New Record:\n{\"customer_id\": 83, \"product_id\": 11, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:45:03\", \"last_updated\": \"2024-12-27 20:45:03\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:45:03'),
(39, 'discounts', 'INSERT', 46, 'New Record:\n{\"customer_id\": 9, \"product_id\": 11, \"discount_price\": 24.00, \"discount_date\": \"2024-12-27 20:45:23\", \"last_updated\": \"2024-12-27 20:45:23\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:45:23'),
(40, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 24.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:45:23\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 24.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:46:41\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:46:41'),
(41, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 24.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:46:41\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:46:46\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:46:46'),
(42, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:46:46\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:07\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:07'),
(43, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:07\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:08'),
(44, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 2400213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:18\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:18'),
(45, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:45:03\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:50:29\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:29'),
(46, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:18\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:38\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:38'),
(47, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:50:29\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:50:38\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:38'),
(48, 'discounts', 'UPDATE', 41, 'Before:\n{\n    \"customer_id\": 20,\n    \"product_id\": 68,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:01:38\",\n    \"last_updated\": \"2024-12-27 20:01:38\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 20,\n    \"product_id\": 68,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:01:38\",\n    \"last_updated\": \"2024-12-27 20:50:43\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:43'),
(49, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:38\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:51\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:50:51'),
(50, 'products', 'UPDATE', 9, 'Before:\n{\n    \"name\": \"assssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}\nAfter:\n{\n    \"name\": \"assssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}', 'root@localhost', '2024-12-27 20:51:06'),
(51, 'products', 'UPDATE', 9, 'Before:\n{\n    \"name\": \"assssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}\nAfter:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}', 'root@localhost', '2024-12-27 20:51:12'),
(52, 'products', 'UPDATE', 9, 'Before:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 1222.00\n}\nAfter:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 0.00\n}', 'root@localhost', '2024-12-27 20:51:23'),
(53, 'products', 'UPDATE', 9, 'Before:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 0.00\n}\nAfter:\n{\n    \"name\": \"1213\",\n    \"description\": \"123\",\n    \"price\": 123.00\n}', 'root@localhost', '2024-12-27 20:51:31'),
(54, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:50:51\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:52:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:52:08'),
(55, 'discounts', 'UPDATE', 46, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:52:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 99999999.99,\n    \"discount_date\": \"2024-12-27 20:45:23\",\n    \"last_updated\": \"2024-12-27 20:52:11\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-27 20:52:11'),
(56, 'discounts', 'DELETE', 46, 'Deleted Record:\n{\"customer_id\": 9, \"product_id\": 11, \"discount_price\": 99999999.99, \"discount_date\": \"2024-12-27 20:45:23\", \"last_updated\": \"2024-12-27 20:52:11\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-27 20:52:22'),
(57, 'discounts', 'DELETE', 41, 'Deleted Record:\n{\"customer_id\": 20, \"product_id\": 68, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 20:01:38\", \"last_updated\": \"2024-12-27 20:50:43\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-27 20:52:25'),
(58, 'discounts', 'INSERT', 47, 'New Record:\n{\"customer_id\": 12, \"product_id\": 68, \"discount_price\": 21.00, \"discount_date\": \"2024-12-27 20:52:53\", \"last_updated\": \"2024-12-27 20:52:53\", \"last_edited_by\": null}', 'root@localhost', '2024-12-27 20:52:53'),
(59, 'discounts', 'UPDATE', 47, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-27 20:52:53\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:31:37\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 06:31:37'),
(60, 'discounts', 'UPDATE', 47, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:31:37\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21001.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:31:49\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 06:31:49'),
(61, 'discounts', 'UPDATE', 47, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 21001.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:31:49\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:38:15\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 06:38:15'),
(62, 'discounts', 'UPDATE', 47, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 06:38:15\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 68,\n    \"discount_price\": 10021.00,\n    \"discount_date\": \"2024-12-27 20:52:53\",\n    \"last_updated\": \"2024-12-28 07:49:57\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:49:57'),
(63, 'discounts', 'DELETE', 47, 'Deleted Record:\n{\"customer_id\": 12, \"product_id\": 68, \"discount_price\": 10021.00, \"discount_date\": \"2024-12-27 20:52:53\", \"last_updated\": \"2024-12-28 07:49:57\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-28 07:50:00'),
(64, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-27 20:50:38\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:11\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:11'),
(65, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:11\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:15\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:15'),
(66, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:15\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:19\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:19'),
(67, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-27 19:41:42\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:50:36\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:36'),
(68, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:19\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:48\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:48'),
(69, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-27 20:44:30\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:51\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:51'),
(70, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-27 20:38:21\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:50:54\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:54'),
(71, 'discounts', 'UPDATE', 45, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:48\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 20:45:03\",\n    \"last_updated\": \"2024-12-28 07:50:56\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:56'),
(72, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:51\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:58\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:58'),
(73, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:58\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:59\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:50:59'),
(74, 'discounts', 'UPDATE', 44, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:50:59\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 20:17:39\",\n    \"last_updated\": \"2024-12-28 07:51:04\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:51:04'),
(75, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:50:36\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:51:06\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:51:06'),
(76, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:50:54\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:51:08\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:51:08'),
(77, 'discounts', 'UPDATE', 43, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:51:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 9,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2024-12-27 20:12:13\",\n    \"last_updated\": \"2024-12-28 07:52:48\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:52:48'),
(78, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:51:06\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:51\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:52:51'),
(79, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:51\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:54\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:52:54'),
(80, 'discounts', 'UPDATE', 39, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:54\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 13,\n    \"discount_price\": 2134.00,\n    \"discount_date\": \"2024-12-27 19:41:42\",\n    \"last_updated\": \"2024-12-28 07:52:59\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:52:59'),
(81, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 214.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-27 19:39:08\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 214.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:53:06\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:53:06'),
(82, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 214.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:53:06\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:56:38\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:56:38'),
(83, 'discounts', 'UPDATE', 17, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:56:38\",\n    \"last_edited_by\": \"Herry\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 9,\n    \"discount_price\": 1.00,\n    \"discount_date\": \"2024-12-17 14:25:26\",\n    \"last_updated\": \"2024-12-28 07:56:39\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-28 07:56:39'),
(84, 'discounts', 'DELETE', 17, 'Deleted Record:\n{\"customer_id\": 9, \"product_id\": 9, \"discount_price\": 1.00, \"discount_date\": \"2024-12-17 14:25:26\", \"last_updated\": \"2024-12-28 07:56:39\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2024-12-28 07:56:41'),
(85, 'products', 'INSERT', 74, 'New Record:\n{\"name\": \"sad\", \"description\": \"sad\", \"price\": 123.00}', 'root@localhost', '2024-12-28 08:13:33'),
(86, 'products', 'INSERT', 75, 'New Record:\n{\"name\": \"asd\", \"description\": \"edfas\", \"price\": 123.00}', 'root@localhost', '2024-12-28 08:14:39'),
(87, 'products', 'INSERT', 76, 'New Record:\n{\"name\": \"kacau\", \"description\": \"asdcd\", \"price\": 213.00}', 'root@localhost', '2024-12-28 08:14:53'),
(88, 'products', 'UPDATE', 76, 'Before:\n{\n    \"name\": \"kacau\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}\nAfter:\n{\n    \"name\": \"kacau\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}', 'root@localhost', '2024-12-28 08:15:03'),
(89, 'products', 'UPDATE', 76, 'Before:\n{\n    \"name\": \"kacau\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}\nAfter:\n{\n    \"name\": \"\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}', 'root@localhost', '2024-12-28 08:15:07'),
(90, 'products', 'UPDATE', 76, 'Before:\n{\n    \"name\": \"\",\n    \"description\": \"asdcd\",\n    \"price\": 213.00\n}\nAfter:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 0.00\n}', 'root@localhost', '2024-12-28 08:15:16'),
(91, 'discounts', 'INSERT', 48, 'New Record:\n{\"customer_id\": 9, \"product_id\": 11, \"discount_price\": 231.00, \"discount_date\": \"2024-12-28 08:19:22\", \"last_updated\": \"2024-12-28 08:19:22\", \"last_edited_by\": null}', 'root@localhost', '2024-12-28 08:19:22'),
(92, 'discounts', 'UPDATE', 48, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 231.00,\n    \"discount_date\": \"2024-12-28 08:19:22\",\n    \"last_updated\": \"2024-12-28 08:19:22\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213123.00,\n    \"discount_date\": \"2024-12-28 08:19:22\",\n    \"last_updated\": \"2024-12-28 08:19:43\",\n    \"last_edited_by\": \"Nina\"\n}', 'root@localhost', '2024-12-28 08:19:43'),
(93, 'products', 'UPDATE', 11, 'Before:\n{\n    \"name\": \"asd\",\n    \"description\": \"asd\",\n    \"price\": 22222222.00\n}\nAfter:\n{\n    \"name\": \"asds\",\n    \"description\": \"asds\",\n    \"price\": 22222222.00\n}', 'root@localhost', '2024-12-28 08:22:35'),
(94, 'products', 'UPDATE', 11, 'Before:\n{\n    \"name\": \"asds\",\n    \"description\": \"asds\",\n    \"price\": 22222222.00\n}\nAfter:\n{\n    \"name\": \"1\",\n    \"description\": \"\",\n    \"price\": 1.00\n}', 'root@localhost', '2024-12-28 08:23:17'),
(95, 'products', 'UPDATE', 11, 'Before:\n{\n    \"name\": \"1\",\n    \"description\": \"\",\n    \"price\": 1.00\n}\nAfter:\n{\n    \"name\": \"1\",\n    \"description\": \"\",\n    \"price\": 1.00\n}', 'root@localhost', '2024-12-28 08:23:21'),
(96, 'customers', 'DELETE', 103, 'Deleted Record:\n{\"customer_name\": \"saverine\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-29 17:16:49'),
(97, 'customers', 'DELETE', 101, 'Deleted Record:\n{\"customer_name\": \"asd\", \"phone_number\": \"08123456\"}', 'root@localhost', '2024-12-29 17:16:51'),
(98, 'customers', 'DELETE', 100, 'Deleted Record:\n{\"customer_name\": \"asdasd\", \"phone_number\": \"08123123123123\"}', 'root@localhost', '2024-12-29 17:16:53'),
(99, 'discounts', 'UPDATE', 48, 'Before:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213123.00,\n    \"discount_date\": \"2024-12-28 08:19:22\",\n    \"last_updated\": \"2024-12-28 08:19:43\",\n    \"last_edited_by\": \"Nina\"\n}\nAfter:\n{\n    \"customer_id\": 9,\n    \"product_id\": 11,\n    \"discount_price\": 213123.00,\n    \"discount_date\": \"2024-12-28 08:19:22\",\n    \"last_updated\": \"2024-12-30 12:22:54\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-30 12:22:54'),
(100, 'discounts', 'UPDATE', 37, 'Before:\n{\n    \"customer_id\": 12,\n    \"product_id\": 21,\n    \"discount_price\": 124.00,\n    \"discount_date\": \"2024-12-25 10:28:40\",\n    \"last_updated\": \"2024-12-25 10:28:40\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 12,\n    \"product_id\": 21,\n    \"discount_price\": 124.00,\n    \"discount_date\": \"2024-12-25 10:28:40\",\n    \"last_updated\": \"2024-12-30 12:22:56\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2024-12-30 12:22:56'),
(101, 'discounts', 'UPDATE', 40, 'Before:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 19:57:46\",\n    \"last_updated\": \"2024-12-27 19:57:46\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 83,\n    \"product_id\": 11,\n    \"discount_price\": 213.00,\n    \"discount_date\": \"2024-12-27 19:57:46\",\n    \"last_updated\": \"2025-01-01 18:57:10\",\n    \"last_edited_by\": \"Herry\"\n}', 'root@localhost', '2025-01-01 18:57:10'),
(102, 'customers', 'DELETE', 81, 'Deleted Record:\n{\"customer_name\": \"qweqw\", \"phone_number\": \"0854\"}', 'root@localhost', '2025-01-02 13:19:13'),
(103, 'customers', 'DELETE', 84, 'Deleted Record:\n{\"customer_name\": \"123\", \"phone_number\": \"08123456\"}', 'root@localhost', '2025-01-02 13:19:15'),
(104, 'customers', 'INSERT', 104, 'New Record:\n{\"customer_name\": \"asdasd\", \"phone_number\": \"08123123\"}', 'root@localhost', '2025-01-30 10:05:54'),
(105, 'products', 'UPDATE', 76, 'Before:\n{\n    \"name\": \"\",\n    \"description\": \"\",\n    \"price\": 0.00\n}\nAfter:\n{\n    \"name\": \"sss\",\n    \"description\": \"\",\n    \"price\": 0.00\n}', 'root@localhost', '2025-01-31 10:34:59'),
(106, 'discounts', 'DELETE', 40, 'Deleted Record:\n{\"customer_id\": 83, \"product_id\": 11, \"discount_price\": 213.00, \"discount_date\": \"2024-12-27 19:57:46\", \"last_updated\": \"2025-01-01 18:57:10\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2025-01-31 10:47:15'),
(107, 'discounts', 'DELETE', 37, 'Deleted Record:\n{\"customer_id\": 12, \"product_id\": 21, \"discount_price\": 124.00, \"discount_date\": \"2024-12-25 10:28:40\", \"last_updated\": \"2024-12-30 12:22:56\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2025-01-31 10:47:16'),
(108, 'discounts', 'DELETE', 48, 'Deleted Record:\n{\"customer_id\": 9, \"product_id\": 11, \"discount_price\": 213123.00, \"discount_date\": \"2024-12-28 08:19:22\", \"last_updated\": \"2024-12-30 12:22:54\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2025-01-31 10:47:18'),
(109, 'discounts', 'DELETE', 39, 'Deleted Record:\n{\"customer_id\": 9, \"product_id\": 13, \"discount_price\": 2134.00, \"discount_date\": \"2024-12-27 19:41:42\", \"last_updated\": \"2024-12-28 07:52:59\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2025-01-31 10:47:19'),
(110, 'discounts', 'DELETE', 18, 'Deleted Record:\n{\"customer_id\": 9, \"product_id\": 9, \"discount_price\": 24134.00, \"discount_date\": \"2024-12-17 21:26:41\", \"last_updated\": \"2024-12-22 07:06:07\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2025-01-31 17:47:49'),
(111, 'discounts', 'DELETE', 19, 'Deleted Record:\n{\"customer_id\": 20, \"product_id\": 9, \"discount_price\": 2143412.00, \"discount_date\": \"2024-12-17 21:26:49\", \"last_updated\": \"2024-12-21 09:46:26\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(112, 'discounts', 'DELETE', 20, 'Deleted Record:\n{\"customer_id\": 20, \"product_id\": 9, \"discount_price\": 111111.00, \"discount_date\": \"2024-12-17 21:27:37\", \"last_updated\": \"2024-12-21 21:12:35\", \"last_edited_by\": \"ferfy\"}', 'root@localhost', '2025-01-31 17:47:49'),
(113, 'discounts', 'DELETE', 21, 'Deleted Record:\n{\"customer_id\": 20, \"product_id\": 9, \"discount_price\": 7777.00, \"discount_date\": \"2024-12-17 21:29:44\", \"last_updated\": \"2024-12-24 10:50:04\", \"last_edited_by\": \"Nina\"}', 'root@localhost', '2025-01-31 17:47:49'),
(114, 'discounts', 'DELETE', 22, 'Deleted Record:\n{\"customer_id\": 12, \"product_id\": 54, \"discount_price\": 20000.00, \"discount_date\": \"2024-12-18 16:35:11\", \"last_updated\": \"2024-12-21 09:46:27\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(115, 'discounts', 'DELETE', 23, 'Deleted Record:\n{\"customer_id\": 19, \"product_id\": 54, \"discount_price\": 19000.00, \"discount_date\": \"2024-12-18 16:38:13\", \"last_updated\": \"2024-12-21 09:46:28\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(116, 'discounts', 'DELETE', 24, 'Deleted Record:\n{\"customer_id\": 12, \"product_id\": 9, \"discount_price\": 2222.00, \"discount_date\": \"2024-12-18 22:22:59\", \"last_updated\": \"2024-12-21 09:46:29\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(117, 'discounts', 'DELETE', 25, 'Deleted Record:\n{\"customer_id\": 12, \"product_id\": 9, \"discount_price\": 12411424.00, \"discount_date\": \"2024-12-18 23:18:32\", \"last_updated\": \"2024-12-21 09:46:30\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(118, 'discounts', 'DELETE', 26, 'Deleted Record:\n{\"customer_id\": 19, \"product_id\": 56, \"discount_price\": 213213.00, \"discount_date\": \"2024-12-19 01:54:49\", \"last_updated\": \"2024-12-21 09:46:31\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(119, 'discounts', 'DELETE', 27, 'Deleted Record:\n{\"customer_id\": 77, \"product_id\": 54, \"discount_price\": 3.00, \"discount_date\": \"2024-12-19 02:02:33\", \"last_updated\": \"2024-12-21 09:46:33\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(120, 'discounts', 'DELETE', 28, 'Deleted Record:\n{\"customer_id\": 78, \"product_id\": 9, \"discount_price\": 2.00, \"discount_date\": \"2024-12-19 02:02:42\", \"last_updated\": \"2024-12-21 09:46:34\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(121, 'discounts', 'DELETE', 29, 'Deleted Record:\n{\"customer_id\": 19, \"product_id\": 10, \"discount_price\": 123231.00, \"discount_date\": \"2024-12-19 02:15:47\", \"last_updated\": \"2024-12-21 09:46:35\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(122, 'discounts', 'DELETE', 32, 'Deleted Record:\n{\"customer_id\": 82, \"product_id\": 11, \"discount_price\": 213123.00, \"discount_date\": \"2024-12-21 14:39:14\", \"last_updated\": \"2024-12-21 09:46:36\", \"last_edited_by\": \"ferdynand\"}', 'root@localhost', '2025-01-31 17:47:49'),
(123, 'discounts', 'DELETE', 33, 'Deleted Record:\n{\"customer_id\": 12, \"product_id\": 54, \"discount_price\": 324.00, \"discount_date\": \"2024-12-21 16:29:24\", \"last_updated\": \"2024-12-21 16:06:04\", \"last_edited_by\": \"celine\"}', 'root@localhost', '2025-01-31 17:47:49'),
(124, 'discounts', 'DELETE', 34, 'Deleted Record:\n{\"customer_id\": 9, \"product_id\": 9, \"discount_price\": 213.00, \"discount_date\": \"2024-12-21 23:06:25\", \"last_updated\": \"2024-12-21 16:06:25\", \"last_edited_by\": null}', 'root@localhost', '2025-01-31 17:47:49'),
(125, 'discounts', 'DELETE', 35, 'Deleted Record:\n{\"customer_id\": 9, \"product_id\": 13, \"discount_price\": 123.00, \"discount_date\": \"2024-12-22 04:50:21\", \"last_updated\": \"2024-12-21 21:50:28\", \"last_edited_by\": \"Nina\"}', 'root@localhost', '2025-01-31 17:47:49'),
(126, 'discounts', 'DELETE', 36, 'Deleted Record:\n{\"customer_id\": 12, \"product_id\": 73, \"discount_price\": 213.00, \"discount_date\": \"2024-12-23 04:57:08\", \"last_updated\": \"2024-12-22 21:57:08\", \"last_edited_by\": null}', 'root@localhost', '2025-01-31 17:47:49'),
(127, 'discounts', 'DELETE', 38, 'Deleted Record:\n{\"customer_id\": 83, \"product_id\": 56, \"discount_price\": 1234.00, \"discount_date\": \"2024-12-26 03:21:29\", \"last_updated\": \"2024-12-25 20:21:29\", \"last_edited_by\": null}', 'root@localhost', '2025-01-31 17:47:49'),
(128, 'discounts', 'DELETE', 42, 'Deleted Record:\n{\"customer_id\": 90, \"product_id\": 68, \"discount_price\": 1243.00, \"discount_date\": \"2024-12-28 03:04:09\", \"last_updated\": \"2024-12-27 20:04:09\", \"last_edited_by\": null}', 'root@localhost', '2025-01-31 17:47:49'),
(129, 'discounts', 'DELETE', 43, 'Deleted Record:\n{\"customer_id\": 83, \"product_id\": 9, \"discount_price\": 123.00, \"discount_date\": \"2024-12-28 03:12:13\", \"last_updated\": \"2024-12-28 07:52:48\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2025-01-31 17:47:49'),
(130, 'discounts', 'DELETE', 44, 'Deleted Record:\n{\"customer_id\": 83, \"product_id\": 9, \"discount_price\": 2134.00, \"discount_date\": \"2024-12-28 03:17:39\", \"last_updated\": \"2024-12-28 07:51:04\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2025-01-31 17:47:49'),
(131, 'discounts', 'DELETE', 45, 'Deleted Record:\n{\"customer_id\": 83, \"product_id\": 11, \"discount_price\": 213.00, \"discount_date\": \"2024-12-28 03:45:03\", \"last_updated\": \"2024-12-28 07:50:56\", \"last_edited_by\": \"Herry\"}', 'root@localhost', '2025-01-31 17:47:49');
INSERT INTO `audit_logs` (`id`, `table_name`, `operation`, `record_id`, `changes`, `performed_by`, `performed_at`) VALUES
(132, 'products', 'DELETE', 9, 'Deleted Record:\n{\"name\": \"1213\", \"description\": \"123\", \"price\": 123.00}', 'root@localhost', '2025-01-31 17:47:59'),
(133, 'products', 'DELETE', 10, 'Deleted Record:\n{\"name\": \"ada\", \"description\": \"dad\", \"price\": 22222200.00}', 'root@localhost', '2025-01-31 17:47:59'),
(134, 'products', 'DELETE', 11, 'Deleted Record:\n{\"name\": \"1\", \"description\": \"\", \"price\": 1.00}', 'root@localhost', '2025-01-31 17:47:59'),
(135, 'products', 'DELETE', 13, 'Deleted Record:\n{\"name\": \"adsada\", \"description\": \"sdasdas\", \"price\": 22222200.00}', 'root@localhost', '2025-01-31 17:47:59'),
(136, 'products', 'DELETE', 14, 'Deleted Record:\n{\"name\": \"sada\", \"description\": \"dsaasd\", \"price\": 99999999.99}', 'root@localhost', '2025-01-31 17:47:59'),
(137, 'products', 'DELETE', 21, 'Deleted Record:\n{\"name\": \"dsadasdasd\", \"description\": \"asdasdas\", \"price\": 39999.00}', 'root@localhost', '2025-01-31 17:47:59'),
(138, 'products', 'DELETE', 28, 'Deleted Record:\n{\"name\": \"salet\", \"description\": \"wwwww\", \"price\": 20000.00}', 'root@localhost', '2025-01-31 17:47:59'),
(139, 'products', 'DELETE', 44, 'Deleted Record:\n{\"name\": \"a\", \"description\": \"A\", \"price\": 0.00}', 'root@localhost', '2025-01-31 17:47:59'),
(140, 'products', 'DELETE', 54, 'Deleted Record:\n{\"name\": \"ROKOKss\", \"description\": \"3\", \"price\": 100.00}', 'root@localhost', '2025-01-31 17:47:59'),
(141, 'products', 'DELETE', 56, 'Deleted Record:\n{\"name\": \"ayam bawang23\", \"description\": \"2213\", \"price\": 123.00}', 'root@localhost', '2025-01-31 17:47:59'),
(142, 'products', 'DELETE', 67, 'Deleted Record:\n{\"name\": \"asd\", \"description\": \"qe\", \"price\": 2.00}', 'root@localhost', '2025-01-31 17:47:59'),
(143, 'products', 'DELETE', 68, 'Deleted Record:\n{\"name\": \"123123\", \"description\": \"132\", \"price\": 123123.00}', 'root@localhost', '2025-01-31 17:47:59'),
(144, 'products', 'DELETE', 69, 'Deleted Record:\n{\"name\": \"ads\", \"description\": \"213\", \"price\": 2333333.00}', 'root@localhost', '2025-01-31 17:47:59'),
(145, 'products', 'DELETE', 70, 'Deleted Record:\n{\"name\": \"asd\", \"description\": \"v\", \"price\": 22221.00}', 'root@localhost', '2025-01-31 17:47:59'),
(146, 'products', 'DELETE', 71, 'Deleted Record:\n{\"name\": \"qqwwee\", \"description\": \"222\", \"price\": 2220.00}', 'root@localhost', '2025-01-31 17:47:59'),
(147, 'products', 'DELETE', 73, 'Deleted Record:\n{\"name\": \"Alice\", \"description\": \"wqe\", \"price\": 1234.00}', 'root@localhost', '2025-01-31 17:47:59'),
(148, 'products', 'DELETE', 74, 'Deleted Record:\n{\"name\": \"sad\", \"description\": \"sad\", \"price\": 123.00}', 'root@localhost', '2025-01-31 17:47:59'),
(149, 'products', 'DELETE', 75, 'Deleted Record:\n{\"name\": \"asd\", \"description\": \"edfas\", \"price\": 123.00}', 'root@localhost', '2025-01-31 17:47:59'),
(150, 'products', 'DELETE', 76, 'Deleted Record:\n{\"name\": \"sss\", \"description\": \"\", \"price\": 0.00}', 'root@localhost', '2025-01-31 17:47:59'),
(151, 'products', 'INSERT', 77, 'New Record:\n{\"name\": \"asd\", \"description\": \"asd\", \"price\": 123123.00}', 'root@localhost', '2025-01-31 10:51:38'),
(152, 'products', 'INSERT', 87, 'New Record:\n{\"name\": \"asd\", \"description\": \"asd\", \"price\": 123.00}', 'root@localhost', '2025-01-31 10:54:38'),
(153, 'products', 'INSERT', 99, 'New Record:\n{\"name\": \"asd\", \"description\": \"ad\", \"price\": 123.00}', 'root@localhost', '2025-01-31 11:03:27'),
(154, 'products', 'DELETE', 99, 'Deleted Record:\n{\"name\": \"asd\", \"description\": \"ad\", \"price\": 123.00}', 'root@localhost', '2025-01-31 11:03:30'),
(155, 'products', 'DELETE', 87, 'Deleted Record:\n{\"name\": \"asd\", \"description\": \"asd\", \"price\": 123.00}', 'root@localhost', '2025-01-31 11:03:32'),
(156, 'products', 'DELETE', 77, 'Deleted Record:\n{\"name\": \"asd\", \"description\": \"asd\", \"price\": 123123.00}', 'root@localhost', '2025-01-31 11:03:34'),
(157, 'products', 'INSERT', 100, 'New Record:\n{\"name\": \"asd\", \"description\": \"asd\", \"price\": 213.00}', 'root@localhost', '2025-02-03 09:12:04'),
(158, 'products', 'INSERT', 101, 'New Record:\n{\"name\": \"asd\", \"description\": \"sad\", \"price\": 123.00}', 'root@localhost', '2025-02-03 09:13:08'),
(159, 'products', 'UPDATE', 101, 'Before:\n{\n    \"name\": \"asd\",\n    \"description\": \"sad\",\n    \"price\": 123.00\n}\nAfter:\n{\n    \"name\": \"asd\",\n    \"description\": \"sad\",\n    \"price\": 123.00\n}', 'root@localhost', '2025-02-03 16:15:30'),
(160, 'products', 'INSERT', 102, 'New Record:\n{\"name\": \"asd\", \"description\": \"asd\", \"price\": 123.00}', 'root@localhost', '2025-02-03 09:15:41'),
(161, 'products', 'DELETE', 102, 'Deleted Record:\n{\"name\": \"asd\", \"description\": \"asd\", \"price\": 123.00}', 'root@localhost', '2025-02-03 09:20:00'),
(162, 'products', 'DELETE', 101, 'Deleted Record:\n{\"name\": \"asd\", \"description\": \"sad\", \"price\": 123.00}', 'root@localhost', '2025-02-03 09:20:02'),
(163, 'products', 'INSERT', 103, 'New Record:\n{\"name\": \"asd\", \"description\": \"123\", \"price\": 123.00}', 'root@localhost', '2025-02-03 09:21:24'),
(164, 'products', 'INSERT', 104, 'New Record:\n{\"name\": \"asd\", \"description\": \"asdasdas\", \"price\": 213.00}', 'root@localhost', '2025-02-03 09:21:46'),
(165, 'products', 'INSERT', 105, 'New Record:\n{\"name\": \"kacau\", \"description\": \"awse\", \"price\": 123.00}', 'root@localhost', '2025-02-03 09:30:55'),
(166, 'products', 'UPDATE', 105, 'Before:\n{\n    \"name\": \"kacau\",\n    \"description\": \"awse\",\n    \"price\": 123.00\n}\nAfter:\n{\n    \"name\": \"kacau\",\n    \"description\": \"awse\",\n    \"price\": 123.00\n}', 'root@localhost', '2025-02-03 09:31:33'),
(167, 'products', 'UPDATE', 105, 'Before:\n{\n    \"name\": \"kacau\",\n    \"description\": \"awse\",\n    \"price\": 123.00\n}\nAfter:\n{\n    \"name\": \"kacau\",\n    \"description\": \"awseads\",\n    \"price\": 123.00\n}', 'root@localhost', '2025-02-03 09:31:40'),
(168, 'discounts', 'INSERT', 49, 'New Record:\n{\"customer_id\": 12, \"product_id\": 100, \"discount_price\": 213.00, \"discount_date\": \"2025-02-03 09:37:02\", \"last_updated\": \"2025-02-03 09:37:02\", \"last_edited_by\": null}', 'root@localhost', '2025-02-03 09:37:02'),
(169, 'discounts', 'INSERT', 50, 'New Record:\n{\"customer_id\": 88, \"product_id\": 100, \"discount_price\": 23123.00, \"discount_date\": \"2025-02-03 09:37:11\", \"last_updated\": \"2025-02-03 09:37:11\", \"last_edited_by\": null}', 'root@localhost', '2025-02-03 09:37:11'),
(170, 'discounts', 'INSERT', 51, 'New Record:\n{\"customer_id\": 82, \"product_id\": 100, \"discount_price\": 213.00, \"discount_date\": \"2025-02-03 09:37:20\", \"last_updated\": \"2025-02-03 09:37:20\", \"last_edited_by\": null}', 'root@localhost', '2025-02-03 09:37:20'),
(171, 'discounts', 'INSERT', 52, 'New Record:\n{\"customer_id\": 12, \"product_id\": 105, \"discount_price\": 213.00, \"discount_date\": \"2025-02-03 09:38:06\", \"last_updated\": \"2025-02-03 09:38:06\", \"last_edited_by\": null}', 'root@localhost', '2025-02-03 09:38:06'),
(172, 'discounts', 'INSERT', 53, 'New Record:\n{\"customer_id\": 13, \"product_id\": 105, \"discount_price\": 123.00, \"discount_date\": \"2025-02-03 09:53:01\", \"last_updated\": \"2025-02-03 09:53:01\", \"last_edited_by\": null}', 'root@localhost', '2025-02-03 09:53:01'),
(173, 'discounts', 'UPDATE', 53, 'Before:\n{\n    \"customer_id\": 13,\n    \"product_id\": 105,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2025-02-03 09:53:01\",\n    \"last_updated\": \"2025-02-03 09:53:01\",\n    \"last_edited_by\": null\n}\nAfter:\n{\n    \"customer_id\": 13,\n    \"product_id\": 105,\n    \"discount_price\": 123.00,\n    \"discount_date\": \"2025-02-03 09:53:01\",\n    \"last_updated\": \"2025-02-03 10:03:19\",\n    \"last_edited_by\": \"herry\"\n}', 'root@localhost', '2025-02-03 10:03:19'),
(174, 'products', 'INSERT', 106, 'New Record:\n{\"name\": \"MMK\", \"description\": \"123\", \"price\": 213.00}', 'root@localhost', '2025-02-05 08:26:19'),
(175, 'discounts', 'INSERT', 54, 'New Record:\n{\"customer_id\": 77, \"product_id\": 106, \"discount_price\": 123.00, \"discount_date\": \"2025-02-05 08:27:43\", \"last_updated\": \"2025-02-05 08:27:43\", \"last_edited_by\": null}', 'root@localhost', '2025-02-05 08:27:43'),
(176, 'discounts', 'DELETE', 54, 'Deleted Record:\n{\"customer_id\": 77, \"product_id\": 106, \"discount_price\": 123.00, \"discount_date\": \"2025-02-05 08:27:43\", \"last_updated\": \"2025-02-05 08:27:43\", \"last_edited_by\": null}', 'root@localhost', '2025-02-05 08:28:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `updatedAt`, `createdAt`, `phone_number`) VALUES
(9, 'asdddddddddddddddd', '2024-12-24 05:53:40', '2024-12-15 15:38:41', '08213167452'),
(12, 'ferdynand', '2024-12-15 17:07:01', '2024-12-15 17:07:01', '081211'),
(13, 'Brina', '2024-12-21 21:40:23', '2024-12-15 17:12:10', '0856454654'),
(19, 'Brina', '2024-12-16 07:35:01', '2024-12-16 07:35:01', '0854'),
(20, 'tasos', '2024-12-16 10:57:03', '2024-12-16 10:57:03', '0854'),
(77, 'Brinna', '2024-12-18 19:02:14', '2024-12-18 19:02:14', '08123456'),
(78, 'brissila', '2024-12-18 19:02:23', '2024-12-18 19:02:23', '08123456'),
(82, '123123', '2024-12-20 05:52:32', '2024-12-20 05:52:32', '08123456'),
(83, 'asdasd', '2024-12-20 05:52:35', '2024-12-20 05:52:35', '0854'),
(85, '123123', '2024-12-20 05:52:42', '2024-12-20 05:52:42', '08123456'),
(86, '123123', '2024-12-20 05:52:45', '2024-12-20 05:52:45', '0854'),
(87, 'wqe', '2024-12-20 05:52:53', '2024-12-20 05:52:53', '0854'),
(88, '123213', '2024-12-20 05:52:56', '2024-12-20 05:52:56', '08123456'),
(89, '121212', '2024-12-20 05:53:00', '2024-12-20 05:53:00', '08123456'),
(90, 'saverine', '2024-12-20 05:53:04', '2024-12-20 05:53:04', '08123456'),
(91, '1212', '2024-12-20 06:32:17', '2024-12-20 05:53:07', '08123123123123'),
(92, 'qweeqwweq', '2024-12-20 06:31:29', '2024-12-20 05:53:15', '08123123123123'),
(93, 'qweeqwweq', '2024-12-20 06:37:12', '2024-12-20 06:31:56', '08123123123123'),
(94, 'adz', '2024-12-20 06:39:42', '2024-12-20 06:37:23', '08123123123123'),
(95, 'Lovely', '2024-12-20 06:39:50', '2024-12-20 06:39:50', '08123456'),
(97, 'saverine', '2024-12-20 06:43:05', '2024-12-20 06:43:05', '08123456'),
(102, 'ferdynand', '2024-12-23 22:50:13', '2024-12-23 22:50:13', '08123456'),
(104, 'asdasd', '2025-01-30 10:05:54', '2025-01-30 10:05:54', '08123123');

--
-- Trigger `customers`
--
DELIMITER $$
CREATE TRIGGER `log_customers_delete` AFTER DELETE ON `customers` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "Deleted Record:\n",
        JSON_OBJECT(
            'customer_name', OLD.customer_name,
            'phone_number', OLD.phone_number
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'customers', 'DELETE', OLD.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_customers_insert` AFTER INSERT ON `customers` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "New Record:\n",
        JSON_OBJECT(
            'customer_name', NEW.customer_name,
            'phone_number', NEW.phone_number
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'customers', 'INSERT', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_customers_update` AFTER UPDATE ON `customers` FOR EACH ROW BEGIN
    DECLARE before_values JSON;
    DECLARE after_values JSON;
    DECLARE changes TEXT;

    SET before_values = JSON_OBJECT(
        'customer_name', OLD.customer_name,
        'phone_number', OLD.phone_number
    );
    SET after_values = JSON_OBJECT(
        'customer_name', NEW.customer_name,
        'phone_number', NEW.phone_number
    );

    SET changes = CONCAT(
        "Before:\n", JSON_PRETTY(before_values),
        "\nAfter:\n", JSON_PRETTY(after_values)
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'customers', 'UPDATE', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `discount_price` decimal(10,2) NOT NULL,
  `discount_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated` datetime DEFAULT current_timestamp(),
  `last_edited_by` varchar(255) DEFAULT NULL,
  `minimum_order_quantity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `discounts`
--

INSERT INTO `discounts` (`id`, `customer_id`, `product_id`, `discount_price`, `discount_date`, `last_updated`, `last_edited_by`, `minimum_order_quantity`) VALUES
(49, 12, 100, 213.00, '2025-02-03 09:37:02', '2025-02-03 09:37:02', NULL, '213'),
(50, 88, 100, 23123.00, '2025-02-03 09:37:11', '2025-02-03 09:37:11', NULL, 'asd'),
(51, 82, 100, 213.00, '2025-02-03 09:37:20', '2025-02-03 09:37:20', NULL, '123'),
(52, 12, 105, 213.00, '2025-02-03 09:38:06', '2025-02-03 09:38:06', NULL, '123'),
(53, 13, 105, 123.00, '2025-02-03 09:53:01', '2025-02-03 10:03:19', 'herry', '123');

--
-- Trigger `discounts`
--
DELIMITER $$
CREATE TRIGGER `log_discounts_delete` AFTER DELETE ON `discounts` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "Deleted Record:\n",
        JSON_OBJECT(
            'customer_id', OLD.customer_id,
            'product_id', OLD.product_id,
            'discount_price', OLD.discount_price,
            'discount_date', OLD.discount_date,
            'last_updated', OLD.last_updated,
            'last_edited_by', OLD.last_edited_by
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'discounts', 'DELETE', OLD.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_discounts_insert` AFTER INSERT ON `discounts` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "New Record:\n",
        JSON_OBJECT(
            'customer_id', NEW.customer_id,
            'product_id', NEW.product_id,
            'discount_price', NEW.discount_price,
            'discount_date', NEW.discount_date,
            'last_updated', NEW.last_updated,
            'last_edited_by', NEW.last_edited_by
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'discounts', 'INSERT', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_discounts_update` AFTER UPDATE ON `discounts` FOR EACH ROW BEGIN
    DECLARE before_values JSON;
    DECLARE after_values JSON;
    DECLARE changes TEXT;

    SET before_values = JSON_OBJECT(
        'customer_id', OLD.customer_id,
        'product_id', OLD.product_id,
        'discount_price', OLD.discount_price,
        'discount_date', OLD.discount_date,
        'last_updated', OLD.last_updated,
        'last_edited_by', OLD.last_edited_by
    );
    SET after_values = JSON_OBJECT(
        'customer_id', NEW.customer_id,
        'product_id', NEW.product_id,
        'discount_price', NEW.discount_price,
        'discount_date', NEW.discount_date,
        'last_updated', NEW.last_updated,
        'last_edited_by', NEW.last_edited_by
    );

    SET changes = CONCAT(
        "Before:\n", JSON_PRETTY(before_values),
        "\nAfter:\n", JSON_PRETTY(after_values)
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'discounts', 'UPDATE', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(31, 'Herry', '$2b$10$9yBo.fFKcOfJpW8p2qDl8u9h3oGcxThrgpPf6Cl.99U4u3x72FKJG', 'owner', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),

--
-- Trigger `login`
--
DELIMITER $$
CREATE TRIGGER `prevent_owner_deletion` BEFORE DELETE ON `login` FOR EACH ROW BEGIN
    -- Cek jika user yang akan dihapus adalah 'owner'
    IF OLD.role = 'owner' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Owner cannot be deleted.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `barcode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `createdAt`, `updatedAt`, `barcode`) VALUES
(100, 'asd', 'asd', 213.00, '2025-02-03 09:12:04', '2025-02-03 09:12:04', NULL),
(103, 'asd', '123', 123.00, '2025-02-03 09:21:24', '2025-02-03 09:21:24', 'asd'),
(104, 'asd', 'asdasdas', 213.00, '2025-02-03 09:21:46', '2025-02-03 09:21:46', '213'),
(105, 'kacau', 'awseads', 123.00, '2025-02-03 09:30:55', '2025-02-03 09:31:40', 'kacaus'),
(106, 'MMK', '123', 213.00, '2025-02-05 08:26:19', '2025-02-05 08:26:19', 'kacause');

--
-- Trigger `products`
--
DELIMITER $$
CREATE TRIGGER `log_products_delete` AFTER DELETE ON `products` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "Deleted Record:\n",
        JSON_OBJECT(
            'name', OLD.name,
            'description', OLD.description,
            'price', OLD.price
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'products', 'DELETE', OLD.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_products_insert` AFTER INSERT ON `products` FOR EACH ROW BEGIN
    DECLARE changes TEXT;

    SET changes = CONCAT(
        "New Record:\n",
        JSON_OBJECT(
            'name', NEW.name,
            'description', NEW.description,
            'price', NEW.price
        )
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'products', 'INSERT', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `log_products_update` AFTER UPDATE ON `products` FOR EACH ROW BEGIN
    DECLARE before_values JSON;
    DECLARE after_values JSON;
    DECLARE changes TEXT;

    SET before_values = JSON_OBJECT(
        'name', OLD.name,
        'description', OLD.description,
        'price', OLD.price
    );
    SET after_values = JSON_OBJECT(
        'name', NEW.name,
        'description', NEW.description,
        'price', NEW.price
    );

    SET changes = CONCAT(
        "Before:\n", JSON_PRETTY(before_values),
        "\nAfter:\n", JSON_PRETTY(after_values)
    );

    INSERT INTO audit_logs (
        table_name, operation, record_id, changes, performed_by
    ) VALUES (
        'products', 'UPDATE', NEW.id, changes, CURRENT_USER()
    );
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_performed_at` (`performed_at`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_id` (`customer_id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barcode` (`barcode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `discounts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

DELIMITER $$
--
-- Event
--
CREATE DEFINER=`root`@`localhost` EVENT `purge_old_audit_logs` ON SCHEDULE EVERY 1 DAY STARTS '2024-12-24 06:13:29' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM audit_logs
  WHERE id NOT IN (
    SELECT id
    FROM (SELECT id FROM audit_logs ORDER BY performed_at DESC LIMIT 10000) AS subquery
  )$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
