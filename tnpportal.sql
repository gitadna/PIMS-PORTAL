-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2022 at 08:26 AM
-- Server version: 5.7.38-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tnpportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add admin', 1, 'add_admin'),
(2, 'Can change admin', 1, 'change_admin'),
(3, 'Can delete admin', 1, 'delete_admin'),
(4, 'Can view admin', 1, 'view_admin'),
(5, 'Can add company', 2, 'add_company'),
(6, 'Can change company', 2, 'change_company'),
(7, 'Can delete company', 2, 'delete_company'),
(8, 'Can view company', 2, 'view_company'),
(9, 'Can add reset password', 3, 'add_resetpassword'),
(10, 'Can change reset password', 3, 'change_resetpassword'),
(11, 'Can delete reset password', 3, 'delete_resetpassword'),
(12, 'Can view reset password', 3, 'view_resetpassword'),
(13, 'Can add student placed', 4, 'add_studentplaced'),
(14, 'Can change student placed', 4, 'change_studentplaced'),
(15, 'Can delete student placed', 4, 'delete_studentplaced'),
(16, 'Can view student placed', 4, 'view_studentplaced'),
(17, 'Can add students eligible', 5, 'add_studentseligible'),
(18, 'Can change students eligible', 5, 'change_studentseligible'),
(19, 'Can delete students eligible', 5, 'delete_studentseligible'),
(20, 'Can view students eligible', 5, 'view_studentseligible'),
(21, 'Can add resume', 6, 'add_resume'),
(22, 'Can change resume', 6, 'change_resume'),
(23, 'Can delete resume', 6, 'delete_resume'),
(24, 'Can view resume', 6, 'view_resume'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add log entry', 8, 'add_logentry'),
(30, 'Can change log entry', 8, 'change_logentry'),
(31, 'Can delete log entry', 8, 'delete_logentry'),
(32, 'Can view log entry', 8, 'view_logentry'),
(33, 'Can add permission', 9, 'add_permission'),
(34, 'Can change permission', 9, 'change_permission'),
(35, 'Can delete permission', 9, 'delete_permission'),
(36, 'Can view permission', 9, 'view_permission'),
(37, 'Can add group', 10, 'add_group'),
(38, 'Can change group', 10, 'change_group'),
(39, 'Can delete group', 10, 'delete_group'),
(40, 'Can view group', 10, 'view_group'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add content type', 12, 'add_contenttype'),
(46, 'Can change content type', 12, 'change_contenttype'),
(47, 'Can delete content type', 12, 'delete_contenttype'),
(48, 'Can view content type', 12, 'view_contenttype'),
(49, 'Can add session', 13, 'add_session'),
(50, 'Can change session', 13, 'change_session'),
(51, 'Can delete session', 13, 'delete_session'),
(52, 'Can view session', 13, 'view_session'),
(53, 'Can add mail response', 14, 'add_mailresponse'),
(54, 'Can change mail response', 14, 'change_mailresponse'),
(55, 'Can delete mail response', 14, 'delete_mailresponse'),
(56, 'Can view mail response', 14, 'view_mailresponse');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'admin', 'logentry'),
(10, 'auth', 'group'),
(9, 'auth', 'permission'),
(11, 'auth', 'user'),
(12, 'contenttypes', 'contenttype'),
(13, 'sessions', 'session'),
(6, 'student', 'resume'),
(7, 'student', 'user'),
(1, 'tnp_admin', 'admin'),
(2, 'tnp_admin', 'company'),
(14, 'tnp_admin', 'mailresponse'),
(3, 'tnp_admin', 'resetpassword'),
(4, 'tnp_admin', 'studentplaced'),
(5, 'tnp_admin', 'studentseligible');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-10 04:54:41.989206'),
(2, 'auth', '0001_initial', '2021-08-10 04:54:46.211416'),
(3, 'admin', '0001_initial', '2021-08-10 04:54:47.495999'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-10 04:54:47.528248'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-10 04:54:47.543660'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-10 04:54:47.586614'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-10 04:54:47.603798'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-10 04:54:47.626673'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-10 04:54:47.642380'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-10 04:54:47.663038'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-10 04:54:47.665282'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-10 04:54:47.679694'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-10 04:54:47.702371'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-10 04:54:47.729362'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-10 04:54:47.752973'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-10 04:54:47.770903'),
(17, 'sessions', '0001_initial', '2021-08-10 04:54:48.224086'),
(18, 'student', '0001_initial', '2021-08-10 04:54:56.318230'),
(19, 'student', '0002_auto_20210224_1854', '2021-08-10 04:54:56.386410'),
(20, 'student', '0003_auto_20210224_1905', '2021-08-10 04:54:56.515781'),
(21, 'student', '0004_auto_20210224_1907', '2021-08-10 04:54:56.568453'),
(22, 'student', '0005_auto_20210302_0631', '2021-08-10 04:54:56.600327'),
(23, 'student', '0006_user_admin_type', '2021-08-10 04:54:56.760985'),
(24, 'student', '0007_remove_user_admin_type', '2021-08-10 04:54:56.772568'),
(25, 'tnp_admin', '0001_initial', '2021-08-10 04:55:02.285533'),
(26, 'tnp_admin', '0002_auto_20210302_0631', '2021-08-10 04:55:02.310421'),
(27, 'tnp_admin', '0003_admin_admin_type', '2021-08-10 04:55:02.474602'),
(28, 'tnp_admin', '0004_remove_admin_admin_type', '2021-08-10 04:55:02.515868'),
(29, 'tnp_admin', '0005_admin_admin_type', '2021-08-10 04:55:02.678329'),
(30, 'tnp_admin', '0006_mailresponse', '2021-09-09 05:52:15.935098'),
(31, 'student', '0008_auto_20211006_1151', '2021-10-06 11:52:19.460068'),
(32, 'student', '0009_auto_20211021_0639', '2021-10-21 06:39:23.000641'),
(33, 'student', '0010_auto_20220626_1509', '2022-06-26 15:09:48.619606');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('03d8e85idm2wuv9mt434wuuwjru5mmmi', 'M2RhZWM0Mzc5ZTMyZTRlNzNkNThmNTllNjAwMDM3ZDgyOTk4NjIzNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicGF0aWwubW5Ac29tYWl5YS5lZHUifQ==', '2022-02-22 10:25:27.926577'),
('04p6lirf7fcdnd1c7ykxb9ltiyvtmxcl', 'NmFhM2VhZmEzMTNhMjhiNDU0YmY0MTBkMDQ4ZDg0NDQ0ZjhhMjQ5ZTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGFrc2hpdC52QHNvbWFpeWEuZWR1In0=', '2021-11-12 04:00:13.822469'),
('074kpjqsz76zuuetusvb2i0odls9vo36', 'MTRmYTViNGRmNDYzNDI3MWE0ZTE3ZDMzZDYzNTY0M2UyMTFkMWY5NTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamVuaWwuamFpbkBzb21haXlhLmVkdSJ9', '2021-11-08 05:32:57.075195'),
('0o7uuxodmd056yxvmztn7h7us9wn3gee', 'NjhjMDYzODk2NDM4ZGFhNWFhMWNkNTUxYWU3NzZmMjljMjI3Njg2ZTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJhZG1pbl9sb2dpbiI6dHJ1ZX0=', '2021-10-19 06:35:56.900946'),
('0pjhfrvmbevpylk9e8wonfjo8d0brssu', 'YmI0Y2RmNDljYWY5ZTY1Y2ZmYTM0OTg5NzNlOTk5NWU5YWYyNGMwODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2022-07-03 11:43:54.653296'),
('0pn7f4w5hj8vp2ef30yjobb23i8934dj', 'NDM3ODAzM2FjYjUzNTllM2Y1Y2MxOWM1MGUxNTRhZGJjNTMwODFlNDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoieXVrdGEucEBzb21haXlhLmVkdSJ9', '2022-03-03 14:25:09.990386'),
('0sg93cufu4x9qa235w9fiact8viujmmw', 'MzlkMDEwZGM0ZTBlNjA4NmJlZjNkM2JlYzY1N2EwOWQ0ZTAzOGYwNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmVkYW50Lmtva2F0ZUBzb21haXlhLmVkdSJ9', '2021-10-18 10:14:29.532014'),
('0uwz8pzjf0t2e2lqw850v5nchxkoq3gl', 'NmRlNjgxZDFiN2IxOGJlNmYwZGIyNjQzZjFjZDIxYWMyYjM4MWFmZTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYS5wcmFiaHVkZXNhaUBzb21haXlhLmVkdSJ9', '2021-11-04 18:55:27.919563'),
('0vdto1curmqf30k66ssmfznf6qzyw9ux', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-22 17:48:48.933684'),
('0z11yz6j0vlbunxgog90v9kaeyglhfor', 'MmI3NDJmMWYwNDY5NGU3NTVlODg5OTQxZWY0ODNlNGRhZjgwYTBhMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoieW1iMUBzb21haXlhLmVkdSJ9', '2021-11-12 03:58:54.047743'),
('16wf64yvsbaa7h5hrt830pb0nl3dk8a8', 'NmZkNTA0YTRkZjEzMzczMTJjOTg1OTU1NjM4YWIzYjFkNTQ4N2E1ZTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicmFqZWV2LnJhamdvckBzb21haXlhLmVkdSJ9', '2022-02-22 13:43:33.791619'),
('1eobcfjblrhux6axjc8ztbcfrnp7rizh', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2022-01-26 15:31:39.806756'),
('1gnae9k2mdioiflr1c1be8wruhny28qn', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2021-12-24 07:49:57.555043'),
('1j79ltjuqpfbppgds5g94yoraht5uejx', 'ZGU1NmY3M2U0NDc5MmM3YjRiM2U5YTkzMDU0YzNiMTkwNzFiNmRjMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic25laGFsLmJhbWFuZUBzb21haXlhLmVkdSJ9', '2021-10-20 03:55:02.937988'),
('1qcr2p9oa4uxjggkmaw99jjvqvywxtqw', 'ZWRjYTU3OGQ2ZjMxODQ5MjliMTVkMzQwYWU4MWY1MjRkOTljZjhkNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidHVzbWl0LnNoYWhAc29tYWl5YS5lZHUifQ==', '2022-02-22 14:51:39.811277'),
('1t3ngy0tuudyq0ixqomaocxlp1d6ec14', 'NzM1MTJiY2ZmMmYwYjJkMjk2NGMzOTJiMzhmODIyNmYwMWQwMjE2ODp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2FjaGluLmt1bWJoYXJAc29tYWl5YS5lZHUgIn0=', '2022-02-22 10:58:58.224814'),
('25tnq1pn84vk6irjtpj5tcdta52p5fvf', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-06-13 17:01:55.683597'),
('2b6cn2c01pj4lc3dz9xxzjgbulxlsjsb', 'MzQzYzkyNTZlMTdjYTRiNWUzZTQ1NzQ5ZTBlYzlmYWI0YTAzYTNjMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2lkZGhhcnRoLmtrQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:01:56.799327'),
('2g0752xr6ldvtlxlt34c9legynmu14op', 'OGY5NDljMGZjMWJiMzg0OTljZmU2NjEyZTBiZDJkNWJhNWVmODE0YTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicnVwZXNoLnBhcm1hckBzb21haXlhLmVkdSJ9', '2021-10-18 05:59:13.104317'),
('2jaiji18vf3zi4lzi2isknzndoz3takf', 'Nzg4MzlmODU2NjViMzE5NjBmN2ExNDM2ODFlYjBkMjY0ZmJkOWY5Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZ2l0aWthLmpoYUBzb21haXlhLmVkdSJ9', '2021-10-22 18:02:38.552216'),
('2jws3bfftq07p1t3ghwsxbdmzs9dp071', 'ZWVmYWY5N2M5YTY2NjVhNGI4ZmYzZjEwYTkxYTY4YmQwZmYwMjg1Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibmVlbDA2QHNvbWFpeWEuZWR1In0=', '2021-10-14 05:43:17.178804'),
('2k062i1ebwpf8lr39vd8jnfzhfsortc4', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 15:06:25.990988'),
('2m34pvj6a0h23t9w25l5ey7c9rcaagly', 'ODkxNTAyYWYyZTBmY2U1OWYxMzdjMmUyYThiYWQ5Y2E5MWIxMmU3ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaC5tYW5kYWxpeWFAc29tYWl5YS5lZHUifQ==', '2021-10-20 11:22:52.865761'),
('2meycvudpi29gmxipk4hdzccufp9butl', 'MGU3NjMwNzZkZjc2YTJiZjBiNmZiM2ViYmRkYjM3OGZjZTNjY2NiNjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia2Fud2FsLmthdWxAc29tYWl5YS5lZHUifQ==', '2022-02-27 06:53:36.784163'),
('2on61zuxgmr7a4w7j34arln5to20hmgc', 'NmE0OWRkYWU3NjhjYmZkMTFiYzM2NzBmOTU2NWQ3MjcwM2I0Njg1Njp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYXJqdW4ucGl0cm9kYUBzb21haXlhLmVkdSJ9', '2021-10-19 09:46:23.937798'),
('2vsc1930bkw76t5kv51rjgygp86wv8zi', 'NjhjMDYzODk2NDM4ZGFhNWFhMWNkNTUxYWU3NzZmMjljMjI3Njg2ZTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJhZG1pbl9sb2dpbiI6dHJ1ZX0=', '2022-02-26 06:30:36.049992'),
('30c7bg2m2k2hqkmx7d52e2k9epa11fex', 'NWQ5NDZiNjg2YjFhMTA3YzFjNzVkNzBmNWVhOGRlOWZkOWVlZWI2ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWthc2gucnlAc29tYWl5YS5lZHUifQ==', '2021-11-12 04:30:44.178472'),
('30zjuzgf86c7vnq3yzz0qsfx8mdirox1', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-03-22 17:08:39.067715'),
('31xhtaxlw8sudkbdzk54am1zomv67hlp', 'NmY5NGU2NWYwNGU3OTkzOTIxNjY4ZGQ4MTBmMGQ2ZWE0NmRiYmMxNDp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1IiwiX3Nlc3Npb25fZXhwaXJ5Ijo4NjQwMH0=', '2022-08-04 03:38:02.627003'),
('34ej8ddtpgy4h05b5uhr9txf0a6endcx', 'MTJmODA1YTZlMjg0Mjc4ZjA0ODYxOTNhZWNlMDIwNTVhODRjMWYzYzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoianVnYWxrdW1hci5sQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:00:00.675235'),
('34kvg6wparzkfl6jqmw9ve6dtin8r0iy', 'Yzg2N2M2N2Q5OTcxZDIxN2RjNzQyZDY4OWQ2NmQxMDU2NWY0MTdjNDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia2VzaGF2LnNtQHNvbWFpeWEuZWR1In0=', '2021-10-20 11:20:24.520122'),
('34nrjqchufquec3ptq5p6ypq9l1bsqig', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-08-24 14:43:51.133840'),
('3d23eopa5fk4twmezted0o0xztj8q4lr', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 18:10:17.159647'),
('3p3pusnxgffzgf9efjsnruwxm7tsze48', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-12 03:50:46.169980'),
('3qllxx87oagcu9i64xm0otelyarsicxf', 'NjdhY2MwNDkzNDM2MTM3YmMyZmNlNDQ5ZTU0ZDBjNWRkZWIwYmEzNjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicGF0ZWwubWpAc29tYWl5YS5lZHUifQ==', '2022-02-17 13:39:15.735375'),
('44xp5antp6gqzu2359az51lktn8f7xpg', 'OWUwNjU4MTYzYzRmNzI0MmM4OTYyYmVkMWM4YzkwZDBkODIwMzI5Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibWl0YWxpLnBhdGlsQHNvbWFpeWEuZWR1In0=', '2021-11-12 04:09:21.343067'),
('4c0w8vo5etm0f255olawgy8hiwraiqz5', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-14 05:47:56.480663'),
('4sks08jdjo48fwdjfauojmqm2ihjwolg', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-10-06 08:26:12.076489'),
('57fongqwrlb2ahc6gu55bj0u2qihjv1w', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-18 07:19:26.062152'),
('5lrwg5387zp3dv78loy9d1o87cm5s0l8', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-23 04:02:43.779411'),
('5m56aproxkrx3ymmpxle8o7xzsflm8au', 'NzRmZTVhN2FmOGI0NjE5MDYxOWU1OGViMTFkNjg2Y2M3MzI0Mzk2Mjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibml5YXRpLmthcmFuaUBzb21haXlhLmVkdSAifQ==', '2022-02-22 13:41:41.890089'),
('5outt14s64rr9nsl0o9cihy2y10po9wd', 'MDBhZmRhMzAwYzIzODNiOWRhN2Q1ZWJhM2FmMDNjYWM5NTdkZDcxMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyc2hpbDIxQHNvbWFpeWEuZWR1ICJ9', '2021-10-23 03:52:29.518679'),
('5qm4yhn74vmht7wzath7ccycx5510g7o', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-08-24 14:41:10.499667'),
('5u5f09ibfj0diqu74g3o27dpf447sso8', 'NThiMTRjMjg0ZDc1NGE2OTgwOWVkMGJkNDM0OGY3MDlhMzRhY2VjNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyc2l0YS5tYXZAc29tYWl5YS5lZHUifQ==', '2021-11-12 04:11:57.039363'),
('5u7w2ajmms547vdhnrkuubo2sd6gzd2p', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2022-02-26 07:23:27.702287'),
('5z5j5n9wxa8tu7dwvzl6jmz79sptu64e', 'NWZkZWY0ZGEwODgxMzI4YTA0ZmJiYWIwYzM2ODQ5ZGVlYWFhZGQ0NDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamF5ZGVlcC5wYXRlbEBzb21haXlhLmVkdSJ9', '2021-11-12 04:13:25.861498'),
('65k94khj9socom5qwa609si6wbmatdxa', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2022-04-16 08:41:39.338642'),
('6czikokp8rh0jyu9qswzaij1z0pm5md8', 'MDdjMTFiYjE2YmY0NDBjN2ZhNGZiNTljODQyNGMzNGYxNDY3MDNmMjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamF5MjNAc29tYWl5YS5lZHUifQ==', '2021-09-23 17:14:17.504209'),
('6g1pbuvyqpwrjaozs7sepk3t0npxgafw', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2021-10-20 10:29:30.817756'),
('6hhbh07sy34f6xvhg1kr3a3eek9c2ixb', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-12-24 06:12:21.628875'),
('6juaxhkfbp6ryxbw3g1yznl9kjwbphas', 'ODcxYzZkYTg0MTQ5NDZhMTQxZjc2YzdjYWEyMTVkZDMwODgwNzg3ODp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyZGkucEBzb21haXlhLmVkdSJ9', '2021-11-12 04:32:02.656842'),
('6kf71tq9qquod7uojf8vi4mwlkk7fhhr', 'N2FlOTQxNTJkMTQwN2U0Yjc1ZGM0MjQ1NWEwMTdiODY4NDQyOWM3Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic3Z0QHNvbWFpeWEuZWR1In0=', '2021-11-12 04:30:01.161786'),
('6s476538s7ukr8bk8t06n7jmiug04n31', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-18 12:47:38.656419'),
('6te60ushfcib8a53j1ovp5u7oqteyeji', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-14 06:04:17.820712'),
('70uohc3kv3vozamz47fdso8d7vpqbqcb', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2022-02-11 07:53:10.164051'),
('77h0hzrogiwtdz2hacbteed0mwp0pw3l', 'ZGVjMTI0MWFiYTUxNmUxMGRjODMxMzg0ZDJlMTAzNDMxY2NiZjg3ZTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidGlydGgudnNAc29tYWl5YS5lZHUifQ==', '2021-11-04 06:17:13.873465'),
('7lvhdbeyby5zjtkkb1rvfx8ks3etcw7v', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2021-08-25 13:53:38.784795'),
('7movu2nqwnjiuhpmcppice0sakw4jj3t', 'NWQ5NDZiNjg2YjFhMTA3YzFjNzVkNzBmNWVhOGRlOWZkOWVlZWI2ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWthc2gucnlAc29tYWl5YS5lZHUifQ==', '2021-10-18 14:12:08.812444'),
('7ovzwj6dzdckov30fgjfuvdrye7byrsw', 'N2FlOTQxNTJkMTQwN2U0Yjc1ZGM0MjQ1NWEwMTdiODY4NDQyOWM3Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic3Z0QHNvbWFpeWEuZWR1In0=', '2021-10-22 14:52:39.329330'),
('7qvzb7nusycnogn85oegcdlfuct02epc', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 10:51:50.321412'),
('7s1kcfqegzk0veiee8334dts9xhnmuch', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 15:08:21.380251'),
('7znwqlen9nd3kfr02o3mn28wmm9uff4t', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-09-24 03:15:03.259908'),
('862el5kqa353j1biy1fvj0bkttkxsec1', 'NGM2YmVhYmZmZTEwYzJlZjg5ZmNhN2VhZGYxZWI2ZDEwYWI1MDg0Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic29oYW0ubnNAc29tYWl5YS5lZHUifQ==', '2021-11-12 04:51:05.378473'),
('875yfuxgvze7j3qnm5048v25ppod6hil', 'NjhjMDYzODk2NDM4ZGFhNWFhMWNkNTUxYWU3NzZmMjljMjI3Njg2ZTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJhZG1pbl9sb2dpbiI6dHJ1ZX0=', '2021-11-10 17:13:47.635876'),
('87ah88ii38lchugrbheyz6pvp0mecnub', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-18 10:43:02.777602'),
('8cjbgzcrakzpqayuzfuya75qd939hh8g', 'ZWVmYWY5N2M5YTY2NjVhNGI4ZmYzZjEwYTkxYTY4YmQwZmYwMjg1Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibmVlbDA2QHNvbWFpeWEuZWR1In0=', '2021-09-03 08:37:48.609511'),
('8eyuq5jq403tkrvox571fq4grss9p5zp', 'OTdmODZjYjIwOTk2ODZlNjNiZmZjZDViYzExNmRlY2ZiMGU4ZGIwMzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicHVqYS5wQHNvbWFpeWEuZWR1In0=', '2022-02-22 10:49:35.672356'),
('8hy6igctgr7dumco804mto96rq171h4q', 'ODkxNTAyYWYyZTBmY2U1OWYxMzdjMmUyYThiYWQ5Y2E5MWIxMmU3ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaC5tYW5kYWxpeWFAc29tYWl5YS5lZHUifQ==', '2021-10-22 14:48:57.560817'),
('8j1g0gnmjk629bl3s3ytga6wkapbieft', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 13:39:51.151279'),
('8jcdnwqhnhgebhooaofnxp5ch3l641b9', 'ODkxNTAyYWYyZTBmY2U1OWYxMzdjMmUyYThiYWQ5Y2E5MWIxMmU3ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaC5tYW5kYWxpeWFAc29tYWl5YS5lZHUifQ==', '2021-11-12 04:30:27.770943'),
('8lap0ogjauefpg5crrpbze45vmumsjdp', 'YjMyZDJhZjA5ZGRmNzkwZDZmNTVjOGEzODNiNTc4NDg3YzI2ZTg3Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYXJnaHlhZGVlcC5rQHNvbWFpeWEuZWR1In0=', '2021-11-04 04:57:08.737185'),
('8livxikex0d588zuqbptel6ly1lh8f0k', 'ZGI4YjkxOWYxZTU4NTgwOTcxMzc5MmQ3Y2UyMjk3NjE5NmM3ZGEzZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaC5iaGFyYWR3YWpAc29tYWl5YS5lZHUifQ==', '2021-11-04 14:22:20.654302'),
('8wp8dvot03i6s1e91w4ael6j96k8cjhl', 'NjhjNTE2OTA5MTdkNWI5NTZhNTc3NGM3NjBkMWVlMTMxNGI0MTZjYzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamFoYW52aS5zaGFoQHNvbWFpeWEuZWR1ICJ9', '2022-02-22 10:50:55.653507'),
('8xen6podvtv1096tciuqprelktnhh17a', 'MTljZjIwOWE5MmNjMzY3NmYxOGRjMGNmMTQxOWFjMjE3ZmJiNjY2Mjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiTW9rc2hhc2gub0Bzb21haXlhLmVkdSJ9', '2022-02-22 12:34:11.694418'),
('8z2bwqh2xfdcq4k7s9eer2n42on2u1nw', 'YzEyZWZhNzg1Yzc0MTA0OTA1MjBmZTZkZWVjZjVmMmE4NjAzOWNiMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmlzaGFsLmtpcnBhbkBzb21haXlhLmVkdSJ9', '2022-02-22 14:07:11.091805'),
('90nam8euez53o082xeaivy8l8alwpxvr', 'YTEyYTdiOTY4MDUwOThmNTkyNmZmYjgzOWZiZWZlOGZkNjhjYjgyZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmlyYWoudmFzYW5pQHNvbWFpeWEuZWR1In0=', '2021-11-05 08:50:39.357971'),
('91zfacn846uy6iwpjp9aot6qfcoo0zny', 'ZGI4ZjU2OGUyNWJkMjc5MDVmM2Q0OGMxOGUyMWU3NTg0NjFjNDA1Mjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYmhhdnlhLm1pc3RyeUBzb21haXlhLmVkdSJ9', '2021-10-20 10:44:01.261639'),
('96xa9wgdjoqhg2vutlpcgi8s5bgv6319', 'ZWVmYWY5N2M5YTY2NjVhNGI4ZmYzZjEwYTkxYTY4YmQwZmYwMjg1Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibmVlbDA2QHNvbWFpeWEuZWR1In0=', '2021-11-12 04:27:49.643476'),
('993vl14cm8iz5gihwj9dxdijtavbdkzm', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 12:16:06.001528'),
('99x6w6zf2fj38p0eos2vv99gz23qddmi', 'MTI4NWJhNDYwNTE2NmEwMGI3MTA4YjVjNThkMjFlNjM0MmM0ZGZiNDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoib21rYXIubnBAc29tYWl5YS5lZHUifQ==', '2021-11-09 12:24:02.363905'),
('9hbldcx5npqs6o0o13tx46fwo18hf2ac', 'NThiMTRjMjg0ZDc1NGE2OTgwOWVkMGJkNDM0OGY3MDlhMzRhY2VjNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyc2l0YS5tYXZAc29tYWl5YS5lZHUifQ==', '2021-10-18 05:56:44.773694'),
('9hl4myw8xlkte0pvg28pqmm87jnrpkto', 'MGRiNjEzMGVkMWIxODVjMDdlODg4Y2E1MmQ4ZWYxOWFiZjY1ZTgzMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGV0LnBhcmVraEBzb21haXlhLmVkdSJ9', '2021-11-12 08:58:28.585479'),
('9o7wz2of3wdreid4mzy22oqjfxq6sxc1', 'MTRmYTViNGRmNDYzNDI3MWE0ZTE3ZDMzZDYzNTY0M2UyMTFkMWY5NTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamVuaWwuamFpbkBzb21haXlhLmVkdSJ9', '2021-11-12 05:14:10.960596'),
('9o98pdizqsisc9jmyx1m15trnrtzirtd', 'N2IyYjU3YWMzYjY5ODZlMTdiNWJmOGVkZmY2ZmE5NjY0YzBmZTZmNzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicy5tb3VuZGVrYXJAc29tYWl5YS5lZHUifQ==', '2021-11-05 05:16:02.192320'),
('9xskjqw7fcews2gk1hba2wxrmb1vhly0', 'YjgzODhhNjg2N2NkZjI1NWVhOTg2YzA2ZjViZDZiZTc5ZWE4YTgxMjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidWRkaXNoLmRoYXJAc29tYWl5YS5lZHUifQ==', '2021-11-04 16:53:21.457450'),
('9ylwb69kpucdwbtga3ftx32vlhhlncm1', 'NjhjMDYzODk2NDM4ZGFhNWFhMWNkNTUxYWU3NzZmMjljMjI3Njg2ZTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJhZG1pbl9sb2dpbiI6dHJ1ZX0=', '2021-08-24 07:42:50.875055'),
('a2zbb12z1nsqu0bq056hhc0nf2gm7hh2', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2022-03-01 12:12:53.920246'),
('a4rlhsvn5btmixygceahk4ty3lxt4mup', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-13 10:49:49.045399'),
('a9ipu8ah0s30047yxle00uqisw99xj2z', 'NThlNmVhOWU5YzI0OWI5OWVmNTJlMmRkNTY5ODQ2MGM1NTQxMDk1ZTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicGFydGgubWtAc29tYWl5YS5lZHUifQ==', '2021-11-12 03:55:01.486704'),
('am6wa4uookl1etnwy90ekiwu3t9r0ty4', 'YWE2YzQ2NmNhODVkNWNkZmJhNjg0NjdiYWM3NWI5YTFiZjJmNjg1Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhhcml0YS5kQHNvbWFpeWEuZWR1In0=', '2021-11-12 04:04:17.562605'),
('aqs2ly01ocasmduz2e0xm5xh9o843vrq', 'ZmU5MjQ3Y2Y4MzhhZDM3ZDg2NjE3MmMxYTI1ODc4NGM1ZmJmM2ZlYzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2hydXRpLmRoYXJhcEBzb21haXlhLmVkdSAifQ==', '2021-10-22 15:14:56.658167'),
('at4spqjcg2f96r3dilshpk8y97a0caz2', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-03-03 16:35:32.184811'),
('b0nc2202t9t1xxjzzjgmg7h0qv72i59u', 'M2Y3NzI4MTA0NmJmNjRmYTkxYmQwYzc4NWIwNDI5ZTMyYTE4NzM0MTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhhcmEuc2FtcGF0QHNvbWFpeWEuZWR1In0=', '2022-02-22 13:51:46.879635'),
('b45t74spqs45r42l3ifmg04cnpx0vppi', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 15:00:03.147705'),
('b4e8gncgd1s12539ypht8ychn2s5k0z1', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-24 04:52:27.100595'),
('b51l7dk826yzub7yjci23twef6btfooa', 'YmMyMTIwMjY3MDkxZTlkNTdjYmMyYWM4Y2M3YTgzZjQwZGNkOTZkODp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2hydXRpLmRoYXJhcEBzb21haXlhLmVkdSJ9', '2021-11-12 03:49:57.036903'),
('b5v2fhnikeahtxrdofyfo2c8l5hb935i', 'MWEyNjYxYTBjYmQ0MWIzYWMxMTNmMGMwODQ2Nzg1Y2NmN2ZmODRjYjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicGl5dXNoa3VtYXIuc3NAc29tYWl5YS5lZHUifQ==', '2022-02-22 11:44:29.687203'),
('b9e8vh1ao0b5ogljjz0qtugeo91ft586', 'ZmNhODliOWNhODNhNzQwMjNmODgxZDQ2ZTRkY2UyYTgwYjk3YzNjMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic3JpbmF0aC5uQHNvbWFpeWEuZWR1In0=', '2021-11-12 04:05:13.798448'),
('bazffyrv10a8zz8n2ihumklvvb55i0m9', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-01 05:31:31.690188'),
('bb5q80mpw89npkrsvrwuw06orbg5f9ro', 'NWZkZWY0ZGEwODgxMzI4YTA0ZmJiYWIwYzM2ODQ5ZGVlYWFhZGQ0NDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamF5ZGVlcC5wYXRlbEBzb21haXlhLmVkdSJ9', '2021-09-23 14:57:29.157754'),
('bckt6rvxxl8f5u1j19wuxp4ads7z8c4e', 'MTRmYTViNGRmNDYzNDI3MWE0ZTE3ZDMzZDYzNTY0M2UyMTFkMWY5NTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamVuaWwuamFpbkBzb21haXlhLmVkdSJ9', '2021-10-20 06:55:07.571686'),
('bjqzzvpmhvlg0l821uuzloc45zd0chqq', 'ZTA5YmVjMmE1N2NmY2Y1YmU5YWYzNTg5ODc4YTM0OTJmM2JjNzJiZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicG9vbmFtLmJpcmFkYXJAc29tYWl5YS5lZHUifQ==', '2022-02-22 14:08:13.622089'),
('bkaut77x1kjdok7nw8bdgt8v6m0h2crk', 'MGM5NGYxNTc1ZWEzNjZkNTU3Yzk5ODFjMGU3NzUzZGJmZGFjY2Q1Mzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicmFkaGEuc2F3YW50QHNvbWFpeWEuZWR1In0=', '2021-11-12 05:31:45.200169'),
('bl894qpl6c9k01nkc110n232xz8f40sk', 'MTg1MzU3MWQ3NTllMzVjZjQ5ZTNmMjM1ZmIxZmMwMTg5Y2YyOTk2Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia3Jpc2guZGVzYWlAc29tYWl5YS5lZHUifQ==', '2021-10-15 05:30:42.565847'),
('bmhfcwl2eyfsbizie96jj3qx1ncvjwg9', 'MGRiNjEzMGVkMWIxODVjMDdlODg4Y2E1MmQ4ZWYxOWFiZjY1ZTgzMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGV0LnBhcmVraEBzb21haXlhLmVkdSJ9', '2021-10-18 14:11:24.304120'),
('budryk6rgiq0rosspxeyijs4lfhcd412', 'YzA1NjBjYjU2MGY1ZDQzOTAyYWQyNjQyN2M2YTEyOWNmM2Y4YTg2NDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibml0aW4uc2hhcm1hQHNvbWFpeWEuZWR1In0=', '2022-02-25 10:21:32.758424'),
('bx4lkgz36biydhzpsoiwbjcgkqehoszn', 'ZjczZTNiM2JkOGE4ODk0OTMyMGJmNWViZmQ2MWQ0NmViZDg1M2M3Mjp7ImFkbWluX3R5cGUiOiJFbGVjdHJvbmljcyIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6Im1lZGhhQHNvbWFpeWEuZWR1ICJ9', '2022-03-01 09:36:26.830301'),
('by6vmk2leyt0wnpxk6i4fsm0fx2eyxan', 'MWMxMzI4YTcxZWU1YjhjMGY3YmFiYmQ2ZDMzMTMzNGNjMWIwM2M2ZTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmlzaGFsLmtnQHNvbWFpeWEuZWR1In0=', '2022-02-25 04:44:58.699006'),
('by7n539lgow76leasra0c26ii3m95v3m', 'MDAwODU0ZDRlOWNjZmM1ZDc2NGQxYTFkNzhmYzJlNDA4ZTRkYzk4Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia3J1dGlrYS5iaGFsbGFAc29tYWl5YS5lZHUifQ==', '2021-10-22 17:01:42.516067'),
('c2a0s1ubtkorepdqawwitdvq1hnxqu8r', 'OTBmOWVkYjQyMDRlNmUzYzc1M2YwZmZlODcwNmZhYWFjZjFkOWIwNjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyc2guY2h1ZGFzYW1hQHNvbWFpeWEuZWR1In0=', '2021-11-12 05:00:31.672494'),
('c2itov6plgujwkb0aidb6mgn78f1kqyj', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2021-08-25 16:18:29.499475'),
('c9aa5txuwskyyfd0njb4fzwa4kncs6cb', 'NWU1ZDUwZDlmYzNjN2QyNjRhNDYzZTk4ZDQ2ZmZlMmU4Y2NmMTE1Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicmFrc2hpdC5zaGV0dHlAc29tYWl5YS5lZHUifQ==', '2022-02-22 11:58:35.699699'),
('c9s0dvtfvm7cksw969qqcio67qfg25sl', 'OGFlNTllMTc1YTlkYzZiZTBlMmVmODRiZjZmMzY2Y2UwZGJkMWZlNjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicHJhZGVlcC5wY0Bzb21haXlhLmVkdSJ9', '2022-02-22 17:44:55.413239'),
('cdv8dtt5celcttf6hrspen6ka3iwd331', 'NWMzYTA2ZGQ1OTMyMDU2NWVjMmZmZTlhYjE3YmY1YTdiOWFiN2ZkNDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmVkc2hyaS5tQHNvbWFpeWEuZWR1In0=', '2022-02-22 10:49:03.830935'),
('cil5w9snzfjm5ug0mf1ytakxq64vnkgt', 'NmJlZTY0ZWFkOTc1MWNjZWFhNDkyN2M5MzBiOTQyMjg0MzQxMDU1ODp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidC5zaGluZG9sa2FyQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:00:59.201032'),
('cvbtnr921y15ajdoc86w8nabxdxdjtus', 'ZWVjNzQyNmE1ZDgwMzhmMWI4NTZiMDIxMDJkY2QxNjIxNjdiNDhkZTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZ2FsYS5hdkBzb21haXlhLmVkdSJ9', '2021-10-22 12:27:16.137303'),
('d53k97r4j1n5w37mzic8yo7o7vktvce5', 'MzlkMDEwZGM0ZTBlNjA4NmJlZjNkM2JlYzY1N2EwOWQ0ZTAzOGYwNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmVkYW50Lmtva2F0ZUBzb21haXlhLmVkdSJ9', '2021-11-10 10:07:10.915913'),
('d7qlrnx4mys61mbxsdsh62bd3llpya32', 'NmY5NGU2NWYwNGU3OTkzOTIxNjY4ZGQ4MTBmMGQ2ZWE0NmRiYmMxNDp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1IiwiX3Nlc3Npb25fZXhwaXJ5Ijo4NjQwMH0=', '2022-08-04 14:03:59.981792'),
('dax5jsfqbdrujs30oa2ka3v2ennlr31d', 'YWE2YzQ2NmNhODVkNWNkZmJhNjg0NjdiYWM3NWI5YTFiZjJmNjg1Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhhcml0YS5kQHNvbWFpeWEuZWR1In0=', '2021-09-03 08:37:28.854259'),
('dax7lp8zvswq9mibl1njo1a87aezopcc', 'OGY5NDljMGZjMWJiMzg0OTljZmU2NjEyZTBiZDJkNWJhNWVmODE0YTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicnVwZXNoLnBhcm1hckBzb21haXlhLmVkdSJ9', '2021-11-04 05:05:50.637673'),
('degaabwee92rb40l1wtf85ibgaiafav5', 'OWE3M2RmMDFiMGQzMWNlZWFmYTRkMmZiYzExYmMyMGVkMjJkYjhhYzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibWVldC5iaGFuc2FsaUBzb21haXlhLmVkdSJ9', '2022-02-22 14:10:19.709726'),
('dgkq8447u890xq122vr3oq4masex9z3i', 'OTdmODZjYjIwOTk2ODZlNjNiZmZjZDViYzExNmRlY2ZiMGU4ZGIwMzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicHVqYS5wQHNvbWFpeWEuZWR1In0=', '2022-02-25 09:04:08.362893'),
('dhonlnr1tu7t0s61lz956h4jaeu9pejx', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-22 07:51:45.157587'),
('dpsbc5fifhw15u6f2gd57v0tq2hv6wh3', 'MGZjNDNmYWU4NDAwYTZhNDhmNDU2ZjQxNTA4MTJiMWY1Y2UxZjJhMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2hhc2hhbmsueUBzb21haXlhLmVkdSJ9', '2022-02-24 13:29:11.747520'),
('dq8qtevt1zc0tv0xv2b35ymeit2h1xex', 'MzU2ZjQ0NDM5ZjgyN2FlODRjYjhhNjI3ODZiZTFlZWM5M2JkODk0Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2hsb2suZ0Bzb21haXlhLmVkdSJ9', '2022-02-22 10:57:22.231739'),
('dtg5mwvwpdbvztkraoheu621b8cl5hgx', 'ZTdjNTZkZWVkYzE3ZTlmZDZjYzA3YzFjYmRlOTU2YzdjM2NiMzUyMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiSC5yYXRsYW13YWxhQHNvbWFpeWEuZWR1In0=', '2021-11-06 06:29:16.864577'),
('du1ka9pn9kq7b8owcd8chmk6yovia3um', 'OGY5NDljMGZjMWJiMzg0OTljZmU2NjEyZTBiZDJkNWJhNWVmODE0YTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicnVwZXNoLnBhcm1hckBzb21haXlhLmVkdSJ9', '2021-10-18 06:20:56.159242'),
('dvt1felkhur535oqwuhk7z29sug59xmu', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-24 18:51:34.343941'),
('e17vnislrpeuxh4h7zzpv5spp15mptnt', 'NTRkODU1ZTg5NGU4YzQxNTIwNTMyNGM3NGYwMTJmNGQyMzFlOTQyYzp7InN0dWRlbnRfbG9naW4iOnRydWUsIl9zZXNzaW9uX2V4cGlyeSI6ODY0MDAsInVzZXJuYW1lIjoidmlub2RzaW5naC5yQHNvbWFpeWEuZWR1In0=', '2022-07-16 15:23:57.473095'),
('e1vx14g6wksld0skipce920okj94nyug', 'YmYxN2M0ZjE2MzU2MTA0NjE1OWI3MDE1OWVlNDAzODdlYzliYjA4Mzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidnJpc2hhbmsucEBzb21haXlhLmVkdSJ9', '2022-02-22 13:52:03.590338'),
('e2ti0cidffrgdm2n0froxw46jrp2u67e', 'MWQ5M2FiOWE4ODEwNjUzOTVkZDE1OTUwOTMyM2I1NjMwYmZmNzkxMzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYW1hbmt1bWFyLnNhaHVAc29tYWl5YS5lZHUifQ==', '2021-11-04 06:35:26.329616'),
('e6u6x2lsy2xq5e6b1h1hb7lz9zkbbthx', 'NWQ5NDZiNjg2YjFhMTA3YzFjNzVkNzBmNWVhOGRlOWZkOWVlZWI2ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWthc2gucnlAc29tYWl5YS5lZHUifQ==', '2022-01-31 14:33:00.880717'),
('ef0b9tev76qq2oz6sqp1q6ebe3vhh32h', 'YTQ5OGJlNGNkMDg4ZmQ2Y2RlOTgyNGI0N2U0NDI3YzA0OGY1ZjUzNTp7ImFkbWluX3R5cGUiOiJDb21wdXRlciIsImFkbWluX3VzZXJuYW1lIjoiYWRuYW5Ac29tYWl5YS5lZHUifQ==', '2021-08-24 07:48:03.416015'),
('ehywnmg49kzf2btu8k23pq40h7i1d13n', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-12 01:15:39.776658'),
('ejcpdfmgqqwoqkd20kct8hxkwpftjapz', 'YzVkZTcwYjY5MDQ4NzBmMGIwNDQyN2U4N2I5NGUyOGQ2NGRiNzE0ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhydXYuZ2hvcmlAc29tYWl5YS5lZHUifQ==', '2021-11-04 06:24:58.545324'),
('el8w9grw4jo8k6j2loi5jumghcaqhtyp', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2021-08-24 10:00:39.338762'),
('elr8pycuphvgae31gw6x03sgq89gl7cp', 'YzcwZGY3NmZlODc2ZTY0ZTEzZGYwMmNiNDUyODlhMTMxNGQ1YTFiMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2FoaWwucmF3YWxAc29tYWl5YS5lZHUifQ==', '2022-02-22 12:20:39.776557'),
('eo40jj2g6i0kmypflttpvskqh4t2n0zp', 'YzVkZTcwYjY5MDQ4NzBmMGIwNDQyN2U4N2I5NGUyOGQ2NGRiNzE0ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhydXYuZ2hvcmlAc29tYWl5YS5lZHUifQ==', '2021-11-04 07:18:38.177508'),
('f3e53c4d76t8cds2g7pg4kw7hgjrt5gy', 'YmYxN2M0ZjE2MzU2MTA0NjE1OWI3MDE1OWVlNDAzODdlYzliYjA4Mzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidnJpc2hhbmsucEBzb21haXlhLmVkdSJ9', '2022-02-24 17:44:26.430268'),
('f3lihruf0ehifliu04zdlf4duxwrkf4x', 'NmRlNjgxZDFiN2IxOGJlNmYwZGIyNjQzZjFjZDIxYWMyYjM4MWFmZTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYS5wcmFiaHVkZXNhaUBzb21haXlhLmVkdSJ9', '2022-02-05 07:27:27.064739'),
('f5csfucl4jziyv5o6710q5kegkipiaqt', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-20 13:02:41.246910'),
('f5n13u4oww58dnd1j6fq8eriuqedaqds', 'MTJmODA1YTZlMjg0Mjc4ZjA0ODYxOTNhZWNlMDIwNTVhODRjMWYzYzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoianVnYWxrdW1hci5sQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:15:27.016310'),
('f7k17h23mvx84dsyvawfi1gks4kmp8pg', 'YjRiYTg4MDJiZjRiYmExMjBlZTU4NWUxOTc2ZWY3ODcxYmNkNDA5Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoici5naGFkaUBzb21haXlhLmVkdSAifQ==', '2022-02-22 13:47:30.132325'),
('fbghcfhiqb8j9x7g2o19hnlqy45lz3p6', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-10 08:18:43.003498'),
('fex2mbwpg7o7e3hycxktntp693xsuva2', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2021-08-24 14:35:24.371406'),
('fr5lr5mluo24ky5am208zoqtffty3bc3', 'NjhjMDYzODk2NDM4ZGFhNWFhMWNkNTUxYWU3NzZmMjljMjI3Njg2ZTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJhZG1pbl9sb2dpbiI6dHJ1ZX0=', '2022-04-09 07:09:15.330873'),
('fuo5c927d4meolq31aaffkw4r7w12rj7', 'MDY5NjcxMWQ4NzQzZTQxMTIwMmQzYzQwNzc5MzcyOWY1MDQ5MmUwZjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGFyc2hhbi5naGFkZ2VAc29tYWl5YS5lZHUifQ==', '2022-02-22 11:56:51.774520'),
('g3kpu6sdgbjch0mt35zsco7ilacw49tz', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-19 05:57:08.318749'),
('gdr5wp1vsrt2eexkka8op6636n9elekk', 'YjlkZDBiZjg0M2RjMGE5M2FlMmNmYWQzOWRmYTM1OWY2OGI0MjAwYjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyc2gua2F0a2FkZUBzb21haXlhLmVkdSJ9', '2022-02-22 13:11:41.318068'),
('ggmodew5a04x0une1oovaogt3b0slbmf', 'NWNmYzJhOGY0Mjk4MmQ3NmQ4YzdhZjg3Y2JhNWRkYjc4OGE2Y2M3Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicGluYWtpbi5rQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:01:05.191243'),
('grh4f6z7sd1voq5lmbtelay6w8ypb006', 'YmI0Y2RmNDljYWY5ZTY1Y2ZmYTM0OTg5NzNlOTk5NWU5YWYyNGMwODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2022-07-15 14:13:41.172555'),
('gv8pud5i45hdwb6ry1xm1ht267dt8g2u', 'MGM1MWY2ZWE2ZGM2ZDM3MTgyMGYzYjRiMWZmM2M2Y2FlOWY3NmRkMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicG9vamEuY2hvcHJhQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:51:11.476697'),
('h2zvw3vlrchqnbnlegp5tk3iwyey024k', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-03-09 13:08:48.289217'),
('hbzv8nr8okcr76cfs6isx2fwwxdmh8jy', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-12-24 08:02:11.246914'),
('hisdd0e7yo6elm4vtgk0zoh7l8fwgtjv', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 13:12:05.783692'),
('hjmyj16yukha0rq0uy93kd7d13nn2j0z', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-12 05:01:45.053640'),
('hndb4a12d5s7njotmaoyoitm3r4519pn', 'MmI0YjM5MjIxZDFlNmJiNjJkYWMzODlmZmFiYjllNGM3NGM0ZDExMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmFuc2hpa2Eud0Bzb21haXlhLmVkdSAifQ==', '2022-02-22 10:53:13.293383'),
('hnr07w3ovrags2iyr0nta8pmm1iulz0e', 'ZDk4ZTI5NDI1MjQ3N2RhNzM4MDFiNDViOGY1NjFkYWIxZTYyYzIwMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmVkYW50Lm1hbmVsa2FyQHNvbWFpeWEuZWR1In0=', '2021-10-19 16:05:14.719041'),
('holbu7rywvzlrbi0ateqa8r66v67ni2c', 'ZjRhNzMyZWY4ZTUyYjhjYmFlYWIyY2ZjMTRiNzM2OWZjMWNiYTRhZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoici5rb2thdGVAc29tYWl5YS5lZHUifQ==', '2022-02-22 16:40:46.817520'),
('hpvuq754ykwze8ekrt55z28990rvmaoa', 'NDQ0M2RmM2Y4NDhiYTQyYTQzOTk1NDgyNDMzOGRjYWFmZGQ3NjE0Njp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic291cmF2Lmt1bWFyQHNvbWFpeWEuZWR1In0=', '2021-11-10 05:23:04.089581'),
('hrlpvv3jdmr68btvn33gep16ujmtc0eo', 'OWUwNjU4MTYzYzRmNzI0MmM4OTYyYmVkMWM4YzkwZDBkODIwMzI5Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibWl0YWxpLnBhdGlsQHNvbWFpeWEuZWR1In0=', '2021-10-19 09:44:22.193319'),
('hsjqj09fcb2rp6pnmmhy7q84zajobv1w', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-03-02 09:04:03.979974'),
('hwqtu7jjfmt1hglv2abw5lzkarelg0n2', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 13:45:30.847219'),
('i5j7onb975vfd12q55x8md8rkf9hhd7q', 'MjFmNzNjZjIxM2U4MTI1NmJlMWU5ZTRkMjA2OThiYmU0NDQ2NDEzNzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYXJjaGl0LnBhdGlsQHNvbWFpeWEuZWR1In0=', '2021-11-12 03:55:13.798458'),
('i7cmga7y1qj3yhysz1y08unj86nrbf69', 'NjRlNmU2NzhjZDc2MjY4Yjg4NGVlMWJlZjI5YTgwYTM0YmQwOGY3ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2Fsb25pLnBhdGFkaWFAc29tYWl5YS5lZHUifQ==', '2021-11-12 03:46:34.122351'),
('ihd69w5cbmrhnkt38ukm2vhnjlmizjfv', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2022-02-26 09:30:22.845404'),
('ihpn0cj4gwanst62bn31izb1p8ppavxt', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 15:44:58.084343'),
('inb3nx9h9l90esa4ib4o0clih6y3ztgb', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2022-04-21 06:08:28.726060'),
('iq2h77fm5lszi07atnf3f8yfa8rknfu2', 'MDdjMTFiYjE2YmY0NDBjN2ZhNGZiNTljODQyNGMzNGYxNDY3MDNmMjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamF5MjNAc29tYWl5YS5lZHUifQ==', '2021-10-20 10:34:25.055562'),
('iq4z08v58sf974p1g0wg9u547rvwkbo5', 'YWE2YzQ2NmNhODVkNWNkZmJhNjg0NjdiYWM3NWI5YTFiZjJmNjg1Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhhcml0YS5kQHNvbWFpeWEuZWR1In0=', '2021-09-03 09:48:54.248063'),
('irvlc363ixy5anw4040g1slrwxxrpkv0', 'NmQyMmQ1ZTVlOTczYjcxYzU3ZDEyN2VmNjI4MzhjZjI5YTEzODY4Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibW9oaWwua2hhcmVAc29tYWl5YS5lZHUifQ==', '2022-02-17 14:54:46.425837'),
('iz0jcuf9lwpz7qwbpcxsgu2m66npmmr8', 'MjRiZmI0ODVhZDllYzcyOTk1MzBmZGUxMjk5NjYyYTlmMWE3NjFlNzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicml5YS5tb2thc2hpQHNvbWFpeWEuZWR1In0=', '2022-02-22 13:54:57.731594'),
('j0s8a4i5jw6657h2a6fyd1su5o4b2fop', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 11:54:53.592270'),
('j1f0olsyafym3upp48xlxtho1ecwmk9h', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 10:59:45.811418'),
('j7zrcrq2dx50pd7yps2qowufg51djtj1', 'NjRlNmU2NzhjZDc2MjY4Yjg4NGVlMWJlZjI5YTgwYTM0YmQwOGY3ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2Fsb25pLnBhdGFkaWFAc29tYWl5YS5lZHUifQ==', '2022-02-01 09:24:25.022820'),
('jdufik3swna4zlagd1pzrzs1hlnifwo8', 'NTA1YTQ1NDRiNGJhNzIwYzkzNTg4NzAzYzc4MWQ1MGFiZmFlYTJjMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2hhaWtoLmFicmFyQHNvbWFpeWEuZWR1In0=', '2021-11-10 09:44:50.634544'),
('jhlsybn5bu4zwxx09n0esl5xogmo68bk', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-17 18:15:44.281055'),
('jjmrnxjx6u6ng6g9zoscbuig3p1ad4j7', 'YzUwMDFhMDc1ODg4MzEzZDJmY2ZiMmU1ODBmM2Y5MDlkNjBlOGZmNzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamVldC5oYW5zb3JhQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:28:14.505492'),
('jkcfc5xqn0v5okgm1saup72k8ij1hue0', 'NTIyNTk1MmUxYmM3OThhNTE4NzkwNmI5MmFhMjMxNzc1ZGZjNGVkMzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhpcmVuLmhtQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:01:27.395488'),
('jwmmgmw9oyzxup43rbjyre5eiiy34zry', 'MGZjNDNmYWU4NDAwYTZhNDhmNDU2ZjQxNTA4MTJiMWY1Y2UxZjJhMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2hhc2hhbmsueUBzb21haXlhLmVkdSJ9', '2022-02-24 13:39:50.292953'),
('jziy4buull6gskev6nkewm5z0yb6wwk3', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-18 14:47:37.789889'),
('kf5tkef5tza5nat6xsvyv8bv4rrtglvs', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-11 07:05:17.871483'),
('kl63wdzofnkacxipz7039wepc9j9vtzi', 'YmI0Y2RmNDljYWY5ZTY1Y2ZmYTM0OTg5NzNlOTk5NWU5YWYyNGMwODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2022-08-04 11:19:43.111361'),
('ko3cdl0b3x1qk85sfqlwtlds7nu08zy0', 'ZmNhODliOWNhODNhNzQwMjNmODgxZDQ2ZTRkY2UyYTgwYjk3YzNjMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic3JpbmF0aC5uQHNvbWFpeWEuZWR1In0=', '2021-10-14 05:42:45.536294'),
('krbb0sgy1rp1z5h6j5sy20dxu8mve3hq', 'NmE0OWRkYWU3NjhjYmZkMTFiYzM2NzBmOTU2NWQ3MjcwM2I0Njg1Njp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYXJqdW4ucGl0cm9kYUBzb21haXlhLmVkdSJ9', '2021-11-02 14:37:27.571172'),
('ks7ebg7ri5ba7in55bif8wo1hsn8gaon', 'MTgzYzg0YTE5NzcxMzI4MzgyNmM5ODgzYjZlM2ZhYzVhZGJmMDlhYTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWF5dXNoaS5iaGltYW5pQHNvbWFpeWEuZWR1In0=', '2021-10-23 05:13:59.915066'),
('kt176sjv26vxdgeh6tj85tqllj4awf2w', 'NWFjMmZmMjY4MjQ5NzJlNGZiODFkNDUzYjhmM2RkODZmZTI0YjE4Yzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibWFoZXNoLmdrQHNvbWFpeWEuZWR1In0=', '2022-03-28 07:23:28.727095'),
('kuvmcjrj5g8f8j05sz7pyqqcu5w2reot', 'MmQ0NWE5MDYyNmFkNzBlN2RlZjAzYjg0MmZkOTUwZjYwNTVkMWRhZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWRuYWFuLmxAc29tYWl5YS5lZHUifQ==', '2021-11-04 05:56:04.988762'),
('kw8u8nbs1cqmf1sm11dkljxpbgwrnlmn', 'N2JkOTFjODM4YWIyODk3ZmYzOGZiZTNhMTA3Yzc0ZWFhNGRhNmUwODp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibWFuYXNocmVlLmpAc29tYWl5YS5lZHUifQ==', '2021-11-12 03:55:09.867213'),
('l199q8um499fl5oirjas8ketx17j6jic', 'YmI0Y2RmNDljYWY5ZTY1Y2ZmYTM0OTg5NzNlOTk5NWU5YWYyNGMwODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2022-06-30 14:14:58.303147'),
('l4xeiom0uvzjnp2agfl9f0xzsznjswfv', 'NmY5NGU2NWYwNGU3OTkzOTIxNjY4ZGQ4MTBmMGQ2ZWE0NmRiYmMxNDp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1IiwiX3Nlc3Npb25fZXhwaXJ5Ijo4NjQwMH0=', '2022-07-26 08:39:03.072020'),
('lcsj19i2gtl8cqupg393mmgfsbhulnj9', 'ODM0Y2ZlZjE3OGIzNmYwMWQ4YTg3OTI4YjY4YjIxY2VjYzc5MTM5OTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibmlyYW5qYW4udEBzb21haXlhLmVkdSJ9', '2022-02-22 11:12:23.251291'),
('lhbdqxnqnpq0tybt84hn79cnywkhajko', 'NjhjMDYzODk2NDM4ZGFhNWFhMWNkNTUxYWU3NzZmMjljMjI3Njg2ZTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJhZG1pbl9sb2dpbiI6dHJ1ZX0=', '2021-08-24 13:54:28.090537'),
('ljymoz8c2dpr3ogykk6to7swcg1uygwu', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-17 12:56:19.175183'),
('lr6rb40gwb790zrxbufzdxmefxb1qd2f', 'MTUzNGM5ZDZkOGE4YWUzNjM3YWQ1OGFlZWM3ZmJkYTZiMThiZmU5NTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamJnQHNvbWFpeWEuZWR1In0=', '2021-11-04 06:28:00.029805'),
('ltddh9lc87ualbi8o9gqi4eku3sm172d', 'NmQyMmQ1ZTVlOTczYjcxYzU3ZDEyN2VmNjI4MzhjZjI5YTEzODY4Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibW9oaWwua2hhcmVAc29tYWl5YS5lZHUifQ==', '2022-02-17 13:56:20.058316'),
('ltjueqrxgv33848kgydg62pxhetthoww', 'OWE2M2Q3OTE2ZWUzOTliOTc0OThiMjE1YzYwODU3YjQwMjNkMDI2Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia2FydGlrLmtiQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:32:24.217326'),
('lvy573iyglpr2bwholm42adfvyvg2bag', 'NDdmOGZlMDNjMGU5N2ExMzgzNTY1YzVjMGM3MDY3ZjI1NGJlNjlkZTp7ImFkbWluX3R5cGUiOiJJbmZvcm1hdGlvbiBUZWNobm9sb2d5IiwiYWRtaW5fdXNlcm5hbWUiOiJ2a2hpcm9ka2FyQHNvbWFpeWEuZWR1IiwiYWRtaW5fbG9naW4iOnRydWV9', '2022-03-01 08:15:32.714458'),
('lzc91vidx4fptzjxe80ddh4quv3u56vl', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2022-01-31 13:42:25.733674'),
('m3p7yi7n89c5nclti8940077wg7nwggs', 'M2Y5NmI4YzcwOGJjZmI1ZDFiMWNiNDc3MDE0MjRiZmU3Mjk3ZTlkNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamluaS5iQHNvbWFpeWEuZWR1In0=', '2021-11-04 15:41:05.666945'),
('m496rjczgtyjlq8szio9g6v9stggqnaq', 'MWEzZTY3NzBiNWVkM2ExYmM1NjQyZWI2YTNmODUzMTczYjE5Y2E2Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoib21pbmkuZ3VwdGFAc29tYWl5YS5lZHUifQ==', '2022-02-22 15:41:39.718837'),
('m5ppkyebct5j1mrrcvkzbr69rdar1h9c', 'MmViNGZmMzgzYTVlOWY4ODI5YTU2MjVjNGJhOTBkY2RiYWY4ZTY2NTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWRpdGhpLm1Ac29tYWl5YS5lZHUifQ==', '2022-02-22 17:37:48.358546'),
('mfcbt67w39g79es69ii6ohhr46h0wknc', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 14:42:28.917567'),
('mnd2htmqlxzppul1vjp9wr5mnqg5tu9l', 'NGM5ZjMwODg5ZjMyNzhhMjQzNzllMzdjNTliMDZkOTFmZWI2MzA2MDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmFpYmhhdi5sQHNvbWFpeWEuZWR1In0=', '2022-02-23 03:13:20.227404'),
('mngwly59qlx7irkgtvsly7dldp8d9mhx', 'M2Y5NmI4YzcwOGJjZmI1ZDFiMWNiNDc3MDE0MjRiZmU3Mjk3ZTlkNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamluaS5iQHNvbWFpeWEuZWR1In0=', '2021-11-04 11:54:59.213502'),
('mq9rq32zqyp31x6d179itenbj0md4ahj', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2022-01-26 16:12:06.753942'),
('mqf6yoal0o5ndumu2g2m8x4skta2mgex', 'ZTMyYjA3M2NlY2Y4NWYyYTI3OGUwNjdkNTE3NjBiMGIyZGY1YzEzNjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmF0c2Fsa3VtYXIuYkBzb21haXlhLmVkdSJ9', '2021-11-05 09:34:10.214350'),
('mtv962fdf6kdl448xlchpq8iwngpldmm', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 11:09:52.518566'),
('mujoii60k4wqmqteekfj8583xoob31i4', 'OGY5NDljMGZjMWJiMzg0OTljZmU2NjEyZTBiZDJkNWJhNWVmODE0YTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicnVwZXNoLnBhcm1hckBzb21haXlhLmVkdSJ9', '2021-10-18 05:59:32.294412'),
('muk48skh3wvc81sz848emfn0j4evbdul', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-20 11:30:42.142519'),
('mxg6iwefl7r7r2pew4xavlhookaqrpzw', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-23 09:24:23.818540'),
('n1pocacchgmhyrpsy7h5b787iq6heomw', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2022-07-05 08:29:30.942878'),
('nho3rcuoxpb4301mx7dx36t05qrhj34d', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-08-24 16:27:28.112841'),
('nk4axpf63xgq71lb3ynlitpk9n3uxjg0', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2022-04-17 17:02:17.925551'),
('nk96bwwhym9lpwo5y24ptzsusnqi8amh', 'MDdjMTFiYjE2YmY0NDBjN2ZhNGZiNTljODQyNGMzNGYxNDY3MDNmMjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamF5MjNAc29tYWl5YS5lZHUifQ==', '2021-11-12 05:04:07.351020'),
('npbnikftlula18gpzwla39vll0x1f6h1', 'YTEyYTdiOTY4MDUwOThmNTkyNmZmYjgzOWZiZWZlOGZkNjhjYjgyZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmlyYWoudmFzYW5pQHNvbWFpeWEuZWR1In0=', '2021-11-05 09:34:22.748261'),
('nr5fukkylpk8msxbg10w7dtivu66oyk3', 'ZTljMTYyNGIyOTJjMzcyMzE2YjFjNzE1MGM2NTQzYjQ3MTAzZDBmOTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYXNoaXNoLmt0QHNvbWFpeWEuZWR1In0=', '2022-03-02 08:55:07.706101'),
('nzmu9fqa51b3bz602gg6wwf2iz6jxqw0', 'NWU1ZDUwZDlmYzNjN2QyNjRhNDYzZTk4ZDQ2ZmZlMmU4Y2NmMTE1Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicmFrc2hpdC5zaGV0dHlAc29tYWl5YS5lZHUifQ==', '2022-02-22 12:39:24.081553'),
('o3jdaij1ylbbgx70pwzblgyxm61msa25', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-12 04:10:54.124712'),
('o46zt3rkbk5v56hgascz8kevb4n4xsv9', 'MmQ0NWE5MDYyNmFkNzBlN2RlZjAzYjg0MmZkOTUwZjYwNTVkMWRhZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWRuYWFuLmxAc29tYWl5YS5lZHUifQ==', '2021-11-04 07:12:11.214967'),
('o61mhl6srcvnnz7ics1v5w5lp5641a5h', 'YTJlNDkzOTdmOTFiNjQ0NWRlODkyNGE5MTczY2I4MmQzZTU3MzdlMjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoib21rYXIuc2FtYWxAc29tYWl5YS5lZHUifQ==', '2022-02-22 10:52:38.514144'),
('o6dxv42jdr6vfn7stc2wje078rfqksir', 'ZDk4ZTI5NDI1MjQ3N2RhNzM4MDFiNDViOGY1NjFkYWIxZTYyYzIwMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmVkYW50Lm1hbmVsa2FyQHNvbWFpeWEuZWR1In0=', '2021-10-20 10:27:27.221515'),
('ociuveryv0p0456oyqpga8s1heehlave', 'YWE2YzQ2NmNhODVkNWNkZmJhNjg0NjdiYWM3NWI5YTFiZjJmNjg1Zjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhhcml0YS5kQHNvbWFpeWEuZWR1In0=', '2021-10-18 14:09:26.836823'),
('ocyk06tqmziavm2slp1u87jt42lv5gko', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 14:13:51.524879'),
('of0s70j98254o7hscnuz26szes8990tz', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-08-24 17:42:38.523472'),
('og2ltdf8uax6u8iy9f35p62e48ggwn4c', 'MTUwMjk4ZTM5MDAyZTRkMTQ5YmY2N2ZhNDRkZTY2ZjczOWVjYjRlZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicHJhbmlsLm1Ac29tYWl5YS5lZHUifQ==', '2022-02-22 10:47:25.456484'),
('olefcfcy5yeuu3xa4z2a0jqthf69ufmx', 'NmY5NGU2NWYwNGU3OTkzOTIxNjY4ZGQ4MTBmMGQ2ZWE0NmRiYmMxNDp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1IiwiX3Nlc3Npb25fZXhwaXJ5Ijo4NjQwMH0=', '2022-07-26 09:03:14.678802'),
('oqblec2lh8y77e4ax5e4w9omlflvmmgc', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-14 06:22:04.096836'),
('oqi3sd1jrmd6by5sg1bt4fnyo47xvfm4', 'NjhjMDYzODk2NDM4ZGFhNWFhMWNkNTUxYWU3NzZmMjljMjI3Njg2ZTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJhZG1pbl9sb2dpbiI6dHJ1ZX0=', '2022-03-23 12:08:38.322493'),
('otce8d70ypogy354r894ogsup6rskv69', 'N2ZmMmM0YmFkYWJiNTFmNmRhODQxZjg1Y2FiMDFhYTZkOTNmM2YyYzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamFpZGVlcC5tb3JlQHNvbWFpeWEuZWR1In0=', '2021-10-20 10:29:00.289685'),
('ozxiwstp22r1byvrrlx8cc9fmy8nxuwz', 'ZGI4ZjU2OGUyNWJkMjc5MDVmM2Q0OGMxOGUyMWU3NTg0NjFjNDA1Mjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYmhhdnlhLm1pc3RyeUBzb21haXlhLmVkdSJ9', '2021-11-12 03:51:11.144708'),
('p027k7j3wmdw6w5csh5zl5ynn6qmjc2v', 'ZDdjNDUzNmU1MDE5NzIyMzJmNzI1YzRjMGNiNWU2ODZhMmQwZTc1NTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicHJpeWEubXVkYWxpYXJAc29tYWl5YS5lZHUifQ==', '2021-11-04 11:32:28.716309'),
('p7scqy2o2pyr3ulh99yvat0g7s4z42jq', 'OGY5NDljMGZjMWJiMzg0OTljZmU2NjEyZTBiZDJkNWJhNWVmODE0YTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicnVwZXNoLnBhcm1hckBzb21haXlhLmVkdSJ9', '2021-11-12 05:22:03.647793'),
('pbh6w16fvttl9phsw9eshavphq1tcf3h', 'Y2Y1MjBkN2IwMGM3OTJiNGViNDRkMjY4YTM4YmM5Njc0YjFmYzdiMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiY2hpcmFnLm1hbmRhdml5YUBzb21haXlhLmVkdSJ9', '2022-02-23 07:38:46.125303'),
('pbi4mo12kdz2jantnke2jlndn0bdgnmt', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-08-24 17:47:36.393370'),
('pgaypf2d5di0heab4e9dbm2hd1ji0wcr', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-10-11 05:30:26.205721'),
('pge1eawqf4zt4jl0g8a0vbyk4s4qwo08', 'MTgzYzg0YTE5NzcxMzI4MzgyNmM5ODgzYjZlM2ZhYzVhZGJmMDlhYTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWF5dXNoaS5iaGltYW5pQHNvbWFpeWEuZWR1In0=', '2021-11-12 04:07:44.981078'),
('pinh93yarbkgptyf30acbbrmrc2bc7ic', 'OGRmYTc3Njc0NTY5OWRkMGM5Y2MxNDkyMTdmZjYwYjM2OTdmOTc5Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicmlzaGkuc2dAc29tYWl5YS5lZHUifQ==', '2021-11-04 07:04:30.220373'),
('po02fwt3ut7q57fs1gq33dhqr4m19tum', 'MmViNGZmMzgzYTVlOWY4ODI5YTU2MjVjNGJhOTBkY2RiYWY4ZTY2NTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWRpdGhpLm1Ac29tYWl5YS5lZHUifQ==', '2022-02-23 04:33:04.149073'),
('pp22zjfz9czwzq6mb7nxlabk4xzp58tj', 'ZGU4NjdjMzI2ZmMzMzYwODRhY2FhMGQ5ZjcyMDM1OGQ3MzIwZDlkZDp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJ0b2tlbnMiOiJWYzVjNWpfZG1sa0pEUG96bFpBTFF3In0=', '2022-07-08 11:26:43.230538'),
('pvi7q51sh5cs70u7m9tcbmkc31z6hay7', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 14:29:40.785996'),
('pze1drvcyde054x6ki44zca50l7q9ui7', 'MWFhMmE4MTQ1MzVhOTc0NjU2MThlODRiZTBjNTlkODM1ZDc0YmUyYjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYW5lZXNoLm1Ac29tYWl5YS5lZHUifQ==', '2021-11-12 04:13:45.659040'),
('q70wpudmaox59genvhtqytq3yehfwi23', 'ODRmNWVhNzhjYmE3ZWY5ZDljMzdlNGMwY2FiNjM0NmNkNjQ0NGYzOTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYWtzaGF5LnBhc2h0ZUBzb21haXlhLmVkdSJ9', '2022-02-22 11:44:57.185197'),
('q7czpawq4nzuvj9jfkwcfy4vf21env1l', 'MTg1MzU3MWQ3NTllMzVjZjQ5ZTNmMjM1ZmIxZmMwMTg5Y2YyOTk2Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia3Jpc2guZGVzYWlAc29tYWl5YS5lZHUifQ==', '2021-11-04 05:40:46.823802'),
('qgxf1wd2wjlky0hpx0dgrufmxy3z9h7p', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-08-25 11:16:12.062259'),
('qley5xyxxijl2euqq3vns6ib0z5n3yv1', 'MDNhYjQzZjFlM2JjNTc4Zjc1MjVhZjU3NjE5ODhiYTZlMzExN2M4Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyc2gudmFkb3JAc29tYWl5YS5lZHUifQ==', '2021-11-12 05:38:15.993475'),
('qnxg2ststqca1qea8svq9fpmenic1pix', 'MzcyYzUyODMwNjlhYjI4ZDhjMzBmMjE0NDkyNTljOGE4YTYzZjJlYjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGl2eWEuc2FubmFwdUBzb21haXlhLmVkdSJ9', '2022-02-17 12:48:06.232366'),
('qo6zusw6isx7r28l4m12l0y4z1pepw40', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2021-11-15 12:57:42.514455'),
('qpactbqvudigqtpkdwcbtdgi8agww2x2', 'Y2U5OGRhYTQzNWJhYTNkM2ExNmNkZmZhZTJmODdkNWMwODYwZWRjOTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiY2hpbm1heS5kYWx2aUBzb21haXlhLmVkdSJ9', '2022-03-02 08:53:09.027259'),
('qvhqe7b9708m5wkck7telgv5zt3r3jnt', 'NjE5OWY2N2U5YjhlMTAzZmQ2ZjVhMGYyOTJjNzFmYTYzM2VkOTgxMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYW5raXQucmtAc29tYWl5YS5lZHUifQ==', '2022-02-23 03:35:05.487815'),
('qvy667g4eg1xo3fslldvank70dfv14sn', 'ZTc1NmY0ZDYwN2VhNTFkYjg3MDEzYjQwMzc0NWVjZWRhOWIzMDI3OTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmlub2RzaW5naC5yQHNvbWFpeWEuZWR1In0=', '2021-11-12 04:06:16.310397'),
('r1toxwinxk2sz1zdthl5res2xoyrdcgw', 'YmI0Y2RmNDljYWY5ZTY1Y2ZmYTM0OTg5NzNlOTk5NWU5YWYyNGMwODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2022-07-28 08:40:55.934793'),
('r43kcf98dog549o51fmc1h860gkqn45j', 'Y2RkYjBhMGUzZWMyY2M4ZjMwM2Q2OGI5MmY3NWExOWQ3OTNmNmVkYjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiemFpbmFiYmFzLnBAc29tYWl5YS5lZHUifQ==', '2021-11-13 18:54:26.783647'),
('r4d2y2qpwejxz6xq7eashcelbn4yz7fo', 'OGRlMzQxOGE0YmY0ZDM3Y2U1ZDc0OWYzZTY3NGMxNDI2ZTFmYTI0NTp7ImFkbWluX3R5cGUiOiJFbGVjdHJvbmljcyIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6Im1lZGhhQHNvbWFpeWEuZWR1In0=', '2022-03-01 09:39:25.590443'),
('r6i2wyw1cbt0y3zcu7pl7p4n9t5k6o28', 'MTg1MzU3MWQ3NTllMzVjZjQ5ZTNmMjM1ZmIxZmMwMTg5Y2YyOTk2Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia3Jpc2guZGVzYWlAc29tYWl5YS5lZHUifQ==', '2021-11-12 04:04:38.615906');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r7bydtaoyttl6ytscgau0t9u5kuzles8', 'Nzg4MzlmODU2NjViMzE5NjBmN2ExNDM2ODFlYjBkMjY0ZmJkOWY5Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZ2l0aWthLmpoYUBzb21haXlhLmVkdSJ9', '2022-01-31 16:32:27.447688'),
('rbsczhqp7rk5njj67bgeyev2gapkdy0c', 'MWYwMGQxNjVkNjkxNDU1ODA0Y2E5ZWVmMTllYmVmM2RmOTI3YmI0NDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2hhc2h3YXRpLnNAc29tYWl5YS5lZHUifQ==', '2022-02-22 10:50:19.561714'),
('re1ern1h4cpesz8nvtvqe78k5s9wvzu9', 'MDNhYjQzZjFlM2JjNTc4Zjc1MjVhZjU3NjE5ODhiYTZlMzExN2M4Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyc2gudmFkb3JAc29tYWl5YS5lZHUifQ==', '2022-02-01 09:22:58.064823'),
('ritellj20jm2mj022xbl88rq5keyefwu', 'NWExZjQwYWVkOTY1NDg5MWVkMTIwMGYxOGJiZDlhYzRiMjQ1YmE5ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicHJhdGhhbS5zb25pQHNvbWFpeWEuZWR1ICJ9', '2022-02-22 13:43:20.233251'),
('rv8vb4549izeoolrq53vzhcq9lfsalhq', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 12:19:29.518003'),
('rw72v2iy7jy1gyv8jtz28ifbgtjb398h', 'NjRlNmU2NzhjZDc2MjY4Yjg4NGVlMWJlZjI5YTgwYTM0YmQwOGY3ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic2Fsb25pLnBhdGFkaWFAc29tYWl5YS5lZHUifQ==', '2021-10-14 05:45:48.878426'),
('rx8z1qrfklbkrjcw6kc198pzltbwxgjd', 'YmI0Y2RmNDljYWY5ZTY1Y2ZmYTM0OTg5NzNlOTk5NWU5YWYyNGMwODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2022-07-03 09:41:34.865481'),
('rxg7fnzbottjk67wplynl3hjd1biezn4', 'NDQ0M2RmM2Y4NDhiYTQyYTQzOTk1NDgyNDMzOGRjYWFmZGQ3NjE0Njp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic291cmF2Lmt1bWFyQHNvbWFpeWEuZWR1In0=', '2021-10-14 16:48:52.594982'),
('s2p483m0069b8bdz64jesphfwnacgph9', 'MDg4YjI5YzZhMGE2Y2Q2OTdmMDM4NGI5ZTkyMTgyZWUyODE1MzQwOTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyc2hpdGEuc21Ac29tYWl5YS5lZHUifQ==', '2021-11-12 04:55:26.594021'),
('s4li6zkjp3k85uqai1gmkx3aui2keoii', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-23 05:51:40.462669'),
('s8lhzpvrnz9uwf0r0aesifhk7dlfrrhc', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-19 20:11:18.758404'),
('sr7fqrsklw0pzt0qdrdebxsz9vqydp60', 'YmFjYzVmMGUyMGM1ZTc5ZDllMDc2NjI5OWMxNmViZjBiMzA5MGVmYzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmlyZW4uam1Ac29tYWl5YS5lZHUifQ==', '2022-02-22 13:50:00.330283'),
('sul754ixhn27ab9whvj04628shzuckl4', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-06 15:18:45.688873'),
('sx2w3ln1oht4g0zfhsitpnitrw72wscg', 'YTViMzY0MmUxZTQ2ZTkzOGI5YWY1NWRhYTYwYmMxZGZlZGMwMGE1Njp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoib21rYXIuaEBzb21haXlhLmVkdSJ9', '2022-02-23 03:41:44.251336'),
('szx2klc2os4q5w5nmjbfx215i0om2pmx', 'NjhjMDYzODk2NDM4ZGFhNWFhMWNkNTUxYWU3NzZmMjljMjI3Njg2ZTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJhZG1pbl9sb2dpbiI6dHJ1ZX0=', '2021-08-24 07:46:10.441540'),
('t122awoq3imzzdo1ektieize46zblr6c', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-10 07:58:25.732788'),
('t67ly805tcf9y9wyz6zc6pf13409kmqs', 'NTI2MmNmNDAxY2Y2MGY3NzM0YjQ4OTU4Yjc2NzNiNTM1YzMyM2ViNzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhhaXJ5YS5qbUBzb21haXlhLmVkdSJ9', '2022-02-22 16:12:22.744181'),
('te2i81bjm0okv5govw9j9dbh2l5u5g4n', 'OGY5NDljMGZjMWJiMzg0OTljZmU2NjEyZTBiZDJkNWJhNWVmODE0YTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicnVwZXNoLnBhcm1hckBzb21haXlhLmVkdSJ9', '2021-11-12 04:12:14.817357'),
('tgamcj18k2uie0j9u8gmwbp48dr2mldz', 'ODE3Njg5ODVkYTE2MTlmMzYyODZlZWJhYTRlYjY1N2NjOTMwNjViNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYW1leS5kakBzb21haXlhLmVkdSJ9', '2022-02-22 10:47:36.205346'),
('thicdoetjme5ccxblrq827p2uvc8v5m0', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-06-14 07:29:20.391097'),
('ti5bschsygn9unknuqmggvt7vgw7xku2', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-19 14:00:09.252816'),
('tlztosqyk0k1nvky5dv2yydn6nya8mtx', 'YmMzOTM1ZTBhNDI5MmUwNDFiYjcyZjg4OTFkYTZmZTgzMTNkYTcyYTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicml5YS5tdEBzb21haXlhLmVkdSJ9', '2021-11-12 05:04:55.270648'),
('tog49zbzuemzxfzv4967xh4i2jrcsmm5', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-24 13:35:23.187506'),
('txozy7k82in8txi4y18h2vflrdhpk8sf', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-23 05:08:33.078856'),
('u18b8gonyq3zwlhcdg2ttvvlehwv2pzn', 'ZTJjYTA2YTk4MzRkNjdiNGRhMzRkODIxM2Y3MDkyMzI4YTc5NTY1YTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYS5zb21hdmFuc2hpQHNvbWFpeWEuZWR1In0=', '2021-10-19 13:55:27.927362'),
('u2licgf6rb6tp74a5jqm3hdol9g52a7i', 'ODEyNzg2YzNlYTYyZjhmNTgxYmI2NDJiNTI5MjI2ODQzMTYzZTRjZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGVlcC5tYXJ1QHNvbWFpeWEuZWR1In0=', '2022-02-22 13:51:49.740898'),
('u3o48mcyf002h0po57uabqgctng4gjkb', 'NjhjMDYzODk2NDM4ZGFhNWFhMWNkNTUxYWU3NzZmMjljMjI3Njg2ZTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJhZG1pbl9sb2dpbiI6dHJ1ZX0=', '2021-09-04 07:48:16.631682'),
('u5dfi5mo2unm4oom3g9xqusd1ct3bj29', 'NTQ3MmU3OGJkOWRmY2JhMzkyZWVjODcwYmFjYWFiZDMxYTNlM2I2ODp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYW1pdC5haGlyQHNvbWFpeWEuZWR1In0=', '2022-02-22 14:41:59.580906'),
('ubfgzc411muk7sfj3xiicjbjckz3pblx', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-11-04 06:32:02.420547'),
('ueqeltgwq79cio2d7bug7864d28o5cdd', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 10:52:35.793937'),
('um39txkoyyyjunb85npk6gn5uvog375b', 'MGYyMjkyNWRmMmE4MDI5MzI3MTc0OTc1MGZkYTJjOWExNTIxMjA4ZDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmVkYW50LnBlZG5la2FyQHNvbWFpeWEuZWR1In0=', '2021-11-12 04:55:36.048730'),
('unfsgn600yiqmlc4jfvqde2conkm8saf', 'OGE1MWQyODNkMjhjZmE4NTlmOTU3OWEwOTY5ZmI0YTY3ZDA0MjJiNTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoib21rYXIuYmFkYWRhbGVAc29tYWl5YS5lZHUifQ==', '2022-02-22 11:50:38.402415'),
('unlnjbgt2h4owfw9c2917gkncmoc6pvk', 'MDNhYjQzZjFlM2JjNTc4Zjc1MjVhZjU3NjE5ODhiYTZlMzExN2M4Yjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGFyc2gudmFkb3JAc29tYWl5YS5lZHUifQ==', '2021-11-04 10:08:37.004246'),
('up56zpafyt7pn0xkq3hmskl6ajif2rho', 'YjgzODhhNjg2N2NkZjI1NWVhOTg2YzA2ZjViZDZiZTc5ZWE4YTgxMjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidWRkaXNoLmRoYXJAc29tYWl5YS5lZHUifQ==', '2021-11-12 04:19:08.812690'),
('upbgkrwai3ohuhy69opqzmeyi53hq6bf', 'MTg1MzU3MWQ3NTllMzVjZjQ5ZTNmMjM1ZmIxZmMwMTg5Y2YyOTk2Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia3Jpc2guZGVzYWlAc29tYWl5YS5lZHUifQ==', '2021-11-03 14:22:47.717221'),
('us0x791vgsx9lg666kuf62swawairtq5', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 14:51:19.464458'),
('uu93giu49wj5kj80lscmckzvigbmx0v8', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 12:28:59.329218'),
('uue0kxo9fffpwmxsol1zf3ytkuho8tyg', 'YmMyOTA2NTUwMDc1NTdiZWQ3MWJhMmNiYmU1NDgzZGVmODhiZjMyNzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYXNoaXNoLmJodXNoYW5Ac29tYWl5YS5lZHUgIn0=', '2022-02-22 16:05:56.836994'),
('uunp6399052yjoc15w1dl951qjwlo7d0', 'YmFjYzVmMGUyMGM1ZTc5ZDllMDc2NjI5OWMxNmViZjBiMzA5MGVmYzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmlyZW4uam1Ac29tYWl5YS5lZHUifQ==', '2022-02-22 18:33:36.365230'),
('ux04l1d1zm7mpsclbrbq5nch6w8tlkb7', 'ZjliNWJkNjA1ODhiYTBiNTUwZTQwNDZjZTI4MmRmMTdmY2VmZjkxNjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiQWJoaXNoZWsucmFuaW1Ac29tYWl5YS5lZHUifQ==', '2022-02-22 10:19:58.594114'),
('v9nt4xvo6f1jthk9z7wqb46977cah3wb', 'YTI5YzZlMDRmNDljNzgxNjlkMThmNTQ0ZWFmYTZkN2MzMDlmYTZkMzp7ImFkbWluX3R5cGUiOiJJbmZvcm1hdGlvbiBUZWNobm9sb2d5IiwiYWRtaW5fdXNlcm5hbWUiOiJ2a2hpcm9ka2FyQHNvbWFpeWEuZWR1In0=', '2022-07-05 07:04:52.486161'),
('vetv1zxnbugxfhtf7hwjs3hd7r3e4c45', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-27 16:39:17.422450'),
('vfudle11eip2vfa2v6zrxir1ldz914s1', 'OGIwN2UwM2Y3YWViM2ZkZTg2MDZmY2RmODEzOWU0Yjc1ZTQ1MTA0MTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiaGltYW5zaHUubmtAc29tYWl5YS5lZHUifQ==', '2022-02-22 17:18:32.334668'),
('vsoplp2aolb8oxn0z70jv14in4a2vufd', 'YzEyZWZhNzg1Yzc0MTA0OTA1MjBmZTZkZWVjZjVmMmE4NjAzOWNiMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidmlzaGFsLmtpcnBhbkBzb21haXlhLmVkdSJ9', '2022-02-22 13:52:49.282189'),
('w2al9xtcug5qycnqqwv5mz1j87gzn5uq', 'MGM5NGYxNTc1ZWEzNjZkNTU3Yzk5ODFjMGU3NzUzZGJmZGFjY2Q1Mzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicmFkaGEuc2F3YW50QHNvbWFpeWEuZWR1In0=', '2021-11-12 05:05:12.447074'),
('w2hgl526gi116cwmmc73ygu8t63ozufh', 'ZGVjMTI0MWFiYTUxNmUxMGRjODMxMzg0ZDJlMTAzNDMxY2NiZjg3ZTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidGlydGgudnNAc29tYWl5YS5lZHUifQ==', '2021-10-14 05:50:11.914514'),
('w6k1ijuq4w11aoltz8k0edy6q2060g5k', 'OTk3NDU3YmEyYzg1YjBkYTAyOGVmYzE1ODMzNDkxNTBjZDVmYjJhNjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidml2ZWthbmFuZGEuYkBzb21haXlhLmVkdSJ9', '2022-02-23 09:05:31.333147'),
('w7af9dqt5yr7dbt8e6vu9a65ihjb5plr', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2022-02-26 07:15:52.809241'),
('wbh40ldzvo6bzi345aew4q48hitcu6ng', 'NTI2MmNmNDAxY2Y2MGY3NzM0YjQ4OTU4Yjc2NzNiNTM1YzMyM2ViNzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiZGhhaXJ5YS5qbUBzb21haXlhLmVkdSJ9', '2022-02-22 13:50:14.522533'),
('wial0r3d1hmy8q61icqj1rpk6v8iqp61', 'NmY5NGU2NWYwNGU3OTkzOTIxNjY4ZGQ4MTBmMGQ2ZWE0NmRiYmMxNDp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1IiwiX3Nlc3Npb25fZXhwaXJ5Ijo4NjQwMH0=', '2022-08-04 15:05:35.184070'),
('wr2toujisk5r5flg695pbobl6bt7i0sk', 'ZGU1NmY3M2U0NDc5MmM3YjRiM2U5YTkzMDU0YzNiMTkwNzFiNmRjMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoic25laGFsLmJhbWFuZUBzb21haXlhLmVkdSJ9', '2021-11-04 05:51:35.161337'),
('wxxp0w4kgvyv882xrx9jdde8kpfuhm2g', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-09-24 10:00:59.659252'),
('x4netwzbl77a7khw841gbhztl5vujx7s', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 16:25:49.859108'),
('xafzaleg879ggwd9ju174k1ega92wf2m', 'YzIyMGJmY2Q0ZWY2YWQzMzg1ZTQ3MTAzMWNkOTYwNjJjM2ZiNmQwNjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia3J1dGluLmJpc3JhQHNvbWFpeWEuZWR1In0=', '2022-03-02 09:08:31.463043'),
('xd934kqstg7yuakgfbeb2sx13kbanzub', 'YTViMzY0MmUxZTQ2ZTkzOGI5YWY1NWRhYTYwYmMxZGZlZGMwMGE1Njp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoib21rYXIuaEBzb21haXlhLmVkdSJ9', '2022-02-22 11:21:12.119756'),
('xf211al2g1p975x26d9v43ib82ultiqu', 'YjMyZDJhZjA5ZGRmNzkwZDZmNTVjOGEzODNiNTc4NDg3YzI2ZTg3Nzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiYXJnaHlhZGVlcC5rQHNvbWFpeWEuZWR1In0=', '2021-11-04 04:51:44.726379'),
('xsnzvfzfk81cnjnm047bhmx13mpfac24', 'M2NlNjZjOTRlZTgxMDAzZDgxMzQyNWZkOGU1MmQxMDBjNzVlYTgyMDp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicHJhbmFsaS5wa0Bzb21haXlhLmVkdSJ9', '2022-02-23 04:33:51.388481'),
('xx84e1ulj44t0a2kcokloe4nhj7c9va6', 'YmI0Y2RmNDljYWY5ZTY1Y2ZmYTM0OTg5NzNlOTk5NWU5YWYyNGMwODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2022-06-27 15:22:05.671817'),
('xxmh2fhca0cbriiz05n0hgq9u9bz8lg9', 'YmI0Y2RmNDljYWY5ZTY1Y2ZmYTM0OTg5NzNlOTk5NWU5YWYyNGMwODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2022-07-28 08:38:44.188114'),
('y8ylg912id2nyn4gkqri3h4w9vktey0s', 'NzI1YTA0MTlmYzgwMGYxMDdlMDQ0NDcyNjViNjc0ZGNlZTE4YTMyOTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicHJpeWFua2EuaGVtYmFkZUBzb21haXlhLmVkdSJ9', '2022-02-22 13:35:58.485582'),
('ycf6u8faltkgx1dov298p8xl3zhm7974', 'MTFkNjJkMjQxNTQ3MmM0YjNlMzRmZGQ0ZTkyMDNhYjJhNTJkYWYzMTp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidGVqYXMuZHBAc29tYWl5YS5lZHUifQ==', '2022-02-22 10:49:53.177679'),
('ydx5kasruddjrt9zponw9kx3wp3owqii', 'YjgzODhhNjg2N2NkZjI1NWVhOTg2YzA2ZjViZDZiZTc5ZWE4YTgxMjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoidWRkaXNoLmRoYXJAc29tYWl5YS5lZHUifQ==', '2021-11-04 17:46:51.705374'),
('yekuqpihuq265c5rhln4hutdjdyjm7mh', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2022-02-22 11:56:16.896925'),
('yemy6557el3gss7pyur0ncd5annxg6n6', 'Y2RkYjBhMGUzZWMyY2M4ZjMwM2Q2OGI5MmY3NWExOWQ3OTNmNmVkYjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiemFpbmFiYmFzLnBAc29tYWl5YS5lZHUifQ==', '2021-11-04 06:13:04.777028'),
('yicpfxgk7jvsp5rhejpxf4o9okqhe3tg', 'MGM5NGYxNTc1ZWEzNjZkNTU3Yzk5ODFjMGU3NzUzZGJmZGFjY2Q1Mzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoicmFkaGEuc2F3YW50QHNvbWFpeWEuZWR1In0=', '2021-11-11 09:44:44.123801'),
('yuullovusmdwv7tmwslqgex0ss1yst9m', 'MGU3NjMwNzZkZjc2YTJiZjBiNmZiM2ViYmRkYjM3OGZjZTNjY2NiNjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoia2Fud2FsLmthdWxAc29tYWl5YS5lZHUifQ==', '2022-02-22 14:02:15.364971'),
('ywc5i8h09u13m656ez9hv3fhuycas0d5', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2022-02-22 10:42:25.109152'),
('z3cogpxcxdw2t2x7w1gnqmxsbl6o9qfc', 'MjNhZmQ2ZDAxOWUyN2YxMGFmODJjZDVhYmJmMjc0MDI4YjUyMTMyYjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoibWF5dXJlc2guYW5hdmthckBzb21haXlhLmVkdSJ9', '2022-03-02 08:54:59.861609'),
('zabj1yexn7mwx11o0jak6axp0j1d91q7', 'NjUxZGYwY2IyMWIxMmRhYzUxYjJmNzY2YzE1OWU0NGJiZTc0OGRiYTp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX2xvZ2luIjp0cnVlLCJhZG1pbl91c2VybmFtZSI6InRucGFkbWluQHNvbWFpeWEuZWR1In0=', '2021-10-11 05:28:59.105545'),
('ze3qxgfmblbmkxohsx1ke6hb8iiyt0qd', 'MDdjMTFiYjE2YmY0NDBjN2ZhNGZiNTljODQyNGMzNGYxNDY3MDNmMjp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamF5MjNAc29tYWl5YS5lZHUifQ==', '2021-09-23 14:30:12.593497'),
('zf31w0tugehy1twk5x649n3xj7qq21ne', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-14 05:48:48.161842'),
('zkbdh46w25wfht50l0ogxlo5iqrkkw8x', 'NjE3ZGUyNTdiZTUxN2ViNTZiNDhlOGY1MGE3NWNjMDRkZDZlZTgwMzp7InN0dWRlbnRfbG9naW4iOnRydWUsInVzZXJuYW1lIjoiamlsbC5jaGF3aGFuQHNvbWFpeWEuZWR1In0=', '2022-02-23 07:18:32.365984'),
('zl8rvx4avdh7i7icm2m1682q6tsibpy5', 'OWE5YWNhZjM4NTVlOTYxMDZhYjNlZDJhYWFlZjhmYzg0ZjA0MWQxODp7ImFkbWluX3R5cGUiOiJTdXBlciIsImFkbWluX3VzZXJuYW1lIjoidG5wYWRtaW5Ac29tYWl5YS5lZHUifQ==', '2022-04-21 08:01:42.132689'),
('zp96f259fn58zvlmhwl5lzfng72dasd5', 'MTE3Yjk1MGM4YWMxY2Q1OGY5MjgwZTg4OWZmNzRlOTkyZTUxMTU0Yjp7fQ==', '2021-10-22 19:45:18.755857');

-- --------------------------------------------------------

--
-- Table structure for table `student_resume`
--

CREATE TABLE `student_resume` (
  `id` int(11) NOT NULL,
  `prn_number` varchar(100) NOT NULL,
  `somaiya_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `sem1` double DEFAULT NULL,
  `sem2` double DEFAULT NULL,
  `diploma` double DEFAULT NULL,
  `sem3` double DEFAULT NULL,
  `sem4` double DEFAULT NULL,
  `sem5` double DEFAULT NULL,
  `sem6` double DEFAULT NULL,
  `sem7` double DEFAULT NULL,
  `sem8` double DEFAULT NULL,
  `agg` double NOT NULL,
  `ssc_marks` double NOT NULL,
  `hsc_marks` double DEFAULT NULL,
  `oneto6` varchar(500) NOT NULL,
  `lock` tinyint(1) NOT NULL,
  `average_CGPA` double NOT NULL,
  `college_id` varchar(100) NOT NULL,
  `home_Town` varchar(100) NOT NULL,
  `nearest_railway_station` varchar(100) NOT NULL,
  `non_somiya_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_resume`
--

INSERT INTO `student_resume` (`id`, `prn_number`, `somaiya_id`, `name`, `branch`, `gender`, `sem1`, `sem2`, `diploma`, `sem3`, `sem4`, `sem5`, `sem6`, `sem7`, `sem8`, `agg`, `ssc_marks`, `hsc_marks`, `oneto6`, `lock`, `average_CGPA`, `college_id`, `home_Town`, `nearest_railway_station`, `non_somiya_id`) VALUES
(3, '2018016402066364', 'jay23@somaiya.edu', 'Mr. Shah Jay Kirti', 'Information Technology', 'Male', 6.74, 6.93, NULL, 6.96, 7.62, 9.85, 10, NULL, NULL, 8.02, 78.2, 65.23, '', 1, 0, '', 'None', 'None', ''),
(5, '2019016402529236', 'patel.yn@somaiya.edu', 'Mr. Patel Yash Nilesh', 'Information Technology', 'Male', NULL, NULL, 88.88, 8.81, 9.85, 10, 10, NULL, NULL, 9.67, 87.2, NULL, '', 1, 0, '', 'None', 'None', ''),
(6, '2018016402064512', 'harsita.mav@somaiya.edu', 'Ms. MAV HARSITA ARUN', 'Information Technology', 'Female', 8.19, 8.04, NULL, 8.27, 9.38, 10, 10, NULL, NULL, 8.98, 94.2, 81.69, '', 1, 0, '', 'None', 'None', ''),
(7, '2018016402065701', 'panchal.dh@somaiya.edu', 'Mr. PANCHAL DHRUV HITEN', 'Information Technology', 'Male', 7.3, 8.52, NULL, 7.58, 9.5, 9.77, 10, NULL, NULL, 8.77, 92.33, 78.46, '', 1, 0, '', 'None', 'None', ''),
(8, '2018016402064632', 'dakshit.v@somaiya.edu', 'Mr. Dakshit Vaviya Karsan', 'Information Technology', 'Male', 8, 7.85, NULL, 7.73, 8.31, 10, 9.5, NULL, NULL, 8.56, 88.4, 83.96, '', 1, 0, '', 'None', 'None', ''),
(9, '2018016402066221', 'akash.ry@somaiya.edu', 'Mr. Yadav Akash Raisaheb', 'Information Technology', 'Male', 8.78, 8.63, NULL, 7.58, 8.58, 10, 9.65, NULL, NULL, 8.87, 87.6, 83.08, '', 1, 0, '', 'None', 'None', ''),
(10, '2018016402064601', 'srinath.n@somaiya.edu', 'Mr. Nanduri Srinath Srinivas', 'Information Technology', 'Male', 8, 8.67, NULL, 8.77, 9.69, 10, 9.77, NULL, NULL, 9.15, 90, 78.92, '', 1, 0, '', 'None', 'None', ''),
(11, '2018016402066101', 'manashree.j@somaiya.edu', 'Ms. Jhawar Manashree Umesh', 'Information Technology', 'Female', 7.63, 7.74, NULL, 7.69, 9.54, 10, 10, NULL, NULL, 8.77, 98.8, 80.4, '', 1, 0, '', 'None', 'None', ''),
(12, '2018016402065353', 'mustansir.k@somaiya.edu', 'Mr. Kapasi Mustansir Yacoob', 'Information Technology', 'Male', 7.41, 8.09, NULL, 6.88, 8.35, 10, 10, NULL, NULL, 8.45, 93, 77, '', 1, 0, '', 'None', 'None', ''),
(13, '2016016400875876', 'a.somavanshi@somaiya.edu', 'Ms. SOMAVANSHI ASHLESHA SANTOSH', 'Information Technology', 'Female', 6.54, 6.04, NULL, 7.31, 7.35, 9.23, 9.5, NULL, NULL, 7.67, 79, 52.46, '', 1, 0, '', 'None', 'None', ''),
(14, '2019016402528987', 'dharita.d@somaiya.edu', 'Ms. Desai Dharita Ajay', 'Information Technology', 'Female', NULL, NULL, 88.81, 7.96, 8.88, 10, 10, NULL, NULL, 9.21, 92, NULL, '', 1, 0, '', 'None', 'None', ''),
(15, '2018016402065724', 'jaideep.more@somaiya.edu', 'Mr. More Jaideep Mahesh', 'Information Technology', 'Male', 9.26, 9.07, NULL, 9.85, 9.96, 10, 10, NULL, NULL, 9.69, 91.2, 90.46, '', 1, 0, '', 'None', 'None', ''),
(16, '2019016402529646', 'bhavya.mistry@somaiya.edu', 'Mr. MISTRY BHAVYA RAKESH', 'Information Technology', 'Male', NULL, NULL, 8.92, 8.19, 9.12, 9.54, 10, NULL, NULL, 9.21, 85.33, NULL, '', 1, 0, '', 'None', 'None', ''),
(17, '2018016402065136', 'saloni.patadia@somaiya.edu', 'Ms. PATADIA SALONI HITENDRA', 'Information Technology', 'Female', 8.26, 9.19, NULL, 9.38, 10, 10, 10, NULL, NULL, 9.47, 90.8, 78.46, '', 1, 0, '', 'None', 'None', ''),
(18, '2018016402066244', 'vedant.kokate@somaiya.edu', 'Mr. Kokate Vedant Vijay', 'Information Technology', 'Male', 6.87, 8.19, NULL, 6.23, 7.96, 9.77, 9.96, NULL, NULL, 8.17, 89.8, 77.8, '', 1, 0, '', 'None', 'None', ''),
(19, '2018016402064864', 'harsh.chudasama@somaiya.edu', 'Mr. Chudasama Harsh Narendra', 'Information Technology', 'Male', 7.46, 7.74, NULL, 7.38, 8.04, 9.85, 10, NULL, NULL, 8.41, 93.8, 78.46, '', 1, 0, '', 'None', 'None', ''),
(20, '2018016402065167', 'mitali.patil@somaiya.edu', 'Ms. PATIL MITALI NITIN', 'Information Technology', 'Female', 5.78, 5.93, NULL, 5.73, 7.54, 9.85, 10, NULL, NULL, 7.48, 76.8, 65.54, '', 1, 0, '', 'None', 'None', ''),
(21, '2018016402064075', 'keshav.sm@somaiya.edu', 'Mr. Mishra Keshav Sudarshan', 'Information Technology', 'Male', 9.22, 9.85, NULL, 10, 10, 9.92, 10, NULL, NULL, 9.83, 87.4, 86.15, '', 1, 0, '', 'None', 'None', ''),
(22, '2018016402064582', 'krutika.bhalla@somaiya.edu', 'Ms. Bhalla Krutika Rajesh', 'Information Technology', 'Female', 7.04, 8.37, NULL, 8.96, 9.5, 10, 9.96, NULL, NULL, 8.97, 89.8, 82.31, '', 1, 0, '', 'None', 'None', ''),
(23, '2018016402064566', 'gala.av@somaiya.edu ', 'Mr. Gala Ankit Vijay', 'Information Technology', 'Male', 6.93, 7.54, NULL, 7.12, 7.65, 10, 9.85, NULL, NULL, 8.18, 91.6, 84.92, '', 1, 0, '', 'None', 'None', ''),
(24, '2018016402064856', 'h.mandaliya@somaiya.edu', 'Mr. Mandaliya Hardik Himmat', 'Information Technology', 'Male', 5.67, 6.65, NULL, 7.5, 7.23, 9.54, 9.69, NULL, NULL, 7.71, 92.2, 61.23, '', 1, 0, '', 'None', 'None', ''),
(25, '2018016402064922', 'aneesh.m@somaiya.edu', 'Mr. Mokashi Aneesh Kiran', 'Information Technology', 'Male', 6.89, 7.33, NULL, 7.5, 8.42, 9.85, 9.85, NULL, NULL, 8.31, 92.2, 76.3, '', 1, 0, '', 'None', 'None', ''),
(26, '2018016402065191', 'gitika.jha@somaiya.edu', 'Ms. JHA GITIKA VINOD', 'Information Technology', 'Female', 7.44, 8.3, NULL, 8.5, 9.65, 10, 10, NULL, NULL, 8.98, 89.4, 80.31, '', 1, 0, '', 'None', 'None', ''),
(27, '2019016402529116', 'aayushi.bhimani@somaiya.edu', 'Ms. Bhimani Aayushi Bijesh', 'Information Technology', 'Female', NULL, NULL, 89.19, 8.54, 9.46, 10, 9.85, NULL, NULL, 9.46, 88.5, NULL, '', 1, 0, '', 'None', 'None', ''),
(28, '2019016402529735', 'prajwal.ps@somaiya.edu', 'Mr. Shinde Prajwal Prakash', 'Information Technology', 'Male', NULL, NULL, 90.47, 8.96, 9.62, 10, 9.69, NULL, NULL, 9.56, 86.6, NULL, '', 1, 0, '', 'None', 'None', ''),
(29, '2018016402064292', 'jaydeep.patel@somaiya.edu', 'Mr. Patel Jaydeep Amratbhai', 'Information Technology', 'Male', 8.15, 8.59, NULL, 8.88, 9.54, 10, 9.85, NULL, NULL, 9.168, 74.4, 69.23, '', 1, 0, '', 'None', 'None', ''),
(30, '2018016402065272', 'shruti.dharap@somaiya.edu', 'Ms. Dharap Shruti Jayant', 'Information Technology', 'Female', 7.78, 8.5, NULL, 7.88, 8.65, 10, 9.69, NULL, NULL, 8.75, 96.2, 82.46, '', 1, 0, '', 'None', 'None', ''),
(31, '2018016402064261', 'arghyadeep.k@somaiya.edu', 'Mr. Karmakar Arghyadeep Mantoo', 'Information Technology', 'Male', 9.11, 8.33, NULL, 8.15, 9.65, 9.85, 9.85, NULL, NULL, 9.16, 87.8, 91.8, '', 1, 0, '', 'None', 'None', ''),
(32, '2018016402065287', 'jbg@somaiya.edu', 'Mr. Ganatra Jay Bipin', 'Information Technology', 'Male', 7.41, 6.89, NULL, 8.08, 9.38, 9.92, 10, NULL, NULL, 8.61, 90.83, 82.46, '', 1, 0, '', 'None', 'None', ''),
(33, '2018016402064067', 'snehal.bamane@somaiya.edu', 'Ms. Bamane Snehal Vitthal', 'Information Technology', 'Female', 7.41, 8.31, NULL, 8.35, 8.31, 9.69, 9.77, NULL, NULL, 8.64, 93.4, 79.69, '', 1, 0, '', 'None', 'None', ''),
(34, '2018016402064825', 'vinodsingh.r@somaiya.edu', 'Mr. RAJPUROHIT VINOD SINGH DINESH SINGH', 'Information Technology', 'Male', 8.59, 7.85, NULL, 9.81, 10, 10, 10, NULL, NULL, 9.375, 87, 81.38, '', 1, 0, '', 'None', 'None', ''),
(35, '2018016402065562', 'tirth.vs@somaiya.edu', 'Mr. Shah Tirth Vipul', 'Information Technology', 'Male', 6.76, 7.13, NULL, 6.62, 7.65, 10, 9.96, NULL, NULL, 8.01, 91, 83, '', 1, 0, '', 'None', 'None', ''),
(36, '2018016402065063', 'amankumar.sahu@somaiya.edu', 'Mr. Sahu Aman KUMAR', 'Information Technology', 'Male', 7.48, 8.33, NULL, 8.08, 9.85, 9.77, 9.35, NULL, NULL, 8.81, 9.6, 81.8, '', 1, 0, '', 'None', 'None', ''),
(37, '2018016402066325', 'krish.desai@somaiya.edu', 'Mr. Desai Krish Tushar', 'Information Technology', 'Male', 6.41, 8.02, NULL, 7.69, 8.85, 9.85, 10, NULL, NULL, 8.47, 87.8, 75.38, '', 1, 0, '', 'None', 'None', ''),
(38, '2018016402064551', 'dhruv.ghori@somaiya.edu', 'Mr. Ghori Dhruv Dineshkumar', 'Information Technology', 'Male', 7.19, 8.44, NULL, 8, 9.54, 10, 10, NULL, NULL, 8.86, 78.4, 69.69, '', 1, 0, '', 'None', 'None', ''),
(39, '2018016402064597', 'adnaan.l@somaiya.edu', 'Mr. Lalani Adnaan Nooruddin', 'Information Technology', 'Male', 6.67, 6.61, NULL, 7.27, 8.31, 9.92, 10, NULL, NULL, 8.13, 90.2, 81.54, '', 1, 0, '', 'None', 'None', ''),
(40, '2018016402065755', 'svt@somaiya.edu', 'Mr. Thakkar Shubham Vijay', 'Information Technology', 'Male', 6.04, 6.41, NULL, 7, 7.27, 9.77, 9.77, NULL, NULL, 7.71, 90, 81.38, '', 1, 0, '', 'None', 'None', ''),
(41, '2018016402064365', 'prachi.harwara@somaiya.edu', 'Ms. Harwara Prachi Prakash', 'Information Technology', 'Female', 7.78, 9.07, NULL, 9.69, 10, 10, 10, NULL, NULL, 9.42, 94.2, 80.15, '', 1, 0, '', 'None', 'None', ''),
(42, '2018016402064791', 'ymb1@somaiya.edu', 'Mr. Bhanushali Yash Murji', 'Information Technology', 'Male', 5.13, 6.06, NULL, 6.19, 7.81, 9.77, 9.85, NULL, NULL, 7.47, 81.8, 66, '', 1, 0, '', 'None', 'None', ''),
(43, '2018016402064431', 'harsh.vador@somaiya.edu', 'Mr. VADOR HARSH SANJAY', 'Information Technology', 'Male', 7.22, 7.93, NULL, 7.42, 9.08, 10, 10, NULL, NULL, 8.6, 93.8, 75.08, '', 1, 0, '', 'None', 'None', ''),
(44, '2019016402528964', 'harshita.sm@somaiya.edu', 'Ms. MISHRA HARSHITA SANTOSH', 'Information Technology', 'Female', NULL, NULL, 90.8, 8.42, 9.81, 9.92, 9.85, NULL, NULL, 9.5, 93.2, NULL, '', 1, 0, '', 'None', 'None', ''),
(45, '2018016402064624', 'arjun.pitroda@somaiya.edu', 'Mr. Arjun Narayan Pitroda', 'Information Technology', 'Male', 7.56, 8.04, NULL, 8.27, 9.23, 9.69, 9.38, NULL, NULL, 8.7, 92.6, 72.46, '', 1, 0, '', 'None', 'None', ''),
(46, '2018016402064984', 'jini.b@somaiya.edu', 'Ms. Bhanushali Jini Ashok', 'Information Technology', 'Female', 6.96, 7.72, NULL, 8.12, 9.31, 10, 10, NULL, NULL, 8.69, 90.5, 82.15, '', 1, 0, '', 'None', 'None', ''),
(47, '2018016402066395', 'uddish.dhar@somaiya.edu', 'Mr. Dhar Uddish Rajesh', 'Information Technology', 'Male', 6.78, 6.96, NULL, 7.04, 7.85, 9.69, 9.73, NULL, NULL, 8, 95, 70, '', 1, 0, '', 'None', 'None', ''),
(48, '2018016402064976', 'a.prabhudesai@somaiya.edu', 'Mr. PRABHUDESAI AKASH ANAND', 'Information Technology', 'Male', 10, 10, NULL, 10, 10, 10, 10, NULL, NULL, 8.2783333, 95, 80, '', 1, 0, '', 'None', 'None', ''),
(49, '2018016402064655', 's.moundekar@somaiya.edu', 'Mr. Moundekar Shreyash Sanjay', 'Information Technology', 'Male', 6.85, 7.43, NULL, 7.2, 8, 9.69, 9.23, NULL, NULL, 8.1, 9.6, 80.6, '', 1, 0, '', 'None', 'None', ''),
(50, '2018016402064872', 'vedant.pednekar@somaiya.edu', 'Mr. Pednekar Vedant Narendra', 'Information Technology', 'Male', 6.19, 7.78, NULL, 6.92, 8.92, 10, 9.69, NULL, NULL, 8.25, 92.2, 86.92, '', 1, 0, '', 'None', 'None', ''),
(51, '2018016402064423', 'soham.ns@somaiya.edu', 'Mr. Shinde Soham Narendra', 'Information Technology', 'Male', 7.44, 7.56, NULL, 7.38, 8.15, 9.62, 9.65, NULL, NULL, 8.3, 93.2, 94, '', 1, 0, '', 'None', 'None', ''),
(52, '2018016402064686', 'het.parekh@somaiya.edu', 'Mr. Parekh Het Nilesh', 'Information Technology', 'Male', 6.93, 7.85, NULL, 8.19, 8.5, 9.77, 9.81, NULL, NULL, 8.51, 91, 80, '', 1, 0, '', 'None', 'None', ''),
(53, '2018016402065295', 'parth.mk@somaiya.edu', 'Mr. KOTHARI PARTH KOTHARI', 'Information Technology', 'Male', 6.59, 6.74, NULL, 6.92, 8, 9.92, 9.96, NULL, NULL, 8.02, 90, 74.46, '', 1, 0, '', 'None', 'None', ''),
(54, '2018016402066453', 'vatsalkumar.b@somaiya.edu', 'Mr. BALAR VATSALKUMAR UPESHBHAI', 'Information Technology', 'Male', 5.8, 5.98, NULL, 7.5, 7.15, 9.85, 9.5, NULL, NULL, 7.63, 92.4, 75.54, '', 1, 0, '', 'None', 'None', ''),
(55, '2018016402065682', 'viraj.vasani@somaiya.edu', 'Mr. Vasani Viraj Sunil', 'Information Technology', 'Male', 5.41, 6.57, NULL, 6.12, 7, 10, 9.92, NULL, NULL, 7.5, 87.4, 73.08, '', 1, 0, '', 'None', 'None', ''),
(56, '2018016402064961', 'jenil.jain@somaiya.edu', 'Mr. Jain Jenil Sanjay', 'Information Technology', 'Male', 6.93, 6.97, NULL, 7.92, 8.23, 9.7, 9.2, NULL, NULL, 8.23, 92.2, 81, '', 1, 0, '', 'None', 'None', ''),
(57, '2018016402064276', 'archit.patil@somaiya.edu', 'Mr. Patil Archit Paresh', 'Information Technology', 'Male', 8.78, 9.7, NULL, 9.69, 9.85, 10, 9.69, NULL, NULL, 9.61, 89, 87.69, '', 1, 0, '', 'None', 'None', ''),
(58, '2018016402065047', 'neel06@somaiya.edu', 'Mr. Shah Neel Ketan', 'Information Technology', 'Male', 7.67, 8.15, NULL, 8.46, 9.23, 9.85, 10, NULL, NULL, 8.89, 86.2, 74.62, '', 1, 0, '', 'None', 'None', ''),
(59, '2019016402528995', 'H.ratlamwala@somaiya.edu', 'Mr. Ratlamwala Huzefa Shamun', 'Information Technology', 'Male', NULL, NULL, 89.3, 8.46, 9.27, 9.38, 8.77, NULL, NULL, 8.97, 87.2, NULL, '', 1, 0, '', 'None', 'None', ''),
(60, '2018016402065016', 'priya.mudaliar@somaiya.edu', 'Ms. Mudaliar Priya Vasudhevan', 'Information Technology', 'Female', 7.81, 7.59, NULL, 7.54, 7.88, 9.69, 10, NULL, NULL, 8.41, 87.2, 82.9, '', 1, 0, '', 'None', 'None', ''),
(61, '2018016402065643', 'harshil21@somaiya.edu ', 'Mr. SHAH HARSHIL MRUGESH', 'Information Technology', 'Male', 5.85, 6.7, NULL, 7.27, 7.85, 9.85, 9.92, NULL, NULL, 7.91, 77.6, 72.31, '', 1, 0, '', 'None', 'None', ''),
(62, '2018016402065233', 'h.bharadwaj@somaiya.edu', 'Mr. Bharadwaj Hrishikesh Madhab', 'Information Technology', 'Male', 7.9, 7.2, NULL, 7.8, 7.5, 8.2, 9.8, NULL, NULL, 7.9, 9.6, 72, '', 1, 0, '', 'None', 'None', ''),
(63, '2018016402064117', 'rupesh.parmar@somaiya.edu', 'Mr. Parmar Rupesh Tejmal', 'Information Technology', 'Male', 5.65, 5.8, NULL, 6.23, 7.1, 9.1, 8.91, NULL, NULL, 7.5, 90.4, 84.31, '', 1, 0, '', 'None', 'None', ''),
(64, '2018016402065121', 'hardi.p@somaiya.edu', 'Ms. PATEL HARDI VIREN', 'Information Technology', 'Female', 8.44, 9.11, NULL, 9.31, 10, 10, 10, NULL, NULL, 9.41, 91.2, 79.85, '', 1, 0, '', 'None', 'None', ''),
(65, '2018016402066356', 'omkar.np@somaiya.edu', 'Mr. Pawar Omkar Nityanand', 'Information Technology', 'Male', 6.5, 7.3, NULL, 7.73, 7.65, 9.85, 10, NULL, NULL, 8.107, 9.8, 77.69, '', 1, 0, '', 'None', 'None', ''),
(66, '2018016402065933', 'radha.sawant@somaiya.edu', 'Ms. Sawant Radha Vinod', 'Information Technology', 'Female', 7.63, 7.37, NULL, 6.19, 8, 9.85, 9.85, NULL, NULL, 8.143, 90.33, 68, '', 1, 0, '', 'None', 'None', ''),
(67, '2018016402065577', 'rishi.sg@somaiya.edu', 'Mr. Gupta Rishi Sanjay', 'Information Technology', 'Male', 7.33, 7.56, NULL, 7.69, 9.33, 10, 10, NULL, NULL, 8.65, 92, 78, '', 1, 0, '', 'None', 'None', ''),
(68, '2018016402064783', 'riya.mt@somaiya.edu', 'Ms. Thakkar Riya Manoj', 'Information Technology', 'Female', 7.33, 6.19, NULL, 5.77, 6.85, 9.85, 10, NULL, NULL, 7.665, 9.8, 77.23, '', 1, 0, '', 'None', 'None', ''),
(69, '2015016402136405', 'ritesh.doshi@somaiya.edu', 'Mr. DOSHI RITESH CHAKOR', 'Information Technology', 'Male', 6.37, 6.41, NULL, 7.11, 6.61, 9.85, 10, NULL, NULL, 7.725, 77.27, 62, '', 1, 0, '', 'None', 'None', ''),
(70, '2018016402065507', 'sourav.kumar@somaiya.edu', 'Mr. Kumar Sourav Jeewan', 'Information Technology', 'Male', 6.41, 6.48, NULL, 5.92, 6.85, 9.38, 9.72, NULL, NULL, 7.46, 89.2, 77, '', 1, 0, '', 'None', 'None', ''),
(71, '2018016402065771', 'daksh.saraiya@somaiya.edu', 'Mr. Saraiya Daksh Paresh', 'Electronics & Telecommunication', 'Male', 6.07, 6.33, NULL, 8.19, 6.48, 9.56, 9.96, NULL, NULL, 7.765, 86.85, 70.77, '', 1, 0, '', 'None', 'None', ''),
(72, '2018016402064222', 'mitali.ved@somaiya.edu', 'Ms. VED MITALI HARISH', 'Electronics & Telecommunication', 'Female', 8, 7.67, NULL, 7.38, 7.4, 10, 9.84, NULL, NULL, 8.38, 82.8, 80.15, '', 1, 0, '', 'None', 'None', ''),
(73, '2019016402529422', 'akshay.pashte@somaiya.edu', 'Mr. Pashte Akshay Bhai', 'Electronics', 'Male', NULL, NULL, 81.5, 6.88, 7.9, 10, 9.24, NULL, NULL, 8.52, 65.4, NULL, '', 1, 0, '', 'None', 'None', ''),
(74, '2019016402529194', 'abhishek.ranim@somaiya.edu', 'Mr. RANIM ABHISHEK KRISHNA', 'Electronics & Telecommunication', 'Male', NULL, NULL, 84.71, NULL, NULL, NULL, NULL, NULL, NULL, 8.68, 85.6, NULL, '', 1, 0, '', 'None', 'None', ''),
(75, '2019016402529913', 'sahil.sp@somaiya.edu', 'Mr. Patil Sahil Suryaji', 'Electronics & Telecommunication', 'Male', NULL, NULL, 80.24, NULL, NULL, NULL, NULL, NULL, NULL, 8.55, 74.4, NULL, '', 1, 0, '', 'None', 'None', ''),
(76, '2019016402529913', 'patil.mn@somaiya.edu', 'Mr. PATIL MANISH NITIN', 'Electronics & Telecommunication', 'Male', NULL, NULL, 84.79, NULL, NULL, NULL, NULL, NULL, NULL, 8.73, 87.4, NULL, '', 1, 0, '', 'None', 'None', ''),
(77, '2018016402064887', 'r.ghadi@somaiya.edu ', 'Mr. Ghadi Raj Pradip', 'Electronics', 'Male', 7.89, 7.07, NULL, 7.54, 8.31, 10, 9.32, NULL, NULL, 8.35, 92, 82.77, '', 1, 0, '', 'None', 'None', ''),
(78, '2019016402529004', 'aadesh.tawte@somaiya.edu', 'Mr. Tawte Aadesh Shamsundar', 'Electronics & Telecommunication', 'Male', NULL, NULL, 84.59, 8.96, 8.4, 9.7, 10, NULL, NULL, 9.27, 93.8, NULL, '', 1, 0, '', 'None', 'None', ''),
(79, '2018016402065322', 'mahesh.gk@somaiya.edu', 'Mr. Kadam Mahesh Gulab', 'Electronics & Telecommunication', 'Male', 5.85, 6.74, NULL, 6.38, 6.76, 9.96, 10, NULL, NULL, 7.62, 84, 58.31, '', 1, 0, '', 'None', 'None', ''),
(80, '2018016402064164', 'amit.ahir@somaiya.edu', 'Mr. Ahir Amit Lakhabhai', 'Electronics & Telecommunication', 'Male', 6.7, 6.7, NULL, 6.35, 7.52, 9.89, 9.84, NULL, NULL, 7.83, 82.4, 67.85, '', 1, 0, '', 'None', 'None', ''),
(81, '2018016402064895', 'kush.jg@somaiya.edu', 'Mr. Gada Kush Jayesh', 'Electronics & Telecommunication', 'Male', 6.22, 6.74, NULL, 6.08, 6.88, 9.85, 9.92, NULL, NULL, 7.62, 78, 62, '', 1, 0, '', 'None', 'None', ''),
(82, '2018016402064446', 'mistry.yh@somaiya.edu', 'Mr. MISTRY YASH HARISH', 'Electronics & Telecommunication', 'Male', 6.44, 6.93, NULL, 6.35, 6.4, 9.33, NULL, NULL, NULL, 7.5, 85.83, 66.46, '', 1, 0, '', 'None', 'None', ''),
(83, '2018016402064164', 'amit.ahir@somaiya.edu', 'Mr. Ahir Amit Lakhabhai', 'Electronics & Telecommunication', 'Male', 6.7, 6.7, NULL, 6.35, 7.52, 9.89, 9.84, NULL, NULL, 7.83, 82.4, 67.85, '', 1, 0, '', 'None', 'None', ''),
(84, '2018016402064164', 'amit.ahir@somaiya.edu', 'Mr. Ahir Amit Lakhabhai', 'Electronics & Telecommunication', 'Male', 6.7, 6.7, NULL, 6.35, 7.52, 9.89, 9.84, NULL, NULL, 7.83, 82.4, 67.85, '', 1, 0, '', 'None', 'None', ''),
(85, '2018016402064164', 'amit.ahir@somaiya.edu', 'Mr. Ahir Amit Lakhabhai', 'Electronics & Telecommunication', 'Male', 6.7, 6.7, NULL, 6.35, 7.52, 9.89, 9.84, NULL, NULL, 7.83, 82.4, 67.85, '', 1, 0, '', 'None', 'None', ''),
(86, '2018016402066194', 'meet.bhansali@somaiya.edu', 'Mr. Bhansali Meet Abhay', 'Electronics & Telecommunication', 'Male', 7.26, 6.81, NULL, 8.27, 7.04, 9.67, 9.76, NULL, NULL, 8.14, 86, 60, '', 1, 0, '', 'None', 'None', ''),
(87, '2018016402064833', 'Mnb1@somaiya.edu', 'Mr. Bhanushali Meet Nilesh', 'Electronics & Telecommunication', 'Male', 7.35, 6.33, NULL, 4.85, 6.04, 9.85, 9.8, NULL, NULL, 7.37, 79.33, 63.54, '', 1, 0, '', 'None', 'None', ''),
(88, '2018016402064477', 'siddhi.ms@somaiya.edu', 'Ms. Solanki Siddhi Mukesh', 'Electronics & Telecommunication', 'Female', 6.85, 6.63, NULL, 7.08, 7.24, 10, 10, NULL, NULL, 7.967, 86.6, 78.62, '', 1, 0, '', 'None', 'None', ''),
(89, '2018016402065554', 'vishal.kirpan@somaiya.edu', 'Mr. KIRPAN VISHAL VISHWAS', 'Electronics & Telecommunication', 'Male', 7.48, 7.22, NULL, 7.35, 7.64, 9.81, 10, NULL, NULL, 8.25, 90.4, 85, '', 1, 0, '', 'None', 'None', ''),
(90, '2018016402065225', 'amey.dj@somaiya.edu', 'Mr. Jadhav Amey Deelip', 'Electronics & Telecommunication', 'Male', 6.48, 6.56, NULL, 6.54, 6.48, 9.78, 9.84, NULL, NULL, 7.62, 85.2, 62.62, '', 1, 0, '', 'None', 'None', ''),
(91, '2018016402064616', 'himanshu.nk@somaiya.edu', 'Mr. KULKARNI HIMANSHU NITIN', 'Electronics & Telecommunication', 'Male', 5.74, 6.4, NULL, 7.5, 6.8, 9.81, 9.96, NULL, NULL, 7.7, 81.2, 72.31, '', 1, 0, '', 'None', 'None', ''),
(92, '2018016402064752', 'milind.r@somaiya.edu', 'Mr. Rampure Milind Ramesh', 'Electronics & Telecommunication', 'Male', 5.93, 6.72, NULL, 6.12, 6.84, 9.89, 10, NULL, NULL, 7.58, 83.6, 76.92, '', 1, 0, '', 'None', 'None', ''),
(93, '2018016402065844', 'omkar.h@somaiya.edu', 'Mr. HAWALDAR OMKAR DEEPAK', 'Electronics', 'Male', NULL, NULL, 71.66, 6.12, 6.62, 8.48, 8.32, NULL, NULL, 7.38, 73.6, NULL, '', 1, 0, '', 'None', 'None', ''),
(94, '2018016402066147', 'aditi09@somaiya.edu', 'Ms. PATIL ADITI SUNIL', 'Electronics & Telecommunication', 'Female', 6.89, 6.72, NULL, 7.38, 7.16, 9.44, 9.8, NULL, NULL, 7.89, 81.8, 64.31, '', 1, 0, '', 'None', 'None', ''),
(95, '2018016402064125', 'dimple.patil@somaiya.edu', 'Ms. Patil Dimple Manoj', 'Electronics & Telecommunication', 'Female', 7.85, 8.15, NULL, 8.92, 9.2, 10, 10, NULL, NULL, 9.02, 86.2, 79.85, '', 1, 0, '', 'None', 'None', ''),
(96, '2019016402529043', 'poonam.biradar@somaiya.edu', 'Ms. BIRADAR Poonam Narsing', 'Electronics & Telecommunication', 'Female', NULL, NULL, 87, 8.58, 9.03, 9.93, 10, NULL, NULL, 9.38, 78.8, NULL, '', 1, 0, '', 'None', 'None', ''),
(97, '2018016402064214', 'vanshika.w@somaiya.edu', 'Ms. Waghela Vanshika Viju', 'Electronics & Telecommunication', 'Female', 6.7, 7.81, NULL, 8.69, 7.88, 9.89, 10, NULL, NULL, 8.5, 73.4, 70, '', 1, 0, '', 'None', 'None', ''),
(98, '2019016402529267', 't.shindolkar@somaiya.edu', 'Mr. SHINDOLKAR TANMAY NANDKUMAR', 'Electronics & Telecommunication', 'Male', NULL, NULL, 84.53, 6.69, 8.24, 9.7, 10, NULL, NULL, 8.65, 84, NULL, '', 1, 0, '', 'None', 'None', ''),
(99, '2018016402066244', 'r.kokate@somaiya.edu', 'Ms. Kokate Rutuja Santosh', 'Electronics & Telecommunication', 'Female', 6.81, 6.37, NULL, 7, 8.12, 9.48, 9.8, NULL, NULL, 7.78, 89.2, 70.92, '', 1, 0, '', 'None', 'None', ''),
(100, '2018016402064736', 'nitin.sharma@somaiya.edu', 'Mr. Sharma Nitin Nirmal', 'Electronics & Telecommunication', 'Male', 8.93, 8.56, NULL, 8.42, 8.36, 9.93, 9.64, NULL, NULL, 8.96, 91, 81, '', 1, 0, '', 'None', 'None', ''),
(101, '2018016402065813', 'kanwal.kaul@somaiya.edu', 'Mr. Kaul Kanwal -', 'Electronics & Telecommunication', 'Male', 5.17, 5.48, NULL, 5.85, 6.2, 9.7, 9.82, NULL, NULL, 7.04, 8.6, 72.6, '', 1, 0, '', 'None', 'None', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_user`
--

CREATE TABLE `student_user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_user`
--

INSERT INTO `student_user` (`id`, `name`, `username`, `password`, `branch`) VALUES
(44, 'Dharita Desai', 'dharita.d@somaiya.edu', 'ZG5G2D6M', 'Information Technology'),
(45, 'Neel Shah', 'neel06@somaiya.edu', 'XS3NFZE6', 'Information Technology'),
(53, 'Jaydeep Patel', 'jaydeep.patel@somaiya.edu', 'V3R9SQZY', 'Information Technology'),
(54, 'Hardi p', 'hardi.p@somaiya.edu', 'RA9HI7YS', 'Information Technology'),
(55, 'Mitali patil', 'mitali.patil@somaiya.edu', '98RK8ZAI', 'Information Technology'),
(56, 'Radha Sawant', 'radha.sawant@somaiya.edu', 'FD5C5GP5', 'Information Technology'),
(57, 'Jay', 'jay23@somaiya.edu', 'A6X5NEYY', 'Information Technology'),
(59, 'Vedant Kokate', 'vedant.kokate@somaiya.edu', 'M4FKCUIL', 'Information Technology'),
(60, 'BHANUSHALI YASH MURJI BHAGWATI', 'ymb1@somaiya.edu', 'D6SILIPQ', 'IT'),
(61, 'CHUDASAMA HARSH NARENDRA PRAGNA', '\nharsh.chudasama@somaiya.edu', '1B7UELF4', 'IT'),
(62, 'JHA GITIKA VINOD CHANDAN', 'gitika.jha@somaiya.edu', 'ZG3DTPW1', 'Information Technology'),
(63, 'JHAWAR MANASHREE UMESH SWATI', 'manashree.j@somaiya.edu', 'DEQC7AKU', 'Information Technology'),
(64, 'KAPASI MUSTANSIR YACOOB TASNEEM', 'mustansir.k@somaiya.edu', 'X9XNPY5K', 'Information Technology'),
(65, 'KUMAR SOURAV JEEWAN MANJU', 'sourav.kumar@somaiya.edu', 'H6SFGHXV', 'Information Technology'),
(66, 'MANELKAR VEDANT KISHORE KIRAN', 'vedant.manelkar@somaiya.edu', '0HDO835B', 'Information Technology'),
(67, 'MOKASHI ANEESH KIRAN KAVITA', 'aneesh.m@somaiya.edu', 'TW37RSAI', 'Information Technology'),
(68, 'MORE JAIDEEP MAHESH SHILPA', 'jaideep.more@somaiya.edu', 'DWICXSLD', 'Information Technology'),
(69, 'NANDURI SRINATH SRINIVAS SAROJA', 'srinath.n@somaiya.edu', 'KSXFVBKN', 'Information Technology'),
(70, 'PANCHAL DHRUV HITEN YAMINI', 'panchal.dh@somaiya.edu', 'OHD0VJBE', 'Information Technology'),
(71, 'PAREKH HET NILESH KHYATI', 'het.parekh@somaiya.edu', 'MBJAL8G1', 'Information Technology'),
(72, 'PATADIA SALONI HITENDRA CHHAYA', 'saloni.patadia@somaiya.edu', 'U59KHZBF', 'Information Technology'),
(73, 'PATEL YASH NILESH PUSHPA', 'patel.yn@somaiya.edu', 'JTXW103F', 'Information Technology'),
(74, 'PITRODA ARJUN NARAYAN HANSA', 'arjun.pitroda@somaiya.edu', 'ORLPUG3N', 'Information Technology'),
(76, 'SAHU AMAN SANJAY KUMAR SAHU GAURI', 'amankumar.sahu@somaiya.edu', 'Q42CV677', 'Information Technology'),
(77, 'SHAH HARSHIL MRUGESH VARSHA', 'harshil21@somaiya.edu', 'HU3AF01M', 'Information Technology'),
(80, 'YADAV AKASH RAISAHEB SITARA', 'akash.ry@somaiya.edu', '22GZ32NZ', 'Information Technology'),
(81, 'CHUDASAMA HARSH NARENDRA PRAGNA', 'harsh.chudasama@somaiya.edu', 'QV5D2U48', 'Information Technology'),
(82, 'BALAR VATSALKUMAR UPESHBHAI REKHABEN', 'vatsalkumar.b@somaiya.edu', 'X5D7CQBD', 'Information Technology'),
(83, 'BAMANE SNEHAL VITTHAL VAISHALI', 'snehal.bamane@somaiya.edu', 'P66F1DTX', 'Information Technology'),
(84, 'BHALLA KRUTIKA RAJESH SONIA', 'krutika.bhalla@somaiya.edu', '1LLTSG7S', 'Information Technology'),
(85, 'BHANUSHALI JINI ASHOK NITI', 'jini.b@somaiya.edu', 'JITLEHB7', 'Information Technology'),
(86, 'BHIMANI AAYUSHI BIJESH JIGNA', 'aayushi.bhimani@somaiya.edu', 'KEEW43BJ', 'Information Technology'),
(87, 'DESAI KRISH TUSHAR SHITAL', 'krish.desai@somaiya.edu', 'NDLYDVGW', 'Information Technology'),
(88, 'DOSHI RITESH CHAKOR SUJATA', 'ritesh.doshi@somaiya.edu', '3UN4ETNR', 'Information Technology'),
(89, 'GALA ANKIT VIJAY ANITA', 'gala.av@somaiya.edu', 'RBZB9BSP', 'Information Technology'),
(90, 'JAIN JENIL SANJAY ARUNA', 'jenil.jain@somaiya.edu', '988KW6A6', 'Information Technology'),
(91, 'HARWARA PRACHI PRAKASH HANSA', 'prachi.harwara@somaiya.edu', 'O5BQNC67', 'Information Technology'),
(92, 'KOTHARI PARTH MAHESH SONAL', 'parth.mk@somaiya.edu', 'EKCWXDOQ', 'Information Technology'),
(93, 'LALANI ADNAAN NOORUDDIN HAMIDA', 'adnaan.l@somaiya.edu', 'B4VZXZ9W', 'Information Technology'),
(94, 'MANDALIYA HARDIK HIMMAT CHETNA', 'h.mandaliya@somaiya.edu', 'WLOR81RN', 'Information Technology'),
(95, 'MAV HARSITA ARUN REKHA', 'harsita.mav@somaiya.edu', 'MCJMQ8AE', 'Information Technology'),
(97, 'MUDALIAR PRIYA VASUDHEVAN REENA', 'priya.mudaliar@somaiya.edu', 'TB1TUHO3', 'Information Technology'),
(98, 'PARMAR RUPESH TEJMAL RANJANA', 'rupesh.parmar@somaiya.edu', '3RTOY69D', 'Information Technology'),
(101, 'SHAH TIRTH VIPUL KASHMIRA', 'tirth.vs@somaiya.edu', '3XCDWQWJ', 'Information Technology'),
(102, 'SHINDE SOHAM NARENDRA NISHA', 'soham.ns@somaiya.edu', '05DO4C7B', 'Information Technology'),
(103, 'THAKKAR RIYA MANOJ MINAXI', 'riya.mt@somaiya.edu', 'XZFK4Y6Z', 'Information Technology'),
(105, 'VADOR HARSH SANJAY GEETA', 'harsh.vador@somaiya.edu', 'LFL50FI9', 'Information Technology'),
(106, 'VAVIYA DAKSHIT KERSAN KESHAR', 'dakshit.v@somaiya.edu', '3FSQFBBP', 'Information Technology'),
(107, 'Ashlesha Somavanshi ', 'a.somavanshi@somaiya.edu', 'XKTAYL52', 'Information Technology'),
(108, 'Bhavya Mistri', 'bhavya.mistry@somaiya.edu', '5C0SE7FU', 'Information Technology'),
(109, 'MISHRA KESHAV SUDARSHAN NANDINI', 'keshav.sm@somaiya.edu', 'PJQL209X', 'Information Technology'),
(110, 'PEDNEKAR VEDANT NARENDRA MANSI', 'vedant.pednekar@somaiya.edu', 'FZZ0AXZ4', 'Information Technology'),
(111, 'Prajwal shinde', 'prajwal.ps@somaiya.edu', '6IFSC2X7', 'Information Technology'),
(112, 'Shubham ', 'svt@somaiya.edu', 'KUJV1HU1', 'Information Technology'),
(113, 'Shruti Dharap', 'shruti.dharap@somaiya.edu', '7FUYI1MO', 'Information Technology'),
(114, 'Harshita ', 'harshita.sm@somaiya.edu', 'BQPM9X3V', 'Information Technology'),
(115, 'Arghyadeep', 'arghyadeep.k@somaiya.edu', 'VBQCW0CE', 'Information Technology'),
(116, 'Jay ganatra', 'jbg@somaiya.edu', 'GWX9R1BL', 'Information Technology'),
(117, 'Rishi', 'rishi.sg@somaiya.edu', '4F5MI1Y3', 'Information Technology'),
(118, 'viraj vasani', 'viraj.vasani@somaiya.edu', 'Q1LHZO57', 'Information Technology'),
(119, 'vinod', 'vinodsingh.r@somaiya.edu', 'Poojaankit1@', 'Information Technology'),
(120, 'dhruv', 'dhruv.ghori@somaiya.edu', '4RJOD8Z9', 'Information Technology'),
(121, 'abbas', 'zainabbas.p@somaiya.edu', 'KB3WBVSW', 'Information Technology'),
(122, 'shreyas', 's.moundekar@somaiya.edu', 'UJBZ0MPB', 'Information Technology'),
(123, 'OMKAR PADMA', 'omkar.np@somaiya.edu', '6ZSYUB3O', 'Information Technology'),
(124, 'Akash Prabhudesai', 'a.prabhudesai@somaiya.edu', 'IALRPM79', 'Information Technology'),
(125, 'Abrar', 'shaikh.abrar@somaiya.edu', 'OA4BBZZ8', 'Information Technology'),
(126, 'huzefa', 'H.ratlamwala@somaiya.edu', '0124S3CN', 'Information Technology'),
(127, 'Hrishikesh', 'h.bharadwaj@somaiya.edu', 'J4ZPCR8P', 'Information Technology'),
(128, 'Uddish', 'uddish.dhar@somaiya.edu', 'H2DDYC9I', 'Information Technology'),
(129, 'Archit patil', 'archit.patil@somaiya.edu', 'FCC3CKVU', 'Information Technology'),
(140, 'BAFNA SANKET', 'sanket.bafna@somaiya.edu', '9FHNBPSH', 'Computer '),
(141, 'BAGARIA DEVANSH', 'devansh.bagaria@somaiya.edu', '9Y23W644', 'Computer '),
(142, 'BHANUSHALI KARTIK', 'kartik.kb@somaiya.edu', 'B2TTJM4K', 'Computer '),
(143, 'BHANUSHALI NIDHI', 'nidhi.cb@somaiya.edu', 'JTH8C3N1', 'Computer '),
(144, 'BHUSHAN ASHISH', 'ashish.bhushan@somaiya.edu', '1TJSMKT7', 'Computer '),
(145, 'BILLA VIVEKANANDA', 'vivekananda.b@somaiya.edu', 'YXXP81DO', 'Computer '),
(146, 'BOHRA AZIZ', 'aziz.bohra@somaiya.edu', 'IZC3CLER', 'Computer '),
(147, 'CHAVAN VIGHNESH', 'vighnesh.c@somaiya.edu', 'YW4HELWV', 'Computer '),
(148, 'DALVI JASH', 'jash.dalvi@somaiya.edu', 'OH4R14GM', 'Computer '),
(149, 'DAMA NIDHI', 'dama.n@somaiya.edu', '4S5OIIM4', 'Computer '),
(150, 'DANDAVATIMATH SIDDHESH', 's.dandavatimath@somaiya.edu', 'FFUXF1KD', 'Computer '),
(151, 'DEDHIA VIKIN', 'vikin.dedhia@somaiya.edu', 'K7SUAABP', 'Computer '),
(152, 'GADA PRINCE', 'prince.gada@somaiya.edu', 'NBOJO3U3', 'Computer '),
(153, 'GANDHI JAY', 'gandhi.ja@somaiya.edu', 'V5ZN5MUD', 'Computer '),
(154, 'GIRKAR AKSHATA', 'akshata.girkar@somaiya.edu', 'Z67ZWMZB', 'Computer '),
(155, 'GORADIA ZUBIN', 'zubin.g@somaiya.edu', 'MFYQTAAU', 'Computer '),
(156, 'JAIN KHILOSIYA', 'om.jainkhilosiya@somaiya.edu', '6F9A8LL4', 'Computer '),
(157, 'JAIN PRASUK', 'prasuk.jain@somaiya.edu', '5CNUI021', 'Computer '),
(158, 'KARANGUTKAR ANIKET', 'a.karangutkar@somaiya.edu', '9F5UWHV4', 'Computer '),
(159, 'KATKADE HARSH', 'harsh.katkade@somaiya.edu', 'OK6M9WPV', 'Computer '),
(160, 'KENI RITIKA', 'ritika.keni@somaiya.edu', '1VP9U7N6', 'Computer '),
(161, 'KEVADIYA DARSH', 'darsh.kevadiya@somaiya.edu', 'A5PSIKEC', 'Computer '),
(162, 'KHARE MOHIL', 'mohil.khare@somaiya.edu', 'YXBZ9SZS', 'Computer '),
(163, 'KOTAK JAY', 'jay.kotak@somaiya.edu', 'B8DRKYQY', 'Computer '),
(164, 'KOTAK SAHIL', 'kotak.sk@somaiya.edu', 'BNJC4LYJ', 'Computer '),
(165, 'LAKHANI VAIBHAV', 'vaibhav.l@somaiya.edu', 'MMJRIZ8G', 'Computer '),
(166, 'LOKHANDWALA HUSAIN', 'h.lokhandwala@somaiya.edu', 'UT8S6R3A', 'Computer '),
(167, 'MEHTA ABHISHEK', 'abhishek.pm@somaiya.edu', 'OIC3L251', 'Computer '),
(168, 'MEHTA KAVIN', 'kavin.sm@somaiya.edu', 'SPU27JCZ', 'Computer '),
(169, 'MEHTA KRUSHI SATISH', 'krushi.mehta@somaiya.edu', 'WHNYRT1C', 'Computer '),
(170, 'MEHTA VIRAJ', 'viraj.rm@somaiya.edu', '7JIT3JXO', 'Computer '),
(171, 'NAGDA KRISHA', 'krisha.nagda@somaiya.edu', 'YXT8XQVC', 'Computer '),
(172, 'NAIR SAMYUKTA', 'samyukta.n@somaiya.edu', 'UL0XVB03', 'Computer '),
(173, 'OSTWAL MOKSHASH', 'mokshash.o@somaiya.edu', 'FD22XJ38', 'Computer '),
(174, 'PALEJA JASH', 'jash.paleja@somaiya.edu', 'DW0JDD2D', 'Computer '),
(175, 'PANCHAL SHIVAM', 'shivam.panchal@somaiya.edu', 'YKS2RKS9', 'Computer '),
(176, 'PANCHAL VIDHI', 'vrp1@somaiya.edu', 'DL5TB8SN', 'Computer '),
(177, 'PAREKH AMISHKUMAR', 'amishkumar.p@somaiya.edu', 'VW4DH9O7', 'Computer '),
(178, 'PATEL MIHIR', 'patel.mj@somaiya.edu', '2N2OTIM5', 'Computer '),
(179, 'PATEL MITUL', 'mitul.bp@somaiya.edu', 'BUWZEH7A', 'Computer '),
(180, 'PATEL ROHAN', 'rohan.pp@somaiya.edu', 'THRX7OH2', 'Computer '),
(181, 'PATEL VEDANT', 'vedant.sp@somaiya.edu', 'X6QQPU0T', 'Computer '),
(182, 'PATIL CHETAN', 'patil.c@somaiya.edu', 'UC3HWEPQ', 'Computer '),
(183, 'PINJARI SAMEER', 's.pinjari@somaiya.edu', 'QUOCILMM', 'Computer '),
(184, 'PITHADIYA DIVYESH', 'd.pithadiya@somaiya.edu', 'LAWYCCA2', 'Computer '),
(185, 'RAVAL POOJA', 'raval.p@somaiya.edu', 'RXLSEHLD', 'Computer '),
(186, 'RESHAMWALA MITANSHU', 'mitanshu.r@somaiya.edu', 'QR8WJ2TD', 'Computer '),
(187, 'SAMBHAT MANASVI', 'manasvi.sambhat@somaiya.edu', 'Q1K7HLE2', 'Computer '),
(188, 'SANTE RINKESH', 'rinkesh.sante@somaiya.edu', 'IDD5535W', 'Computer '),
(189, 'SARAWGI AARYAN', 'aaryan.s@somaiya.edu', 'TJS9WWKU', 'Computer '),
(190, 'SATHE AMEY', 'amey.sathe@somaiya.edu', 'YB4PPOC9', 'Computer '),
(191, 'SHAHA SIYA', 'siya.shaha@somaiya.edu', '8C6LONVP', 'Computer '),
(192, 'SHAIKH RAYEES', 'rayees.s@somaiya.edu', 'IXLFNIW1', 'Computer '),
(193, 'SHAIKH WAHAB', 'wahab.shaikh@somaiya.edu', 'N37AV6J7', 'Computer '),
(194, 'SHETLY SHITHIL', 'shithil.s@somaiya.edu', '6GB53NCS', 'Computer '),
(195, 'SINGH ANURAG', 'anurag.ns@somaiya.edu', 'ABETHTAQ', 'Computer '),
(196, 'SINGH ASHU', 'ashu.singh@somaiya.edu', '9OFSQRQM', 'Computer '),
(197, 'SINGH KAPISH', 'kapish.singh@somaiya.edu', 'ML5N51TV', 'Computer '),
(198, 'SINGH PIYUSH KUMAR', 'piyushkumar.ss@somaiya.edu', '4HB52RJ5', 'Computer '),
(199, 'SINGH ROMIT SUNIL', 'romit.singh@somaiya.edu', '53HBWOZD', 'Computer '),
(200, 'SOMAIYA RHYTHM', 'rhythm.ds@somaiya.edu', '62B2RJEC', 'Computer '),
(201, 'TAVAREJ CHINMAY', 'chinmay.tavarej@somaiya.edu', 'E05JJ84M', 'Computer '),
(202, 'THAKER RAHUL', 'rahul.thaker@somaiya.edu', 'ZVTRD2YG', 'Computer '),
(203, 'THAKKAR MANAV', 'manav.pt@somaiya.edu', 'Z67Q312Y', 'Computer '),
(204, 'VAISH ABHISHEK', 'abhishek.vaish@somaiya.edu', '6UVQVA9Q', 'Computer '),
(205, 'VEJARE RITVIJ', 'ritvij.v@somaiya.edu', 'VBCD7EJT', 'Computer '),
(206, 'VORA SAKSHI', 'sakshi.hv@somaiya.edu', 'WO3GZCUY', 'Computer '),
(207, 'SARPOLE VARAD', 'varad.s@somaiya.edu', 'H1AI1FB8', 'Computer '),
(211, 'Ahir  Amit ', 'amit.ahir@somaiya.edu', 'QYF0G16A', 'Electronics & Telecommunication'),
(212, 'Bhansali  Meet ', 'meet.bhansali@somaiya.edu', '4T2DTB5O', 'Electronics & Telecommunication'),
(213, 'Bhanushali  Meet ', 'mnb1@somaiya.edu', '02YEN3OM', 'Electronics & Telecommunication'),
(214, 'Bhanushali  Parth ', 'parth07@somaiya.edu', 'W1G2G3OJ', 'Electronics & Telecommunication'),
(215, 'Bhatt  Rushabh ', 'rushabh.bhatt@somaiya.edu', '9FZG44ES', 'Electronics & Telecommunication'),
(216, 'Bhosle  Sarthak ', 'sarthak.bhosle@somaiya.edu', 'C2Q73V0W', 'Electronics & Telecommunication'),
(217, 'Bind  Sagar ', 's.bind@somaiya.edu', 'CIUDQNMD', 'Electronics & Telecommunication'),
(218, 'Biradar  Poonam ', 'poonam.biradar@somaiya.edu', 'NCKR01DT', 'Electronics & Telecommunication'),
(219, 'Chavan   Rushikesh  ', 'rushikesh.chavan@somaiya.edu', '52O32BDN', 'Electronics & Telecommunication'),
(220, 'Dandge  Chirag ', 'chirag.dandge@somaiya.edu', 'QLLVUQ17', 'Electronics & Telecommunication'),
(221, 'Davalia  Nitya ', 'nitya.d@somaiya.edu', '3UPHOXY2', 'Electronics & Telecommunication'),
(222, 'Dossa  Mohd. Owais ', 'owais.dossa@somaiya.edu', 'KJ4ES9O3', 'Electronics & Telecommunication'),
(223, 'Gada  Kush ', 'kush.jg@somaiya.edu', 'T6R33QG6', 'Electronics & Telecommunication'),
(224, 'Gaikwad   Shamal  ', 'shamal.gaikwad@somaiya.edu', 'BKIOM26O', 'Electronics & Telecommunication'),
(225, 'Gala  Vishal ', 'vishal.kg@somaiya.edu', 'XHCX03A5', 'Electronics & Telecommunication'),
(226, 'Karani  Niyati ', 'niyati.karani@somaiya.edu', '8SKS51RH', 'Electronics & Telecommunication'),
(227, 'Kataria  Pinakin ', 'pinakin.k@somaiya.edu', 'P5ZOIDF2', 'Electronics & Telecommunication'),
(228, 'Khadka  Sitara ', 'sitara.k@somaiya.edu', '03LUQ7MY', 'Electronics & Telecommunication'),
(229, 'Khapare  Prajwal ', 'prajwal.khapare@somaiya.edu', 'NS8DU2UV', 'Electronics & Telecommunication'),
(230, 'Lad  Jugalkumar ', 'jugalkumar.l@somaiya.edu', '08BFUCCS', 'Electronics & Telecommunication'),
(231, 'Maru  Deep ', 'deep.maru@somaiya.edu', 'AD928JTQ', 'Electronics & Telecommunication'),
(232, 'Mokashi  Riya ', 'riya.mokashi@somaiya.edu', '5MCY1H5V', 'Electronics & Telecommunication'),
(233, 'Musali  Harshada ', 'harshada.musali@somaiya.edu', 'JUWPPU20', 'Electronics & Telecommunication'),
(234, 'Panchal  Pranaykumar ', 'pbp1@somaiya.edu', '9E5F7YCX', 'Electronics & Telecommunication'),
(235, 'Pandey  Gaurav ', 'gvp@somaiya.edu', '4H9K53ZE', 'Electronics & Telecommunication'),
(236, 'Pandya  Kashyap ', 'mukesh.pandya@somaiya.edu', '6Q4W99T5', 'Electronics & Telecommunication'),
(237, 'Patel  Cavin ', 'cavin.patel@somaiya.edu', 'STQYVYAJ', 'Electronics & Telecommunication'),
(238, 'Patel  Dhruv ', 'patel.ds@somaiya.edu', '2MU92GVF', 'Electronics & Telecommunication'),
(239, 'Patel  Jatin ', 'jatin.vp@somaiya.edu', 'HLAAKANI', 'Electronics & Telecommunication'),
(240, 'Patil  Aditi ', 'aditi09@somaiya.edu', 'XDES7MVF', 'Electronics & Telecommunication'),
(241, 'Patil  Dimple ', 'dimple.patil@somaiya.edu', 'L1OHZDCU', 'Electronics & Telecommunication'),
(242, 'Patil  Manish ', 'patil.mn@somaiya.edu', 'M6Y0SEQY', 'Electronics & Telecommunication'),
(243, 'Patil  Pranav ', 'pranav.dp@somaiya.edu', '2XGXQZXQ', 'Electronics & Telecommunication'),
(244, 'Patil  Sahil ', 'sahil.sp@somaiya.edu', 'DQQYUCLR', 'Electronics & Telecommunication'),
(245, 'Patil  Sarthak ', 'sarthak.patil@somaiya.edu', 'D4PTE3BY', 'Electronics & Telecommunication'),
(246, 'Pothoth  Vrishank ', 'vrishank.p@somaiya.edu', 'RI66DB98', 'Electronics & Telecommunication'),
(247, 'Qureshi  Mohd Anas ', 'mohd.q@somaiya.edu', 'CN5DHPVU', 'Electronics & Telecommunication'),
(248, 'Ramani  Dhairya ', 'dhairya.kr@somaiya.edu', 'LY92HZPW', 'Electronics & Telecommunication'),
(249, 'Rampure  Milind ', 'milind.r@somaiya.edu', 'XFMH6VOP', 'Electronics & Telecommunication'),
(250, 'Rane  Siddhi ', 'siddhi.kr@somaiya.edu', 'ZCJFKWCM', 'Electronics & Telecommunication'),
(251, 'Rangwala  Hatim ', 'hatim.r@somaiya.edu', 'E9NMCH11', 'Electronics & Telecommunication'),
(252, 'Ranim  Abhishek ', 'abhishek.ranim@somaiya.edu', 'QJTK3KXG', 'Electronics & Telecommunication'),
(253, 'Rathod  Kevin ', 'kevin.rathod@somaiya.edu', '1KBQRDJN', 'Electronics & Telecommunication'),
(254, 'Rathod  Nisha ', 'nisha.r@somaiya.edu', 'FRXMQ485', 'Electronics & Telecommunication'),
(255, 'Rathod  Rhea ', 'rhea.rathod@somaiya.edu', 'M3KK2LZ6', 'Electronics & Telecommunication'),
(256, 'Rawal  Sahil ', 'sahil.rawal@somaiya.edu', 'B9QNU80R', 'Electronics & Telecommunication'),
(257, 'Rawat  Gunjan ', 'gunjan.rawat@somaiya.edu', 'C57XJOTI', 'Electronics & Telecommunication'),
(258, 'Salunke  Dhanashri ', 'd.salunke@somaiya.edu', 'E9CV4A5Y', 'Electronics & Telecommunication'),
(259, 'Salve  Shantanu ', 'shantanu.salve@somaiya.edu', 'H0WTU1DN', 'Electronics & Telecommunication'),
(260, 'Sampat   Dhara  ', 'dhara.sampat@somaiya.edu', 'CA36340P', 'Electronics & Telecommunication'),
(261, 'Sanghvi  Priyank ', 'priyank.sanghvi@somaiya.edu', 'BDNC928M', 'Electronics & Telecommunication'),
(262, 'Sannapu  Divya ', 'divya.sannapu@somaiya.edu', '48KIK6ME', 'Electronics & Telecommunication'),
(263, 'Saraiya  Daksh ', 'daksh.saraiya@somaiya.edu', '3UIHIAD9', 'Electronics & Telecommunication'),
(264, 'Shah  Dhriti ', 'dhriti.rs@somaiya.edu', 'C8WCCEAN', 'Electronics & Telecommunication'),
(265, 'Shah  Jahanvi ', 'jahanvi.shah@somaiya.edu', 'ZJAJDHGZ', 'Electronics & Telecommunication'),
(266, 'Shah  Sankesh ', 'sankhesh.shah@somaiya.edu', 'QQICAAX6', 'Electronics & Telecommunication'),
(267, 'Shah  Sarvesh ', 'sarvesh.ys@somaiya.edu', 'UHIAMTVW', 'Electronics & Telecommunication'),
(268, 'Shah  Tusmit ', 'tusmit.shah@somaiya.edu', 'FWP5177P', 'Electronics & Telecommunication'),
(269, 'Sharma  Nitin ', 'nitin.sharma@somaiya.edu', '83Z0KKRK', 'Electronics & Telecommunication'),
(270, 'Sharma  Ritik ', 'ritik.sharma@somaiya.edu', 'RTOAIHCG', 'Electronics & Telecommunication'),
(271, 'Shetty  Sharan ', 'sharan.ss@somaiya.edu', 'PA2E1T1W', 'Electronics & Telecommunication'),
(272, 'Shindolkar  Tanmay ', 't.shindolkar@somaiya.edu', 'ZKH5HBWJ', 'Electronics & Telecommunication'),
(273, 'Singh  Abhinav ', 'abhinav.ss@somaiya.edu', 'BSJQDG4G', 'Electronics & Telecommunication'),
(274, 'Singh  Manishakumari ', 'manisha.singh@somaiya.edu', 'YH501FNW', 'Electronics & Telecommunication'),
(275, 'Singh  Rishabh ', 'rishabh26@somaiya.edu', '9WX1NGIK', 'Electronics & Telecommunication'),
(276, 'Singh  Ruchika ', 'ruchika.ss@somaiya.edu', 'W8N8NRI5', 'Electronics & Telecommunication'),
(277, 'Solanki  Siddhi ', 'siddhi.ms@somaiya.edu', 'MUJCPAV4', 'Electronics & Telecommunication'),
(278, 'Tawte  Aadesh ', 'aadesh.tawte@somaiya.edu', '73ISJPKW', 'Electronics & Telecommunication'),
(279, 'Thakur  Niranjan ', 'niranjan.t@somaiya.edu', 'I9KONO6T', 'Electronics & Telecommunication'),
(280, 'Tripathi  Anand ', 'anand.tripathi@somaiya.edu', '0XF90ZHU', 'Electronics & Telecommunication'),
(281, 'Upadhyay  Jairaj ', 'jairaj.u@somaiya.edu', 'Z1XK55J8', 'Electronics & Telecommunication'),
(282, 'Vaghasiya  Kinjal ', 'kinjal.vaghasiya@somaiya.edu', 'J79I7C36', 'Electronics & Telecommunication'),
(283, 'Waghela  Vanshika ', 'vanshika.w@somaiya.edu', '41V8EVP2', 'Electronics & Telecommunication'),
(284, 'Akhade  Rahul ', 'rahul.akhade@somaiya.edu', 'LH4CNISD', 'Electronics & Telecommunication'),
(285, 'Badadale  Omkar ', 'omkar.badadale@somaiya.edu', 'B9CQCUQA', 'Electronics & Telecommunication'),
(286, 'Bhosle  Shrutika ', 'shrutika.bhosle@somaiya.edu', '9NBO2EUL', 'Electronics & Telecommunication'),
(287, 'Chaurasia  Sanyam ', 'sanyam.c@somaiya.edu', '3NDE8KIC', 'Electronics & Telecommunication'),
(288, 'Chawhan  Jill ', 'jill.chawhan@somaiya.edu', '97NDKILL', 'Electronics & Telecommunication'),
(289, 'Dhanorkar  Arya ', 'arya.d@somaiya.edu', 'MY96UL1P', 'Electronics & Telecommunication'),
(290, 'Dubaria  Gautam ', 'gautam.d@somaiya.edu', 'B83OX4RT', 'Electronics & Telecommunication'),
(291, 'Ghadge  Darshan ', 'darshan.ghadge@somaiya.edu', 'SG6VPBNR', 'Electronics & Telecommunication'),
(292, 'Hembade  Priyanka ', 'priyanka.hembade@somaiya.edu', 'BGVWMRTH', 'Electronics & Telecommunication'),
(293, 'Jadhav  Samarth ', 'samarth.j@somaiya.edu', 'JBEMN01V', 'Electronics & Telecommunication'),
(294, 'Jaiswal  Aniket ', 'aj1@somaiya.edu', 'JSV7SLBL', 'Electronics & Telecommunication'),
(295, 'Joisar  Bhavin ', 'bhavin.joisar@somaiya.edu', 'O3SAZ6NM', 'Electronics & Telecommunication'),
(296, 'Kanorwala  Burhanuddin ', 'burhan.k@somaiya.edu', 'OMN3AAOR', 'Electronics & Telecommunication'),
(297, 'Karol  Mohammed ', 'mohammedsaad.k@somaiya.edu', '5K8M2ST3', 'Electronics & Telecommunication'),
(298, 'Mehta  Viren ', 'viren.jm@somaiya.edu', 'IPGDCHKQ', 'Electronics & Telecommunication'),
(299, 'Mistry  Shubh ', 'shubh.mistry@somaiya.edu', 'JZINMOE9', 'Electronics & Telecommunication'),
(300, 'Modi  Dhiren ', 'dhiren.hm@somaiya.edu', 'NKDZKOTJ', 'Electronics & Telecommunication'),
(301, 'Nahar  Zeel ', 'zeel.nahar@somaiya.edu', '3VJE6QK9', 'Electronics & Telecommunication'),
(302, 'Panchal  Nilesh ', 'nilesh.panchal@somaiya.edu', 'FMBQEA56', 'Electronics & Telecommunication'),
(303, 'Panigrahi  Puja ', 'puja.p@somaiya.edu', 'AFPYAHAX', 'Electronics & Telecommunication'),
(304, 'Rajgor  Rajeev ', 'rajeev.rajgor@somaiya.edu', 'P6L8GTR5', 'Electronics & Telecommunication'),
(305, 'Sawant  Sumit ', 'sumit.sawant@somaiya.edu', 'OIMFID66', 'Electronics & Telecommunication'),
(306, 'Shah  Krutik ', 'krutik.shah@somaiya.edu', 'QT8K87YN', 'Electronics & Telecommunication'),
(307, 'Shahu  Abhishek ', 'abhishek.shahu@somaiya.edu', '64PBRQW1', 'Electronics & Telecommunication'),
(308, 'Soni  Pratham ', 'pratham.soni@somaiya.edu', 'RU4V39LI', 'Electronics & Telecommunication'),
(309, 'Tanna  Hitakshi ', 'hitakshi.tanna@somaiya.edu', 'Y4RUM5PD', 'Electronics & Telecommunication'),
(310, 'Ved  Mitali ', 'mitali.ved@somaiya.edu', '2TQWP6SP', 'Electronics & Telecommunication'),
(311, 'Verma  Omkar ', 'omkar.verma@somaiya.edu', '0F21YFCH', 'Electronics & Telecommunication'),
(312, 'Yadav  Shashank ', 'shashank.y@somaiya.edu', 'BMW3UIXA', 'Electronics & Telecommunication'),
(313, 'Yadav  Vishwas ', 'vishwas.y@somaiya.edu', 'PZJJ13DB', 'Electronics & Telecommunication'),
(314, 'Chopra  Pooja ', 'pooja.chopra@somaiya.edu', '78WTD38R', 'Electronics & Telecommunication'),
(315, 'Choudhary  Pradeep ', 'pradeep.pc@somaiya.edu', 'MOCTBPGJ', 'Electronics & Telecommunication'),
(316, 'Dubey  Tushar ', 't.dubey@somaiya.edu', '1KOLGOZZ', 'Electronics & Telecommunication'),
(317, 'Hansora  Jeet ', 'jeet.hansora@somaiya.edu', 'NNZ0FA2V', 'Electronics & Telecommunication'),
(318, 'Harsora  Hardik ', 'hardik.harsora@somaiya.edu', '92ZFB5JV', 'Electronics & Telecommunication'),
(319, 'Indalkar  Sanvid ', 'sanvid.i@somaiya.edu', '32AFNTRG', 'Electronics & Telecommunication'),
(320, 'Jadhav  Amey ', 'amey.dj@somaiya.edu', '4BV9JTCS', 'Electronics & Telecommunication'),
(321, 'Jadhav  Krutika ', 'krutika.kj@somaiya.edu', '0E0MFZ21', 'Electronics & Telecommunication'),
(322, 'Jalaja  Arjun ', 'arjun.ashok@somaiya.edu', 'T2DKGZ6X', 'Electronics & Telecommunication'),
(323, 'Jathar  Pritam ', 'pritam.jathar@somaiya.edu', 'LQ21T9S5', 'Electronics & Telecommunication'),
(324, 'Joshi  Hrithik ', 'hrithik.joshi@somaiya.edu', 'M5931X47', 'Electronics & Telecommunication'),
(325, 'Kadam  Mahesh ', 'mahesh.gk@somaiya.edu', '4SSG0A3L', 'Electronics & Telecommunication'),
(326, 'Kariya  Sahil ', 'sahil.kariya@somaiya.edu', '7HS9DSY2', 'Electronics & Telecommunication'),
(327, 'Kaul  Kanwal ', 'kanwal.kaul@somaiya.edu', 'KF7SCIGG', 'Electronics & Telecommunication'),
(328, 'Kelshikar  Mansi ', 'mansi.kelshikar@somaiya.edu', 'ZD0CYYFV', 'Electronics & Telecommunication'),
(329, 'Khatri  Yash ', 'yash.khatri@somaiya.edu', 'V9MIY856', 'Electronics & Telecommunication'),
(330, 'Kirpan  Vishal ', 'vishal.kirpan@somaiya.edu', 'UQ6VNP5K', 'Electronics & Telecommunication'),
(331, 'Kokate  Rutuja ', 'r.kokate@somaiya.edu', 'Z4WT0W4O', 'Electronics & Telecommunication'),
(332, 'Kosambiya  Vicky ', 'vicky.k@somaiya.edu', 'OJIQK3ME', 'Electronics & Telecommunication'),
(333, 'Kotak  Aditya ', 'aditya.kotak@somaiya.edu', '2B9GTQQ2', 'Electronics & Telecommunication'),
(334, 'Kothari  Siddharth ', 'siddharth.kk@somaiya.edu', '45KM5X7N', 'Electronics & Telecommunication'),
(335, 'Kulkarni  Himanshu ', 'himanshu.nk@somaiya.edu', 'IND4P7VN', 'Electronics & Telecommunication'),
(336, 'Kulkarni  Sharvari ', 'sharvari.ak@somaiya.edu', 'BRIN2UZ8', 'Electronics & Telecommunication'),
(337, 'Kumtakar  Aman ', 'a.kumtakar@somaiya.edu', 'ESF5RJTB', 'Electronics & Telecommunication'),
(338, 'Mahajan  Darshan ', 'darshan.mahajan@somaiya.edu', 'CEDLYXMG', 'Electronics & Telecommunication'),
(339, 'Mahajan  Omkar ', 'omkar.mahajan@somaiya.edu', 'MOOEL739', 'Electronics & Telecommunication'),
(340, 'Mandaviya  Chirag ', 'chirag.mandaviya@somaiya.edu', 'UZ3EZBOM', 'Electronics & Telecommunication'),
(341, 'Mayekar  Pratham ', 'pratham.mayekar@somaiya.edu', '5OGIAUJQ', 'Electronics & Telecommunication'),
(342, 'Meherkar  Pranil ', 'pranil.m@somaiya.edu', '95O0PWGC', 'Electronics & Telecommunication'),
(343, 'Mehta  Dhairya ', 'dhairya.jm@somaiya.edu', 'YBJ88L97', 'Electronics & Telecommunication'),
(344, 'Mistry  Yash ', 'mistry.yh@somaiya.edu', 'VCC8A4ZW', 'Electronics & Telecommunication'),
(345, 'Miyajiwala  Mufaddal ', 'm.miyajiwala@somaiya.edu', '7NKIXGBQ', 'Electronics & Telecommunication'),
(346, 'Mohanty  Aryan ', 'aryan.mohanty@somaiya.edu', 'E8MX536W', 'Electronics & Telecommunication'),
(347, 'Mukherjee  Rajshekhar ', 'rajshekhar.m@somaiya.edu', 'IR1FZV5C', 'Electronics & Telecommunication'),
(348, 'Patel  Hemangi ', 'hemangi.np@somaiya.edu', 'C82Q3LC3', 'Electronics & Telecommunication'),
(349, 'Patel  Hemanshu ', 'hemanshu.patel@somaiya.edu', 'OMEO9SNO', 'Electronics & Telecommunication'),
(350, 'Patel  Jinal ', 'jinal.patel1@somaiya.edu', 'UC945NHO', 'Electronics & Telecommunication'),
(351, 'Patil  Pritamsing ', 'pritamsing.p@somaiya.edu', 'LGBE7WYD', 'Electronics & Telecommunication'),
(352, 'Sanjeev Swaminathan', 'sanjeev.s@somaiya.edu', 'ICP0WZEO', 'Electronics & Telecommunication'),
(353, 'Shinde   Vishal  ', 'shinde.vs@somaiya.edu', '017YAY17', 'Electronics & Telecommunication'),
(354, 'Shirsat  Damodar ', 'damodar.s@somaiya.edu', 'XCMU6Q54', 'Electronics & Telecommunication'),
(355, 'Yeole  Pratik ', 'p.yeole@somaiya.edu', 'N93N4ZHV', 'Electronics & Telecommunication'),
(356, 'ADITHI MANOJ KUMAR SMITHA', 'adithi.m@somaiya.edu', 'SY7VZ5P4', 'Electronics'),
(357, 'ANAVKAR MAYURESH SHYAMSUNDAR ARCHANA', 'mayuresh.anavkar@somaiya.edu', 'A6EH8PLG', 'Electronics'),
(358, 'BARDIYA AYUSHI NAVIN VANDANA', 'ayushi.bardiya@somaiya.edu', 'BA0JPUMX', 'Electronics'),
(359, 'BAVISKAR NEHA DEVRAM NIRMALA', 'neha.baviskar@somaiya.edu', 'KM61091P', 'Electronics'),
(360, 'BELEKAR SACHIN NAMDEV NAMITA', 'sachin.belekar@somaiya.edu', 'QQ0LC1I5', 'Electronics'),
(361, 'BHOSALE JATIN KISHOR KIRTI', 'jatin.bhosale@somaiya.edu', '7KCHKDS4', 'Electronics'),
(362, 'BISRA KRUTIN KUNAL SEJAL', 'krutin.bisra@somaiya.edu', 'EIL1RW5G', 'Electronics'),
(363, 'BORKHEDE BANDU HANUMANT RUKMINI', 'bandu.b@somaiya.edu', 'Y5BXNR6B', 'Electronics'),
(364, 'CHAURASIYA ANUP DHARMENDRA NISHA', 'anup.c@somaiya.edu', 'OE8GQ755', 'Electronics'),
(365, 'CHAWDA MUKESH DINESH UMA', 'mukesh.chawda@somaiya.edu', 'CL7KCT89', 'Electronics'),
(366, 'DALVI CHINMAY ANANTVILAS ASHWINI', 'chinmay.dalvi@somaiya.edu', 'HWM37JY8', 'Electronics'),
(367, 'DAVANE YOGESH HARESHWAR HEMA', 'yogesh.davane@somaiya.edu', 'LOFMANDO', 'Electronics'),
(368, 'DESAI MANAN MANISH AARTI ', 'manan.md@somaiya.edu', 'U8JEOSH2', 'Electronics'),
(369, 'DESAI ROHIT RAMESH SAROJINI', 'rohit.desai@somaiya.edu', 'UOCZ22QJ', 'Electronics'),
(370, 'DHUMAL SHRADDHA LAXMAN SUNITA', 'shraddha.dhumal@somaiya.edu', 'BBTL1YXU', 'Electronics'),
(371, 'DHUTRAJ DHANANJAY GANGADHAR SUNITA', 'd.dhutraj@somaiya.edu', '6QEDHQ8R', 'Electronics'),
(372, 'DIKONDA MAYUR JAGDISH HEMALATA', 'mayur.dikonda@somaiya.edu', 'XSSGKWOF', 'Electronics'),
(373, 'DONGRE RASHMI SANJAY VARSHA', 'rashmi.dongre@somaiya.edu', 'OWI5MOEI', 'Electronics'),
(374, 'GAIKAR ANGAD PANDURANG VIMAL', 'angad.gaikar@somaiya.edu', 'K7RIU9DK', 'Electronics'),
(375, 'GAIKWAD ASHWINI ARUN VANDANA', 'gaikwad.arun@somaiya.edu', 'EA132HHM', 'Electronics'),
(376, 'GHADGE DISHA PANDURANG VAISHALI', 'disha.ghadge@somaiya.edu', 'I3ZZFLN8', 'Electronics'),
(377, 'GHADI RAJ PRADIP PRIYA', 'r.ghadi@somaiya.edu', '2VQ9IPOY', 'Electronics'),
(378, 'GHATAGE YAGNESH MANDAR SHWETA', 'yagnesh.ghatage@somaiya.edu', 'WPRKW715', 'Electronics'),
(379, 'GOKHALE SHLOK MANOJ MANISHA', 'shlok.g@somaiya.edu', 'MILW51FP', 'Electronics'),
(380, 'GAIKWAD RUCHIR SUMEDH SNEHA', 'ruchir.g@somaiya.edu', '4A0XAUYO', 'Electronics'),
(381, 'GOWDA ADITYA SWAMI MAYA', 'aditya.gowda@somaiya.edu', 'FQ319N1C', 'Electronics'),
(382, 'GUND ABHISHEK MANGESH SUNITA', 'abhishek.gund@somaiya.edu', 'MQ0ICWYA', 'Electronics'),
(383, 'GUPTA OMINI PAWAN LEENA', 'omini.gupta@somaiya.edu', 'BONYS4ZL', 'Electronics'),
(384, 'GUPTA RAMJI UMESHCHANDRA SHEELA', 'ramji.gupta@somaiya.edu', 'WUZA0UHV', 'Electronics'),
(385, 'HATE SUSHMITA SUHAS  SUSHAMA ', 'sushmita.hate@somaiya.edu', 'M4DA7L2Z', 'Electronics'),
(386, 'HAWALDAR OMKAR DEEPAK KIRTIMALA', 'omkar.h@somaiya.edu', 'IS0TUH71', 'Electronics'),
(387, 'INGLE NAYAN VIJAYKUMAR MINAKSHI', 'nayan.ingle@somaiya.edu', '4O77HV3I', 'Electronics'),
(388, 'JADHAV ABHISHEK DEEPAK JYOTI', 'abhishek.dj@somaiya.edu', 'Q1PFJTHF', 'Electronics'),
(389, 'JAIN VARSHIL BHAVESH MANISHA', 'varshil.j@somaiya.edu', 'IS7QRQVA', 'Electronics'),
(390, 'JANGAM ANUJ SATISH NANDA', 'anuj.jangam@somaiya.edu', 'MULSB9JB', 'Electronics'),
(391, 'KADAM OMKAR VIJAY VAISHALI', 'omkar.vk@somaiya.edu', 'GFPTL7JI', 'Electronics'),
(392, 'KALE PRANALI PARESH MEGHA', 'pranali.pk@somaiya.edu', 'IKCE9WCM', 'Electronics'),
(393, 'KARIA ADITYA JAYESH PALLAVI', 'aditya.karia@somaiya.edu', 'V85Z30IY', 'Electronics'),
(394, 'KARNIK SHUBHAM ANAND ANAGHA', 'shubham.karnik@somaiya.edu', '3BWEZBIY', 'Electronics'),
(395, 'KHAN ANSAF ZAHIRUDDIN REHANA', 'ansaf.khan@somaiya.edu', '7456AO0T', 'Electronics'),
(396, 'KHAN SHAHID MASI ZARINA', 'shahid.mk@somaiya.edu', 'NCSUXXAW', 'Electronics'),
(397, 'KUMAR ANKIT RAMAN HEENA', 'ankit.rk@somaiya.edu', 'ES3U0DZI', 'Electronics'),
(398, 'KUMAR SHUBHAM NIRAJ BHARTI', 'shubham.nk@somaiya.edu', 'FRBSAA5E', 'Electronics'),
(399, 'KUMBHAR SACHIN BABU ASHA', 'sachin.kumbhar@somaiya.edu', 'WLMP05ZX', 'Electronics'),
(400, 'KUNDER KAVYA JANARDHAN VINITA', 'kavya.kunder@somaiya.edu', 'I895ALQ8', 'Electronics'),
(401, 'LOT MAHADEV PANDURANG PRIYANKA', 'mahadev.lot@somaiya.edu', 'FFI1D4ZQ', 'Electronics'),
(402, 'MAHALLE SUMEDHA SANJAY JYOTI', 'sumedha.m@somaiya.edu', 'HYO95EQF', 'Electronics'),
(403, 'MAJALKAR VEDSHRI VIJAY VIDYA', 'vedshri.m@somaiya.edu', 'E0D3NY8O', 'Electronics'),
(404, 'MALIK ZAID ARIF FAJRA', 'zaid.malik@somaiya.edu', '969PVNMO', 'Electronics'),
(405, 'NIKAM VISHAKHA VIJAY LATA', 'v.nikam@somaiya.edu', '7J2LAK9K', 'Electronics'),
(406, 'PABE OMKAR ASHOK ANUJA', 'pabe.ashok@somaiya.edu', 'AABRWZW9', 'Electronics'),
(407, 'PAGARKAR MOHD FURQAN MUSTAKIM ASGARI', 'mohdfurqan.p@somaiya.edu', 'D6GYOLZX', 'Electronics'),
(408, 'PANCHAL PREETI VILAS PALLAVI', 'preeti.vp@somaiya.edu', 'QLJVBDIE', 'Electronics'),
(409, 'PANDE AJAY VINOD BINDU', 'ajay.pande@somaiya.edu', 'PKMAD7FR', 'Electronics'),
(410, 'PANDEY SHIVANSHU SANJAY MANPURNA', 'shivanshu.pandey@somaiya.edu', 'GPMGNC72', 'Electronics'),
(411, 'PARIKH MEET KEYUR VIRAJ', 'meet.kp@somaiya.edu', 'JCE9Q1M2', 'Electronics'),
(412, 'PASHTE AKSHAY BHAI ASMITA', 'akshay.pashte@somaiya.edu', 'A4BGRRHO', 'Electronics'),
(413, 'PATIL SAHEEL SHYAM SANGITA', 'saheel.patil@somaiya.edu', 'CB2FLDQ4', 'Electronics'),
(414, 'PATIL SHREJAY RAJESH BHARTI', 'shrejay.p@somaiya.edu', '1KTLHALI', 'Electronics'),
(415, 'PATIL YUKTA DEVIDAS CHARUTA ', 'yukta.p@somaiya.edu', 'NJPN3GKQ', 'Electronics'),
(416, 'PAWAR TEJAS DILIP DIPALI', 'tejas.dp@somaiya.edu', '19ZVLE1S', 'Electronics'),
(417, 'POTNIS CHINMAY CHANDRASHEKHAR SWATI', 'chinmay.potnis@somaiya.edu', 'PALXDYF8', 'Electronics'),
(418, 'RAI SATYAM SWADESH USHA', 'satyam.r@somaiya.edu', '43J23LNP', 'Electronics'),
(419, 'RAUT TUSHAR SANJAY SHILPA', 'raut.sanjay@somaiya.edu', 'U5KE20TO', 'Electronics'),
(420, 'REDEKAR PRANAY PRAVIN VIMAL', 'pranay.redekar@somaiya.edu', 'DP3INLHM', 'Electronics'),
(421, 'SABLE SIDDHANT DEEPAK NEETA', 'siddhant.sable@somaiya.edu', 'DJ2Z9YV5', 'Electronics'),
(422, 'SALIAN DHERAN NAVEEN RAMITHA', 'dheran.s@somaiya.edu', '1N2RBKRZ', 'Electronics'),
(423, 'SAMAL OMKAR NARENDRA SHASHIKALA', 'omkar.samal@somaiya.edu', 'V0P3FRQA', 'Electronics'),
(424, 'SARAVADE KIRAN PRAKASH SUREKHA', 'kiran.saravade@somaiya.edu', 'J8S1614J', 'Electronics'),
(425, 'SAWANT DURVANKUR TUKARAM AKSHATA', 'durvankur.s@somaiya.edu', '5AKGJ5GC', 'Electronics'),
(426, 'SAWANT TANMAY GAJANAN PRANITA', 'tanmay.gs@somaiya.edu', 'SO9XEJNG', 'Electronics'),
(427, 'SAWOOL PRASAD SABAJI SAYALI ', 'prasad.sawool@somaiya.edu', '3CUTZURH', 'Electronics'),
(428, 'SHAH MITALI HITANSHU BHAVANA ', 'mitali.shah@somaiya.edu', '1IKR9QQ2', 'Electronics'),
(429, 'SHETTY PRATIK PRATAP JAYSHREE', 'pps7@somaiya.edu', '22BLCMCO', 'Electronics'),
(430, 'SHETTY RAKSHIT UMESH JYOTHI', 'rakshit.shetty@somaiya.edu', 'XESFKM0K', 'Electronics'),
(431, 'SINGH PRASHANT DHARMENDRA PARMILA', 'singh.pd@somaiya.edu', 'F1JOLKJD', 'Electronics'),
(432, 'SINGH SHASHWATI SHAILENDRA KUMAR RATNA ', 'shashwati.s@somaiya.edu', '7LIUWY54', 'Electronics'),
(433, 'SOLANKI MIHIR JAGDISH MEETA', 'solanki.mj@somaiya.edu', '3T71G3FA', 'Electronics'),
(434, 'SUTARIYA YASH KAMLESH NEETA ', 'yash.sutariya@somaiya.edu', 'XTA1K8W7', 'Electronics'),
(435, 'TARI PRANAV PRAMOD PRANJAL ', 'pranav.tari@somaiya.edu', 'IA1JVDHE', 'Electronics'),
(436, 'TIWARI ASHISH KANTILAL ASHA', 'ashish.kt@somaiya.edu', 'MS2V7JJC', 'Electronics'),
(437, 'UPADE KAUSTUBH MANOHAR VANITA', 'kaustubh.u@somaiya.edu', 'V7M3TG9H', 'Electronics'),
(438, 'YADAV OMKAR DEVENDRA SUNITA', 'omkar.dy@somaiya.edu', 'N2CWSYRZ', 'Electronics'),
(439, 'YAMGAR SUNITA DADASO MANGAL', 'sunita.yamgar@somaiya.edu', '65TDJFJS', 'Electronics'),
(440, 'Jeet Bhanushali', 'jkb2@somaiya.edu', 'POSEOQFP', 'Information Technology'),
(441, 'Tejas', 'tejas.chaplot@somaiya.edu', '8O2BXZOC', 'Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `tnp_admin_admin`
--

CREATE TABLE `tnp_admin_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tnp_admin_admin`
--

INSERT INTO `tnp_admin_admin` (`id`, `name`, `username`, `password`, `dept`, `role`, `admin_type`) VALUES
(1, 'Tnpadmin', 'tnpadmin@somaiya.edu', 'tnpadmin@123', 'PIMS', 'Super', 'Super'),
(2, 'tejas', 'tejas@somaiya.edu', 'HTS1L11T', 'Information Technology', 'TNP Admin', 'Information Technology'),
(3, 'adnan', 'adnan@somaiya.edu', 'GU56R6RF', 'Computer', 'TNP Admin', 'Computer'),
(8, 'Jeet Bhanushali', 'jkb2@somaiya.edu', 'NBLA41I4', 'Electronics & Telecommunication', 'TNP Admin', 'Electronics & Telecommunication'),
(9, 'Prof. Rashmi Adatkar', 'rashmi@somaiya.edu', 'ZNAZP5PG', 'Electronics & Telecommunication', 'TNP Admin', 'Electronics & Telecommunication'),
(10, 'Prof.Rupali Advirkar', 'radvirkar@somaiya.edu', 'UAIR4LTW', 'Electronics & Telecommunication', 'TNP Admin', 'Electronics & Telecommunication'),
(11, 'Prof. Medha Asurlekar', 'medha@somaiya.edu', 'DIREDP4W', 'Electronics', 'TNP Admin', 'Electronics'),
(12, 'Prof. Jignasha Dalal', 'jignasha@somaiya.edu', 'EALPR330', 'Computer', 'TNP Admin', 'Computer'),
(13, 'Prof. Sarita Rathod', 'sarita.r@somaiya.edu', 'M12GH8NS', 'Information Technology', 'TNP Admin', 'Information Technology'),
(14, 'Prof. Vijaya Pinjarkar', 'vkhirodkar@somaiya.edu', 'INI6E02U', 'Information Technology', 'TNP Admin', 'Information Technology'),
(15, 'Mandar Bivalkar', 'mbivalkar@somaiya.edu', 'HTKSQRY3', 'Computer', 'TNP Admin', 'Computer');

-- --------------------------------------------------------

--
-- Table structure for table `tnp_admin_company`
--

CREATE TABLE `tnp_admin_company` (
  `id` int(11) NOT NULL,
  `comp_name` varchar(100) NOT NULL,
  `comp_profile` varchar(100) NOT NULL,
  `ctc` int(11) NOT NULL,
  `eligibility` double NOT NULL,
  `bond` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `venue` longtext NOT NULL,
  `branch` varchar(100) NOT NULL,
  `instruction` varchar(200) NOT NULL,
  `campus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tnp_admin_company`
--

INSERT INTO `tnp_admin_company` (`id`, `comp_name`, `comp_profile`, `ctc`, `eligibility`, `bond`, `date`, `time`, `venue`, `branch`, `instruction`, `campus`) VALUES
(2, 'Info Edge', 'Software Engineer', 1450000, 60, '1', '2022-01-26', '13:00:00.000000', 'off-campus', 'Information Technology', ' Software Development team is critical to the sucess of Info Edge. Here, you will use the latest software development tools, techniques and approaches and work with leading minds in the industry to bu', 'Pool'),
(6, 'Tcs', 'Tcs nqt', 450000, 80, '1 year', '2022-08-06', '02:22:00.000000', 'on campus', 'Information Technology', '---', 'Pool');

-- --------------------------------------------------------

--
-- Table structure for table `tnp_admin_mailresponse`
--

CREATE TABLE `tnp_admin_mailresponse` (
  `id` int(11) NOT NULL,
  `comp_name` varchar(100) NOT NULL,
  `stud_user` varchar(100) NOT NULL,
  `token` varchar(200) NOT NULL,
  `stud_response` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tnp_admin_mailresponse`
--

INSERT INTO `tnp_admin_mailresponse` (`id`, `comp_name`, `stud_user`, `token`, `stud_response`, `time`) VALUES
(1, 'Capgemini', 'jay23@somaiya.edu', 'Q1Wut4rUWACpMYXwKZPU9w', '0', '2021-09-21 12:08:44.157019'),
(2, 'Capgemini', 'jay23@somaiya.edu', 'DfF_Gd__QR-MdpZbqQtXXA', '0', '2021-09-21 12:15:26.907930'),
(3, 'Capgemini', 'jay23@somaiya.edu', 'z6yYjAMiK5obv6R8K8vhZw', '0', '2021-09-21 12:17:07.846625'),
(4, 'Capgemini', 'jay23@somaiya.edu', 'TPGjlqCa_g6a0dZ6igpnDQ', '0', '2021-09-21 12:19:31.874216'),
(5, 'Capgemini', 'jay23@somaiya.edu', 'zVMQ0k90WYPtt5i7RNMEAw', '0', '2021-09-21 12:30:30.604852'),
(6, 'Capgemini', 'jay23@somaiya.edu', '2t0UvubSOCFNTNi0vznSiQ', '0', '2021-09-21 12:31:55.927139'),
(7, 'Capgemini', 'jay23@somaiya.edu', 'tIdDsPpJl68jPi6U8bFGdA', '0', '2021-09-21 12:41:14.604233'),
(8, 'AWS', 'jay23@somaiya.edu', 'O3cikHzvFOsq_NiG09Z3wg', '0', '2021-09-21 12:42:57.738936'),
(9, 'Capgemini', 'tejas.chaplot@somaiya.edu', 'lSCw5K5UUAxHqBgScbXeBg', '0', '2021-09-21 13:31:53.658698'),
(10, 'Info Edge', 'jay23@somaiya.edu', 'k-P-nFqTHwRWqfKBEs35RQ', '0', '2022-01-17 13:55:06.863758'),
(11, 'Info Edge', 'patel.yn@somaiya.edu', 'FyriXFlB33eYuE0FpW0Nrg', '0', '2022-01-17 13:55:06.872186'),
(12, 'Info Edge', 'harsita.mav@somaiya.edu', 'WBVIvtwZo-vltVNkbhRiDg', '0', '2022-01-17 13:55:06.878667'),
(13, 'Info Edge', 'panchal.dh@somaiya.edu', 'KUNCOwE5oSmLg1x6cNjwEA', '0', '2022-01-17 13:55:06.885035'),
(14, 'Info Edge', 'dakshit.v@somaiya.edu', 'gxuv4xXBjTmVigXpfr2WBA', '0', '2022-01-17 13:55:06.891449'),
(15, 'Info Edge', 'akash.ry@somaiya.edu', 'igkmoXBoOUV_r63HpKHTSg', '0', '2022-01-17 13:55:06.897232'),
(16, 'Info Edge', 'srinath.n@somaiya.edu', 'n7WJMYeKO6bJa_gNR-Yw0Q', '0', '2022-01-17 13:55:06.902927'),
(17, 'Info Edge', 'manashree.j@somaiya.edu', 'dOQ5LYblrzgXV_OjZ0ExAA', '0', '2022-01-17 13:55:06.908656'),
(18, 'Info Edge', 'mustansir.k@somaiya.edu', 'XFdal83NSTWbGSaphlvqzA', '0', '2022-01-17 13:55:06.914335'),
(19, 'Info Edge', 'a.somavanshi@somaiya.edu', 'Xw50Xvt9qC8K_KZBXg6YSw', '0', '2022-01-17 13:55:06.920580'),
(20, 'Info Edge', 'dharita.d@somaiya.edu', 'L5BHs-mKQWNfYdqAI3fYhA', '0', '2022-01-17 13:55:06.926310'),
(21, 'Info Edge', 'jaideep.more@somaiya.edu', 'AwNCCbYTHR6BzVBtrGSGEw', '0', '2022-01-17 13:55:06.932053'),
(22, 'Info Edge', 'bhavya.mistry@somaiya.edu', 'vZh-cHghyeMJScg-66F4xA', '0', '2022-01-17 13:55:06.938707'),
(23, 'Info Edge', 'saloni.patadia@somaiya.edu', 'YIMY3uE5cWZVScB9ZkdSiA', '0', '2022-01-17 13:55:06.945952'),
(24, 'Info Edge', 'vedant.kokate@somaiya.edu', 'H5roY8aRb6h5DcQCpMelMA', '0', '2022-01-17 13:55:06.952141'),
(25, 'Info Edge', 'harsh.chudasama@somaiya.edu', '8F-zecaZKVvNYTjPvKNFoQ', '0', '2022-01-17 13:55:06.958121'),
(26, 'Info Edge', 'mitali.patil@somaiya.edu', 'UtyRsc8rt0HVCsk-SAELog', '0', '2022-01-17 13:55:06.963704'),
(27, 'Info Edge', 'keshav.sm@somaiya.edu', 'TCsYmNdqzLIalMSpsLfXDw', '0', '2022-01-17 13:55:06.969598'),
(28, 'Info Edge', 'krutika.bhalla@somaiya.edu', 'CcfUQPwzleBPSqmYyY70ng', '0', '2022-01-17 13:55:06.975531'),
(29, 'Info Edge', 'gala.av@somaiya.edu ', 'a9OIFmQWCMCY3NpTLUpiLw', '0', '2022-01-17 13:55:06.981030'),
(30, 'Info Edge', 'h.mandaliya@somaiya.edu', '3U9J1SaT90q38n90SbJTxQ', '0', '2022-01-17 13:55:06.986951'),
(31, 'Info Edge', 'aneesh.m@somaiya.edu', 'jQsrPGwJgLz52mDFaJ3yaQ', '0', '2022-01-17 13:55:06.992449'),
(32, 'Info Edge', 'gitika.jha@somaiya.edu', 'DjDcJtPhkPv731IXIGAICg', '0', '2022-01-17 13:55:06.998212'),
(33, 'Info Edge', 'aayushi.bhimani@somaiya.edu', 'VbSdtiHXTaps7hG5VPHhow', '0', '2022-01-17 13:55:07.003695'),
(34, 'Info Edge', 'prajwal.ps@somaiya.edu', '23fq3CPyAbg8sX_XmAQCGg', '0', '2022-01-17 13:55:07.009168'),
(35, 'Info Edge', 'jaydeep.patel@somaiya.edu', 't1VSStjOAv-iSeR37bK5Hg', '0', '2022-01-17 13:55:07.014646'),
(36, 'Info Edge', 'shruti.dharap@somaiya.edu', '5QRBirFJQR2yth2gnDGM7w', '0', '2022-01-17 13:55:07.020145'),
(37, 'Info Edge', 'arghyadeep.k@somaiya.edu', 'u_4zvN4amsow6Z--gcWpNw', '0', '2022-01-17 13:55:07.025618'),
(38, 'Info Edge', 'jbg@somaiya.edu', 'EypsDtgQk3XcH7douuUYmA', '0', '2022-01-17 13:55:07.031101'),
(39, 'Info Edge', 'snehal.bamane@somaiya.edu', 'I3JnpqsQCrSsmpPMCI7tig', '0', '2022-01-17 13:55:07.036759'),
(40, 'Info Edge', 'vinodsingh.r@somaiya.edu', 'vREfBo2-HRrYi3GpzgaHMA', '0', '2022-01-17 13:55:07.042266'),
(41, 'Info Edge', 'tirth.vs@somaiya.edu', '_j3FmE9Q_a3bp4W7qOoMew', '0', '2022-01-17 13:55:07.047750'),
(42, 'Info Edge', 'amankumar.sahu@somaiya.edu', 'ksZDRY7cVfMkNbSWg1QAxw', '0', '2022-01-17 13:55:07.053230'),
(43, 'Info Edge', 'krish.desai@somaiya.edu', 'QNf9WkBYBJp-tbA99gcgAg', '0', '2022-01-17 13:55:07.058693'),
(44, 'Info Edge', 'dhruv.ghori@somaiya.edu', 'IVqIlw9rBQW04zuIgB_qxQ', '0', '2022-01-17 13:55:07.064173'),
(45, 'Info Edge', 'adnaan.l@somaiya.edu', 'REC2dvqYuLK8VjaStPIyPA', '0', '2022-01-17 13:55:07.069633'),
(46, 'Info Edge', 'svt@somaiya.edu', '2CrjtD8-9hTQtcA7G2mpgg', '0', '2022-01-17 13:55:07.075112'),
(47, 'Info Edge', 'prachi.harwara@somaiya.edu', 'L2N95PuUfSYDdJ2gUWdBGA', '0', '2022-01-17 13:55:07.080629'),
(48, 'Info Edge', 'ymb1@somaiya.edu', 'JBWgTkzTwmaHga7DQuRCCQ', '0', '2022-01-17 13:55:07.086151'),
(49, 'Info Edge', 'harsh.vador@somaiya.edu', 'ws_BwrlAVQUmtib7eYZ1Tw', '0', '2022-01-17 13:55:07.091625'),
(50, 'Info Edge', 'harshita.sm@somaiya.edu', 'UvBZxH5goMFCIwPSyZxTyw', '0', '2022-01-17 13:55:07.097157'),
(51, 'Info Edge', 'arjun.pitroda@somaiya.edu', 'Mkrk_GlhmU5BupULc94O9g', '0', '2022-01-17 13:55:07.102623'),
(52, 'Info Edge', 'jini.b@somaiya.edu', 'VUT7XMLYuxGZDMZCIErQaw', '0', '2022-01-17 13:55:07.108101'),
(53, 'Info Edge', 'uddish.dhar@somaiya.edu', 'sQdDzWgUFLrfZxF01XR4pA', '0', '2022-01-17 13:55:07.113566'),
(54, 'Info Edge', 'a.prabhudesai@somaiya.edu', '5kO61YPeQ2ES7Od_YggrOA', '1', '2022-01-17 13:55:07.119038'),
(55, 'Info Edge', 's.moundekar@somaiya.edu', 'r9_scZv92BJS8sDorkY1Mg', '0', '2022-01-17 13:55:07.124505'),
(56, 'Info Edge', 'vedant.pednekar@somaiya.edu', 'zPB_nvjjk1vAAbzvHbxalw', '0', '2022-01-17 13:55:07.130119'),
(57, 'Info Edge', 'soham.ns@somaiya.edu', 'fbYA9xJNGoUmw82KNZJ9Sw', '0', '2022-01-17 13:55:07.135596'),
(58, 'Info Edge', 'het.parekh@somaiya.edu', 'PJe-64RoTf4gnBGwB5kQgw', '0', '2022-01-17 13:55:07.141041'),
(59, 'Info Edge', 'parth.mk@somaiya.edu', 'eYPUhE3haZBc4n9u24-CbA', '0', '2022-01-17 13:55:07.146724'),
(60, 'Info Edge', 'vatsalkumar.b@somaiya.edu', 'YERE7zUHlkfSAeQ_IVK5PQ', '0', '2022-01-17 13:55:07.152332'),
(61, 'Info Edge', 'viraj.vasani@somaiya.edu', '7LnEFg0mDgPwZmM-xyD1AA', '0', '2022-01-17 13:55:07.157866'),
(62, 'Info Edge', 'jenil.jain@somaiya.edu', 'PDuuNisfg7x-6PwduMbYeA', '0', '2022-01-17 13:55:07.163463'),
(63, 'Info Edge', 'archit.patil@somaiya.edu', 'yPqKsjf15lErh3XTK4a-gw', '0', '2022-01-17 13:55:07.168928'),
(64, 'Info Edge', 'neel06@somaiya.edu', 'Yv5LUIeaYZ_G8Z2VYrQn1A', '0', '2022-01-17 13:55:07.174386'),
(65, 'Info Edge', 'H.ratlamwala@somaiya.edu', 'eQSm7Rs2fqXDGNII8UQpiA', '0', '2022-01-17 13:55:07.179887'),
(66, 'Info Edge', 'priya.mudaliar@somaiya.edu', 'RrSxfLh1P4pnDudVhXmStg', '0', '2022-01-17 13:55:07.185322'),
(67, 'Info Edge', 'harshil21@somaiya.edu ', 'Uww7quKCHf1lGj1Q0kzb4A', '0', '2022-01-17 13:55:07.190755'),
(68, 'Info Edge', 'h.bharadwaj@somaiya.edu', 'rvApCkh-MhON4CAqW5LCEg', '0', '2022-01-17 13:55:07.196263'),
(69, 'Info Edge', 'rupesh.parmar@somaiya.edu', 'YHTD9l14kgJ1034723Guzg', '0', '2022-01-17 13:55:07.201703'),
(70, 'Info Edge', 'hardi.p@somaiya.edu', 'GpRQ6f5RVAo6RB4tnIxCdQ', '0', '2022-01-17 13:55:07.207222'),
(71, 'Info Edge', 'omkar.np@somaiya.edu', 'EQ_V9OPhid3ug4yrasuVLw', '0', '2022-01-17 13:55:07.212844'),
(72, 'Info Edge', 'radha.sawant@somaiya.edu', 'Bpp3WV2F_5HIrv-1LxIxYQ', '0', '2022-01-17 13:55:07.218344'),
(73, 'Info Edge', 'rishi.sg@somaiya.edu', 'YnD2sG-ZNRkBh6z3wNficg', '0', '2022-01-17 13:55:07.223832'),
(74, 'Info Edge', 'riya.mt@somaiya.edu', 'JhuIRAVBahnC8LmT2faXFA', '0', '2022-01-17 13:55:07.229308'),
(75, 'Info Edge', 'ritesh.doshi@somaiya.edu', 'x1T4e6CmC6yl0Abn5RMvAg', '0', '2022-01-17 13:55:07.234795');

-- --------------------------------------------------------

--
-- Table structure for table `tnp_admin_resetpassword`
--

CREATE TABLE `tnp_admin_resetpassword` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `token` varchar(200) NOT NULL,
  `time` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `getTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tnp_admin_resetpassword`
--

INSERT INTO `tnp_admin_resetpassword` (`id`, `username`, `token`, `time`, `date`, `getTime`) VALUES
(1, 'mitali.patil@somaiya.edu', 'd1kmyV8l7oPWfc4SK2SB0g', '2021-09-30 05:46:09', '2021-09-30', '05:46:09'),
(2, 'mitali.patil@somaiya.edu', '4yNlJm40eve1U4WFghZnXw', '2021-09-30 05:46:44', '2021-09-30', '05:46:44'),
(3, 'mitali.patil@somaiya.edu', '7-tpjo2zQyQF4Ixtl8X2lQ', '2021-09-30 05:46:54', '2021-09-30', '05:46:54'),
(4, 'adnaan.l@somaiya.edu', '-ddTKABMQav86A6vvSUc5Q', '2021-09-30 05:50:34', '2021-09-30', '05:50:34'),
(5, 'jaydeep.patel@somaiya.edu', 'zTNsgeCCGMgqAXZVXwQFGg', '2021-09-30 05:57:06', '2021-09-30', '05:57:06'),
(6, 'h.mandaliya@somaiya.edu', 'u49yFRB-qw7VIR_2bAuUXA', '2021-09-30 06:55:33', '2021-09-30', '06:55:33'),
(7, 'a.somavanshi@somaiya.edu', '3OgMKFKu1QW4o12gXi04_w', '2021-10-05 13:27:51', '2021-10-05', '13:27:51'),
(8, 'vedant.manelkar@somaiya.edu', 'JQIMA_cyKLGsVbueX10jIA', '2021-10-05 16:02:48', '2021-10-05', '16:02:48'),
(9, 'gala.av@somaiya.edu ', 'hanhhzK1quFppmaliqVjTQ', '2021-10-08 17:48:58', '2021-10-08', '17:48:58'),
(10, 'jaydeep.patel@somaiya.edu', 'FGnu4VpSikq0oWUwkQXO_g', '2021-10-21 04:40:09', '2021-10-21', '04:40:09'),
(11, 'vatsalkumar.b@somaiya.edu', '1s1YsakBYYndjJ_BpJ9PtQ', '2021-10-21 04:41:57', '2021-10-21', '04:41:57'),
(12, 'vatsalkumar.b@somaiya.edu', '8ocol4OrEb5i03998wlnmA', '2021-10-21 04:42:58', '2021-10-21', '04:42:58'),
(13, 'jbg@somaiya.edu', 'OZSs_C6EoRK8zTbmJ0JXyw', '2021-10-21 06:27:17', '2021-10-21', '06:27:17'),
(14, 'jbg@somaiya.edu', 'vMzQToOjHVNq7qAaqqGLzA', '2021-10-21 06:27:45', '2021-10-21', '06:27:45'),
(15, 'sourav.kumar@somaiya.edu', 'cL5tXIrttiTJ0X-GHlk8qQ', '2021-10-27 05:19:46', '2021-10-27', '05:19:46'),
(16, 'neel06@somaiya.edu', 'Fm0E5tDplGuK8crAOJALgA', '2021-10-27 07:51:47', '2021-10-27', '07:51:47'),
(17, 'vedant.manelkar@somaiya.edu', 'dLFfnanKr3n7d3sK_xz6dw', '2021-10-29 03:54:54', '2021-10-29', '03:54:54'),
(18, 'vedant.manelkar@somaiya.edu', 'Tbgcdi_0REe7oZx3kApWrg', '2021-10-29 03:55:47', '2021-10-29', '03:55:47'),
(19, 'gitika.jha@somaiya.edu', 'jKhhLUoNu_cGuftnsXiFEQ', '2021-10-29 04:22:54', '2021-10-29', '04:22:54'),
(20, 'akash.ry@somaiya.edu', 'ZN2dm_tIXZjejiN6fhy-lQ', '2021-10-29 04:24:23', '2021-10-29', '04:24:23'),
(21, 'harsh.chudasama@somaiya.edu', 'Cpjmaa02fhz-COcNW5w8qg', '2021-10-29 04:48:17', '2021-10-29', '04:48:17'),
(22, 'harsh.chudasama@somaiya.edu', 'C_19fQjcrcs8r3sZtYsIBw', '2021-10-29 04:49:24', '2021-10-29', '04:49:24'),
(23, 'harsh.chudasama@somaiya.edu', '8_OGSzo1n91LstcHdbGy9w', '2021-10-29 04:51:32', '2021-10-29', '04:51:32'),
(24, 'harsh.chudasama@somaiya.edu', 'dNWW1E0_DW1ZXFt4JzMVLg', '2021-10-29 04:51:54', '2021-10-29', '04:51:54'),
(25, 'jenil.jain@somaiya.edu', 'lIXkbZAQeQBpkyIlzpsOpg', '2021-10-29 05:12:23', '2021-10-29', '05:12:23'),
(26, 'a.prabhudesai@somaiya.edu', 'A5uaP1kMW-lLOC5Inri9Ww', '2022-01-17 14:03:29', '2022-01-17', '14:03:29'),
(27, 'gitika.jha@somaiya.edu', 'UYTt3zPSU2qprR_9Kg0TsQ', '2022-01-17 15:51:04', '2022-01-17', '15:51:04'),
(28, 'harsh.vador@somaiya.edu', '-z1tZtsL5UlOVM-jcQKEAQ', '2022-01-18 05:54:34', '2022-01-18', '05:54:34'),
(29, 'deep.maru@somaiya.edu', 'E6PZ2VziaCxh79NmpPA8Tw', '2022-02-08 10:49:41', '2022-02-08', '10:49:41'),
(30, 'V.nikam@somaiya.edu', 'gdSz1UyJlPv895VgZEOSeQ', '2022-02-08 10:49:48', '2022-02-08', '10:49:48'),
(31, 'deep.maru@somaiya.edu', 'nkIe_aun7GoS63uWTkEcYw', '2022-02-08 10:51:29', '2022-02-08', '10:51:29'),
(32, 'vishal.kirpan@somaiya.edu', 'V6eoXytcc-saJEFgyDTMOg', '2022-02-08 11:23:18', '2022-02-08', '11:23:18'),
(33, 'gaikwad.arun@somaiya.edu', 'mCXb7IMOKbnJ51Squ6l43g', '2022-02-08 11:40:47', '2022-02-08', '11:40:47'),
(34, 'vishal.kirpan@somaiya.edu', 'BTW3EANkwQSnN3VAphOqDQ', '2022-02-08 12:19:18', '2022-02-08', '12:19:18'),
(35, 'jill.chawhan@somaiya.edu', 'ZBZzv8s5XuR3vMaEHFunGw', '2022-02-08 13:29:55', '2022-02-08', '13:29:55'),
(36, 'pritam.jathar@somaiya.edu', 'VQLQZ7HSs3TSxi4pD0jtOA', '2022-02-08 13:53:11', '2022-02-08', '13:53:11'),
(37, 'pritam.jathar@somaiya.edu', 'sjAf4sBXZv2-XBQE3ezzHw', '2022-02-08 13:53:51', '2022-02-08', '13:53:51'),
(38, 'poonam.biradar@somaiya.edu', 'bwHYPeyPwCMMpmHF_i_EfA', '2022-02-08 14:05:21', '2022-02-08', '14:05:21'),
(39, 'pranali.pk@somaiya.edu', '2pe0UfLb1qbJY0UbAnbN_w', '2022-02-08 14:19:41', '2022-02-08', '14:19:41'),
(40, 'nitin.sharma@somaiya.edu', 'Ki7290ezslxCIoAjrZCpxg', '2022-02-08 16:14:09', '2022-02-08', '16:14:09'),
(41, 'pranali.pk@somaiya.edu', 'nWvKNBgn1Xw2VZ-GR_YShg', '2022-02-09 04:32:18', '2022-02-09', '04:32:18'),
(42, 's.bind@somaiya.edu', 'qNav0258W3nFrWs4AiF_oA', '2022-02-09 04:51:05', '2022-02-09', '04:51:05'),
(43, 'rupesh.parmar@somaiya.edu', 'vne2cmEZ5YcDyLEYMXDcEg', '2022-05-10 05:56:13', '2022-05-10', '05:56:13'),
(44, 'vkhirodkar@somaiya.edu', '4cvVvXk9va2JxWj6SkVIFQ', '2022-06-21 06:49:12', '2022-06-21', '06:49:12'),
(45, 'tejas.chaplot@somaiya.edu', 'lIxPGTdW5Dt23VBC9TEJow', '2022-06-24 09:32:51', '2022-06-24', '09:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `tnp_admin_studentplaced`
--

CREATE TABLE `tnp_admin_studentplaced` (
  `id` int(11) NOT NULL,
  `stud_name` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `ctc` int(11) NOT NULL,
  `stud_user` varchar(100) NOT NULL,
  `comp_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tnp_admin_studentplaced`
--

INSERT INTO `tnp_admin_studentplaced` (`id`, `stud_name`, `branch`, `id_no`, `ctc`, `stud_user`, `comp_name`) VALUES
(1, 'Mr. PRABHUDESAI AKASH ANAND', 'Information Technology', '2018016402064976', 1450000, 'a.prabhudesai@somaiya.edu', 'Info Edge'),
(2, 'Ms. SOMAVANSHI ASHLESHA SANTOSH', 'Information Technology', '2016016400875876', 1450000, 'a.somavanshi@somaiya.edu', 'Info Edge'),
(3, 'Mr. Kumar Sourav Jeewan', 'Information Technology', '2018016402065507', 1450000, 'sourav.kumar@somaiya.edu', 'Info Edge');

-- --------------------------------------------------------

--
-- Table structure for table `tnp_admin_studentseligible`
--

CREATE TABLE `tnp_admin_studentseligible` (
  `id` int(11) NOT NULL,
  `stud_name` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `stud_user` varchar(100) NOT NULL,
  `comp_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tnp_admin_studentseligible`
--

INSERT INTO `tnp_admin_studentseligible` (`id`, `stud_name`, `branch`, `stud_user`, `comp_name`) VALUES
(1, 'Mr. Shah Jay Kirti', 'Information Technology', 'jay23@somaiya.edu', 'Info Edge'),
(2, 'Mr. Patel Yash Nilesh', 'Information Technology', 'patel.yn@somaiya.edu', 'Info Edge'),
(3, 'Ms. MAV HARSITA ARUN', 'Information Technology', 'harsita.mav@somaiya.edu', 'Info Edge'),
(4, 'Mr. PANCHAL DHRUV HITEN', 'Information Technology', 'panchal.dh@somaiya.edu', 'Info Edge'),
(5, 'Mr. Dakshit Vaviya Karsan', 'Information Technology', 'dakshit.v@somaiya.edu', 'Info Edge'),
(6, 'Mr. Yadav Akash Raisaheb', 'Information Technology', 'akash.ry@somaiya.edu', 'Info Edge'),
(7, 'Mr. Nanduri Srinath Srinivas', 'Information Technology', 'srinath.n@somaiya.edu', 'Info Edge'),
(8, 'Ms. Jhawar Manashree Umesh', 'Information Technology', 'manashree.j@somaiya.edu', 'Info Edge'),
(9, 'Mr. Kapasi Mustansir Yacoob', 'Information Technology', 'mustansir.k@somaiya.edu', 'Info Edge'),
(11, 'Ms. Desai Dharita Ajay', 'Information Technology', 'dharita.d@somaiya.edu', 'Info Edge'),
(12, 'Mr. More Jaideep Mahesh', 'Information Technology', 'jaideep.more@somaiya.edu', 'Info Edge'),
(13, 'Mr. MISTRY BHAVYA RAKESH', 'Information Technology', 'bhavya.mistry@somaiya.edu', 'Info Edge'),
(14, 'Ms. PATADIA SALONI HITENDRA', 'Information Technology', 'saloni.patadia@somaiya.edu', 'Info Edge'),
(15, 'Mr. Kokate Vedant Vijay', 'Information Technology', 'vedant.kokate@somaiya.edu', 'Info Edge'),
(16, 'Mr. Chudasama Harsh Narendra', 'Information Technology', 'harsh.chudasama@somaiya.edu', 'Info Edge'),
(17, 'Ms. PATIL MITALI NITIN', 'Information Technology', 'mitali.patil@somaiya.edu', 'Info Edge'),
(18, 'Mr. Mishra Keshav Sudarshan', 'Information Technology', 'keshav.sm@somaiya.edu', 'Info Edge'),
(19, 'Ms. Bhalla Krutika Rajesh', 'Information Technology', 'krutika.bhalla@somaiya.edu', 'Info Edge'),
(20, 'Mr. Gala Ankit Vijay', 'Information Technology', 'gala.av@somaiya.edu ', 'Info Edge'),
(21, 'Mr. Mandaliya Hardik Himmat', 'Information Technology', 'h.mandaliya@somaiya.edu', 'Info Edge'),
(22, 'Mr. Mokashi Aneesh Kiran', 'Information Technology', 'aneesh.m@somaiya.edu', 'Info Edge'),
(23, 'Ms. JHA GITIKA VINOD', 'Information Technology', 'gitika.jha@somaiya.edu', 'Info Edge'),
(24, 'Ms. Bhimani Aayushi Bijesh', 'Information Technology', 'aayushi.bhimani@somaiya.edu', 'Info Edge'),
(25, 'Mr. Shinde Prajwal Prakash', 'Information Technology', 'prajwal.ps@somaiya.edu', 'Info Edge'),
(26, 'Mr. Patel Jaydeep Amratbhai', 'Information Technology', 'jaydeep.patel@somaiya.edu', 'Info Edge'),
(27, 'Ms. Dharap Shruti Jayant', 'Information Technology', 'shruti.dharap@somaiya.edu', 'Info Edge'),
(28, 'Mr. Karmakar Arghyadeep Mantoo', 'Information Technology', 'arghyadeep.k@somaiya.edu', 'Info Edge'),
(29, 'Mr. Ganatra Jay Bipin', 'Information Technology', 'jbg@somaiya.edu', 'Info Edge'),
(30, 'Ms. Bamane Snehal Vitthal', 'Information Technology', 'snehal.bamane@somaiya.edu', 'Info Edge'),
(31, 'Mr. RAJPUROHIT VINOD SINGH DINESH SINGH', 'Information Technology', 'vinodsingh.r@somaiya.edu', 'Info Edge'),
(32, 'Mr. Shah Tirth Vipul', 'Information Technology', 'tirth.vs@somaiya.edu', 'Info Edge'),
(33, 'Mr. Sahu Aman KUMAR', 'Information Technology', 'amankumar.sahu@somaiya.edu', 'Info Edge'),
(34, 'Mr. Desai Krish Tushar', 'Information Technology', 'krish.desai@somaiya.edu', 'Info Edge'),
(35, 'Mr. Ghori Dhruv Dineshkumar', 'Information Technology', 'dhruv.ghori@somaiya.edu', 'Info Edge'),
(36, 'Mr. Lalani Adnaan Nooruddin', 'Information Technology', 'adnaan.l@somaiya.edu', 'Info Edge'),
(37, 'Mr. Thakkar Shubham Vijay', 'Information Technology', 'svt@somaiya.edu', 'Info Edge'),
(38, 'Ms. Harwara Prachi Prakash', 'Information Technology', 'prachi.harwara@somaiya.edu', 'Info Edge'),
(39, 'Mr. Bhanushali Yash Murji', 'Information Technology', 'ymb1@somaiya.edu', 'Info Edge'),
(40, 'Mr. VADOR HARSH SANJAY', 'Information Technology', 'harsh.vador@somaiya.edu', 'Info Edge'),
(41, 'Ms. MISHRA HARSHITA SANTOSH', 'Information Technology', 'harshita.sm@somaiya.edu', 'Info Edge'),
(42, 'Mr. Arjun Narayan Pitroda', 'Information Technology', 'arjun.pitroda@somaiya.edu', 'Info Edge'),
(43, 'Ms. Bhanushali Jini Ashok', 'Information Technology', 'jini.b@somaiya.edu', 'Info Edge'),
(44, 'Mr. Dhar Uddish Rajesh', 'Information Technology', 'uddish.dhar@somaiya.edu', 'Info Edge'),
(46, 'Mr. Moundekar Shreyash Sanjay', 'Information Technology', 's.moundekar@somaiya.edu', 'Info Edge'),
(47, 'Mr. Pednekar Vedant Narendra', 'Information Technology', 'vedant.pednekar@somaiya.edu', 'Info Edge'),
(48, 'Mr. Shinde Soham Narendra', 'Information Technology', 'soham.ns@somaiya.edu', 'Info Edge'),
(49, 'Mr. Parekh Het Nilesh', 'Information Technology', 'het.parekh@somaiya.edu', 'Info Edge'),
(50, 'Mr. KOTHARI PARTH KOTHARI', 'Information Technology', 'parth.mk@somaiya.edu', 'Info Edge'),
(51, 'Mr. BALAR VATSALKUMAR UPESHBHAI', 'Information Technology', 'vatsalkumar.b@somaiya.edu', 'Info Edge'),
(52, 'Mr. Vasani Viraj Sunil', 'Information Technology', 'viraj.vasani@somaiya.edu', 'Info Edge'),
(53, 'Mr. Jain Jenil Sanjay', 'Information Technology', 'jenil.jain@somaiya.edu', 'Info Edge'),
(54, 'Mr. Patil Archit Paresh', 'Information Technology', 'archit.patil@somaiya.edu', 'Info Edge'),
(55, 'Mr. Shah Neel Ketan', 'Information Technology', 'neel06@somaiya.edu', 'Info Edge'),
(56, 'Mr. Ratlamwala Huzefa Shamun', 'Information Technology', 'H.ratlamwala@somaiya.edu', 'Info Edge'),
(57, 'Ms. Mudaliar Priya Vasudhevan', 'Information Technology', 'priya.mudaliar@somaiya.edu', 'Info Edge'),
(58, 'Mr. SHAH HARSHIL MRUGESH', 'Information Technology', 'harshil21@somaiya.edu ', 'Info Edge'),
(59, 'Mr. Bharadwaj Hrishikesh Madhab', 'Information Technology', 'h.bharadwaj@somaiya.edu', 'Info Edge'),
(60, 'Mr. Parmar Rupesh Tejmal', 'Information Technology', 'rupesh.parmar@somaiya.edu', 'Info Edge'),
(61, 'Ms. PATEL HARDI VIREN', 'Information Technology', 'hardi.p@somaiya.edu', 'Info Edge'),
(62, 'Mr. Pawar Omkar Nityanand', 'Information Technology', 'omkar.np@somaiya.edu', 'Info Edge'),
(63, 'Ms. Sawant Radha Vinod', 'Information Technology', 'radha.sawant@somaiya.edu', 'Info Edge'),
(64, 'Mr. Gupta Rishi Sanjay', 'Information Technology', 'rishi.sg@somaiya.edu', 'Info Edge'),
(65, 'Ms. Thakkar Riya Manoj', 'Information Technology', 'riya.mt@somaiya.edu', 'Info Edge'),
(66, 'Mr. DOSHI RITESH CHAKOR', 'Information Technology', 'ritesh.doshi@somaiya.edu', 'Info Edge');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `student_resume`
--
ALTER TABLE `student_resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_user`
--
ALTER TABLE `student_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tnp_admin_admin`
--
ALTER TABLE `tnp_admin_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tnp_admin_company`
--
ALTER TABLE `tnp_admin_company`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tnp_admin_company` ADD FULLTEXT KEY `branch` (`branch`);

--
-- Indexes for table `tnp_admin_mailresponse`
--
ALTER TABLE `tnp_admin_mailresponse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tnp_admin_resetpassword`
--
ALTER TABLE `tnp_admin_resetpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tnp_admin_studentplaced`
--
ALTER TABLE `tnp_admin_studentplaced`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tnp_admin_studentseligible`
--
ALTER TABLE `tnp_admin_studentseligible`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `student_resume`
--
ALTER TABLE `student_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `student_user`
--
ALTER TABLE `student_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT for table `tnp_admin_admin`
--
ALTER TABLE `tnp_admin_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tnp_admin_company`
--
ALTER TABLE `tnp_admin_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tnp_admin_mailresponse`
--
ALTER TABLE `tnp_admin_mailresponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tnp_admin_resetpassword`
--
ALTER TABLE `tnp_admin_resetpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tnp_admin_studentplaced`
--
ALTER TABLE `tnp_admin_studentplaced`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tnp_admin_studentseligible`
--
ALTER TABLE `tnp_admin_studentseligible`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
