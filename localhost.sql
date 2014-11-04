-- phpMyAdmin SQL Dump
-- version 4.2.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 16, 2014 at 04:52 PM
-- Server version: 5.6.19-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dr`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add specility', 7, 'add_specility'),
(20, 'Can change specility', 7, 'change_specility'),
(21, 'Can delete specility', 7, 'delete_specility'),
(22, 'Can add country', 8, 'add_country'),
(23, 'Can change country', 8, 'change_country'),
(24, 'Can delete country', 8, 'delete_country'),
(25, 'Can add state', 9, 'add_state'),
(26, 'Can change state', 9, 'change_state'),
(27, 'Can delete state', 9, 'delete_state'),
(28, 'Can add city', 10, 'add_city'),
(29, 'Can change city', 10, 'change_city'),
(30, 'Can delete city', 10, 'delete_city'),
(31, 'Can add drprofile', 11, 'add_drprofile'),
(32, 'Can change drprofile', 11, 'change_drprofile'),
(33, 'Can delete drprofile', 11, 'delete_drprofile'),
(34, 'Can add hospital', 12, 'add_hospital'),
(35, 'Can change hospital', 12, 'change_hospital'),
(36, 'Can delete hospital', 12, 'delete_hospital'),
(37, 'Can add contact', 13, 'add_contact'),
(38, 'Can change contact', 13, 'change_contact'),
(39, 'Can delete contact', 13, 'delete_contact'),
(40, 'Can add cause', 14, 'add_cause'),
(41, 'Can change cause', 14, 'change_cause'),
(42, 'Can delete cause', 14, 'delete_cause'),
(43, 'Can add diagnosis', 15, 'add_diagnosis'),
(44, 'Can change diagnosis', 15, 'change_diagnosis'),
(45, 'Can delete diagnosis', 15, 'delete_diagnosis'),
(46, 'Can add symptom', 16, 'add_symptom'),
(47, 'Can change symptom', 16, 'change_symptom'),
(48, 'Can delete symptom', 16, 'delete_symptom'),
(49, 'Can add video_health_tip', 17, 'add_video_health_tip'),
(50, 'Can change video_health_tip', 17, 'change_video_health_tip'),
(51, 'Can delete video_health_tip', 17, 'delete_video_health_tip'),
(52, 'Can add news', 18, 'add_news'),
(53, 'Can change news', 18, 'change_news'),
(54, 'Can delete news', 18, 'delete_news'),
(55, 'Can add contact', 19, 'add_contact'),
(56, 'Can change contact', 19, 'change_contact'),
(57, 'Can delete contact', 19, 'delete_contact'),
(58, 'Can add site_ configuration', 20, 'add_site_configuration'),
(59, 'Can change site_ configuration', 20, 'change_site_configuration'),
(60, 'Can delete site_ configuration', 20, 'delete_site_configuration'),
(61, 'Can add banner', 21, 'add_banner'),
(62, 'Can change banner', 21, 'change_banner'),
(63, 'Can delete banner', 21, 'delete_banner'),
(64, 'Can add upcoming_event', 22, 'add_upcoming_event'),
(65, 'Can change upcoming_event', 22, 'change_upcoming_event'),
(66, 'Can delete upcoming_event', 22, 'delete_upcoming_event'),
(67, 'Can add commondisease', 23, 'add_commondisease'),
(68, 'Can change commondisease', 23, 'change_commondisease'),
(69, 'Can delete commondisease', 23, 'delete_commondisease'),
(70, 'Can add footer', 24, 'add_footer'),
(71, 'Can change footer', 24, 'change_footer'),
(72, 'Can delete footer', 24, 'delete_footer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$AIWxAiihYfxr$I9yUHudZGElLibdDHT4XDNEhc4TOSi3oVfyxs/6j9g8=', '2014-09-16 11:03:16', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2014-08-28 09:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact_info_contact`
--

