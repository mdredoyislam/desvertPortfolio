-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 12:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desvert`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(45, 'action_scheduler/migration_hook', 'complete', '2023-02-22 05:45:27', '2023-02-22 05:45:27', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1677044727;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1677044727;}', 1, 1, '2023-02-22 05:45:28', '2023-02-22 05:45:28', 0, NULL),
(46, 'action_scheduler/migration_hook', 'complete', '2023-02-22 05:46:28', '2023-02-22 05:46:28', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1677044788;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1677044788;}', 1, 1, '2023-02-22 05:46:35', '2023-02-22 05:46:35', 0, NULL),
(47, 'action_scheduler/migration_hook', 'complete', '2023-02-22 05:46:28', '2023-02-22 05:46:28', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1677044788;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1677044788;}', 1, 1, '2023-02-22 05:46:35', '2023-02-22 05:46:35', 0, NULL),
(48, 'wp_mail_smtp_summary_report_email', 'complete', '2023-02-27 14:00:00', '2023-02-27 14:00:00', '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1677506400;s:18:\"\0*\0first_timestamp\";i:1677506400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1677506400;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2023-02-28 03:09:44', '2023-02-28 03:09:44', 0, NULL),
(49, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[1]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2023-02-22 05:45:35', '2023-02-22 05:45:35', 0, NULL),
(50, 'action_scheduler/migration_hook', 'complete', '2023-02-22 07:20:13', '2023-02-22 07:20:13', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1677050413;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1677050413;}', 1, 1, '2023-02-22 07:20:35', '2023-02-22 07:20:35', 0, NULL),
(51, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[2]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2023-02-27 11:02:04', '2023-02-27 11:02:04', 0, NULL),
(52, 'wp_mail_smtp_summary_report_email', 'pending', '2023-03-07 03:09:44', '2023-03-07 03:09:44', '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1678158584;s:18:\"\0*\0first_timestamp\";i:1677506400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1678158584;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 45, 'action created', '2023-02-22 05:44:27', '2023-02-22 05:44:27'),
(2, 45, 'action started via WP Cron', '2023-02-22 05:45:28', '2023-02-22 05:45:28'),
(3, 45, 'action complete via WP Cron', '2023-02-22 05:45:28', '2023-02-22 05:45:28'),
(4, 46, 'action created', '2023-02-22 05:45:29', '2023-02-22 05:45:29'),
(5, 47, 'action created', '2023-02-22 05:45:29', '2023-02-22 05:45:29'),
(6, 48, 'action created', '2023-02-22 05:45:34', '2023-02-22 05:45:34'),
(7, 49, 'action created', '2023-02-22 05:45:34', '2023-02-22 05:45:34'),
(8, 49, 'action started via Async Request', '2023-02-22 05:45:35', '2023-02-22 05:45:35'),
(9, 49, 'action complete via Async Request', '2023-02-22 05:45:35', '2023-02-22 05:45:35'),
(10, 46, 'action started via WP Cron', '2023-02-22 05:46:35', '2023-02-22 05:46:35'),
(11, 46, 'action complete via WP Cron', '2023-02-22 05:46:35', '2023-02-22 05:46:35'),
(12, 47, 'action started via WP Cron', '2023-02-22 05:46:35', '2023-02-22 05:46:35'),
(13, 47, 'action complete via WP Cron', '2023-02-22 05:46:35', '2023-02-22 05:46:35'),
(14, 50, 'action created', '2023-02-22 07:19:13', '2023-02-22 07:19:13'),
(15, 50, 'action started via WP Cron', '2023-02-22 07:20:35', '2023-02-22 07:20:35'),
(16, 50, 'action complete via WP Cron', '2023-02-22 07:20:35', '2023-02-22 07:20:35'),
(17, 51, 'action created', '2023-02-27 11:02:01', '2023-02-27 11:02:01'),
(18, 51, 'action started via Async Request', '2023-02-27 11:02:03', '2023-02-27 11:02:03'),
(19, 51, 'action complete via Async Request', '2023-02-27 11:02:03', '2023-02-27 11:02:03'),
(20, 48, 'action started via WP Cron', '2023-02-28 03:09:39', '2023-02-28 03:09:39'),
(21, 48, 'action complete via WP Cron', '2023-02-28 03:09:43', '2023-02-28 03:09:43'),
(22, 52, 'action created', '2023-02-28 03:09:44', '2023-02-28 03:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-02-10 04:06:18', '2023-02-10 04:06:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/WP/DesVert', 'yes'),
(2, 'home', 'http://localhost/WP/DesVert', 'yes'),
(3, 'blogname', 'DesVert', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mdredoyislam84@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:136:{s:15:\"testimonials/?$\";s:32:\"index.php?post_type=testimonials\";s:45:\"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:40:\"testimonials/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:32:\"testimonials/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=testimonials&paged=$matches[1]\";s:19:\"desvert_services/?$\";s:36:\"index.php?post_type=desvert_services\";s:49:\"desvert_services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=desvert_services&feed=$matches[1]\";s:44:\"desvert_services/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=desvert_services&feed=$matches[1]\";s:36:\"desvert_services/page/([0-9]{1,})/?$\";s:54:\"index.php?post_type=desvert_services&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"testimonials/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"testimonials/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"testimonials/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"testimonials/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"testimonials/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"testimonials/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"testimonials/(.+?)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:31:\"testimonials/(.+?)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:51:\"testimonials/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:46:\"testimonials/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:39:\"testimonials/(.+?)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:46:\"testimonials/(.+?)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/(.+?)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:54:\"test_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?test_category=$matches[1]&feed=$matches[2]\";s:49:\"test_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?test_category=$matches[1]&feed=$matches[2]\";s:30:\"test_category/([^/]+)/embed/?$\";s:46:\"index.php?test_category=$matches[1]&embed=true\";s:42:\"test_category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?test_category=$matches[1]&paged=$matches[2]\";s:24:\"test_category/([^/]+)/?$\";s:35:\"index.php?test_category=$matches[1]\";s:42:\"desvert_services/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"desvert_services/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"desvert_services/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"desvert_services/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"desvert_services/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"desvert_services/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"desvert_services/(.+?)/embed/?$\";s:49:\"index.php?desvert_services=$matches[1]&embed=true\";s:35:\"desvert_services/(.+?)/trackback/?$\";s:43:\"index.php?desvert_services=$matches[1]&tb=1\";s:55:\"desvert_services/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?desvert_services=$matches[1]&feed=$matches[2]\";s:50:\"desvert_services/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?desvert_services=$matches[1]&feed=$matches[2]\";s:43:\"desvert_services/(.+?)/page/?([0-9]{1,})/?$\";s:56:\"index.php?desvert_services=$matches[1]&paged=$matches[2]\";s:50:\"desvert_services/(.+?)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?desvert_services=$matches[1]&cpage=$matches[2]\";s:39:\"desvert_services/(.+?)(?:/([0-9]+))?/?$\";s:55:\"index.php?desvert_services=$matches[1]&page=$matches[2]\";s:57:\"service_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?service_category=$matches[1]&feed=$matches[2]\";s:52:\"service_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?service_category=$matches[1]&feed=$matches[2]\";s:33:\"service_category/([^/]+)/embed/?$\";s:49:\"index.php?service_category=$matches[1]&embed=true\";s:45:\"service_category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?service_category=$matches[1]&paged=$matches[2]\";s:27:\"service_category/([^/]+)/?$\";s:38:\"index.php?service_category=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=110&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:35:\"classic-widgets/classic-widgets.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:39:\"copy-delete-posts/copy-delete-posts.php\";i:5;s:48:\"desvert-custom-plugins/desvert-custom-plugin.php\";i:6;s:41:\"jsm-show-post-meta/jsm-show-post-meta.php\";i:7;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:8;s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'desvert', 'yes'),
(41, 'stylesheet', 'desvert', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:39:\"copy-delete-posts/copy-delete-posts.php\";a:2:{i:0;s:15:\"Account\\Account\";i:1;s:25:\"onUninstallPluginListener\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '110', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '7', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1691553973', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:16:\"footer-sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:10:\"nav_menu-3\";i:2;s:10:\"nav_menu-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1677583466;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1677585980;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1677600380;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1677600397;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1677643579;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677643597;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677643599;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677902779;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:3:{i:3;a:1:{s:8:\"nav_menu\";i:2;}i:4;a:1:{s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:2:{s:22:\"3rTSVzsLrBVqFvkyniPWpG\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BoFBwS/Gz0IZJtnvyhkSyfFHXG8to90\";s:10:\"created_at\";i:1677478563;}s:22:\"w0U7Wf12xD5wEsIs2vqRYn\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BKXyES3IKn541k.u8eyRtDHNU9qY9u.\";s:10:\"created_at\";i:1677581224;}}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1676004301;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(129, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(130, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1677557220;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(135, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1677553789;s:7:\"checked\";a:4:{s:7:\"desvert\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(143, 'can_compress_scripts', '1', 'no'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(163, 'current_theme', 'DesVert', 'yes'),
(164, 'theme_mods_desvert', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:13:\"footermenutwo\";i:11;s:13:\"footermenuone\";i:10;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:5;}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(166, 'eiser', 'a:2:{s:12:\"text-example\";s:12:\"Default Text\";s:16:\"textarea-example\";s:12:\"Default Text\";}', 'yes'),
(167, 'eiser-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1676004302;}', 'yes'),
(168, 'recovery_mode_email_last_sent', '1677581224', 'yes'),
(169, 'redux_demo', 'a:68:{s:8:\"last_tab\";s:0:\"\";s:25:\"desvert-tagline-sub-title\";s:19:\"best design agency:\";s:21:\"desvert-tagline-title\";s:53:\"we help our clients to bring their ideas into reality\";s:12:\"color-scheme\";s:0:\"\";s:16:\"enable-preloader\";s:1:\"0\";s:10:\"select-rtl\";s:1:\"0\";s:8:\"fav-icon\";a:5:{s:3:\"url\";s:66:\"http://localhost/WP/DesVert/wp-content/uploads/2023/02/favicon.png\";s:2:\"id\";s:1:\"7\";s:6:\"height\";s:2:\"36\";s:5:\"width\";s:2:\"36\";s:9:\"thumbnail\";s:66:\"http://localhost/WP/DesVert/wp-content/uploads/2023/02/favicon.png\";}s:20:\"enable-home-one-logo\";s:1:\"0\";s:13:\"home-one-logo\";a:5:{s:3:\"url\";s:63:\"http://localhost/WP/DesVert/wp-content/uploads/2023/02/logo.png\";s:2:\"id\";s:1:\"5\";s:6:\"height\";s:2:\"39\";s:5:\"width\";s:3:\"171\";s:9:\"thumbnail\";s:63:\"http://localhost/WP/DesVert/wp-content/uploads/2023/02/logo.png\";}s:24:\"home-one-logo-dimentions\";a:3:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"units\";s:2:\"px\";}s:27:\"enable-home-one-mobile-logo\";s:1:\"0\";s:20:\"home-one-mobile-logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:25:\"desvert-header-info-title\";s:12:\"desvert info\";s:24:\"desvert-header-info-desc\";s:195:\"We are specializes in creative services, web design and development, print media. We have training facilities for our employees. So that they stay updated with the latest trends and technologies.\";s:15:\"top-header-show\";s:0:\"\";s:12:\"phone-number\";s:15:\"+880 1714862596\";s:13:\"email-address\";s:19:\"support@desvert.com\";s:13:\"country-title\";s:0:\"\";s:19:\"desvert-social-list\";a:4:{s:8:\"facebook\";s:32:\"https://www.facebook.com/DesVert\";s:8:\"linkedin\";s:1:\"#\";s:9:\"pintarest\";s:1:\"#\";s:9:\"instagram\";s:1:\"#\";}s:18:\"footer-source-type\";s:1:\"0\";s:20:\"choose-footer-styles\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:25:\"elementor-footer-template\";s:1:\"2\";s:27:\"desvert-appoinment-subtitle\";s:33:\"thinking about your next project?\";s:24:\"desvert-appoinment-title\";s:91:\"let’s start your project now, make an appointment for discuss with our expert consultant.\";s:32:\"desvert-appoinment-form-subtitle\";s:10:\"appoinment\";s:29:\"desvert-appoinment-form-title\";s:17:\"book an appinment\";s:34:\"desvert-appoinment-form-short-code\";s:0:\"\";s:30:\"desvert-appoinment-button-text\";s:16:\"make appointment\";s:21:\"desvert-gallery-title\";s:58:\"We will be happy to let you know about our recent projects\";s:24:\"desvert-gallery-btn-text\";s:13:\"explore more \";s:23:\"desvert-gallery-btn-url\";s:34:\"https://www.desvert.com/portfolio/\";s:15:\"desvert-gallery\";s:23:\"36,22,38,39,40,41,43,42\";s:21:\"testimonials-subtitle\";s:11:\"testimonial\";s:18:\"testimonials-title\";s:18:\"what customer says\";s:17:\"show-testimonials\";s:1:\"5\";s:22:\"counter-total-projects\";a:5:{s:14:\"Counter Number\";s:3:\"2.5\";s:13:\"Projects Text\";s:8:\"Projects\";s:14:\"Completed Text\";s:9:\"Completed\";s:10:\"Before Key\";s:0:\"\";s:9:\"After Key\";s:2:\"k+\";}s:16:\"served-customers\";a:5:{s:14:\"Counter Number\";s:3:\"500\";s:11:\"Served Text\";s:6:\"Served\";s:13:\"Customer Text\";s:8:\"Customer\";s:10:\"Before Key\";s:0:\"\";s:9:\"After Key\";s:1:\"+\";}s:12:\"master-minds\";a:5:{s:14:\"Counter Number\";s:0:\"\";s:11:\"Master Text\";s:6:\"Master\";s:10:\"Minds Text\";s:5:\"Minds\";s:10:\"Before Key\";s:0:\"\";s:9:\"After Key\";s:1:\"+\";}s:22:\"desvert-concerns-title\";s:12:\"our Concerns\";s:16:\"desvert-partners\";s:11:\"77,78,79,80\";s:18:\"footer-about-title\";s:8:\"about us\";s:22:\"footer-about-sub-title\";s:33:\"we’re creative and professional\";s:17:\"footer-about-text\";s:216:\"desvert is highly experienced outsourcing company and served clients all over the world. we are specialized in creative designs, web design and development. we keep us updated with the latest trends and technologies.\";s:21:\"footer-about-btn-text\";s:9:\"know More\";s:20:\"footer-about-btn-url\";s:1:\"#\";s:20:\"footer-wrapper-title\";s:22:\"want to touch with us?\";s:21:\"footer-whatsapp-title\";s:8:\"whatsapp\";s:22:\"footer-whatsapp-number\";s:14:\"+8801714862596\";s:24:\"footer-whatsapp-icon-img\";a:5:{s:3:\"url\";s:67:\"http://localhost/WP/DesVert/wp-content/uploads/2023/02/whatsapp.png\";s:2:\"id\";s:2:\"98\";s:6:\"height\";s:2:\"45\";s:5:\"width\";s:2:\"45\";s:9:\"thumbnail\";s:67:\"http://localhost/WP/DesVert/wp-content/uploads/2023/02/whatsapp.png\";}s:18:\"footer-email-title\";s:5:\"Email\";s:12:\"footer-email\";s:19:\"support@desvert.com\";s:21:\"footer-email-icon-img\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:20:\"footer-contact-title\";s:10:\"contact us\";s:22:\"footer-contact-address\";s:71:\"meher plaza (4th floor), house - 13/a road - 05, dhaka 1205, bangladesh\";s:16:\"blog-page-source\";s:1:\"1\";s:14:\"show-post-date\";s:1:\"0\";s:18:\"show-post-comments\";s:1:\"1\";s:19:\"show-post-read-more\";s:0:\"\";s:19:\"post-read-more-text\";s:9:\"Read More\";s:23:\"elementor-blog-template\";s:1:\"2\";s:15:\"tag-source-type\";s:1:\"0\";s:19:\"archive-source-type\";s:1:\"0\";s:18:\"author-source-type\";s:1:\"0\";s:20:\"category-source-type\";s:1:\"0\";s:18:\"search-source-type\";s:1:\"0\";s:15:\"404-source-type\";s:1:\"0\";s:23:\"single-post-source-type\";s:1:\"0\";s:21:\"blog-page-source-type\";s:1:\"0\";}', 'yes'),
(170, 'redux_demo-transients', 'a:4:{s:14:\"changed_values\";a:1:{s:20:\"footer-wrapper-title\";s:0:\"\";}s:9:\"last_save\";i:1677298594;s:13:\"last_compiler\";i:1677298594;s:11:\"last_import\";i:1677298594;}', 'yes'),
(177, 'category_children', 'a:0:{}', 'yes'),
(283, 'site_logo', '5', 'yes'),
(307, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":6,\"critical\":1}', 'yes'),
(1810, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(3043, 'analyst_cache', 's:6:\"a:0:{}\";', 'yes'),
(3045, '_cdp_review', 'a:2:{s:9:\"installed\";i:1676892673;s:5:\"users\";a:0:{}}', 'yes'),
(3046, '_cdp_globals', 'a:1:{s:6:\"others\";a:14:{s:17:\"cdp-content-pages\";s:4:\"true\";s:17:\"cdp-content-posts\";s:4:\"true\";s:18:\"cdp-content-custom\";s:4:\"true\";s:17:\"cdp-display-posts\";s:4:\"true\";s:16:\"cdp-display-edit\";s:4:\"true\";s:17:\"cdp-display-admin\";s:4:\"true\";s:16:\"cdp-display-bulk\";s:4:\"true\";s:21:\"cdp-display-gutenberg\";s:4:\"true\";s:19:\"cdp-references-post\";s:5:\"false\";s:19:\"cdp-references-edit\";s:5:\"false\";s:18:\"cdp-premium-import\";s:5:\"false\";s:24:\"cdp-premium-hide-tooltip\";s:5:\"false\";s:26:\"cdp-premium-replace-domain\";s:5:\"false\";s:20:\"cdp-menu-in-settings\";s:5:\"false\";}}', 'yes'),
(3047, '_cdp_profiles', 'a:1:{s:7:\"default\";a:25:{s:5:\"title\";s:4:\"true\";s:4:\"date\";s:5:\"false\";s:6:\"status\";s:5:\"false\";s:4:\"slug\";s:4:\"true\";s:7:\"excerpt\";s:4:\"true\";s:7:\"content\";s:4:\"true\";s:7:\"f_image\";s:4:\"true\";s:8:\"template\";s:4:\"true\";s:6:\"format\";s:4:\"true\";s:6:\"author\";s:4:\"true\";s:8:\"password\";s:4:\"true\";s:11:\"attachments\";s:5:\"false\";s:8:\"children\";s:5:\"false\";s:8:\"comments\";s:5:\"false\";s:10:\"menu_order\";s:4:\"true\";s:8:\"category\";s:4:\"true\";s:8:\"post_tag\";s:4:\"true\";s:8:\"taxonomy\";s:4:\"true\";s:8:\"nav_menu\";s:4:\"true\";s:13:\"link_category\";s:4:\"true\";s:12:\"all_metadata\";s:5:\"false\";s:5:\"names\";a:5:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:10:\"#[Counter]\";s:6:\"format\";s:1:\"1\";s:6:\"custom\";s:5:\"m/d/Y\";s:7:\"display\";s:7:\"Default\";}s:9:\"usmplugin\";s:5:\"false\";s:5:\"yoast\";s:5:\"false\";s:3:\"woo\";s:5:\"false\";}}', 'yes'),
(3048, '_cdp_default_setup', '1', 'yes'),
(3049, '_irb_h_bn_review', 'a:2:{s:5:\"users\";a:0:{}s:17:\"copy-delete-posts\";i:1676892673;}', 'yes'),
(3050, '_cdp_preselections', 'a:1:{i:1;s:7:\"default\";}', 'yes'),
(3051, '_cdp_no_intro', 'a:1:{i:0;i:1;}', 'yes'),
(3053, 'cdp_copy_logs_times', 'a:6:{i:0;a:6:{s:6:\"amount\";s:2:\"10\";s:4:\"time\";d:4.10406494140625;s:6:\"perOne\";d:0.410406494140625;s:4:\"data\";i:1677581956;s:6:\"memory\";i:47651136;s:4:\"peak\";i:50331648;}i:1;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.5617821216583252;s:6:\"perOne\";d:0.5617821216583252;s:4:\"data\";i:1677576826;s:6:\"memory\";i:47558640;s:4:\"peak\";i:50331648;}i:2;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.5080921649932861;s:6:\"perOne\";d:0.5080921649932861;s:4:\"data\";i:1677576746;s:6:\"memory\";i:47567032;s:4:\"peak\";i:50331648;}i:3;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.6706149578094482;s:6:\"perOne\";d:0.6706149578094482;s:4:\"data\";i:1677570746;s:6:\"memory\";i:47569328;s:4:\"peak\";i:50331648;}i:4;a:6:{s:6:\"amount\";s:2:\"10\";s:4:\"time\";d:2.144542932510376;s:6:\"perOne\";d:0.2144542932510376;s:4:\"data\";i:1677051510;s:6:\"memory\";i:46918344;s:4:\"peak\";i:48234496;}i:5;a:6:{s:6:\"amount\";s:1:\"5\";s:4:\"time\";d:2.7608590126037598;s:6:\"perOne\";d:0.5521718025207519;s:4:\"data\";i:1676892698;s:6:\"memory\";i:34287000;s:4:\"peak\";i:35651584;}}', 'yes'),
(3146, 'wpcf7', 'a:6:{s:7:\"version\";s:5:\"5.7.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1677038675;s:7:\"version\";s:5:\"5.7.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:23:\"recaptcha_v2_v3_warning\";b:0;s:15:\"iqfix_recaptcha\";i:2;s:22:\"iqfix_recaptcha_source\";s:10:\"google.com\";s:9:\"recaptcha\";a:1:{s:40:\"6LcRyqIkAAAAAKINqcB_ig8XhojuoYoMMp-9c3o1\";s:40:\"6LcRyqIkAAAAAJfzJr7qyyMYp8UXHAEsecKzxWzj\";}}', 'yes'),
(3351, 'secret_key', '?Qu:KtL58?RGE8mw.;I+>X)W.2*{Xi!G8SeBT$s|1FKrt3%~9 qo`:k}u&Q==X,_', 'no'),
(3360, 'action_scheduler_hybrid_store_demarkation', '44', 'yes'),
(3361, 'schema-ActionScheduler_StoreSchema', '6.0.1677044666', 'yes'),
(3362, 'schema-ActionScheduler_LoggerSchema', '3.0.1677044666', 'yes'),
(3363, 'wp_mail_smtp_initial_version', '3.7.0', 'no'),
(3364, 'wp_mail_smtp_version', '3.7.0', 'no'),
(3365, 'wp_mail_smtp', 'a:11:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:24:\"mdredoyislam84@gmail.com\";s:9:\"from_name\";s:7:\"DesVert\";s:6:\"mailer\";s:5:\"gmail\";s:11:\"return_path\";b:1;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:1;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:5:\"gmail\";a:5:{s:9:\"client_id\";s:7:\"DesVert\";s:13:\"client_secret\";s:12:\"DesVert@2023\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:20:\"is_setup_wizard_auth\";b:0;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}}', 'no'),
(3366, 'wp_mail_smtp_activated_time', '1677044666', 'no'),
(3367, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1677044666;}', 'yes'),
(3370, 'action_scheduler_lock_async-request-runner', '1677583469', 'yes'),
(3374, 'wp_mail_smtp_migration_version', '5', 'yes'),
(3375, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(3376, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(3377, 'wp_mail_smtp_setup_wizard_stats', 'a:3:{s:13:\"launched_time\";i:1677044684;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}', 'no'),
(3382, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1677044734;s:9:\"dismissed\";b:0;}', 'yes'),
(3383, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1677495723;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(3396, 'wp_mail_smtp_debug', 'a:2:{i:0;i:3;i:1;i:4;}', 'no'),
(3401, 'wp_mail_smtp_lite_sent_email_counter', '4', 'yes'),
(3402, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:2:{s:2:\"08\";i:3;s:2:\"09\";i:1;}', 'yes'),
(3551, 'action_scheduler_migration_status', 'complete', 'yes'),
(3572, 'acf_version', '6.0.7', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4292, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1677553789;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:35:\"classic-widgets/classic-widgets.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/classic-widgets\";s:4:\"slug\";s:15:\"classic-widgets\";s:6:\"plugin\";s:35:\"classic-widgets/classic-widgets.php\";s:11:\"new_version\";s:3:\"0.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/classic-widgets/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/classic-widgets.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/classic-widgets.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:39:\"copy-delete-posts/copy-delete-posts.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/copy-delete-posts\";s:4:\"slug\";s:17:\"copy-delete-posts\";s:6:\"plugin\";s:39:\"copy-delete-posts/copy-delete-posts.php\";s:11:\"new_version\";s:5:\"1.3.8\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/copy-delete-posts/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/copy-delete-posts.1.3.8.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/copy-delete-posts/assets/icon-128x128.gif?rev=2476221\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/copy-delete-posts/assets/banner-772x250.jpg?rev=2267040\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:41:\"jsm-show-post-meta/jsm-show-post-meta.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/jsm-show-post-meta\";s:4:\"slug\";s:18:\"jsm-show-post-meta\";s:6:\"plugin\";s:41:\"jsm-show-post-meta/jsm-show-post-meta.php\";s:11:\"new_version\";s:6:\"3.0.11\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/jsm-show-post-meta/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/jsm-show-post-meta.3.0.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/jsm-show-post-meta/assets/icon-256x256.jpg?rev=2396819\";s:2:\"1x\";s:71:\"https://ps.w.org/jsm-show-post-meta/assets/icon-128x128.jpg?rev=2396819\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/jsm-show-post-meta/assets/banner-1544x500.jpg?rev=2458493\";s:2:\"1x\";s:73:\"https://ps.w.org/jsm-show-post-meta/assets/banner-772x250.jpg?rev=2458493\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.4\";}s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/wpcf7-recaptcha\";s:4:\"slug\";s:15:\"wpcf7-recaptcha\";s:6:\"plugin\";s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wpcf7-recaptcha/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wpcf7-recaptcha.1.4.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/wpcf7-recaptcha/assets/icon-256x256.png?rev=2003053\";s:2:\"1x\";s:60:\"https://ps.w.org/wpcf7-recaptcha/assets/icon.svg?rev=2003053\";s:3:\"svg\";s:60:\"https://ps.w.org/wpcf7-recaptcha/assets/icon.svg?rev=2003053\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-1544x500.png?rev=2003053\";s:2:\"1x\";s:70:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-772x250.png?rev=2003053\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-1544x500-rtl.png?rev=2003053\";s:2:\"1x\";s:74:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-772x250-rtl.png?rev=2003053\";}s:8:\"requires\";s:3:\"4.9\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:11:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.7\";s:19:\"akismet/akismet.php\";s:5:\"5.0.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:35:\"classic-widgets/classic-widgets.php\";s:3:\"0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.4\";s:39:\"copy-delete-posts/copy-delete-posts.php\";s:5:\"1.3.8\";s:48:\"desvert-custom-plugins/desvert-custom-plugin.php\";s:5:\"1.0.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:41:\"jsm-show-post-meta/jsm-show-post-meta.php\";s:6:\"3.0.11\";s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";s:5:\"1.4.3\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.7.0\";}}', 'no'),
(5665, '_site_transient_timeout_browser_2ce1fd67485cfe92adf700d716e9f29f', '1677924443', 'no'),
(5666, '_site_transient_browser_2ce1fd67485cfe92adf700d716e9f29f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"110.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(5667, '_site_transient_timeout_php_check_133413fa91fc050a1c5770fd6e67cbaa', '1677924444', 'no'),
(5668, '_site_transient_php_check_133413fa91fc050a1c5770fd6e67cbaa', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(6115, 'service_category_children', 'a:0:{}', 'yes'),
(6573, '_site_transient_timeout_theme_roots', '1677559020', 'no'),
(6574, '_site_transient_theme_roots', 'a:4:{s:7:\"desvert\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(6863, 'cdp_latest_slow_performance', '1', 'yes'),
(6865, 'cdp_dismiss_perf_notice', '1', 'yes'),
(7076, 'team_taxonomy_children', 'a:0:{}', 'yes'),
(7195, '_transient_timeout_wp_mail_smtp_initiators_data', '1677584582', 'no'),
(7196, '_transient_wp_mail_smtp_initiators_data', 'a:2:{s:82:\"D:\\MyServer\\htdocs\\WP\\DesVert\\wp-includes\\class-wp-recovery-mode-email-service.php\";a:3:{s:4:\"name\";s:3:\"N/A\";s:4:\"slug\";s:0:\"\";s:4:\"type\";s:7:\"unknown\";}s:92:\"D:\\MyServer\\htdocs\\WP\\DesVert\\wp-content\\plugins\\wp-mail-smtp\\src\\Reports\\Emails\\Summary.php\";a:3:{s:4:\"name\";s:12:\"WP Mail SMTP\";s:4:\"slug\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:4:\"type\";s:6:\"plugin\";}}', 'no'),
(7213, 'case_taxonomy_children', 'a:0:{}', 'yes'),
(7252, '_transient_timeout_global_styles_desvert', '1677583149', 'no'),
(7253, '_transient_global_styles_desvert', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(7254, '_transient_timeout_global_styles_svg_filters_desvert', '1677583149', 'no'),
(7255, '_transient_global_styles_svg_filters_desvert', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2023/02/logo.png'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:171;s:6:\"height\";i:39;s:4:\"file\";s:16:\"2023/02/logo.png\";s:8:\"filesize\";i:3012;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_edit_lock', '1676086654:1'),
(6, 7, '_wp_attached_file', '2023/02/favicon.png'),
(7, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:36;s:6:\"height\";i:36;s:4:\"file\";s:19:\"2023/02/favicon.png\";s:8:\"filesize\";i:646;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 6, '_wp_trash_meta_status', 'publish'),
(9, 6, '_wp_trash_meta_time', '1676086669'),
(64, 14, '_menu_item_type', 'custom'),
(65, 14, '_menu_item_menu_item_parent', '0'),
(66, 14, '_menu_item_object_id', '14'),
(67, 14, '_menu_item_object', 'custom'),
(68, 14, '_menu_item_target', ''),
(69, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 14, '_menu_item_xfn', ''),
(71, 14, '_menu_item_url', '#'),
(73, 19, '_edit_last', '1'),
(74, 19, '_edit_lock', '1677474330:1'),
(75, 20, '_wp_attached_file', '2023/02/08.png'),
(76, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:769;s:4:\"file\";s:14:\"2023/02/08.png\";s:8:\"filesize\";i:533592;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 19, '_thumbnail_id', '22'),
(78, 22, '_wp_attached_file', '2023/02/portfolio.png'),
(79, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:745;s:6:\"height\";i:575;s:4:\"file\";s:21:\"2023/02/portfolio.png\";s:8:\"filesize\";i:316237;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 23, '_cdp_origin', '19'),
(81, 23, '_cdp_origin_site', '-1'),
(82, 23, '_cdp_origin_title', ' Flyer and Brochure #[Counter]'),
(83, 23, '_cdp_counter', '2'),
(84, 23, '_thumbnail_id', '22'),
(85, 24, '_cdp_origin', '19'),
(86, 24, '_cdp_origin_site', '-1'),
(87, 24, '_cdp_origin_title', ' Flyer and Brochure #[Counter]'),
(88, 24, '_cdp_counter', '3'),
(89, 24, '_thumbnail_id', '22'),
(90, 25, '_cdp_origin', '19'),
(91, 25, '_cdp_origin_site', '-1'),
(92, 25, '_cdp_origin_title', ' Flyer and Brochure #[Counter]'),
(93, 25, '_cdp_counter', '4'),
(94, 25, '_thumbnail_id', '22'),
(95, 26, '_cdp_origin', '19'),
(96, 26, '_cdp_origin_site', '-1'),
(97, 26, '_cdp_origin_title', ' Flyer and Brochure #[Counter]'),
(98, 26, '_cdp_counter', '5'),
(99, 26, '_thumbnail_id', '22'),
(100, 27, '_cdp_origin', '19'),
(101, 27, '_cdp_origin_site', '-1'),
(102, 27, '_cdp_origin_title', ' Flyer and Brochure #[Counter]'),
(103, 27, '_cdp_counter', '6'),
(104, 27, '_thumbnail_id', '22'),
(105, 23, '_wp_trash_meta_status', 'draft'),
(106, 23, '_wp_trash_meta_time', '1676892702'),
(107, 23, '_wp_desired_post_slug', 'flyer-and-brochure'),
(108, 24, '_edit_lock', '1676893451:1'),
(109, 24, '_edit_last', '1'),
(110, 25, '_edit_last', '1'),
(111, 25, '_edit_lock', '1676892726:1'),
(112, 26, '_edit_last', '1'),
(113, 26, '_edit_lock', '1676892731:1'),
(114, 27, '_edit_last', '1'),
(115, 27, '_edit_lock', '1676892735:1'),
(116, 34, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(117, 34, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <mdredoyislam84@gmail.com>\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(118, 34, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <mdredoyislam84@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(119, 34, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(120, 34, '_additional_settings', ''),
(121, 34, '_locale', 'en_US'),
(122, 35, '_form', '<div class=\"row\">\n    <div class=\"form-group col-md-6\">\n	<label for=\"name\">Name\n        [text* your-name id:name class:form-control placeholder \"enter your name\"]</label>\n    </div>\n    <div class=\"form-group col-md-6\">\n	<label for=\"phone\">Phone\n        [text* your-phone id:phone class:form-control placeholder \"enter your phone\"]</label>\n     </div>\n</div>\n<div class=\"form-group\">\n    <label for=\"email\">Email\n    [email* your-email id:email class:form-control placeholder \"enter your email\"]</label>\n</div>\n<div class=\"form-group\">\n   <label for=\"services\">Our services\n    [select* your-services id:services class:form-control \"Choose our services\" \"Email Newsletter Design\" \"Banner Ads Design\" \"Publishing Design\" \"UX/UI Design\" \"WordPress Development\" \"Graphic Design\"]</label>\n</div>\n<div class=\"form-group\">\n    <label for=\"message\">Message\n    [textarea* message cols:100 rows:3 id:message class:form-control placeholder \"enter your message\"]</label>\n</div>\n[submit class:btn class:btn-primary \"Order Now\"]'),
(123, 35, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:31:\"[_site_title] \"[your-services]\"\";s:6:\"sender\";s:25:\"<redoy.desvert@gmail.com>\";s:9:\"recipient\";s:23:\"redoy.desvert@gmail.com\";s:4:\"body\";s:281:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n\nYour Name   : [your-name]\nYour Email  : [your-email]\nYour Phone  : [your-phone]\nServices    : [your-services]\nmessage     : [message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(124, 35, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <mdredoyislam84@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(125, 35, '_messages', 'a:24:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";s:22:\"iqfix_recaptcha_no_set\";s:40:\"Could not verify the reCaptcha response.\";s:30:\"iqfix_recaptcha_response_empty\";s:39:\"Please verify that you are not a robot.\";}'),
(126, 35, '_additional_settings', ''),
(127, 35, '_locale', 'en_US'),
(128, 36, '_wp_attached_file', '2023/02/img1.png'),
(129, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:768;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2023/02/img1.png\";s:8:\"filesize\";i:180506;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 37, '_wp_attached_file', '2023/02/img2.png'),
(131, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2023/02/img2.png\";s:8:\"filesize\";i:76576;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 38, '_wp_attached_file', '2023/02/img3.png'),
(133, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2023/02/img3.png\";s:8:\"filesize\";i:77698;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 39, '_wp_attached_file', '2023/02/img4.png'),
(135, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2023/02/img4.png\";s:8:\"filesize\";i:41101;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 40, '_wp_attached_file', '2023/02/img5.png'),
(137, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2023/02/img5.png\";s:8:\"filesize\";i:75686;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 41, '_wp_attached_file', '2023/02/img6.png'),
(139, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2023/02/img6.png\";s:8:\"filesize\";i:74022;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 42, '_wp_attached_file', '2023/02/img7.png'),
(141, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:768;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2023/02/img7.png\";s:8:\"filesize\";i:90619;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 43, '_wp_attached_file', '2023/02/img8.png'),
(143, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:350;s:4:\"file\";s:16:\"2023/02/img8.png\";s:8:\"filesize\";i:46606;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 48, '_edit_last', '1'),
(145, 48, '_edit_lock', '1677576387:1'),
(146, 51, '_edit_last', '1'),
(147, 51, 'client_name', 'John doe'),
(148, 51, '_client_name', 'field_63f5c5eb4ad16'),
(149, 51, 'client_designation', 'managing director, esfera media'),
(150, 51, '_client_designation', 'field_63f5c6176972b'),
(151, 52, 'client_name', 'John doe'),
(152, 52, '_client_name', 'field_63f5c5eb4ad16'),
(153, 52, 'client_designation', 'managing director, esfera media'),
(154, 52, '_client_designation', 'field_63f5c6176972b'),
(155, 51, '_edit_lock', '1677055161:1'),
(236, 73, '_edit_last', '1'),
(237, 73, 'client_name', 'John doe'),
(238, 73, '_client_name', 'field_63f5c5eb4ad16'),
(239, 73, 'client_designation', 'managing director, esfera media'),
(240, 73, '_client_designation', 'field_63f5c6176972b'),
(241, 74, 'client_name', 'John doe'),
(242, 74, '_client_name', 'field_63f5c5eb4ad16'),
(243, 74, 'client_designation', 'managing director, esfera media'),
(244, 74, '_client_designation', 'field_63f5c6176972b'),
(245, 73, '_edit_lock', '1677055180:1'),
(246, 75, '_edit_last', '1'),
(247, 75, 'client_name', 'DesVert'),
(248, 75, '_client_name', 'field_63f5c5eb4ad16'),
(249, 75, 'client_designation', 'managing director'),
(250, 75, '_client_designation', 'field_63f5c6176972b'),
(251, 76, 'client_name', 'DesVert'),
(252, 76, '_client_name', 'field_63f5c5eb4ad16'),
(253, 76, 'client_designation', 'managing director'),
(254, 76, '_client_designation', 'field_63f5c6176972b'),
(255, 75, '_edit_lock', '1677055627:1'),
(256, 77, '_wp_attached_file', '2023/02/partner1.png'),
(257, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:153;s:6:\"height\";i:68;s:4:\"file\";s:20:\"2023/02/partner1.png\";s:8:\"filesize\";i:3859;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 78, '_wp_attached_file', '2023/02/partner2.png'),
(259, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:120;s:6:\"height\";i:53;s:4:\"file\";s:20:\"2023/02/partner2.png\";s:8:\"filesize\";i:3913;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 79, '_wp_attached_file', '2023/02/partner3.png'),
(261, 79, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:116;s:6:\"height\";i:53;s:4:\"file\";s:20:\"2023/02/partner3.png\";s:8:\"filesize\";i:3605;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 80, '_wp_attached_file', '2023/02/partner4.png'),
(263, 80, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:118;s:6:\"height\";i:53;s:4:\"file\";s:20:\"2023/02/partner4.png\";s:8:\"filesize\";i:3213;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 81, '_edit_last', '1'),
(265, 81, 'client_name', 'Redoy Islam'),
(266, 81, '_client_name', 'field_63f5c5eb4ad16'),
(267, 81, 'client_designation', 'Web Developer'),
(268, 81, '_client_designation', 'field_63f5c6176972b'),
(269, 82, 'client_name', 'Redoy Islam'),
(270, 82, '_client_name', 'field_63f5c5eb4ad16'),
(271, 82, 'client_designation', 'Web Developer'),
(272, 82, '_client_designation', 'field_63f5c6176972b'),
(273, 81, '_edit_lock', '1677066619:1'),
(274, 83, '_edit_last', '1'),
(275, 83, 'client_name', 'Jen doe'),
(276, 83, '_client_name', 'field_63f5c5eb4ad16'),
(277, 83, 'client_designation', 'managing director'),
(278, 83, '_client_designation', 'field_63f5c6176972b'),
(279, 84, 'client_name', 'Jen doe'),
(280, 84, '_client_name', 'field_63f5c5eb4ad16'),
(281, 84, 'client_designation', 'managing director'),
(282, 84, '_client_designation', 'field_63f5c6176972b'),
(283, 83, '_edit_lock', '1677066713:1'),
(293, 86, '_menu_item_type', 'custom'),
(294, 86, '_menu_item_menu_item_parent', '0'),
(295, 86, '_menu_item_object_id', '86'),
(296, 86, '_menu_item_object', 'custom'),
(297, 86, '_menu_item_target', ''),
(298, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(299, 86, '_menu_item_xfn', ''),
(300, 86, '_menu_item_url', '#'),
(302, 87, '_menu_item_type', 'custom'),
(303, 87, '_menu_item_menu_item_parent', '0'),
(304, 87, '_menu_item_object_id', '87'),
(305, 87, '_menu_item_object', 'custom'),
(306, 87, '_menu_item_target', ''),
(307, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(308, 87, '_menu_item_xfn', ''),
(309, 87, '_menu_item_url', '#'),
(311, 88, '_menu_item_type', 'custom'),
(312, 88, '_menu_item_menu_item_parent', '0'),
(313, 88, '_menu_item_object_id', '88'),
(314, 88, '_menu_item_object', 'custom'),
(315, 88, '_menu_item_target', ''),
(316, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(317, 88, '_menu_item_xfn', ''),
(318, 88, '_menu_item_url', '#'),
(320, 89, '_menu_item_type', 'custom'),
(321, 89, '_menu_item_menu_item_parent', '0'),
(322, 89, '_menu_item_object_id', '89'),
(323, 89, '_menu_item_object', 'custom'),
(324, 89, '_menu_item_target', ''),
(325, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(326, 89, '_menu_item_xfn', ''),
(327, 89, '_menu_item_url', '#'),
(329, 90, '_menu_item_type', 'custom'),
(330, 90, '_menu_item_menu_item_parent', '0'),
(331, 90, '_menu_item_object_id', '90'),
(332, 90, '_menu_item_object', 'custom'),
(333, 90, '_menu_item_target', ''),
(334, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(335, 90, '_menu_item_xfn', ''),
(336, 90, '_menu_item_url', '#'),
(338, 91, '_menu_item_type', 'custom'),
(339, 91, '_menu_item_menu_item_parent', '0'),
(340, 91, '_menu_item_object_id', '91'),
(341, 91, '_menu_item_object', 'custom'),
(342, 91, '_menu_item_target', ''),
(343, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(344, 91, '_menu_item_xfn', ''),
(345, 91, '_menu_item_url', '#'),
(347, 92, '_menu_item_type', 'custom'),
(348, 92, '_menu_item_menu_item_parent', '0'),
(349, 92, '_menu_item_object_id', '92'),
(350, 92, '_menu_item_object', 'custom'),
(351, 92, '_menu_item_target', ''),
(352, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(353, 92, '_menu_item_xfn', ''),
(354, 92, '_menu_item_url', '#'),
(356, 93, '_menu_item_type', 'custom'),
(357, 93, '_menu_item_menu_item_parent', '0'),
(358, 93, '_menu_item_object_id', '93'),
(359, 93, '_menu_item_object', 'custom'),
(360, 93, '_menu_item_target', ''),
(361, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(362, 93, '_menu_item_xfn', ''),
(363, 93, '_menu_item_url', '#'),
(365, 94, '_menu_item_type', 'custom'),
(366, 94, '_menu_item_menu_item_parent', '0'),
(367, 94, '_menu_item_object_id', '94'),
(368, 94, '_menu_item_object', 'custom'),
(369, 94, '_menu_item_target', ''),
(370, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(371, 94, '_menu_item_xfn', ''),
(372, 94, '_menu_item_url', '#'),
(374, 95, '_menu_item_type', 'custom'),
(375, 95, '_menu_item_menu_item_parent', '0'),
(376, 95, '_menu_item_object_id', '95'),
(377, 95, '_menu_item_object', 'custom'),
(378, 95, '_menu_item_target', ''),
(379, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(380, 95, '_menu_item_xfn', ''),
(381, 95, '_menu_item_url', '#'),
(383, 96, '_menu_item_type', 'custom'),
(384, 96, '_menu_item_menu_item_parent', '0'),
(385, 96, '_menu_item_object_id', '96'),
(386, 96, '_menu_item_object', 'custom'),
(387, 96, '_menu_item_target', ''),
(388, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(389, 96, '_menu_item_xfn', ''),
(390, 96, '_menu_item_url', '#'),
(401, 98, '_wp_attached_file', '2023/02/whatsapp.png'),
(402, 98, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"file\";s:20:\"2023/02/whatsapp.png\";s:8:\"filesize\";i:1243;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(403, 99, '_wp_attached_file', '2023/02/whatsapp-1.png'),
(404, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:22:\"2023/02/whatsapp-1.png\";s:8:\"filesize\";i:2943;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(405, 100, '_wp_attached_file', '2023/02/whatsapp-2.png'),
(406, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:22:\"2023/02/whatsapp-2.png\";s:8:\"filesize\";i:14363;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(407, 102, '_edit_last', '1'),
(408, 102, '_wp_page_template', 'about.php'),
(409, 102, '_edit_lock', '1677137518:1'),
(410, 104, '_edit_last', '1'),
(411, 104, '_edit_lock', '1677314506:1'),
(412, 104, '_wp_page_template', 'services.php'),
(413, 106, '_edit_last', '1'),
(414, 106, '_edit_lock', '1677314497:1'),
(415, 106, '_wp_page_template', 'portfolio.php'),
(416, 108, '_edit_last', '1'),
(417, 108, '_edit_lock', '1677320078:1'),
(418, 108, '_wp_page_template', 'index.php'),
(419, 110, '_edit_last', '1'),
(420, 110, '_edit_lock', '1677143088:1'),
(421, 110, '_wp_page_template', 'front-page.php'),
(422, 113, '_menu_item_type', 'post_type'),
(423, 113, '_menu_item_menu_item_parent', '0'),
(424, 113, '_menu_item_object_id', '102'),
(425, 113, '_menu_item_object', 'page'),
(426, 113, '_menu_item_target', ''),
(427, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(428, 113, '_menu_item_xfn', ''),
(429, 113, '_menu_item_url', ''),
(431, 86, '_wp_old_date', '2023-02-23'),
(432, 87, '_wp_old_date', '2023-02-23'),
(433, 88, '_wp_old_date', '2023-02-23'),
(434, 89, '_wp_old_date', '2023-02-23'),
(435, 90, '_wp_old_date', '2023-02-23'),
(436, 114, '_menu_item_type', 'post_type'),
(437, 114, '_menu_item_menu_item_parent', '0'),
(438, 114, '_menu_item_object_id', '102'),
(439, 114, '_menu_item_object', 'page'),
(440, 114, '_menu_item_target', ''),
(441, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(442, 114, '_menu_item_xfn', ''),
(443, 114, '_menu_item_url', ''),
(445, 115, '_menu_item_type', 'post_type'),
(446, 115, '_menu_item_menu_item_parent', '0'),
(447, 115, '_menu_item_object_id', '108'),
(448, 115, '_menu_item_object', 'page'),
(449, 115, '_menu_item_target', ''),
(450, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(451, 115, '_menu_item_xfn', ''),
(452, 115, '_menu_item_url', ''),
(454, 116, '_menu_item_type', 'post_type'),
(455, 116, '_menu_item_menu_item_parent', '0'),
(456, 116, '_menu_item_object_id', '106'),
(457, 116, '_menu_item_object', 'page'),
(458, 116, '_menu_item_target', ''),
(459, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(460, 116, '_menu_item_xfn', ''),
(461, 116, '_menu_item_url', ''),
(463, 117, '_menu_item_type', 'post_type'),
(464, 117, '_menu_item_menu_item_parent', '0'),
(465, 117, '_menu_item_object_id', '104'),
(466, 117, '_menu_item_object', 'page'),
(467, 117, '_menu_item_target', ''),
(468, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(469, 117, '_menu_item_xfn', ''),
(470, 117, '_menu_item_url', ''),
(474, 14, '_wp_old_date', '2023-02-15'),
(475, 1, '_edit_lock', '1677469058:1'),
(476, 1, '_edit_last', '1'),
(481, 1, '_thumbnail_id', '43'),
(484, 120, '_edit_last', '1'),
(485, 120, '_edit_lock', '1677473117:1'),
(486, 122, '_menu_item_type', 'post_type'),
(487, 122, '_menu_item_menu_item_parent', '0'),
(488, 122, '_menu_item_object_id', '110'),
(489, 122, '_menu_item_object', 'page'),
(490, 122, '_menu_item_target', ''),
(491, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(492, 122, '_menu_item_xfn', ''),
(493, 122, '_menu_item_url', ''),
(495, 114, '_wp_old_date', '2023-02-25'),
(496, 117, '_wp_old_date', '2023-02-25'),
(497, 116, '_wp_old_date', '2023-02-25'),
(499, 115, '_wp_old_date', '2023-02-25'),
(500, 14, '_wp_old_date', '2023-02-25'),
(501, 129, '_edit_last', '1'),
(502, 129, '_edit_lock', '1677576106:1'),
(503, 131, '_cdp_origin', '24'),
(504, 131, '_cdp_origin_site', '-1'),
(505, 131, '_cdp_origin_title', ' Flyer and Brochure 3 #[Counter]'),
(506, 131, '_cdp_counter', '2'),
(507, 131, '_cdp_origin', '19'),
(508, 131, '_thumbnail_id', '22'),
(509, 131, '_edit_lock', '1677575315:1'),
(510, 131, '_edit_last', '1'),
(511, 131, '_wp_old_slug', 'flyer-and-brochure-2'),
(512, 134, '_wp_attached_file', '2023/02/MonirHosen_DesVert1.jpg'),
(513, 134, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:342;s:4:\"file\";s:31:\"2023/02/MonirHosen_DesVert1.jpg\";s:8:\"filesize\";i:91711;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(514, 129, '_thumbnail_id', '134'),
(515, 136, '_edit_last', '1'),
(516, 136, '_edit_lock', '1677576593:1'),
(517, 129, 'designation', 'CEO'),
(518, 129, '_designation', 'field_63fdc5ed4ba64'),
(519, 138, 'designation', 'CEO'),
(520, 138, '_designation', 'field_63fdc5ed4ba64'),
(521, 139, '_cdp_origin', '129'),
(522, 139, '_cdp_origin_site', '-1'),
(523, 139, '_cdp_origin_title', ' Monir Hosen #[Counter]'),
(524, 139, '_cdp_counter', '2'),
(525, 139, '_thumbnail_id', '140'),
(526, 139, '_edit_lock', '1677576756:1'),
(527, 140, '_wp_attached_file', '2023/02/Untitled-1-2.jpg'),
(528, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:342;s:4:\"file\";s:24:\"2023/02/Untitled-1-2.jpg\";s:8:\"filesize\";i:9147;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(529, 139, '_edit_last', '1'),
(530, 139, 'designation', 'Operation Drector (Web Media)'),
(531, 139, '_designation', 'field_63fdc5ed4ba64'),
(532, 141, 'designation', 'Operation Drector (print Media)'),
(533, 141, '_designation', 'field_63fdc5ed4ba64'),
(534, 142, '_cdp_origin', '139'),
(535, 142, '_cdp_origin_site', '-1'),
(536, 142, '_cdp_origin_title', ' Ashu Iqbal #[Counter]'),
(537, 142, '_cdp_counter', '2'),
(538, 142, '_cdp_origin', '129'),
(539, 142, '_thumbnail_id', '143'),
(540, 142, '_edit_lock', '1677576740:1'),
(541, 143, '_wp_attached_file', '2023/02/Untitled-1-1.jpg'),
(542, 143, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:342;s:4:\"file\";s:24:\"2023/02/Untitled-1-1.jpg\";s:8:\"filesize\";i:9359;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(543, 142, '_edit_last', '1'),
(544, 142, 'designation', 'Operation Drector (print Media)'),
(545, 142, '_designation', 'field_63fdc5ed4ba64'),
(546, 144, 'designation', 'Operation Drector (print Media)'),
(547, 144, '_designation', 'field_63fdc5ed4ba64'),
(548, 145, 'designation', 'Operation Drector (Web Media)'),
(549, 145, '_designation', 'field_63fdc5ed4ba64'),
(550, 146, '_edit_last', '1'),
(551, 146, '_edit_lock', '1677576992:1'),
(552, 147, '_wp_attached_file', '2023/02/Untitled-1-5.jpg'),
(553, 147, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:342;s:4:\"file\";s:24:\"2023/02/Untitled-1-5.jpg\";s:8:\"filesize\";i:8205;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(554, 146, '_thumbnail_id', '147'),
(555, 146, 'designation', 'Head of HR Department'),
(556, 146, '_designation', 'field_63fdc5ed4ba64'),
(557, 148, 'designation', 'Head of HR Department'),
(558, 148, '_designation', 'field_63fdc5ed4ba64'),
(559, 149, '_edit_last', '1'),
(560, 149, '_edit_lock', '1677577039:1'),
(561, 150, '_wp_attached_file', '2023/02/Untitled-1-4.jpg'),
(562, 150, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:342;s:4:\"file\";s:24:\"2023/02/Untitled-1-4.jpg\";s:8:\"filesize\";i:10987;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(563, 149, '_thumbnail_id', '150'),
(564, 149, 'designation', 'Head of Brand and Strategy'),
(565, 149, '_designation', 'field_63fdc5ed4ba64'),
(566, 151, 'designation', 'Head of Brand and Strategy'),
(567, 151, '_designation', 'field_63fdc5ed4ba64'),
(568, 152, '_edit_last', '1'),
(569, 152, '_edit_lock', '1677577154:1'),
(570, 153, '_wp_attached_file', '2023/02/Untitled-1-3.jpg'),
(571, 153, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:342;s:4:\"file\";s:24:\"2023/02/Untitled-1-3.jpg\";s:8:\"filesize\";i:13500;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(572, 152, '_thumbnail_id', '153'),
(573, 152, 'designation', 'Head of Film & Media'),
(574, 152, '_designation', 'field_63fdc5ed4ba64'),
(575, 154, 'designation', 'Head of Film & Media'),
(576, 154, '_designation', 'field_63fdc5ed4ba64'),
(577, 155, '_edit_last', '1'),
(578, 155, '_edit_lock', '1677577200:1'),
(579, 156, '_wp_attached_file', '2023/02/ImamMehedi_DesVert.jpg'),
(580, 156, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:342;s:4:\"file\";s:30:\"2023/02/ImamMehedi_DesVert.jpg\";s:8:\"filesize\";i:108166;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(581, 155, '_thumbnail_id', '156'),
(582, 155, 'designation', 'UI and Graphic Designer'),
(583, 155, '_designation', 'field_63fdc5ed4ba64'),
(584, 157, 'designation', 'UI and Graphic Designer'),
(585, 157, '_designation', 'field_63fdc5ed4ba64'),
(586, 158, '_edit_last', '1'),
(587, 158, '_edit_lock', '1677577331:1'),
(588, 159, '_wp_attached_file', '2023/02/AfsanaMimi2_DesVert.jpg'),
(589, 159, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:342;s:4:\"file\";s:31:\"2023/02/AfsanaMimi2_DesVert.jpg\";s:8:\"filesize\";i:57065;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(590, 158, '_thumbnail_id', '159'),
(591, 158, 'designation', 'UI and Graphic Designer'),
(592, 158, '_designation', 'field_63fdc5ed4ba64'),
(593, 160, 'designation', 'UI and Graphic Designer'),
(594, 160, '_designation', 'field_63fdc5ed4ba64'),
(595, 161, '_edit_last', '1'),
(596, 161, '_edit_lock', '1677579915:1'),
(597, 161, '_wp_page_template', 'team.php'),
(598, 163, '_edit_last', '1'),
(599, 163, '_edit_lock', '1677580092:1'),
(600, 163, '_wp_page_template', 'case-studies.php'),
(601, 165, '_menu_item_type', 'post_type'),
(602, 165, '_menu_item_menu_item_parent', '0'),
(603, 165, '_menu_item_object_id', '163'),
(604, 165, '_menu_item_object', 'page'),
(605, 165, '_menu_item_target', ''),
(606, 165, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(607, 165, '_menu_item_xfn', ''),
(608, 165, '_menu_item_url', ''),
(610, 122, '_wp_old_date', '2023-02-27'),
(611, 114, '_wp_old_date', '2023-02-27'),
(612, 117, '_wp_old_date', '2023-02-27'),
(613, 116, '_wp_old_date', '2023-02-27'),
(614, 115, '_wp_old_date', '2023-02-27'),
(615, 14, '_wp_old_date', '2023-02-27'),
(616, 166, '_menu_item_type', 'post_type'),
(617, 166, '_menu_item_menu_item_parent', '0'),
(618, 166, '_menu_item_object_id', '161'),
(619, 166, '_menu_item_object', 'page'),
(620, 166, '_menu_item_target', ''),
(621, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(622, 166, '_menu_item_xfn', ''),
(623, 166, '_menu_item_url', ''),
(625, 167, '_edit_last', '1'),
(626, 167, '_edit_lock', '1677581800:1'),
(627, 170, '_wp_attached_file', '2023/02/case-studies.jpg'),
(628, 170, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:470;s:6:\"height\";i:360;s:4:\"file\";s:24:\"2023/02/case-studies.jpg\";s:8:\"filesize\";i:27473;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(629, 167, '_thumbnail_id', '170'),
(630, 172, '_cdp_origin', '167'),
(631, 172, '_cdp_origin_site', '-1'),
(632, 172, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(633, 172, '_cdp_counter', '2'),
(634, 172, '_thumbnail_id', '170'),
(635, 173, '_cdp_origin', '167'),
(636, 173, '_cdp_origin_site', '-1'),
(637, 173, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(638, 173, '_cdp_counter', '3'),
(639, 173, '_thumbnail_id', '170'),
(640, 174, '_cdp_origin', '167'),
(641, 174, '_cdp_origin_site', '-1'),
(642, 174, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(643, 174, '_cdp_counter', '4'),
(644, 174, '_thumbnail_id', '170'),
(645, 175, '_cdp_origin', '167'),
(646, 175, '_cdp_origin_site', '-1'),
(647, 175, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(648, 175, '_cdp_counter', '5'),
(649, 175, '_thumbnail_id', '170'),
(650, 176, '_cdp_origin', '167'),
(651, 176, '_cdp_origin_site', '-1'),
(652, 176, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(653, 176, '_cdp_counter', '6'),
(654, 176, '_thumbnail_id', '170'),
(655, 177, '_cdp_origin', '167'),
(656, 177, '_cdp_origin_site', '-1'),
(657, 177, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(658, 177, '_cdp_counter', '7'),
(659, 177, '_thumbnail_id', '170'),
(660, 178, '_cdp_origin', '167'),
(661, 178, '_cdp_origin_site', '-1'),
(662, 178, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(663, 178, '_cdp_counter', '8'),
(664, 178, '_thumbnail_id', '170'),
(665, 179, '_cdp_origin', '167'),
(666, 179, '_cdp_origin_site', '-1'),
(667, 179, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(668, 179, '_cdp_counter', '9'),
(669, 179, '_thumbnail_id', '170'),
(670, 180, '_cdp_origin', '167'),
(671, 180, '_cdp_origin_site', '-1'),
(672, 180, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(673, 180, '_cdp_counter', '10'),
(674, 180, '_thumbnail_id', '170'),
(675, 181, '_cdp_origin', '167'),
(676, 181, '_cdp_origin_site', '-1'),
(677, 181, '_cdp_origin_title', ' UI/UX Design for a Marketing Agency in USA #[Counter]'),
(678, 181, '_cdp_counter', '11'),
(679, 181, '_thumbnail_id', '170'),
(680, 180, '_edit_last', '1'),
(681, 180, '_edit_lock', '1677581967:1'),
(682, 181, '_edit_last', '1'),
(683, 181, '_edit_lock', '1677581972:1'),
(684, 172, '_edit_last', '1'),
(685, 172, '_edit_lock', '1677581978:1'),
(686, 173, '_edit_last', '1'),
(687, 173, '_edit_lock', '1677581982:1'),
(688, 174, '_edit_last', '1'),
(689, 174, '_edit_lock', '1677581988:1'),
(690, 175, '_edit_last', '1'),
(691, 175, '_edit_lock', '1677581993:1'),
(692, 176, '_edit_last', '1'),
(693, 176, '_edit_lock', '1677581998:1'),
(694, 177, '_edit_last', '1'),
(695, 177, '_edit_lock', '1677582002:1'),
(696, 178, '_edit_last', '1'),
(697, 178, '_edit_lock', '1677582008:1'),
(698, 179, '_edit_last', '1'),
(699, 179, '_edit_lock', '1677582014:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-02-10 04:06:18', '2023-02-10 04:06:18', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-02-25 12:00:00', '2023-02-25 12:00:00', '', 0, 'http://localhost/WP/DesVert/?p=1', 0, 'post', '', 1),
(2, 1, '2023-02-10 04:06:18', '2023-02-10 04:06:18', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/WP/DesVert/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-02-10 04:06:18', '2023-02-10 04:06:18', '', 0, 'http://localhost/WP/DesVert/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-02-10 04:06:18', '2023-02-10 04:06:18', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/WP/DesVert.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-02-10 04:06:18', '2023-02-10 04:06:18', '', 0, 'http://localhost/WP/DesVert/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-02-11 03:34:35', '2023-02-11 03:34:35', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-02-11 03:34:35', '2023-02-11 03:34:35', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/logo.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2023-02-11 03:37:49', '2023-02-11 03:37:49', '{\n    \"desvert::custom_logo\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-11 03:34:58\"\n    },\n    \"site_icon\": {\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-11 03:37:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b620e040-21ff-4a01-bfdb-1f7bef731213', '', '', '2023-02-11 03:37:49', '2023-02-11 03:37:49', '', 0, 'http://localhost/WP/DesVert/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2023-02-11 03:37:39', '2023-02-11 03:37:39', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2023-02-11 03:37:39', '2023-02-11 03:37:39', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/favicon.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2023-02-28 10:43:01', '2023-02-15 04:50:53', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-02-28 10:43:01', '2023-02-28 10:43:01', '', 0, 'http://localhost/WP/DesVert/?p=14', 8, 'nav_menu_item', '', 0),
(19, 1, '2023-02-20 10:28:18', '2023-02-20 10:28:18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure', '', 'publish', 'open', 'open', '', 'flyer-and-brochure', '', '', '2023-02-27 04:48:40', '2023-02-27 04:48:40', '', 0, 'http://localhost/WP/DesVert/?post_type=desvert_services&#038;p=19', 0, 'desvert_services', '', 0),
(20, 1, '2023-02-20 10:28:13', '2023-02-20 10:28:13', '', '08', '', 'inherit', 'open', 'closed', '', '08', '', '', '2023-02-20 10:28:13', '2023-02-20 10:28:13', '', 19, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/08.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2023-02-20 10:28:18', '2023-02-20 10:28:18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-02-20 10:28:18', '2023-02-20 10:28:18', '', 19, 'http://localhost/WP/DesVert/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-02-20 11:30:09', '2023-02-20 11:30:09', '', 'portfolio', '', 'inherit', 'open', 'closed', '', 'portfolio-2', '', '', '2023-02-20 11:30:09', '2023-02-20 11:30:09', '', 19, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/portfolio.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2023-02-20 11:31:42', '2023-02-20 11:31:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure #2', '', 'trash', 'open', 'open', '', 'flyer-and-brochure__trashed', '', '', '2023-02-20 11:31:42', '2023-02-20 11:31:42', '', 0, 'http://localhost/WP/DesVert/?post_type=desvert_services&#038;p=23', 0, 'desvert_services', '', 0),
(24, 1, '2023-02-20 11:31:53', '2023-02-20 11:31:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure 3', '', 'publish', 'open', 'open', '', 'flyer-and-brochure-2', '', '', '2023-02-20 11:43:13', '2023-02-20 11:43:13', '', 0, 'http://localhost/WP/DesVert/?post_type=desvert_services&#038;p=24', 0, 'desvert_services', '', 0),
(25, 1, '2023-02-20 11:31:35', '2023-02-20 11:31:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure', '', 'publish', 'open', 'open', '', 'flyer-and-brochure-3', '', '', '2023-02-20 11:32:55', '2023-02-20 11:32:55', '', 0, 'http://localhost/WP/DesVert/?post_type=desvert_services&#038;p=25', 0, 'desvert_services', '', 0),
(26, 1, '2023-02-20 11:31:35', '2023-02-20 11:31:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure', '', 'publish', 'open', 'open', '', 'flyer-and-brochure-4', '', '', '2023-02-20 11:32:56', '2023-02-20 11:32:56', '', 0, 'http://localhost/WP/DesVert/?post_type=desvert_services&#038;p=26', 0, 'desvert_services', '', 0),
(27, 1, '2023-02-20 11:31:35', '2023-02-20 11:31:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure', '', 'publish', 'open', 'open', '', 'flyer-and-brochure-5', '', '', '2023-02-20 11:32:56', '2023-02-20 11:32:56', '', 0, 'http://localhost/WP/DesVert/?post_type=desvert_services&#038;p=27', 0, 'desvert_services', '', 0),
(28, 1, '2023-02-20 11:31:42', '2023-02-20 11:31:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure #2', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-02-20 11:31:42', '2023-02-20 11:31:42', '', 23, 'http://localhost/WP/DesVert/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-02-20 11:31:53', '2023-02-20 11:31:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-02-20 11:31:53', '2023-02-20 11:31:53', '', 24, 'http://localhost/WP/DesVert/?p=29', 0, 'revision', '', 0),
(30, 1, '2023-02-20 11:32:06', '2023-02-20 11:32:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2023-02-20 11:32:06', '2023-02-20 11:32:06', '', 25, 'http://localhost/WP/DesVert/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-02-20 11:32:10', '2023-02-20 11:32:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2023-02-20 11:32:10', '2023-02-20 11:32:10', '', 26, 'http://localhost/WP/DesVert/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-02-20 11:32:15', '2023-02-20 11:32:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-02-20 11:32:15', '2023-02-20 11:32:15', '', 27, 'http://localhost/WP/DesVert/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-02-20 11:43:13', '2023-02-20 11:43:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure 3', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-02-20 11:43:13', '2023-02-20 11:43:13', '', 24, 'http://localhost/WP/DesVert/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-02-22 04:04:35', '2023-02-22 04:04:35', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <mdredoyislam84@gmail.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <mdredoyislam84@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-02-22 04:04:35', '2023-02-22 04:04:35', '', 0, 'http://localhost/WP/DesVert/?post_type=wpcf7_contact_form&p=34', 0, 'wpcf7_contact_form', '', 0),
(35, 1, '2023-02-22 04:05:22', '2023-02-22 04:05:22', '<div class=\"row\">\r\n    <div class=\"form-group col-md-6\">\r\n	<label for=\"name\">Name\r\n        [text* your-name id:name class:form-control placeholder \"enter your name\"]</label>\r\n    </div>\r\n    <div class=\"form-group col-md-6\">\r\n	<label for=\"phone\">Phone\r\n        [text* your-phone id:phone class:form-control placeholder \"enter your phone\"]</label>\r\n     </div>\r\n</div>\r\n<div class=\"form-group\">\r\n    <label for=\"email\">Email\r\n    [email* your-email id:email class:form-control placeholder \"enter your email\"]</label>\r\n</div>\r\n<div class=\"form-group\">\r\n   <label for=\"services\">Our services\r\n    [select* your-services id:services class:form-control \"Choose our services\" \"Email Newsletter Design\" \"Banner Ads Design\" \"Publishing Design\" \"UX/UI Design\" \"WordPress Development\" \"Graphic Design\"]</label>\r\n</div>\r\n<div class=\"form-group\">\r\n    <label for=\"message\">Message\r\n    [textarea* message cols:100 rows:3 id:message class:form-control placeholder \"enter your message\"]</label>\r\n</div>\r\n[submit class:btn class:btn-primary \"Order Now\"]\n1\n[_site_title] \"[your-services]\"\n<redoy.desvert@gmail.com>\nredoy.desvert@gmail.com\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n\r\nYour Name   : [your-name]\r\nYour Email  : [your-email]\r\nYour Phone  : [your-phone]\r\nServices    : [your-services]\r\nmessage     : [message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <mdredoyislam84@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.\nCould not verify the reCaptcha response.\nPlease verify that you are not a robot.', 'Make Appopiment', '', 'publish', 'closed', 'closed', '', 'make-appopiment', '', '', '2023-02-22 06:00:28', '2023-02-22 06:00:28', '', 0, 'http://localhost/WP/DesVert/?post_type=wpcf7_contact_form&#038;p=35', 0, 'wpcf7_contact_form', '', 0),
(36, 1, '2023-02-22 05:08:12', '2023-02-22 05:08:12', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2023-02-22 05:08:12', '2023-02-22 05:08:12', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/img1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2023-02-22 05:08:12', '2023-02-22 05:08:12', '', 'img2', '', 'inherit', 'open', 'closed', '', 'img2', '', '', '2023-02-22 05:08:12', '2023-02-22 05:08:12', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/img2.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2023-02-22 05:08:13', '2023-02-22 05:08:13', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3', '', '', '2023-02-22 05:08:13', '2023-02-22 05:08:13', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/img3.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2023-02-22 05:08:14', '2023-02-22 05:08:14', '', 'img4', '', 'inherit', 'open', 'closed', '', 'img4', '', '', '2023-02-22 05:08:14', '2023-02-22 05:08:14', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/img4.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2023-02-22 05:08:14', '2023-02-22 05:08:14', '', 'img5', '', 'inherit', 'open', 'closed', '', 'img5', '', '', '2023-02-22 05:08:14', '2023-02-22 05:08:14', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/img5.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2023-02-22 05:08:15', '2023-02-22 05:08:15', '', 'img6', '', 'inherit', 'open', 'closed', '', 'img6', '', '', '2023-02-22 05:08:15', '2023-02-22 05:08:15', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/img6.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2023-02-22 05:08:15', '2023-02-22 05:08:15', '', 'img7', '', 'inherit', 'open', 'closed', '', 'img7', '', '', '2023-02-22 05:08:15', '2023-02-22 05:08:15', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/img7.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2023-02-22 05:08:44', '2023-02-22 05:08:44', '', 'img8', '', 'inherit', 'open', 'closed', '', 'img8', '', '', '2023-02-22 05:08:44', '2023-02-22 05:08:44', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/img8.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2023-02-22 07:23:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-22 07:23:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=testimonials&p=44', 0, 'testimonials', '', 0),
(45, 1, '2023-02-22 07:28:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-22 07:28:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=testimonials&p=45', 0, 'testimonials', '', 0),
(46, 1, '2023-02-22 07:33:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-22 07:33:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=testimonials&p=46', 0, 'testimonials', '', 0),
(47, 1, '2023-02-22 07:35:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-22 07:35:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=testimonials&p=47', 0, 'testimonials', '', 0),
(48, 1, '2023-02-22 07:36:35', '2023-02-22 07:36:35', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"testimonials\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Testimonial Extra Info', 'testimonial-extra-info', 'publish', 'closed', 'closed', '', 'group_63f5c5eb32396', '', '', '2023-02-22 07:37:17', '2023-02-22 07:37:17', '', 0, 'http://localhost/WP/DesVert/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2023-02-22 07:36:35', '2023-02-22 07:36:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Client Name', 'client_name', 'publish', 'closed', 'closed', '', 'field_63f5c5eb4ad16', '', '', '2023-02-22 07:37:10', '2023-02-22 07:37:10', '', 48, 'http://localhost/WP/DesVert/?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(50, 1, '2023-02-22 07:37:10', '2023-02-22 07:37:10', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Client Designation', 'client_designation', 'publish', 'closed', 'closed', '', 'field_63f5c6176972b', '', '', '2023-02-22 07:37:10', '2023-02-22 07:37:10', '', 48, 'http://localhost/WP/DesVert/?post_type=acf-field&p=50', 1, 'acf-field', '', 0),
(51, 1, '2023-02-22 07:38:16', '2023-02-22 07:38:16', 'We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide. We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide.', 'Auto Draft', '', 'publish', 'open', 'open', '', 'auto-draft-2', '', '', '2023-02-22 07:39:01', '2023-02-22 07:39:01', '', 0, 'http://localhost/WP/DesVert/?post_type=testimonials&#038;p=51', 0, 'testimonials', '', 0),
(52, 1, '2023-02-22 07:38:16', '2023-02-22 07:38:16', 'We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide. We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide.', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-02-22 07:38:16', '2023-02-22 07:38:16', '', 51, 'http://localhost/WP/DesVert/?p=52', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(73, 1, '2023-02-22 08:42:02', '2023-02-22 08:42:02', 'We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide. We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide.', 'Auto Draft', '', 'publish', 'open', 'open', '', 'auto-draft', '', '', '2023-02-22 08:42:02', '2023-02-22 08:42:02', '', 0, 'http://localhost/WP/DesVert/?post_type=testimonials&#038;p=73', 0, 'testimonials', '', 0),
(74, 1, '2023-02-22 08:42:02', '2023-02-22 08:42:02', 'We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide. We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide.', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2023-02-22 08:42:02', '2023-02-22 08:42:02', '', 73, 'http://localhost/WP/DesVert/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-02-22 08:42:36', '2023-02-22 08:42:36', 'We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide. We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide.', 'Auto Draft', '', 'publish', 'open', 'open', '', 'auto-draft-3', '', '', '2023-02-22 08:42:36', '2023-02-22 08:42:36', '', 0, 'http://localhost/WP/DesVert/?post_type=testimonials&#038;p=75', 0, 'testimonials', '', 0),
(76, 1, '2023-02-22 08:42:36', '2023-02-22 08:42:36', 'We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide. We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide.', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2023-02-22 08:42:36', '2023-02-22 08:42:36', '', 75, 'http://localhost/WP/DesVert/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-02-22 11:16:52', '2023-02-22 11:16:52', '', 'partner1', '', 'inherit', 'open', 'closed', '', 'partner1', '', '', '2023-02-22 11:16:52', '2023-02-22 11:16:52', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/partner1.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2023-02-22 11:16:53', '2023-02-22 11:16:53', '', 'partner2', '', 'inherit', 'open', 'closed', '', 'partner2', '', '', '2023-02-22 11:16:53', '2023-02-22 11:16:53', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/partner2.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2023-02-22 11:16:54', '2023-02-22 11:16:54', '', 'partner3', '', 'inherit', 'open', 'closed', '', 'partner3', '', '', '2023-02-22 11:16:54', '2023-02-22 11:16:54', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/partner3.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2023-02-22 11:16:54', '2023-02-22 11:16:54', '', 'partner4', '', 'inherit', 'open', 'closed', '', 'partner4', '', '', '2023-02-22 11:16:54', '2023-02-22 11:16:54', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/partner4.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2023-02-22 11:52:28', '2023-02-22 11:52:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra, arcu vel bibendum molestie, nulla tellus tempus diam, vel porttitor sem odio sit amet felis. Mauris ullamcorper lacinia ex, in sagittis enim lacinia vehicula. Vivamus sollicitudin leo massa, vel fringilla arcu venenatis quis. Praesent dolor orci, euismod sit amet erat a, commodo eleifend magna. Quisque ut vestibulum tellus, et venenatis neque. Integer posuere ut diam id commodo. Curabitur scelerisque facilisis elementum.', 'Auto Draft', '', 'publish', 'open', 'open', '', 'auto-draft-4', '', '', '2023-02-22 11:52:28', '2023-02-22 11:52:28', '', 0, 'http://localhost/WP/DesVert/?post_type=testimonials&#038;p=81', 0, 'testimonials', '', 0),
(82, 1, '2023-02-22 11:52:28', '2023-02-22 11:52:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra, arcu vel bibendum molestie, nulla tellus tempus diam, vel porttitor sem odio sit amet felis. Mauris ullamcorper lacinia ex, in sagittis enim lacinia vehicula. Vivamus sollicitudin leo massa, vel fringilla arcu venenatis quis. Praesent dolor orci, euismod sit amet erat a, commodo eleifend magna. Quisque ut vestibulum tellus, et venenatis neque. Integer posuere ut diam id commodo. Curabitur scelerisque facilisis elementum.', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2023-02-22 11:52:28', '2023-02-22 11:52:28', '', 81, 'http://localhost/WP/DesVert/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-02-22 11:53:02', '2023-02-22 11:53:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra, arcu vel bibendum molestie, nulla tellus tempus diam, vel porttitor sem odio sit amet felis. Mauris ullamcorper lacinia ex, in sagittis enim lacinia vehicula. Vivamus sollicitudin leo massa, vel fringilla arcu venenatis quis. Praesent dolor orci, euismod sit amet erat a, commodo eleifend magna. Quisque ut vestibulum tellus, et venenatis neque. Integer posuere ut diam id commodo. Curabitur scelerisque facilisis elementum.', 'Auto Draft', '', 'publish', 'open', 'open', '', 'auto-draft-5', '', '', '2023-02-22 11:53:02', '2023-02-22 11:53:02', '', 0, 'http://localhost/WP/DesVert/?post_type=testimonials&#038;p=83', 0, 'testimonials', '', 0),
(84, 1, '2023-02-22 11:53:02', '2023-02-22 11:53:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra, arcu vel bibendum molestie, nulla tellus tempus diam, vel porttitor sem odio sit amet felis. Mauris ullamcorper lacinia ex, in sagittis enim lacinia vehicula. Vivamus sollicitudin leo massa, vel fringilla arcu venenatis quis. Praesent dolor orci, euismod sit amet erat a, commodo eleifend magna. Quisque ut vestibulum tellus, et venenatis neque. Integer posuere ut diam id commodo. Curabitur scelerisque facilisis elementum.', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2023-02-22 11:53:02', '2023-02-22 11:53:02', '', 83, 'http://localhost/WP/DesVert/?p=84', 0, 'revision', '', 0),
(86, 1, '2023-02-25 11:52:01', '2023-02-23 04:24:50', '', 'testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2023-02-25 11:52:01', '2023-02-25 11:52:01', '', 0, 'http://localhost/WP/DesVert/?p=86', 2, 'nav_menu_item', '', 0),
(87, 1, '2023-02-25 11:52:01', '2023-02-23 04:24:51', '', 'faq’s', '', 'publish', 'closed', 'closed', '', 'faqs', '', '', '2023-02-25 11:52:01', '2023-02-25 11:52:01', '', 0, 'http://localhost/WP/DesVert/?p=87', 3, 'nav_menu_item', '', 0),
(88, 1, '2023-02-25 11:52:01', '2023-02-23 04:24:51', '', 'careers', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2023-02-25 11:52:01', '2023-02-25 11:52:01', '', 0, 'http://localhost/WP/DesVert/?p=88', 4, 'nav_menu_item', '', 0),
(89, 1, '2023-02-25 11:52:01', '2023-02-23 04:24:51', '', 'contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-02-25 11:52:01', '2023-02-25 11:52:01', '', 0, 'http://localhost/WP/DesVert/?p=89', 5, 'nav_menu_item', '', 0),
(90, 1, '2023-02-25 11:52:01', '2023-02-23 04:24:51', '', 'view all service', '', 'publish', 'closed', 'closed', '', 'view-all-service', '', '', '2023-02-25 11:52:01', '2023-02-25 11:52:01', '', 0, 'http://localhost/WP/DesVert/?p=90', 6, 'nav_menu_item', '', 0),
(91, 1, '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 'email newsletter', '', 'publish', 'closed', 'closed', '', 'email-newsletter', '', '', '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 0, 'http://localhost/WP/DesVert/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 'banner ads design', '', 'publish', 'closed', 'closed', '', 'banner-ads-design', '', '', '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 0, 'http://localhost/WP/DesVert/?p=92', 2, 'nav_menu_item', '', 0),
(93, 1, '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 'publishing design', '', 'publish', 'closed', 'closed', '', 'publishing-design', '', '', '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 0, 'http://localhost/WP/DesVert/?p=93', 3, 'nav_menu_item', '', 0),
(94, 1, '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 'ui/ux design', '', 'publish', 'closed', 'closed', '', 'ui-ux-design', '', '', '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 0, 'http://localhost/WP/DesVert/?p=94', 4, 'nav_menu_item', '', 0),
(95, 1, '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 'wordpress development', '', 'publish', 'closed', 'closed', '', 'wordpress-development', '', '', '2023-02-23 04:26:10', '2023-02-23 04:26:10', '', 0, 'http://localhost/WP/DesVert/?p=95', 5, 'nav_menu_item', '', 0),
(96, 1, '2023-02-23 04:26:11', '2023-02-23 04:26:11', '', 'graphic design', '', 'publish', 'closed', 'closed', '', 'graphic-design', '', '', '2023-02-23 04:26:11', '2023-02-23 04:26:11', '', 0, 'http://localhost/WP/DesVert/?p=96', 6, 'nav_menu_item', '', 0),
(98, 1, '2023-02-23 06:20:09', '2023-02-23 06:20:09', '', 'whatsapp', '', 'inherit', 'open', 'closed', '', 'whatsapp', '', '', '2023-02-23 06:20:09', '2023-02-23 06:20:09', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/whatsapp.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2023-02-23 06:37:17', '2023-02-23 06:37:17', '', 'whatsapp', '', 'inherit', 'open', 'closed', '', 'whatsapp-2', '', '', '2023-02-23 06:37:17', '2023-02-23 06:37:17', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/whatsapp-1.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2023-02-23 06:38:14', '2023-02-23 06:38:14', '', 'whatsapp', '', 'inherit', 'open', 'closed', '', 'whatsapp-3', '', '', '2023-02-23 06:38:14', '2023-02-23 06:38:14', '', 0, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/whatsapp-2.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2023-02-23 07:22:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-23 07:22:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?page_id=101', 0, 'page', '', 0),
(102, 1, '2023-02-23 07:23:49', '2023-02-23 07:23:49', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2023-02-23 07:23:49', '2023-02-23 07:23:49', '', 0, 'http://localhost/WP/DesVert/?page_id=102', 0, 'page', '', 0),
(103, 1, '2023-02-23 07:23:49', '2023-02-23 07:23:49', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2023-02-23 07:23:49', '2023-02-23 07:23:49', '', 102, 'http://localhost/WP/DesVert/?p=103', 0, 'revision', '', 0),
(104, 1, '2023-02-23 07:34:33', '2023-02-23 07:34:33', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2023-02-25 08:44:08', '2023-02-25 08:44:08', '', 0, 'http://localhost/WP/DesVert/?page_id=104', 0, 'page', '', 0),
(105, 1, '2023-02-23 07:34:33', '2023-02-23 07:34:33', '', 'Services', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2023-02-23 07:34:33', '2023-02-23 07:34:33', '', 104, 'http://localhost/WP/DesVert/?p=105', 0, 'revision', '', 0),
(106, 1, '2023-02-23 07:36:53', '2023-02-23 07:36:53', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2023-02-25 08:43:49', '2023-02-25 08:43:49', '', 0, 'http://localhost/WP/DesVert/?page_id=106', 0, 'page', '', 0),
(107, 1, '2023-02-23 07:36:53', '2023-02-23 07:36:53', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2023-02-23 07:36:53', '2023-02-23 07:36:53', '', 106, 'http://localhost/WP/DesVert/?p=107', 0, 'revision', '', 0),
(108, 1, '2023-02-23 07:37:02', '2023-02-23 07:37:02', '', 'blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-02-25 10:11:27', '2023-02-25 10:11:27', '', 0, 'http://localhost/WP/DesVert/?page_id=108', 0, 'page', '', 0),
(109, 1, '2023-02-23 07:37:02', '2023-02-23 07:37:02', '', 'blog', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2023-02-23 07:37:02', '2023-02-23 07:37:02', '', 108, 'http://localhost/WP/DesVert/?p=109', 0, 'revision', '', 0),
(110, 1, '2023-02-23 09:07:03', '2023-02-23 09:07:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-02-23 09:07:03', '2023-02-23 09:07:03', '', 0, 'http://localhost/WP/DesVert/?page_id=110', 0, 'page', '', 0),
(111, 1, '2023-02-23 09:07:03', '2023-02-23 09:07:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2023-02-23 09:07:03', '2023-02-23 09:07:03', '', 110, 'http://localhost/WP/DesVert/?p=111', 0, 'revision', '', 0),
(112, 1, '2023-02-25 10:07:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-25 10:07:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?p=112', 0, 'post', '', 0),
(113, 1, '2023-02-25 11:52:01', '2023-02-25 11:52:01', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2023-02-25 11:52:01', '2023-02-25 11:52:01', '', 0, 'http://localhost/WP/DesVert/?p=113', 1, 'nav_menu_item', '', 0),
(114, 1, '2023-02-28 10:43:01', '2023-02-25 11:53:00', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2023-02-28 10:43:01', '2023-02-28 10:43:01', '', 0, 'http://localhost/WP/DesVert/?p=114', 2, 'nav_menu_item', '', 0),
(115, 1, '2023-02-28 10:43:01', '2023-02-25 11:53:01', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2023-02-28 10:43:01', '2023-02-28 10:43:01', '', 0, 'http://localhost/WP/DesVert/?p=115', 7, 'nav_menu_item', '', 0),
(116, 1, '2023-02-28 10:43:01', '2023-02-25 11:53:00', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2023-02-28 10:43:01', '2023-02-28 10:43:01', '', 0, 'http://localhost/WP/DesVert/?p=116', 4, 'nav_menu_item', '', 0),
(117, 1, '2023-02-28 10:43:01', '2023-02-25 11:53:00', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2023-02-28 10:43:01', '2023-02-28 10:43:01', '', 0, 'http://localhost/WP/DesVert/?p=117', 3, 'nav_menu_item', '', 0),
(118, 1, '2023-02-25 11:58:37', '2023-02-25 11:58:37', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-02-25 11:58:37', '2023-02-25 11:58:37', '', 1, 'http://localhost/WP/DesVert/?p=118', 0, 'revision', '', 0),
(119, 1, '2023-02-25 11:59:31', '2023-02-25 11:59:31', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-02-25 11:59:31', '2023-02-25 11:59:31', '', 1, 'http://localhost/WP/DesVert/?p=119', 0, 'revision', '', 0),
(120, 1, '2023-02-27 03:49:29', '2023-02-27 03:49:29', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"service_category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Services Category Thumb', 'services-category-thumb', 'publish', 'closed', 'closed', '', 'group_63fc27a370ef9', '', '', '2023-02-27 03:49:29', '2023-02-27 03:49:29', '', 0, 'http://localhost/WP/DesVert/?post_type=acf-field-group&#038;p=120', 0, 'acf-field-group', '', 0),
(121, 1, '2023-02-27 03:49:29', '2023-02-27 03:49:29', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Services Category Thumb', 'services_category_thumb', 'publish', 'closed', 'closed', '', 'field_63fc27a36d70b', '', '', '2023-02-27 03:49:29', '2023-02-27 03:49:29', '', 120, 'http://localhost/WP/DesVert/?post_type=acf-field&p=121', 0, 'acf-field', '', 0),
(122, 1, '2023-02-28 10:43:01', '2023-02-27 05:08:46', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2023-02-28 10:43:01', '2023-02-28 10:43:01', '', 0, 'http://localhost/WP/DesVert/?p=122', 1, 'nav_menu_item', '', 0),
(123, 1, '2023-02-28 06:25:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-28 06:25:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&p=123', 0, 'teams', '', 0),
(124, 1, '2023-02-28 06:27:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-28 06:27:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&p=124', 0, 'teams', '', 0),
(125, 1, '2023-02-28 06:28:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-28 06:28:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&p=125', 0, 'teams', '', 0),
(126, 1, '2023-02-28 06:30:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-28 06:30:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&p=126', 0, 'teams', '', 0),
(127, 1, '2023-02-28 06:30:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-28 06:30:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&p=127', 0, 'teams', '', 0),
(128, 1, '2023-02-28 06:30:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-28 06:30:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&p=128', 0, 'teams', '', 0),
(129, 1, '2023-02-28 06:32:46', '2023-02-28 06:32:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Monir Hosen', '', 'publish', 'open', 'open', '', 'monir-hosen', '', '', '2023-02-28 09:17:22', '2023-02-28 09:17:22', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&#038;p=129', 0, 'teams', '', 0),
(130, 1, '2023-02-28 06:32:46', '2023-02-28 06:32:46', '', '', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2023-02-28 06:32:46', '2023-02-28 06:32:46', '', 129, 'http://localhost/WP/DesVert/?p=130', 0, 'revision', '', 0),
(131, 1, '2023-02-28 07:52:59', '2023-02-28 07:52:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure 8', '', 'publish', 'open', 'open', '', 'flyer-and-brochure-8', '', '', '2023-02-28 08:41:03', '2023-02-28 08:41:03', '', 0, 'http://localhost/WP/DesVert/?post_type=desvert_services&#038;p=131', 0, 'desvert_services', '', 0),
(132, 1, '2023-02-28 07:52:59', '2023-02-28 07:52:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum mauris ac metus mollis elementum. Integer porttitor, purus et tristique porta, dui arcu semper augue, sed suscipit nisl enim eu tortor. Praesent venenatis leo risus, nec accumsan quam malesuada ac. Nulla non molestie lorem. Etiam eget maximus ligula. Curabitur molestie ligula non ex facilisis congue. Nullam ornare diam a nulla ultricies rutrum. Quisque malesuada ultricies orci quis pharetra. Proin metus ante, lobortis at commodo nec, scelerisque eget urna. Sed eleifend massa sed imperdiet varius.\r\n\r\nAliquam nulla sapien, ullamcorper auctor dui sed, mattis vestibulum metus. Nunc sodales vulputate ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod nunc felis, eu porttitor enim bibendum ac. Duis ac nibh at ipsum rhoncus cursus sed ac neque. In viverra ultrices lectus. Donec convallis urna non felis vestibulum, at egestas urna ultrices. Nullam nec libero vitae eros feugiat sagittis ut vel magna. Nam accumsan nunc neque, quis efficitur nunc egestas vel. Nullam et blandit sapien, vel pharetra ex. Sed vitae lacus ut lorem convallis vestibulum eget interdum velit. Phasellus eget nibh et ligula finibus vehicula sit amet ac elit. Aliquam faucibus, neque a posuere dictum, sapien tellus fermentum erat, non sollicitudin nunc augue a neque. Morbi ornare nisi et ligula pharetra gravida. Quisque at eros in velit pellentesque tristique vel vel ante.\r\n\r\nIn dignissim sit amet enim at suscipit. Vestibulum tempor urna consectetur arcu molestie ultrices. Donec tincidunt nisi eget justo blandit, nec dictum mauris cursus. Mauris ornare rutrum nisi pharetra feugiat. Morbi feugiat eleifend congue. Fusce laoreet ligula non ultricies ultricies. Vivamus accumsan pharetra mi id venenatis. Donec non lectus suscipit, sagittis nunc in, congue nisi. Sed nec ornare velit. Integer maximus gravida finibus.', 'Flyer and Brochure 8', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2023-02-28 07:52:59', '2023-02-28 07:52:59', '', 131, 'http://localhost/WP/DesVert/?p=132', 0, 'revision', '', 0),
(133, 1, '2023-02-28 09:12:03', '2023-02-28 09:12:03', '', 'Monir Hosen', '', 'inherit', 'closed', 'closed', '', '129-autosave-v1', '', '', '2023-02-28 09:12:03', '2023-02-28 09:12:03', '', 129, 'http://localhost/WP/DesVert/?p=133', 0, 'revision', '', 0),
(134, 1, '2023-02-28 09:12:56', '2023-02-28 09:12:56', '', 'MonirHosen_DesVert1', '', 'inherit', 'open', 'closed', '', 'monirhosen_desvert1', '', '', '2023-02-28 09:12:56', '2023-02-28 09:12:56', '', 129, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/MonirHosen_DesVert1.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2023-02-28 09:13:22', '2023-02-28 09:13:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Monir Hosen', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2023-02-28 09:13:22', '2023-02-28 09:13:22', '', 129, 'http://localhost/WP/DesVert/?p=135', 0, 'revision', '', 0),
(136, 1, '2023-02-28 09:14:41', '2023-02-28 09:14:41', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"teams\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Team Extra Information', 'team-extra-information', 'publish', 'closed', 'closed', '', 'group_63fdc5ed7a317', '', '', '2023-02-28 09:16:46', '2023-02-28 09:16:46', '', 0, 'http://localhost/WP/DesVert/?post_type=acf-field-group&#038;p=136', 0, 'acf-field-group', '', 0),
(137, 1, '2023-02-28 09:14:41', '2023-02-28 09:14:41', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:11:\"Designation\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Designation', 'designation', 'publish', 'closed', 'closed', '', 'field_63fdc5ed4ba64', '', '', '2023-02-28 09:15:14', '2023-02-28 09:15:14', '', 136, 'http://localhost/WP/DesVert/?post_type=acf-field&#038;p=137', 0, 'acf-field', '', 0),
(138, 1, '2023-02-28 09:17:22', '2023-02-28 09:17:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Monir Hosen', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2023-02-28 09:17:22', '2023-02-28 09:17:22', '', 129, 'http://localhost/WP/DesVert/?p=138', 0, 'revision', '', 0),
(139, 1, '2023-02-28 09:33:36', '2023-02-28 09:33:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Ashu Iqbal', '', 'publish', 'open', 'open', '', 'ashu-iqbal', '', '', '2023-02-28 09:34:57', '2023-02-28 09:34:57', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&#038;p=139', 0, 'teams', '', 0),
(140, 1, '2023-02-28 09:33:30', '2023-02-28 09:33:30', '', 'Untitled-1-2', '', 'inherit', 'open', 'closed', '', 'untitled-1-2', '', '', '2023-02-28 09:33:30', '2023-02-28 09:33:30', '', 139, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/Untitled-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2023-02-28 09:33:36', '2023-02-28 09:33:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Ashu Iqbal', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2023-02-28 09:33:36', '2023-02-28 09:33:36', '', 139, 'http://localhost/WP/DesVert/?p=141', 0, 'revision', '', 0),
(142, 1, '2023-02-28 09:34:41', '2023-02-28 09:34:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Zumanur Rahman', '', 'publish', 'open', 'open', '', 'zumanur-rahman', '', '', '2023-02-28 09:34:41', '2023-02-28 09:34:41', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&#038;p=142', 0, 'teams', '', 0),
(143, 1, '2023-02-28 09:34:24', '2023-02-28 09:34:24', '', 'Untitled-1-1', '', 'inherit', 'open', 'closed', '', 'untitled-1-1', '', '', '2023-02-28 09:34:24', '2023-02-28 09:34:24', '', 142, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/Untitled-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2023-02-28 09:34:41', '2023-02-28 09:34:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Zumanur Rahman', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-02-28 09:34:41', '2023-02-28 09:34:41', '', 142, 'http://localhost/WP/DesVert/?p=144', 0, 'revision', '', 0),
(145, 1, '2023-02-28 09:34:57', '2023-02-28 09:34:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Ashu Iqbal', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2023-02-28 09:34:57', '2023-02-28 09:34:57', '', 139, 'http://localhost/WP/DesVert/?p=145', 0, 'revision', '', 0),
(146, 1, '2023-02-28 09:38:53', '2023-02-28 09:38:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Kamrul Hasan', '', 'publish', 'open', 'open', '', 'kamrul-hasan', '', '', '2023-02-28 09:38:53', '2023-02-28 09:38:53', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&#038;p=146', 0, 'teams', '', 0),
(147, 1, '2023-02-28 09:38:47', '2023-02-28 09:38:47', '', 'Untitled-1-5', '', 'inherit', 'open', 'closed', '', 'untitled-1-5', '', '', '2023-02-28 09:38:47', '2023-02-28 09:38:47', '', 146, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/Untitled-1-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2023-02-28 09:38:53', '2023-02-28 09:38:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Kamrul Hasan', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2023-02-28 09:38:53', '2023-02-28 09:38:53', '', 146, 'http://localhost/WP/DesVert/?p=148', 0, 'revision', '', 0),
(149, 1, '2023-02-28 09:39:33', '2023-02-28 09:39:33', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Insan Evan', '', 'publish', 'open', 'open', '', 'insan-evan', '', '', '2023-02-28 09:39:33', '2023-02-28 09:39:33', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&#038;p=149', 0, 'teams', '', 0),
(150, 1, '2023-02-28 09:39:24', '2023-02-28 09:39:24', '', 'Untitled-1-4', '', 'inherit', 'open', 'closed', '', 'untitled-1-4', '', '', '2023-02-28 09:39:24', '2023-02-28 09:39:24', '', 149, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/Untitled-1-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2023-02-28 09:39:33', '2023-02-28 09:39:33', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Insan Evan', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2023-02-28 09:39:33', '2023-02-28 09:39:33', '', 149, 'http://localhost/WP/DesVert/?p=151', 0, 'revision', '', 0),
(152, 1, '2023-02-28 09:40:21', '2023-02-28 09:40:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Salim Hosen', '', 'publish', 'open', 'open', '', 'salim-hosen', '', '', '2023-02-28 09:40:51', '2023-02-28 09:40:51', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&#038;p=152', 0, 'teams', '', 0),
(153, 1, '2023-02-28 09:40:17', '2023-02-28 09:40:17', '', 'Untitled-1-3', '', 'inherit', 'open', 'closed', '', 'untitled-1-3', '', '', '2023-02-28 09:40:17', '2023-02-28 09:40:17', '', 152, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/Untitled-1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2023-02-28 09:40:21', '2023-02-28 09:40:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Salim Hosen', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2023-02-28 09:40:21', '2023-02-28 09:40:21', '', 152, 'http://localhost/WP/DesVert/?p=154', 0, 'revision', '', 0),
(155, 1, '2023-02-28 09:42:16', '2023-02-28 09:42:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Md. Imam Mehedi', '', 'publish', 'open', 'open', '', 'md-imam-mehedi', '', '', '2023-02-28 09:42:16', '2023-02-28 09:42:16', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&#038;p=155', 0, 'teams', '', 0),
(156, 1, '2023-02-28 09:42:02', '2023-02-28 09:42:02', '', 'ImamMehedi_DesVert', '', 'inherit', 'open', 'closed', '', 'imammehedi_desvert', '', '', '2023-02-28 09:42:02', '2023-02-28 09:42:02', '', 155, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/ImamMehedi_DesVert.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2023-02-28 09:42:16', '2023-02-28 09:42:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Md. Imam Mehedi', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2023-02-28 09:42:16', '2023-02-28 09:42:16', '', 155, 'http://localhost/WP/DesVert/?p=157', 0, 'revision', '', 0),
(158, 1, '2023-02-28 09:43:30', '2023-02-28 09:43:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Afsana Mimi', '', 'publish', 'open', 'open', '', 'afsana-mimi', '', '', '2023-02-28 09:43:30', '2023-02-28 09:43:30', '', 0, 'http://localhost/WP/DesVert/?post_type=teams&#038;p=158', 0, 'teams', '', 0),
(159, 1, '2023-02-28 09:43:08', '2023-02-28 09:43:08', '', 'AfsanaMimi2_DesVert', '', 'inherit', 'open', 'closed', '', 'afsanamimi2_desvert', '', '', '2023-02-28 09:43:08', '2023-02-28 09:43:08', '', 158, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/AfsanaMimi2_DesVert.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2023-02-28 09:43:30', '2023-02-28 09:43:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tristique mollis dignissim. Aenean rhoncus vitae mauris quis pharetra. Nunc sed diam sollicitudin, posuere ex eu, porttitor sapien. Curabitur sed elit vitae magna aliquam rutrum a vehicula leo. Proin sed diam mauris. Ut ultrices, dolor eget maximus mollis, sapien elit dapibus odio, in mollis turpis libero vitae nisi. Maecenas erat dui, rutrum at vehicula quis, blandit convallis sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum nec erat quis cursus. Morbi auctor arcu urna, id tincidunt justo vehicula vel. Pellentesque sollicitudin est non libero consequat, a pharetra metus porta. In tellus ligula, pretium efficitur euismod id, egestas non augue. Vestibulum a lacus vitae ante consectetur consectetur id eu ipsum. Aliquam nec diam purus. Sed vel ullamcorper elit. Nam sit amet risus ligula.', 'Afsana Mimi', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2023-02-28 09:43:30', '2023-02-28 09:43:30', '', 158, 'http://localhost/WP/DesVert/?p=160', 0, 'revision', '', 0),
(161, 1, '2023-02-28 09:54:24', '2023-02-28 09:54:24', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2023-02-28 09:54:24', '2023-02-28 09:54:24', '', 0, 'http://localhost/WP/DesVert/?page_id=161', 0, 'page', '', 0),
(162, 1, '2023-02-28 09:54:24', '2023-02-28 09:54:24', '', 'Team', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2023-02-28 09:54:24', '2023-02-28 09:54:24', '', 161, 'http://localhost/WP/DesVert/?p=162', 0, 'revision', '', 0),
(163, 1, '2023-02-28 10:28:46', '2023-02-28 10:28:46', '', 'Case Studies', '', 'publish', 'closed', 'closed', '', 'case-studies', '', '', '2023-02-28 10:28:51', '2023-02-28 10:28:51', '', 0, 'http://localhost/WP/DesVert/?page_id=163', 0, 'page', '', 0),
(164, 1, '2023-02-28 10:28:46', '2023-02-28 10:28:46', '', 'Case Studies', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2023-02-28 10:28:46', '2023-02-28 10:28:46', '', 163, 'http://localhost/WP/DesVert/?p=164', 0, 'revision', '', 0),
(165, 1, '2023-02-28 10:43:01', '2023-02-28 10:31:00', ' ', '', '', 'publish', 'closed', 'closed', '', '165', '', '', '2023-02-28 10:43:01', '2023-02-28 10:43:01', '', 0, 'http://localhost/WP/DesVert/?p=165', 6, 'nav_menu_item', '', 0),
(166, 1, '2023-02-28 10:43:01', '2023-02-28 10:34:51', ' ', '', '', 'publish', 'closed', 'closed', '', '166', '', '', '2023-02-28 10:43:01', '2023-02-28 10:43:01', '', 0, 'http://localhost/WP/DesVert/?p=166', 5, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(167, 1, '2023-02-28 10:52:55', '2023-02-28 10:52:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa', '', '', '2023-02-28 11:09:50', '2023-02-28 11:09:50', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=167', 0, 'case-studies', '', 0),
(168, 1, '2023-02-28 10:52:55', '2023-02-28 10:52:55', '', '', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2023-02-28 10:52:55', '2023-02-28 10:52:55', '', 167, 'http://localhost/WP/DesVert/?p=168', 0, 'revision', '', 0),
(169, 1, '2023-02-28 10:58:57', '2023-02-28 10:58:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '167-autosave-v1', '', '', '2023-02-28 10:58:57', '2023-02-28 10:58:57', '', 167, 'http://localhost/WP/DesVert/?p=169', 0, 'revision', '', 0),
(170, 1, '2023-02-28 10:58:55', '2023-02-28 10:58:55', '', 'case-studies', '', 'inherit', 'open', 'closed', '', 'case-studies-2', '', '', '2023-02-28 10:58:55', '2023-02-28 10:58:55', '', 167, 'http://localhost/WP/DesVert/wp-content/uploads/2023/02/case-studies.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2023-02-28 10:59:00', '2023-02-28 10:59:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2023-02-28 10:59:00', '2023-02-28 10:59:00', '', 167, 'http://localhost/WP/DesVert/?p=171', 0, 'revision', '', 0),
(172, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-4', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=172', 0, 'case-studies', '', 0),
(173, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-5', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=173', 0, 'case-studies', '', 0),
(174, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-6', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=174', 0, 'case-studies', '', 0),
(175, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-7', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=175', 0, 'case-studies', '', 0),
(176, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-8', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=176', 0, 'case-studies', '', 0),
(177, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-9', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=177', 0, 'case-studies', '', 0),
(178, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-10', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=178', 0, 'case-studies', '', 0),
(179, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-11', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=179', 0, 'case-studies', '', 0),
(180, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-2', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=180', 0, 'case-studies', '', 0),
(181, 1, '2023-02-28 10:59:12', '2023-02-28 10:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'publish', 'open', 'open', '', 'ui-ux-design-for-a-marketing-agency-in-usa-3', '', '', '2023-02-28 11:09:51', '2023-02-28 11:09:51', '', 0, 'http://localhost/WP/DesVert/?post_type=case-studies&#038;p=181', 0, 'case-studies', '', 0),
(182, 1, '2023-02-28 10:59:27', '2023-02-28 10:59:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2023-02-28 10:59:27', '2023-02-28 10:59:27', '', 180, 'http://localhost/WP/DesVert/?p=182', 0, 'revision', '', 0),
(183, 1, '2023-02-28 10:59:32', '2023-02-28 10:59:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2023-02-28 10:59:32', '2023-02-28 10:59:32', '', 181, 'http://localhost/WP/DesVert/?p=183', 0, 'revision', '', 0),
(184, 1, '2023-02-28 10:59:37', '2023-02-28 10:59:37', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2023-02-28 10:59:37', '2023-02-28 10:59:37', '', 172, 'http://localhost/WP/DesVert/?p=184', 0, 'revision', '', 0),
(185, 1, '2023-02-28 10:59:42', '2023-02-28 10:59:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2023-02-28 10:59:42', '2023-02-28 10:59:42', '', 173, 'http://localhost/WP/DesVert/?p=185', 0, 'revision', '', 0),
(186, 1, '2023-02-28 10:59:48', '2023-02-28 10:59:48', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2023-02-28 10:59:48', '2023-02-28 10:59:48', '', 174, 'http://localhost/WP/DesVert/?p=186', 0, 'revision', '', 0),
(187, 1, '2023-02-28 10:59:53', '2023-02-28 10:59:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2023-02-28 10:59:53', '2023-02-28 10:59:53', '', 175, 'http://localhost/WP/DesVert/?p=187', 0, 'revision', '', 0),
(188, 1, '2023-02-28 10:59:58', '2023-02-28 10:59:58', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2023-02-28 10:59:58', '2023-02-28 10:59:58', '', 176, 'http://localhost/WP/DesVert/?p=188', 0, 'revision', '', 0),
(189, 1, '2023-02-28 11:00:02', '2023-02-28 11:00:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2023-02-28 11:00:02', '2023-02-28 11:00:02', '', 177, 'http://localhost/WP/DesVert/?p=189', 0, 'revision', '', 0),
(190, 1, '2023-02-28 11:00:08', '2023-02-28 11:00:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2023-02-28 11:00:08', '2023-02-28 11:00:08', '', 178, 'http://localhost/WP/DesVert/?p=190', 0, 'revision', '', 0),
(191, 1, '2023-02-28 11:00:14', '2023-02-28 11:00:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut varius dolor. Praesent ac diam felis. Nam sed magna id dui ornare accumsan non eu purus. Cras ac convallis tellus. Donec non porta dui. Donec aliquam, eros nec rutrum efficitur, risus lorem placerat odio, non tempus metus purus sed mi. Nulla facilisis nisl at lorem sodales semper. Curabitur hendrerit neque eu metus sagittis varius. Vestibulum sit amet odio vehicula, iaculis quam eu, volutpat metus. Etiam quis rutrum massa. Pellentesque id risus ac purus vehicula ornare. Praesent facilisis, arcu a cursus sollicitudin, erat tellus lobortis magna, a fringilla lorem lorem sollicitudin ex. Cras malesuada lorem felis, eget ullamcorper quam tempor eget. Aliquam vitae nibh euismod, feugiat diam eget, viverra dolor. Morbi aliquet urna vitae lacus bibendum pharetra. Aliquam erat volutpat.', 'UI/UX Design for a Marketing Agency in USA', '', 'inherit', 'closed', 'closed', '', '179-revision-v1', '', '', '2023-02-28 11:00:14', '2023-02-28 11:00:14', '', 179, 'http://localhost/WP/DesVert/?p=191', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 5, 'services_category_thumb', '41'),
(2, 5, '_services_category_thumb', 'field_63fc27a36d70b'),
(3, 7, 'services_category_thumb', '41'),
(4, 7, '_services_category_thumb', 'field_63fc27a36d70b'),
(5, 6, 'services_category_thumb', '41'),
(6, 6, '_services_category_thumb', 'field_63fc27a36d70b'),
(7, 4, 'services_category_thumb', '41'),
(8, 4, '_services_category_thumb', 'field_63fc27a36d70b'),
(9, 3, 'services_category_thumb', '41'),
(10, 3, '_services_category_thumb', 'field_63fc27a36d70b'),
(11, 8, 'services_category_thumb', '41'),
(12, 8, '_services_category_thumb', 'field_63fc27a36d70b');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'ux design', 'ux-design', 0),
(4, 'publication design', 'publication-design', 0),
(5, 'email template design', 'email-template-design', 0),
(6, 'promotional design', 'promotional-desig', 0),
(7, 'front end development', 'front-end-development', 0),
(8, 'wordpress development', 'wordpress-development', 0),
(9, 'Promotional design', 'promotional-design', 0),
(10, 'Footer Menu One', 'footer-menu-one', 0),
(11, 'Footer Menu Two', 'footer-menu-two', 0),
(13, 'Management', 'management', 0),
(14, 'Team', 'team', 0),
(15, 'Collective Approach', 'collective-approach', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(19, 4, 0),
(19, 9, 0),
(23, 3, 0),
(23, 4, 0),
(23, 5, 0),
(23, 6, 0),
(23, 7, 0),
(23, 8, 0),
(23, 9, 0),
(24, 3, 0),
(24, 4, 0),
(24, 5, 0),
(24, 6, 0),
(24, 7, 0),
(24, 8, 0),
(24, 9, 0),
(25, 3, 0),
(25, 4, 0),
(25, 5, 0),
(25, 6, 0),
(25, 7, 0),
(25, 8, 0),
(25, 9, 0),
(26, 3, 0),
(26, 4, 0),
(26, 5, 0),
(26, 6, 0),
(26, 7, 0),
(26, 8, 0),
(26, 9, 0),
(27, 3, 0),
(27, 4, 0),
(27, 5, 0),
(27, 6, 0),
(27, 7, 0),
(27, 8, 0),
(27, 9, 0),
(86, 10, 0),
(87, 10, 0),
(88, 10, 0),
(89, 10, 0),
(90, 10, 0),
(91, 11, 0),
(92, 11, 0),
(93, 11, 0),
(94, 11, 0),
(95, 11, 0),
(96, 11, 0),
(113, 10, 0),
(114, 2, 0),
(115, 2, 0),
(116, 2, 0),
(117, 2, 0),
(122, 2, 0),
(129, 13, 0),
(131, 3, 0),
(131, 4, 0),
(131, 5, 0),
(131, 6, 0),
(131, 7, 0),
(131, 8, 0),
(131, 9, 0),
(139, 13, 0),
(142, 13, 0),
(146, 13, 0),
(149, 13, 0),
(152, 13, 0),
(155, 14, 0),
(158, 14, 0),
(165, 2, 0),
(166, 2, 0),
(167, 15, 0),
(172, 15, 0),
(173, 15, 0),
(174, 15, 0),
(175, 15, 0),
(176, 15, 0),
(177, 15, 0),
(178, 15, 0),
(179, 15, 0),
(180, 15, 0),
(181, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'service_category', 'We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide.', 0, 5),
(4, 4, 'service_category', 'With our groundbreaking ideas and strategies, we will create and uphold your brand on your all kind of promotional activities.', 0, 6),
(5, 5, 'service_category', 'We are offering out-of-the-box web design solutions to boost up the brands of our dedicated clients worldwide.', 0, 5),
(6, 6, 'service_category', 'We create publication design such as company brochure, profile, proposal, annual report to reach next level of the business.', 0, 5),
(7, 7, 'service_category', 'By analyzing your business, we design websites that increase conversion rates and produce positive results.', 0, 5),
(8, 8, 'service_category', 'Our custom web development will reduce downtime and increase efficiency so users do not have to worry about their websites.', 0, 5),
(9, 9, 'post_tag', '', 0, 6),
(10, 10, 'nav_menu', '', 0, 6),
(11, 11, 'nav_menu', '', 0, 6),
(13, 13, 'team_taxonomy', '', 0, 6),
(14, 14, 'team_taxonomy', '', 0, 2),
(15, 15, 'case_taxonomy', '', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'DesVert'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"57b9cf28f6f1ecef0621e87bb511b97c6d813985fc4b50bd68974b936b261261\";a:4:{s:10:\"expiration\";i:1677641973;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677469173;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '112'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(19, 1, 'wp_user-settings-time', '1677326368'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'closedpostboxes_desvert_services', 'a:0:{}'),
(23, 1, 'metaboxhidden_desvert_services', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'meta-box-order_desvert_services', 'a:3:{s:4:\"side\";s:83:\"submitdiv,formatdiv,service_categorydiv,tagsdiv-post_tag,pageparentdiv,postimagediv\";s:6:\"normal\";s:49:\"trackbacksdiv,postcustom,commentstatusdiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_desvert_services', '2'),
(26, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(27, 1, 'metaboxhidden_dashboard', 'a:6:{i:0;s:32:\"wp_mail_smtp_reports_widget_lite\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(28, 1, 'closedpostboxes_testimonials', 'a:0:{}'),
(29, 1, 'metaboxhidden_testimonials', 'a:5:{i:0;s:13:\"pageparentdiv\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";}'),
(30, 1, 'meta-box-order_testimonials', 'a:3:{s:4:\"side\";s:80:\"submitdiv,formatdiv,test_categorydiv,tagsdiv-post_tag,pageparentdiv,postimagediv\";s:6:\"normal\";s:49:\"trackbacksdiv,postcustom,commentstatusdiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(31, 1, 'screen_layout_testimonials', '2'),
(32, 1, 'nav_menu_recently_edited', '2'),
(33, 1, 'closedpostboxes_teams', 'a:0:{}'),
(34, 1, 'metaboxhidden_teams', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";}'),
(35, 1, 'closedpostboxes_case-studies', 'a:0:{}'),
(36, 1, 'metaboxhidden_case-studies', 'a:5:{i:0;s:13:\"pageparentdiv\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'DesVert', '$P$BSaxN198TSYh68NJa8oXYQlNyw83/81', 'desvert', 'mdredoyislam84@gmail.com', 'http://localhost/WP/DesVert', '2023-02-10 04:06:17', '', 0, 'DesVert');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `initiator` text DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmailsmtp_debug_events`
--

INSERT INTO `wp_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"D:\\\\MyServer\\\\htdocs\\\\WP\\\\DesVert\\\\wp-content\\\\plugins\\\\contact-form-7\\\\includes\\\\mail.php\",\"line\":258}', 0, '2023-02-21 23:46:10'),
(2, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"D:\\\\MyServer\\\\htdocs\\\\WP\\\\DesVert\\\\wp-content\\\\plugins\\\\contact-form-7\\\\includes\\\\mail.php\",\"line\":258}', 0, '2023-02-21 23:54:35'),
(3, 'Mailer: Google / Gmail\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\",\n          \"service\": \"gmail.googleapis.com\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"D:\\\\MyServer\\\\htdocs\\\\WP\\\\DesVert\\\\wp-includes\\\\class-wp-recovery-mode-email-service.php\",\"line\":235}', 0, '2023-02-22 23:28:28'),
(4, 'Mailer: Google / Gmail\r\n{\n  \"error\": {\n    \"code\": 401,\n    \"message\": \"Request is missing required authentication credential. Expected OAuth 2 access token, login cookie or other valid authentication credential. See https://developers.google.com/identity/sign-in/web/devconsole-project.\",\n    \"errors\": [\n      {\n        \"message\": \"Login Required.\",\n        \"domain\": \"global\",\n        \"reason\": \"required\",\n        \"location\": \"Authorization\",\n        \"locationType\": \"header\"\n      }\n    ],\n    \"status\": \"UNAUTHENTICATED\",\n    \"details\": [\n      {\n        \"@type\": \"type.googleapis.com/google.rpc.ErrorInfo\",\n        \"reason\": \"CREDENTIALS_MISSING\",\n        \"domain\": \"googleapis.com\",\n        \"metadata\": {\n          \"service\": \"gmail.googleapis.com\",\n          \"method\": \"caribou.api.proto.MailboxService.SendMessage\"\n        }\n      }\n    ]\n  }\n}', '{\"file\":\"D:\\\\MyServer\\\\htdocs\\\\WP\\\\DesVert\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112}', 0, '2023-02-27 21:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1548;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7262;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