CREATE TABLE IF NOT EXISTS `contact_info_contact` (
`id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Message` longtext NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `contact_info_contact`
--

INSERT INTO `contact_info_contact` (`id`, `Name`, `Email`, `Subject`, `Message`, `Date`) VALUES
(1, 'tarun', 'tarun@gmail.com', 'hello', 'ythjutjuy', NULL),
(2, 'gurmukh singh', 'gurmukh@gmail.com', 'testing', 'this is testing ', NULL),
(3, 'gurmukh singh', 'gurmukh@gmail.com', 'testing', 'lojok', NULL),
(4, 'pam', 'pam@gmail.com', 'testing', 'testing', NULL),
(5, 'Karan', 'kk@gmail.com', 'pain', 'pain ', NULL),
(6, 'Karan', 'kk@gmail.com', 'pain', 'pain ', NULL),
(7, 'Karan', 'rob@gmail.com', 'pain', 'fdghdfgdf', NULL),
(8, 'rrr', 'rob@gmail.com', 'rrrr', 'fdfgdsfs', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2014-08-28 09:24:04', 1, 7, '1', 'Cancer', 1, ''),
(2, '2014-08-28 09:24:11', 1, 7, '2', 'Surgery,', 1, ''),
(3, '2014-08-28 09:24:41', 1, 8, '1', 'India', 1, ''),
(4, '2014-08-28 09:24:46', 1, 9, '1', 'Punjab', 1, ''),
(5, '2014-08-28 09:24:52', 1, 10, '1', 'Mohali', 1, ''),
(6, '2014-08-28 09:24:55', 1, 12, '1', 'Ivy', 1, ''),
(7, '2014-08-28 09:26:10', 1, 12, '1', 'Ivy', 2, 'Changed image.'),
(8, '2014-08-28 09:27:28', 1, 7, '3', 'Pediatric Critical Care ', 1, ''),
(9, '2014-08-28 09:27:52', 1, 7, '4', 'Pediatric Mechanical Ventilation', 1, ''),
(10, '2014-08-28 09:28:08', 1, 7, '5', 'Pediatric Pulmonology.', 1, ''),
(11, '2014-08-28 09:28:32', 1, 7, '6', 'Neonatal and Pediatric Fiberoptic Bronchoscopy', 1, ''),
(12, '2014-08-28 09:28:47', 1, 7, '7', 'Foreign Body Removal with Rigid Bronchoscopy ', 1, ''),
(13, '2014-08-28 09:28:52', 1, 8, '2', 'India', 1, ''),
(14, '2014-08-28 09:28:56', 1, 9, '2', 'Punjab', 1, ''),
(15, '2014-08-28 09:29:02', 1, 10, '2', 'Ludhiana', 1, ''),
(16, '2014-08-28 09:29:23', 1, 11, '1', 'Dr. Vikas Bansal ', 1, ''),
(17, '2014-08-28 09:32:15', 1, 7, '8', 'Pediatric Hematology &Oncology', 1, ''),
(18, '2014-08-28 09:32:51', 1, 11, '2', 'Dr. Priyanka Gupta', 1, ''),
(19, '2014-08-28 09:40:40', 1, 7, '9', 'Pediatric Neurology', 1, ''),
(20, '2014-08-28 09:41:18', 1, 11, '3', 'Dr. Gurpreet Singh Kochhar', 1, ''),
(21, '2014-08-28 10:31:25', 1, 17, '1', 'Desi kalakar', 1, ''),
(22, '2014-08-28 12:03:07', 1, 12, '1', 'Ivy', 2, 'Changed image.'),
(23, '2014-08-28 12:27:35', 1, 14, '1', 'khaff', 1, ''),
(24, '2014-08-28 12:27:48', 1, 15, '1', 'khang', 1, ''),
(25, '2014-08-28 12:28:09', 1, 16, '1', 'gala khrab', 1, ''),
(26, '2014-08-28 12:49:54', 1, 12, '2', 'SPS APOLLO HOSPITAL', 1, ''),
(27, '2014-08-28 12:50:21', 1, 12, '1', 'Ivy', 2, 'No fields changed.'),
(28, '2014-08-29 10:09:34', 1, 14, '2', 'cough', 1, ''),
(29, '2014-08-29 10:10:01', 1, 15, '2', 'throat problem', 1, ''),
(30, '2014-08-29 10:10:04', 1, 16, '2', 'Cough ', 1, ''),
(31, '2014-08-29 12:27:50', 1, 14, '3', 'Runny or stuffy nose', 1, ''),
(32, '2014-08-29 12:28:07', 1, 15, '3', 'Muscle or body aches', 1, ''),
(33, '2014-08-29 12:28:12', 1, 16, '3', 'Flu', 1, ''),
(34, '2014-08-30 10:28:12', 1, 19, '6', 'tarunq', 3, ''),
(35, '2014-08-30 10:28:12', 1, 19, '5', 'tarunq', 3, ''),
(36, '2014-08-30 10:28:12', 1, 19, '4', 'tarun', 3, ''),
(37, '2014-08-30 10:28:12', 1, 19, '3', 'tarun', 3, ''),
(38, '2014-08-30 10:28:12', 1, 19, '2', 'tarun', 3, ''),
(39, '2014-08-30 10:28:12', 1, 19, '1', 'tarun', 3, ''),
(40, '2014-08-30 10:38:20', 1, 19, '7', 'tarunq', 3, ''),
(41, '2014-09-01 09:47:06', 1, 20, '1', 'find my doctor', 1, ''),
(42, '2014-09-01 09:47:12', 1, 20, '1', 'find my doctor', 2, 'No fields changed.'),
(43, '2014-09-01 09:49:56', 1, 20, '1', 'find my doctor', 2, 'No fields changed.'),
(44, '2014-09-01 10:19:34', 1, 20, '1', 'find my doctor', 2, 'No fields changed.'),
(45, '2014-09-01 10:24:21', 1, 20, '1', 'find my doctor', 2, 'Changed googlepluslink.'),
(46, '2014-09-01 10:34:58', 1, 20, '1', 'find my doctor', 2, 'Changed banner.'),
(47, '2014-09-01 10:38:42', 1, 20, '1', 'find my doctor', 2, 'No fields changed.'),
(48, '2014-09-01 10:42:48', 1, 20, '1', 'find my doctor', 2, 'No fields changed.'),
(49, '2014-09-01 10:51:31', 1, 21, '1', 'hello', 1, ''),
(50, '2014-09-01 10:51:40', 1, 21, '1', 'hello', 2, 'No fields changed.'),
(51, '2014-09-01 11:02:15', 1, 21, '2', 'grg', 1, ''),
(52, '2014-09-01 12:58:42', 1, 22, '1', 'Party', 1, ''),
(53, '2014-09-01 13:10:34', 1, 18, '1', 'jagga jatt', 1, ''),
(54, '2014-09-02 05:23:26', 1, 18, '2', 'medicine for people', 1, ''),
(55, '2014-09-02 05:23:57', 1, 18, '2', 'medicine for people', 3, ''),
(56, '2014-09-02 05:37:19', 1, 18, '3', 'medicine for people', 1, ''),
(57, '2014-09-02 05:38:33', 1, 18, '4', 'testing', 1, ''),
(58, '2014-09-02 05:43:40', 1, 18, '3', 'medicine for people', 3, ''),
(59, '2014-09-02 05:43:40', 1, 18, '1', 'jagga jatt', 3, ''),
(60, '2014-09-02 05:47:36', 1, 18, '5', 'medicine for people', 1, ''),
(61, '2014-09-02 05:49:43', 1, 18, '6', 'testing', 1, ''),
(62, '2014-09-02 05:50:43', 1, 18, '7', 'hii', 1, ''),
(63, '2014-09-02 05:54:14', 1, 18, '8', 'holla', 1, ''),
(64, '2014-09-02 07:23:20', 1, 7, '10', 'Anaesthesia', 1, ''),
(65, '2014-09-02 07:24:12', 1, 11, '4', 'Dr Rajiv Dhunna ', 1, ''),
(66, '2014-09-02 09:25:36', 1, 21, '1', 'hello', 1, ''),
(67, '2014-09-03 09:39:10', 1, 20, '1', 'find my doctor', 2, 'Changed logo.'),
(68, '2014-09-03 09:55:22', 1, 14, '4', 'hot body', 1, ''),
(69, '2014-09-03 09:55:29', 1, 16, '4', 'bukhar', 1, ''),
(70, '2014-09-03 09:56:02', 1, 16, '5', 'malaria', 1, ''),
(71, '2014-09-03 09:56:59', 1, 22, '2', 'medical camp', 1, ''),
(72, '2014-09-03 09:57:40', 1, 22, '2', 'medical camp in mohali', 2, 'Changed Event_Title.'),
(73, '2014-09-03 09:58:19', 1, 22, '3', 'medical camp in jalandhar', 1, ''),
(74, '2014-09-03 09:58:37', 1, 22, '4', 'medical camp in ludhiana', 1, ''),
(75, '2014-09-03 10:20:12', 1, 19, '3', 'parminder', 2, 'No fields changed.'),
(76, '2014-09-03 12:28:41', 1, 17, '2', 'headache problem', 1, ''),
(77, '2014-09-03 12:33:33', 1, 17, '2', 'headache problem', 2, 'No fields changed.'),
(78, '2014-09-03 12:33:48', 1, 17, '3', 'pain problem', 1, ''),
(79, '2014-09-03 13:24:31', 1, 13, '3', 'gurmukh singh', 2, 'No fields changed.'),
(80, '2014-09-04 05:53:11', 1, 23, '2', 'tarun', 1, ''),
(81, '2014-09-04 06:10:06', 1, 20, '1', 'find my doctor', 2, 'No fields changed.'),
(82, '2014-09-04 06:11:25', 1, 24, '1', 'helo', 1, ''),
(83, '2014-09-04 06:11:43', 1, 24, '2', 'hii', 1, ''),
(84, '2014-09-04 09:45:12', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed bannername.'),
(85, '2014-09-05 06:09:18', 1, 17, '3', 'pain problem', 2, 'Changed Video_source.'),
(86, '2014-09-05 06:09:25', 1, 17, '2', 'headache problem', 2, 'Changed Video_source.'),
(87, '2014-09-05 06:09:31', 1, 17, '1', 'Desi kalakar', 2, 'No fields changed.'),
(88, '2014-09-08 11:18:10', 1, 12, '3', 'abc', 1, ''),
(89, '2014-09-08 11:19:45', 1, 12, '4', 'testing', 1, ''),
(90, '2014-09-08 11:21:00', 1, 12, '2', 'SPS APOLLO HOSPITAL', 2, 'No fields changed.'),
(91, '2014-09-08 12:48:26', 1, 12, '5', 'qwer', 1, ''),
(92, '2014-09-09 09:15:17', 1, 10, '3', 'MOHALI', 1, ''),
(93, '2014-09-09 09:15:25', 1, 12, '5', 'qwer', 2, 'Changed Cities.'),
(94, '2014-09-11 11:01:16', 1, 19, '4', 'gurmukh', 2, 'No fields changed.'),
(95, '2014-09-11 11:06:37', 1, 13, '4', 'pam', 2, 'No fields changed.'),
(96, '2014-09-12 04:26:29', 1, 7, '10', 'Anaesthesia', 2, 'No fields changed.'),
(97, '2014-09-12 05:28:10', 1, 11, '4', 'Dr Rajiv Dhunna ', 2, 'Changed Specialities.'),
(98, '2014-09-12 10:13:56', 1, 11, '4', 'Dr Rajiv Dhunna ', 2, 'Changed Specialities.'),
(99, '2014-09-12 10:34:44', 1, 24, '2', 'hii', 2, 'No fields changed.'),
(100, '2014-09-12 10:35:10', 1, 24, '3', 'hello', 1, ''),
(101, '2014-09-12 12:10:00', 1, 24, '4', 'testing', 1, ''),
(102, '2014-09-12 12:23:43', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed hospitalbanner.'),
(103, '2014-09-12 12:26:20', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed locationbanner.'),
(104, '2014-09-12 12:29:51', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed contactbanner.'),
(105, '2014-09-12 12:31:02', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed contactbanner.'),
(106, '2014-09-12 12:34:34', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed contactbanner.'),
(107, '2014-09-12 12:35:46', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed contactbanner.'),
(108, '2014-09-12 12:36:29', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed contactbanner.'),
(109, '2014-09-12 12:38:28', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed locationbanner.'),
(110, '2014-09-16 11:19:18', 1, 21, '1', 'illumine - Doctors and Health Care Responsive Theme', 2, 'Changed homebanner.');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'specility', 'drprofile', 'specility'),
(8, 'country', 'drprofile', 'country'),
(9, 'state', 'drprofile', 'state'),
(10, 'city', 'drprofile', 'city'),
(11, 'drprofile', 'drprofile', 'drprofile'),
(12, 'hospital', 'hospitals', 'hospital'),
(13, 'contact', 'contact_info', 'contact'),
(14, 'cause', 'symptomchecker', 'cause'),
(15, 'diagnosis', 'symptomchecker', 'diagnosis'),
(16, 'symptom', 'symptomchecker', 'symptom'),
(17, 'video_health_tip', 'video_health_tips', 'video_health_tip'),
(18, 'news', 'video_health_tips', 'news'),
(19, 'contact', 'web', 'contact'),
(20, 'site_ configuration', 'setting', 'site_configuration'),
(21, 'banner', 'setting', 'banner'),
(22, 'upcoming_event', 'upcomingevents', 'upcoming_event'),
(23, 'commondisease', 'footer', 'commondisease'),
(24, 'footer', 'setting', 'footer');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('62jg2h6pq37cbc2yx6cj7ufqirg5cosd', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-25 07:19:09'),
('a5pd6agdivgek0j0wdnkagbxlcfllmh5', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-30 11:03:16'),
('b8g9ttvy0w0966ze8ct4zh23stxfvw4z', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-22 09:05:53'),
('dawsuczaxrm44auqp54n72lpadcci6nd', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-15 08:11:39'),
('fi1ylgfqndf0n15sbsoryzaljxmusqt3', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-13 10:13:59'),
('fwcp5cb9b691xkgnxvslc41gscxotawa', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-25 09:46:38'),
('iho4u4c50igdicjni0gufyvoyzrnbszb', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-16 08:14:19'),
('k9g29oagjsp16hzwtpd1gho5jqu0tglx', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-25 06:58:52'),
('mbs4hn62m751pwv8iwmn2y5q9p0vabmp', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-18 04:38:55'),
('mufptdovmnx8orva8z7fegvd9zi7fdfa', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-11 10:29:41'),
('pklu3sqhhll1blwzfkaoxclskr5nv92g', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-15 10:42:40'),
('rog2kxczl76f1v92mk6xyw5fif5lfo7d', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-11 09:23:08'),
('u7zy28es4azsr27ijua0sciehge4g34y', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-25 11:01:00'),
('vd0l11bz1sh6izkfb1spca06fe86tje2', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-15 07:57:02'),
('x01v54yy5jhqunf7fdv9a8umq6mm5z7x', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-15 12:57:25'),
('ywa02ebfu90zesqwo42w9bgydlqu3l2m', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-11 09:23:56'),
('yxdd7njrj1aachbgwvpfvnliuwt2ztvc', 'MjViMWU1ZTE4NmQ5ZmY1YzBlNGVhNWMyMTdlYzRjNjZlNGRlMjA0Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-26 04:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `drprofile_city`
--

CREATE TABLE IF NOT EXISTS `drprofile_city` (
`id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `drprofile_city`
--

INSERT INTO `drprofile_city` (`id`, `city`) VALUES
(1, 'Mohali'),
(2, 'Ludhiana'),
(3, 'MOHALI');

-- --------------------------------------------------------

--
-- Table structure for table `drprofile_country`
--

CREATE TABLE IF NOT EXISTS `drprofile_country` (
`id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `drprofile_country`
--

INSERT INTO `drprofile_country` (`id`, `country`) VALUES
(1, 'India'),
(2, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `drprofile_drprofile`
--

CREATE TABLE IF NOT EXISTS `drprofile_drprofile` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `Qualification` varchar(50) NOT NULL,
  `Description` longtext NOT NULL,
  `Experience` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` int(11) NOT NULL,
  `CurrentlyWorking` varchar(42) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `drprofile_drprofile`
--

INSERT INTO `drprofile_drprofile` (`id`, `name`, `image`, `Qualification`, `Description`, `Experience`, `Email`, `Phone`, `CurrentlyWorking`) VALUES
(1, 'Dr. Vikas Bansal ', 'doctors/Dr.-Vikas-Bansal.png', 'M.D. (Pediatrics),F.N.B. Pediatric Critical Care', 'Dr. Vikas Bansal is a specilist of  Pediatric Critical Care,Pediatric Mechanical Ventilation,Pediatric Pulmonology,Neonatal and Pediatric Fiberoptic Bronchoscopy,Foreign Body Removal with Rigid Bronchoscopy ', 'FNB-Pediatric Critical Care Sri Ganga Ram Hospital', 'info@apollo.com', 6617222, '30.8833459,75.88770629999999'),
(2, 'Dr. Priyanka Gupta', 'doctors/DR.-PRIYANKA-GUPTA.png', 'MBBS ,DNB Pediatrics', 'Dr. Priyanka Gupta is a specialist of Pediatric Hematology &Oncology in apollo hospital ludhiana', 'Senior Resident â€“ Oswal Cancer Hospital', 'info@apollo.com', 6617222, '30.8833459,75.88770629999999'),
(3, 'Dr. Gurpreet Singh Kochhar', 'doctors/Dr.-Gurpreet-Singh-Kochar.png', 'MBBS', 'Dr. Gurpreet Singh Kochhar is a specilist of Pediatric Neurology', 'Worked as DM (SR) at AIIMS â€“ 2008 June to 2010', 'info@apollo.com', 6617222, '30.8833459,75.88770629999999'),
(4, 'Dr Rajiv Dhunna ', 'doctors/rajiv-dhunna.jpg', 'MBBS , MD , DNB , FCCS , PGDDM', 'Dr. Rajiv Dhunna, MD, DNB Consultant and has highly qualified & experienced doctors managing the department round the clock. ', '4.6 years', 'info@ivy.com', 9985666, '30.7069548,76.70801819999997');

-- --------------------------------------------------------

--
-- Table structure for table `drprofile_drprofile_Cities`
--

CREATE TABLE IF NOT EXISTS `drprofile_drprofile_Cities` (
`id` int(11) NOT NULL,
  `drprofile_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `drprofile_drprofile_Cities`
--

INSERT INTO `drprofile_drprofile_Cities` (`id`, `drprofile_id`, `city_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(6, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `drprofile_drprofile_Countaries`
--

CREATE TABLE IF NOT EXISTS `drprofile_drprofile_Countaries` (
`id` int(11) NOT NULL,
  `drprofile_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `drprofile_drprofile_Countaries`
--

INSERT INTO `drprofile_drprofile_Countaries` (`id`, `drprofile_id`, `country_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 1),
(6, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `drprofile_drprofile_Specialities`
--

CREATE TABLE IF NOT EXISTS `drprofile_drprofile_Specialities` (
`id` int(11) NOT NULL,
  `drprofile_id` int(11) NOT NULL,
  `specility_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `drprofile_drprofile_Specialities`
--

INSERT INTO `drprofile_drprofile_Specialities` (`id`, `drprofile_id`, `specility_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 1, 5),
(4, 1, 6),
(5, 1, 7),
(6, 2, 8),
(7, 3, 9),
(10, 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `drprofile_drprofile_States`
--

CREATE TABLE IF NOT EXISTS `drprofile_drprofile_States` (
`id` int(11) NOT NULL,
  `drprofile_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `drprofile_drprofile_States`
--

INSERT INTO `drprofile_drprofile_States` (`id`, `drprofile_id`, `state_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 1),
(6, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `drprofile_specility`
--

CREATE TABLE IF NOT EXISTS `drprofile_specility` (
`id` int(11) NOT NULL,
  `speciality` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `drprofile_specility`
--

INSERT INTO `drprofile_specility` (`id`, `speciality`) VALUES
(1, 'Cancer'),
(2, 'Surgery,'),
(3, 'Pediatric Critical Care '),
(4, 'Pediatric Mechanical Ventilation'),
(5, 'Pediatric Pulmonology.'),
(6, 'Neonatal and Pediatric Fiberoptic Bronchoscopy'),
(7, 'Foreign Body Removal with Rigid Bronchoscopy '),
(8, 'Pediatric Hematology &Oncology'),
(9, 'Pediatric Neurology'),
(10, 'Anaesthesia');

-- --------------------------------------------------------

--
-- Table structure for table `drprofile_state`
--

CREATE TABLE IF NOT EXISTS `drprofile_state` (
`id` int(11) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `drprofile_state`
--

INSERT INTO `drprofile_state` (`id`, `state`) VALUES
(1, 'Punjab'),
(2, 'Punjab');

-- --------------------------------------------------------

--
-- Table structure for table `footer_commondisease`
--

CREATE TABLE IF NOT EXISTS `footer_commondisease` (
`id` int(11) NOT NULL,
  `Symptom_Name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `footer_commondisease`
--

INSERT INTO `footer_commondisease` (`id`, `Symptom_Name`) VALUES
(2, 'tarun');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_hospital`
--

CREATE TABLE IF NOT EXISTS `hospitals_hospital` (
`id` int(11) NOT NULL,
  `Hospitalname` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `PhoneNo` int(11) NOT NULL,
  `Email` varchar(75) NOT NULL,
  `address` varchar(200) NOT NULL,
  `Location` varchar(42) NOT NULL,
  `Description` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hospitals_hospital`
--

INSERT INTO `hospitals_hospital` (`id`, `Hospitalname`, `image`, `PhoneNo`, `Email`, `address`, `Location`, `Description`) VALUES
(1, 'Ivy', 'hospitals/ivy.jpg', 12345678, 'ivy@gmail.com', 'Mohali 71 sector', '30.7069548,76.70801819999997', 'Ivy Healthcare Group is one of the largest healthcare providers in Punjab with a network of four operational hospitals at Mohali , Nawanshahr , Khanna and Hoshiarpur and with two new branches coming up at Amritsar and Bathinda'),
(2, 'SPS APOLLO HOSPITAL', 'hospitals/civil.jpg', 123455, 'tarun@gmail.com', 'ludhiana', '30.8884264,75.84322759999998', 'ewfreg'),
(3, 'abc', 'hospitals/ivy_1.jpg', 1233, 'abc@gmail.com', 'abc', '30.900965,75.85727580000002', 'sgregg'),
(4, 'testing', 'hospitals/civil_1.jpg', 1233, 'abc@gmail.com', 'abc', '30.7046486,76.71787259999996', 'dvrgrgrg'),
(5, 'qwer', 'hospitals/ivy_2.jpg', 1233, 'abc@gmail.com', 'abc', '31.813226,75.66373750000002', 'efef');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_hospital_Cities`
--

CREATE TABLE IF NOT EXISTS `hospitals_hospital_Cities` (
`id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hospitals_hospital_Cities`
--

INSERT INTO `hospitals_hospital_Cities` (`id`, `hospital_id`, `city_id`) VALUES
(5, 1, 1),
(8, 2, 2),
(6, 3, 1),
(7, 4, 1),
(10, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_hospital_Countaries`
--

CREATE TABLE IF NOT EXISTS `hospitals_hospital_Countaries` (
`id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hospitals_hospital_Countaries`
--

INSERT INTO `hospitals_hospital_Countaries` (`id`, `hospital_id`, `country_id`) VALUES
(5, 1, 1),
(8, 2, 2),
(6, 3, 1),
(7, 4, 2),
(10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_hospital_Specialities`
--

CREATE TABLE IF NOT EXISTS `hospitals_hospital_Specialities` (
`id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `specility_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `hospitals_hospital_Specialities`
--

INSERT INTO `hospitals_hospital_Specialities` (`id`, `hospital_id`, `specility_id`) VALUES
(8, 1, 1),
(9, 1, 2),
(14, 2, 1),
(10, 3, 1),
(11, 3, 2),
(12, 4, 3),
(13, 4, 4),
(17, 5, 3),
(18, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_hospital_States`
--

CREATE TABLE IF NOT EXISTS `hospitals_hospital_States` (
`id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hospitals_hospital_States`
--

INSERT INTO `hospitals_hospital_States` (`id`, `hospital_id`, `state_id`) VALUES
(5, 1, 1),
(8, 2, 1),
(6, 3, 1),
(7, 4, 1),
(10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting_banner`
--

CREATE TABLE IF NOT EXISTS `setting_banner` (
`id` int(11) NOT NULL,
  `bannername` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `homebanner` varchar(100) NOT NULL,
  `symptombanner` varchar(100) NOT NULL,
  `doctorbanner` varchar(100) NOT NULL,
  `hospitalbanner` varchar(100) NOT NULL,
  `locationbanner` varchar(100) NOT NULL,
  `contactbanner` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `setting_banner`
--

INSERT INTO `setting_banner` (`id`, `bannername`, `banner`, `homebanner`, `symptombanner`, `doctorbanner`, `hospitalbanner`, `locationbanner`, `contactbanner`) VALUES
(1, 'illumine - Doctors and Health Care Responsive Theme', 'banner/sliderImage2_1.jpg', 'banner/hospital-new.jpg', 'banner/sliderImage1.jpg', 'banner/sliderImage2_2.jpg', 'banner/Toronto_city_General_Hospital_wallpaper.jpg', 'banner/location_1.png', 'banner/con1_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting_footer`
--

CREATE TABLE IF NOT EXISTS `setting_footer` (
`id` int(11) NOT NULL,
  `Imagename` varchar(100) NOT NULL,
  `footerimage` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `setting_footer`
--

INSERT INTO `setting_footer` (`id`, `Imagename`, `footerimage`) VALUES
(1, 'helo', 'footer/Devendra-Pal-Singh.png'),
(2, 'hii', 'footer/Dr.-Gurpreet-Singh-Kochar.png'),
(3, 'hello', 'footer/DR.-PRIYANKA-GUPTA.png'),
(4, 'testing', 'footer/Dr.-Gurpreet-Singh-Kochar_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `setting_site_configuration`
--

CREATE TABLE IF NOT EXISTS `setting_site_configuration` (
`id` int(11) NOT NULL,
  `sitename` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `facebooklink` varchar(100) NOT NULL,
  `twitterlink` varchar(100) NOT NULL,
  `googlepluslink` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `setting_site_configuration`
--

INSERT INTO `setting_site_configuration` (`id`, `sitename`, `logo`, `banner`, `email`, `contact`, `facebooklink`, `twitterlink`, `googlepluslink`) VALUES
(1, 'find my doctor', 'logo/logo.png', 'banner/sliderImage3.jpg', 'tarun@gmail.com', '9872111098', 'www.facebook.com', 'www.twitter.com', 'www.plus.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `symptomchecker_cause`
--

CREATE TABLE IF NOT EXISTS `symptomchecker_cause` (
`id` int(11) NOT NULL,
  `Descripton` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `symptomchecker_cause`
--

INSERT INTO `symptomchecker_cause` (`id`, `Descripton`) VALUES
(1, 'khaff'),
(2, 'cough'),
(3, 'Runny or stuffy nose'),
(4, 'hot body');

-- --------------------------------------------------------

--
-- Table structure for table `symptomchecker_diagnosis`
--

CREATE TABLE IF NOT EXISTS `symptomchecker_diagnosis` (
`id` int(11) NOT NULL,
  `Diagnosing` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `symptomchecker_diagnosis`
--

INSERT INTO `symptomchecker_diagnosis` (`id`, `Diagnosing`) VALUES
(1, 'khang'),
(2, 'throat problem'),
(3, 'Muscle or body aches');

-- --------------------------------------------------------

--
-- Table structure for table `symptomchecker_symptom`
--

CREATE TABLE IF NOT EXISTS `symptomchecker_symptom` (
`id` int(11) NOT NULL,
  `Symptom_Name` varchar(100) NOT NULL,
  `Related_Info` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `symptomchecker_symptom`
--

INSERT INTO `symptomchecker_symptom` (`id`, `Symptom_Name`, `Related_Info`) VALUES
(1, 'gala khrab', 'dsfgdf'),
(2, 'Cough ', 'A cough is a common reflex action that aims to clear the throat of mucus or foreign irritants. Coughing to clear the throat is typically an infrequent action, although there are a number of other conditions that can cause more frequent bouts of coughing'),
(3, 'Flu', 'Influenza (also known as the flu) is a contagious respiratory illness caused by flu viruses. It can cause mild to severe illness, and at times can lead to death. The flu is different from a cold. The flu usually comes on suddenly. People who have the flu often feel some or all of these symptoms:'),
(4, 'bukhar', 'bukhar ho gya'),
(5, 'malaria', 'malaria ');

-- --------------------------------------------------------

--
-- Table structure for table `symptomchecker_symptom_Causes`
--

CREATE TABLE IF NOT EXISTS `symptomchecker_symptom_Causes` (
`id` int(11) NOT NULL,
  `symptom_id` int(11) NOT NULL,
  `cause_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `symptomchecker_symptom_Causes`
--

INSERT INTO `symptomchecker_symptom_Causes` (`id`, `symptom_id`, `cause_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 4),
(5, 5, 1),
(6, 5, 2),
(7, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `symptomchecker_symptom_Diagnosing`
--

CREATE TABLE IF NOT EXISTS `symptomchecker_symptom_Diagnosing` (
`id` int(11) NOT NULL,
  `symptom_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `symptomchecker_symptom_Diagnosing`
--

INSERT INTO `symptomchecker_symptom_Diagnosing` (`id`, `symptom_id`, `diagnosis_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 3, 3),
(5, 4, 1),
(6, 4, 2),
(7, 4, 3),
(8, 5, 1),
(9, 5, 2),
(10, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `upcomingevents_upcoming_event`
--

CREATE TABLE IF NOT EXISTS `upcomingevents_upcoming_event` (
`id` int(11) NOT NULL,
  `Event_Title` varchar(100) NOT NULL,
  `Event_Description` longtext NOT NULL,
  `Event_Date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `upcomingevents_upcoming_event`
--

INSERT INTO `upcomingevents_upcoming_event` (`id`, `Event_Title`, `Event_Description`, `Event_Date`) VALUES
(1, 'Party', 'Party at 9 o clock', '2014-09-16'),
(2, 'medical camp in mohali', 'medical camp in mohli', '2014-09-03'),
(3, 'medical camp in jalandhar', 'medical camp in jalandhar', '2014-09-04'),
(4, 'medical camp in ludhiana', 'medical camp in ludhiana', '2014-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `video_health_tips_news`
--

CREATE TABLE IF NOT EXISTS `video_health_tips_news` (
`id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Information` longtext NOT NULL,
  `Image_src` varchar(100) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `video_health_tips_news`
--

INSERT INTO `video_health_tips_news` (`id`, `Title`, `Information`, `Image_src`, `Date`) VALUES
(4, 'testing', 'testing', 'latestnews/Dr.-Narinder-Verma.png', '2014-09-02 11:08:13'),
(5, 'medicine for people', 'tested', 'latestnews/Dr.-Narinder-Verma_1.png', '2014-09-02 11:17:23'),
(6, 'testing', 'hiii', 'latestnews/DR.-PRIYANKA-GUPTA.png', '2014-09-02 11:19:31'),
(7, 'hii', 'hii sorry for intrupted', 'latestnews/Dr.-Ramanbir-Singh.png', '2014-09-02 11:20:31'),
(8, 'holla', 'hoola sorrry for intrupted', 'latestnews/Dr.-Deepinder-Singh.png', '2014-09-02 11:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `video_health_tips_video_health_tip`
--

CREATE TABLE IF NOT EXISTS `video_health_tips_video_health_tip` (
`id` int(11) NOT NULL,
  `Video_Name` varchar(100) NOT NULL,
  `Video_source` longtext NOT NULL,
  `Image_src` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `video_health_tips_video_health_tip`
--

INSERT INTO `video_health_tips_video_health_tip` (`id`, `Video_Name`, `Video_source`, `Image_src`) VALUES
(1, 'Desi kalakar', 'https://www.youtube.com/watch?v=8BuyhqfnH_c', 'video_image/Picture1.jpg'),
(2, 'headache problem', 'https://www.youtube.com/watch?v=tytOdvgEAJI', 'video_image/Dr.-Narinder-Verma.png'),
(3, 'pain problem', 'https://www.youtube.com/watch?v=tytOdvgEAJI', 'video_image/Dr.-Gurpreet-Singh-Kochar.png');

-- --------------------------------------------------------

--
-- Table structure for table `web_contact`
--

CREATE TABLE IF NOT EXISTS `web_contact` (
`id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Datetime` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `web_contact`
--

INSERT INTO `web_contact` (`id`, `Name`, `Email`, `Subject`, `Datetime`) VALUES
(1, 'gurmukh', 'gurmukh@gmail.com', 'hello', '2014-09-02 00:00:00'),
(2, 'tarun', 'tarunsharma192@gmail.com', 'hello', '2014-09-02 00:00:00'),
(3, 'parminder', 'parminder12293@gmail.com', 'fever', '2014-09-04 00:00:00'),
(4, 'gurmukh', 'gurmukh@gmail.com', 'hello', '2014-09-12 00:00:00'),
(5, 'Robin', 'rob@gmail.com', 'hello ', '2014-09-11 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissions_5f412f9a` (`group_id`), ADD KEY `auth_group_permissions_83d7f98b` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`), ADD KEY `auth_permission_37ef4eb4` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_6340c63c` (`user_id`), ADD KEY `auth_user_groups_5f412f9a` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permissions_6340c63c` (`user_id`), ADD KEY `auth_user_user_permissions_83d7f98b` (`permission_id`);

--
-- Indexes for table `contact_info_contact`
--
ALTER TABLE `contact_info_contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_6340c63c` (`user_id`), ADD KEY `django_admin_log_37ef4eb4` (`content_type_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `app_label` (`app_label`,`model`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_b7b81f0c` (`expire_date`);

--
-- Indexes for table `drprofile_city`
--
ALTER TABLE `drprofile_city`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drprofile_country`
--
ALTER TABLE `drprofile_country`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drprofile_drprofile`
--
ALTER TABLE `drprofile_drprofile`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drprofile_drprofile_Cities`
--
ALTER TABLE `drprofile_drprofile_Cities`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `drprofile_id` (`drprofile_id`,`city_id`), ADD KEY `drprofile_drprofile_Cities_5f347afa` (`drprofile_id`), ADD KEY `drprofile_drprofile_Cities_b376980e` (`city_id`);

--
-- Indexes for table `drprofile_drprofile_Countaries`
--
ALTER TABLE `drprofile_drprofile_Countaries`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `drprofile_id` (`drprofile_id`,`country_id`), ADD KEY `drprofile_drprofile_Countaries_5f347afa` (`drprofile_id`), ADD KEY `drprofile_drprofile_Countaries_d860be3c` (`country_id`);

--
-- Indexes for table `drprofile_drprofile_Specialities`
--
ALTER TABLE `drprofile_drprofile_Specialities`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `drprofile_id` (`drprofile_id`,`specility_id`), ADD KEY `drprofile_drprofile_Specialities_5f347afa` (`drprofile_id`), ADD KEY `drprofile_drprofile_Specialities_8238258a` (`specility_id`);

--
-- Indexes for table `drprofile_drprofile_States`
--
ALTER TABLE `drprofile_drprofile_States`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `drprofile_id` (`drprofile_id`,`state_id`), ADD KEY `drprofile_drprofile_States_5f347afa` (`drprofile_id`), ADD KEY `drprofile_drprofile_States_5654bf12` (`state_id`);

--
-- Indexes for table `drprofile_specility`
--
ALTER TABLE `drprofile_specility`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drprofile_state`
--
ALTER TABLE `drprofile_state`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_commondisease`
--
ALTER TABLE `footer_commondisease`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals_hospital`
--
ALTER TABLE `hospitals_hospital`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals_hospital_Cities`
--
ALTER TABLE `hospitals_hospital_Cities`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `hospital_id` (`hospital_id`,`city_id`), ADD KEY `hospitals_hospital_Cities_3113e40b` (`hospital_id`), ADD KEY `hospitals_hospital_Cities_b376980e` (`city_id`);

--
-- Indexes for table `hospitals_hospital_Countaries`
--
ALTER TABLE `hospitals_hospital_Countaries`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `hospital_id` (`hospital_id`,`country_id`), ADD KEY `hospitals_hospital_Countaries_3113e40b` (`hospital_id`), ADD KEY `hospitals_hospital_Countaries_d860be3c` (`country_id`);

--
-- Indexes for table `hospitals_hospital_Specialities`
--
ALTER TABLE `hospitals_hospital_Specialities`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `hospital_id` (`hospital_id`,`specility_id`), ADD KEY `hospitals_hospital_Specialities_3113e40b` (`hospital_id`), ADD KEY `hospitals_hospital_Specialities_8238258a` (`specility_id`);

--
-- Indexes for table `hospitals_hospital_States`
--
ALTER TABLE `hospitals_hospital_States`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `hospital_id` (`hospital_id`,`state_id`), ADD KEY `hospitals_hospital_States_3113e40b` (`hospital_id`), ADD KEY `hospitals_hospital_States_5654bf12` (`state_id`);

--
-- Indexes for table `setting_banner`
--
ALTER TABLE `setting_banner`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_footer`
--
ALTER TABLE `setting_footer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_site_configuration`
--
ALTER TABLE `setting_site_configuration`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptomchecker_cause`
--
ALTER TABLE `symptomchecker_cause`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptomchecker_diagnosis`
--
ALTER TABLE `symptomchecker_diagnosis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptomchecker_symptom`
--
ALTER TABLE `symptomchecker_symptom`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptomchecker_symptom_Causes`
--
ALTER TABLE `symptomchecker_symptom_Causes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `symptom_id` (`symptom_id`,`cause_id`), ADD KEY `symptomchecker_symptom_Causes_a4a40777` (`symptom_id`), ADD KEY `symptomchecker_symptom_Causes_182a6c0d` (`cause_id`);

--
-- Indexes for table `symptomchecker_symptom_Diagnosing`
--
ALTER TABLE `symptomchecker_symptom_Diagnosing`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `symptom_id` (`symptom_id`,`diagnosis_id`), ADD KEY `symptomchecker_symptom_Diagnosing_a4a40777` (`symptom_id`), ADD KEY `symptomchecker_symptom_Diagnosing_ba16d7b6` (`diagnosis_id`);

--
-- Indexes for table `upcomingevents_upcoming_event`
--
ALTER TABLE `upcomingevents_upcoming_event`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_health_tips_news`
--
ALTER TABLE `video_health_tips_news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_health_tips_video_health_tip`
--
ALTER TABLE `video_health_tips_video_health_tip`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact`
--
ALTER TABLE `web_contact`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT for table `contact_info_contact`
--
ALTER TABLE `contact_info_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `drprofile_city`
--
ALTER TABLE `drprofile_city`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `drprofile_country`
--
ALTER TABLE `drprofile_country`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `drprofile_drprofile`
--
ALTER TABLE `drprofile_drprofile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `drprofile_drprofile_Cities`
--
ALTER TABLE `drprofile_drprofile_Cities`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `drprofile_drprofile_Countaries`
--
ALTER TABLE `drprofile_drprofile_Countaries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `drprofile_drprofile_Specialities`
--
ALTER TABLE `drprofile_drprofile_Specialities`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `drprofile_drprofile_States`
--
ALTER TABLE `drprofile_drprofile_States`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `drprofile_specility`
--
ALTER TABLE `drprofile_specility`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `drprofile_state`
--
ALTER TABLE `drprofile_state`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `footer_commondisease`
--
ALTER TABLE `footer_commondisease`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hospitals_hospital`
--
ALTER TABLE `hospitals_hospital`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hospitals_hospital_Cities`
--
ALTER TABLE `hospitals_hospital_Cities`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hospitals_hospital_Countaries`
--
ALTER TABLE `hospitals_hospital_Countaries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hospitals_hospital_Specialities`
--
ALTER TABLE `hospitals_hospital_Specialities`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `hospitals_hospital_States`
--
ALTER TABLE `hospitals_hospital_States`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `setting_banner`
--
ALTER TABLE `setting_banner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting_footer`
--
ALTER TABLE `setting_footer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `setting_site_configuration`
--
ALTER TABLE `setting_site_configuration`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `symptomchecker_cause`
--
ALTER TABLE `symptomchecker_cause`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `symptomchecker_diagnosis`
--
ALTER TABLE `symptomchecker_diagnosis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `symptomchecker_symptom`
--
ALTER TABLE `symptomchecker_symptom`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `symptomchecker_symptom_Causes`
--
ALTER TABLE `symptomchecker_symptom_Causes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `symptomchecker_symptom_Diagnosing`
--
ALTER TABLE `symptomchecker_symptom_Diagnosing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `upcomingevents_upcoming_event`
--
ALTER TABLE `upcomingevents_upcoming_event`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `video_health_tips_news`
--
ALTER TABLE `video_health_tips_news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `video_health_tips_video_health_tip`
--
ALTER TABLE `video_health_tips_video_health_tip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `web_contact`
--
ALTER TABLE `web_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `drprofile_drprofile_Cities`
--
ALTER TABLE `drprofile_drprofile_Cities`
ADD CONSTRAINT `city_id_refs_id_2c921765` FOREIGN KEY (`city_id`) REFERENCES `drprofile_city` (`id`),
ADD CONSTRAINT `drprofile_id_refs_id_e5e288a2` FOREIGN KEY (`drprofile_id`) REFERENCES `drprofile_drprofile` (`id`);

--
-- Constraints for table `drprofile_drprofile_Countaries`
--
ALTER TABLE `drprofile_drprofile_Countaries`
ADD CONSTRAINT `country_id_refs_id_1c521e7f` FOREIGN KEY (`country_id`) REFERENCES `drprofile_country` (`id`),
ADD CONSTRAINT `drprofile_id_refs_id_e107bd49` FOREIGN KEY (`drprofile_id`) REFERENCES `drprofile_drprofile` (`id`);

--
-- Constraints for table `drprofile_drprofile_Specialities`
--
ALTER TABLE `drprofile_drprofile_Specialities`
ADD CONSTRAINT `drprofile_id_refs_id_e44d3ce6` FOREIGN KEY (`drprofile_id`) REFERENCES `drprofile_drprofile` (`id`),
ADD CONSTRAINT `specility_id_refs_id_2d7b3757` FOREIGN KEY (`specility_id`) REFERENCES `drprofile_specility` (`id`);

--
-- Constraints for table `drprofile_drprofile_States`
--
ALTER TABLE `drprofile_drprofile_States`
ADD CONSTRAINT `drprofile_id_refs_id_b4026891` FOREIGN KEY (`drprofile_id`) REFERENCES `drprofile_drprofile` (`id`),
ADD CONSTRAINT `state_id_refs_id_d6c66bf0` FOREIGN KEY (`state_id`) REFERENCES `drprofile_state` (`id`);

--
-- Constraints for table `hospitals_hospital_Cities`
--
ALTER TABLE `hospitals_hospital_Cities`
ADD CONSTRAINT `city_id_refs_id_b90c6905` FOREIGN KEY (`city_id`) REFERENCES `drprofile_city` (`id`),
ADD CONSTRAINT `hospital_id_refs_id_52a58cf0` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals_hospital` (`id`);

--
-- Constraints for table `hospitals_hospital_Countaries`
--
ALTER TABLE `hospitals_hospital_Countaries`
ADD CONSTRAINT `country_id_refs_id_d7630dc6` FOREIGN KEY (`country_id`) REFERENCES `drprofile_country` (`id`),
ADD CONSTRAINT `hospital_id_refs_id_118707d6` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals_hospital` (`id`);

--
-- Constraints for table `hospitals_hospital_Specialities`
--
ALTER TABLE `hospitals_hospital_Specialities`
ADD CONSTRAINT `hospital_id_refs_id_69cfd8c1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals_hospital` (`id`),
ADD CONSTRAINT `specility_id_refs_id_3d9ae236` FOREIGN KEY (`specility_id`) REFERENCES `drprofile_specility` (`id`);

--
-- Constraints for table `hospitals_hospital_States`
--
ALTER TABLE `hospitals_hospital_States`
ADD CONSTRAINT `hospital_id_refs_id_8503ee96` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals_hospital` (`id`),
ADD CONSTRAINT `state_id_refs_id_fa44fe81` FOREIGN KEY (`state_id`) REFERENCES `drprofile_state` (`id`);

--
-- Constraints for table `symptomchecker_symptom_Causes`
--
ALTER TABLE `symptomchecker_symptom_Causes`
ADD CONSTRAINT `cause_id_refs_id_49393d6e` FOREIGN KEY (`cause_id`) REFERENCES `symptomchecker_cause` (`id`),
ADD CONSTRAINT `symptom_id_refs_id_7973249e` FOREIGN KEY (`symptom_id`) REFERENCES `symptomchecker_symptom` (`id`);

--
-- Constraints for table `symptomchecker_symptom_Diagnosing`
--
ALTER TABLE `symptomchecker_symptom_Diagnosing`
ADD CONSTRAINT `diagnosis_id_refs_id_5cde380f` FOREIGN KEY (`diagnosis_id`) REFERENCES `symptomchecker_diagnosis` (`id`),
ADD CONSTRAINT `symptom_id_refs_id_ff19b18a` FOREIGN KEY (`symptom_id`) REFERENCES `symptomchecker_symptom` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
