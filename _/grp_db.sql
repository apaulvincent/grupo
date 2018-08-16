-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2018 at 08:50 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-15 02:33:48', '2018-08-15 02:33:48', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://grupo.loc:802', 'yes'),
(2, 'home', 'http://grupo.loc:802', 'yes'),
(3, 'blogname', 'Grupo', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:113:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"reusable-block/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"reusable-block/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"reusable-block/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"reusable-block/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"reusable-block/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"reusable-block/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"reusable-block/([^/]+)/embed/?$\";s:47:\"index.php?reusable-block=$matches[1]&embed=true\";s:35:\"reusable-block/([^/]+)/trackback/?$\";s:41:\"index.php?reusable-block=$matches[1]&tb=1\";s:43:\"reusable-block/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?reusable-block=$matches[1]&paged=$matches[2]\";s:50:\"reusable-block/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?reusable-block=$matches[1]&cpage=$matches[2]\";s:39:\"reusable-block/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?reusable-block=$matches[1]&page=$matches[2]\";s:31:\"reusable-block/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"reusable-block/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"reusable-block/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"reusable-block/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"reusable-block/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"reusable-block/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"reusable-block-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?reusable-block-cat=$matches[1]&feed=$matches[2]\";s:59:\"reusable-block-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?reusable-block-cat=$matches[1]&feed=$matches[2]\";s:40:\"reusable-block-category/([^/]+)/embed/?$\";s:51:\"index.php?reusable-block-cat=$matches[1]&embed=true\";s:52:\"reusable-block-category/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?reusable-block-cat=$matches[1]&paged=$matches[2]\";s:34:\"reusable-block-category/([^/]+)/?$\";s:40:\"index.php?reusable-block-cat=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:4;s:57:\"simple-share-buttons-adder/simple-share-buttons-adder.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'grupo', 'yes'),
(41, 'stylesheet', 'grupo', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '87', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:14:\"sidebar-widget\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', 'pX :OE`@J_l6T2 *UhmO^CZ<f|W,rG<!>7u{[P.!p*~8%JSt}K1j_K-NeY} Tim?', 'no'),
(109, 'nonce_salt', 'DbEhCr1gTfG<`I3So8BedhTW,=$<<mn0j;+di<xmjE[^_zmg_i|a.C2B^`hRa=yO', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:5:{i:1534404828;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1534430028;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1534473239;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534477032;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534300585;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1534388115;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1534388117;s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.3\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.2\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.0.2\";s:57:\"simple-share-buttons-adder/simple-share-buttons-adder.php\";s:6:\"7.4.18\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"simple-share-buttons-adder/simple-share-buttons-adder.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/simple-share-buttons-adder\";s:4:\"slug\";s:26:\"simple-share-buttons-adder\";s:6:\"plugin\";s:57:\"simple-share-buttons-adder/simple-share-buttons-adder.php\";s:11:\"new_version\";s:6:\"7.4.18\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/simple-share-buttons-adder/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/simple-share-buttons-adder.7.4.18.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/simple-share-buttons-adder/assets/icon-256x256.png?rev=1267481\";s:2:\"1x\";s:79:\"https://ps.w.org/simple-share-buttons-adder/assets/icon-256x256.png?rev=1267481\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/simple-share-buttons-adder/assets/banner-1544x500.png?rev=1267481\";s:2:\"1x\";s:81:\"https://ps.w.org/simple-share-buttons-adder/assets/banner-772x250.png?rev=1267481\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(123, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1534388117;s:7:\"checked\";a:1:{s:5:\"grupo\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auth_key', 'dTK[k<7EK|yfN^,5T]:N-EKYgB7SFS2kVBCsy.,%CB<y{#fBW!4rCkB630Dp<3?@', 'no'),
(125, 'auth_salt', '-g(%cNu4m3[o9doNBd[qS$v]w]prT;5wDY87S fC~Dr6r,mP|1S:;f&v5x;H%KQw', 'no'),
(126, 'logged_in_key', 'jaxhd(>//m(fp&3z@TH!mVxKiXZM -1GSvMHH!^e 0ut?+WPRl96z]/JX? k,x9q', 'no'),
(127, 'logged_in_salt', '%5K*4&U0q.Q,P> /}!S%l 7X]xKq+78=~iD`o7<h0aHzPSd0_LXa_UJX%Q(a{Cxm', 'no'),
(128, '_site_transient_timeout_browser_01fe6d96f512df15cc1b10345d6b37d9', '1534905240', 'no'),
(129, '_site_transient_browser_01fe6d96f512df15cc1b10345d6b37d9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'DFP', 'yes'),
(145, 'theme_mods_grupo', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'acf_version', '5.7.2', 'yes'),
(151, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1534300604;s:7:\"version\";s:5:\"5.0.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(153, 'ssba_buttons', '{\"buffer\":{\"full_name\":\"Buffer\"},\"diggit\":{\"full_name\":\"Diggit\"},\"email\":{\"full_name\":\"Email\"},\"facebook\":{\"full_name\":\"Facebook\"},\"facebook_save\":{\"full_name\":\"Facebook Save\"},\"flattr\":{\"full_name\":\"Flattr\"},\"google\":{\"full_name\":\"Google+\"},\"linkedin\":{\"full_name\":\"LinkedIn\"},\"pinterest\":{\"full_name\":\"Pinterest\"},\"print\":{\"full_name\":\"Print\"},\"reddit\":{\"full_name\":\"Reddit\"},\"stumbleupon\":{\"full_name\":\"StumbleUpon\"},\"tumblr\":{\"full_name\":\"Tumblr\"},\"twitter\":{\"full_name\":\"Twitter\"},\"vk\":{\"full_name\":\"VK\"},\"whatsapp\":{\"full_name\":\"WhatsApp\"},\"xing\":{\"full_name\":\"Xing\"},\"yummly\":{\"full_name\":\"Yummly\"}}', 'yes'),
(155, 'widget_ssba_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'duplicate_post_copytitle', '1', 'yes'),
(157, 'duplicate_post_copydate', '0', 'yes'),
(158, 'duplicate_post_copystatus', '0', 'yes'),
(159, 'duplicate_post_copyslug', '0', 'yes'),
(160, 'duplicate_post_copyexcerpt', '1', 'yes'),
(161, 'duplicate_post_copycontent', '1', 'yes'),
(162, 'duplicate_post_copythumbnail', '1', 'yes'),
(163, 'duplicate_post_copytemplate', '1', 'yes'),
(164, 'duplicate_post_copyformat', '1', 'yes'),
(165, 'duplicate_post_copyauthor', '0', 'yes'),
(166, 'duplicate_post_copypassword', '0', 'yes'),
(167, 'duplicate_post_copyattachments', '0', 'yes'),
(168, 'duplicate_post_copychildren', '0', 'yes'),
(169, 'duplicate_post_copycomments', '0', 'yes'),
(170, 'duplicate_post_copymenuorder', '1', 'yes'),
(171, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(172, 'duplicate_post_blacklist', '', 'yes'),
(173, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(174, 'duplicate_post_show_row', '1', 'yes'),
(175, 'duplicate_post_show_adminbar', '1', 'yes'),
(176, 'duplicate_post_show_submitbox', '1', 'yes'),
(177, 'duplicate_post_show_bulkactions', '1', 'yes'),
(178, 'duplicate_post_version', '3.2.2', 'yes'),
(179, 'duplicate_post_show_notice', '0', 'no'),
(180, 'ssba_settings', '{\"ssba_image_set\":\"somacro\",\"ssba_size\":\"35\",\"ssba_pages\":\"\",\"ssba_posts\":\"\",\"ssba_cats_archs\":\"\",\"ssba_homepage\":\"\",\"ssba_excerpts\":\"\",\"ssba_plus_pages\":\"\",\"ssba_plus_posts\":\"\",\"ssba_plus_cats_archs\":\"\",\"ssba_plus_homepage\":\"\",\"ssba_plus_excerpts\":\"\",\"ssba_bar_pages\":\"\",\"ssba_bar_posts\":\"\",\"ssba_bar_cats_archs\":\"\",\"ssba_bar_homepage\":\"\",\"ssba_bar_excerpts\":\"\",\"ssba_align\":\"left\",\"ssba_plus_align\":\"left\",\"ssba_bar_align\":\"left\",\"ssba_padding\":\"6\",\"ssba_before_or_after\":\"after\",\"ssba_before_or_after_plus\":\"after\",\"ssba_additional_css\":\"\",\"ssba_custom_styles\":\"\",\"ssba_custom_styles_enabled\":\"\",\"ssba_plus_additional_css\":\"\",\"ssba_plus_custom_styles\":\"\",\"ssba_plus_custom_styles_enabled\":\"\",\"ssba_bar_additional_css\":\"\",\"ssba_bar_custom_styles\":\"\",\"ssba_bar_custom_styles_enabled\":\"\",\"ssba_email_message\":\"\",\"ssba_twitter_text\":\"\",\"ssba_buffer_text\":\"\",\"ssba_flattr_user_id\":\"\",\"ssba_flattr_url\":\"\",\"ssba_bar_share_new_window\":\"Y\",\"ssba_share_new_window\":\"Y\",\"ssba_plus_share_new_window\":\"Y\",\"ssba_link_to_ssb\":\"N\",\"ssba_show_share_count\":\"\",\"ssba_plus_show_share_count\":\"\",\"ssba_bar_show_share_count\":\"\",\"ssba_share_count_style\":\"default\",\"ssba_share_count_css\":\"\",\"ssba_share_count_once\":\"Y\",\"ssba_plus_share_count_style\":\"default\",\"ssba_plus_share_count_css\":\"\",\"ssba_plus_share_count_once\":\"Y\",\"ssba_bar_share_count_style\":\"default\",\"ssba_bar_share_count_css\":\"\",\"ssba_bar_share_count_once\":\"Y\",\"ssba_widget_text\":\"\",\"ssba_rel_nofollow\":\"\",\"ssba_default_pinterest\":\"\",\"ssba_pinterest_featured\":\"\",\"ssba_plus_widget_text\":\"\",\"ssba_plus_rel_nofollow\":\"\",\"ssba_plus_default_pinterest\":\"\",\"ssba_plus_pinterest_featured\":\"\",\"ssba_bar_widget_text\":\"\",\"ssba_bar_rel_nofollow\":\"\",\"ssba_bar_default_pinterest\":\"\",\"ssba_bar_pinterest_featured\":\"\",\"ssba_content_priority\":\"10\",\"ssba_div_padding\":\"\",\"ssba_div_rounded_corners\":\"\",\"ssba_border_width\":\"\",\"ssba_div_border\":\"\",\"ssba_div_background\":\"\",\"ssba_share_text\":\"Share this...\",\"ssba_text_placement\":\"above\",\"ssba_font_family\":\"\",\"ssba_font_color\":\"\",\"ssba_font_size\":\"12\",\"ssba_font_weight\":\"\",\"ssba_plus_share_text\":\"Share this...\",\"ssba_plus_text_placement\":\"above\",\"ssba_plus_font_family\":\"\",\"ssba_plus_font_color\":\"\",\"ssba_plus_font_size\":\"12\",\"ssba_plus_font_weight\":\"\",\"ssba_selected_buttons\":\"facebook,google,twitter,linkedin\",\"ssba_selected_bar_buttons\":\"facebook,google,twitter,linkedin\",\"ssba_selected_plus_buttons\":\"facebook,google,twitter,linkedin\",\"ssba_plus_button_style\":1,\"ssba_bar_style\":1,\"ssba_new_buttons\":\"\",\"ssba_bar_enabled\":\"\",\"ssba_bar_position\":\"left\",\"ssba_plus_height\":\"48\",\"ssba_plus_width\":\"48\",\"ssba_plus_margin\":\"12\",\"ssba_plus_button_color\":\"\",\"ssba_plus_button_hover_color\":\"\",\"ssba_plus_icon_size\":\"\",\"ssba_plus_icon_color\":\"\",\"ssba_plus_icon_hover_color\":\"\",\"ssba_bar_height\":\"48\",\"ssba_bar_width\":\"48\",\"ssba_bar_margin\":\"0\",\"ssba_bar_icon_size\":\"\",\"ssba_bar_button_color\":\"\",\"ssba_bar_button_hover_color\":\"\",\"ssba_bar_icon_color\":\"\",\"ssba_bar_icon_hover_color\":\"\",\"ssba_bar_desktop\":\"Y\",\"ssba_bar_mobile\":\"Y\",\"ssba_mobile_breakpoint\":\"\",\"ssba_custom_email\":\"\",\"ssba_custom_google\":\"\",\"ssba_custom_facebook\":\"\",\"ssba_custom_twitter\":\"\",\"ssba_custom_diggit\":\"\",\"ssba_custom_linkedin\":\"\",\"ssba_custom_reddit\":\"\",\"ssba_custom_stumbleupon\":\"\",\"ssba_custom_pinterest\":\"\",\"ssba_custom_buffer\":\"\",\"ssba_custom_flattr\":\"\",\"ssba_custom_tumblr\":\"\",\"ssba_custom_print\":\"\",\"ssba_custom_vk\":\"\",\"ssba_custom_yummly\":\"\",\"ssba_custom_facebook_save\":\"\",\"sharedcount_enabled\":\"\",\"sharedcount_api_key\":\"\",\"sharedcount_plan\":\"free\",\"sharedcount_plus_enabled\":\"\",\"sharedcount_plus_api_key\":\"\",\"sharedcount_plus_plan\":\"free\",\"sharedcount_share_enabled\":\"\",\"sharedcount_share_api_key\":\"\",\"sharedcount_share_plan\":\"free\",\"twitter_newsharecounts\":\"\",\"plus_twitter_newsharecounts\":\"\",\"share_twitter_newsharecounts\":\"\",\"facebook_insights\":\"\",\"facebook_app_id\":\"\",\"ignore_facebook_sdk\":\"\",\"plus_facebook_insights\":\"\",\"plus_facebook_app_id\":\"\",\"plus_ignore_facebook_sdk\":\"\",\"share_facebook_insights\":\"\",\"share_facebook_app_id\":\"\",\"accepted_sharethis_terms\":\"Y\"}', 'yes'),
(181, 'ssba_version', '7.4.18', 'yes'),
(185, 'options_desktop_site_logo', '66', 'no'),
(186, '_options_desktop_site_logo', 'field_desktop_logo', 'no'),
(194, '_site_transient_timeout_browser_11d9a73fb38b2f1c4799e1f5e17c7b14', '1534929035', 'no'),
(195, '_site_transient_browser_11d9a73fb38b2f1c4799e1f5e17c7b14', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(196, 'category_children', 'a:0:{}', 'yes'),
(198, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(204, '_transient_timeout_acf_plugin_updates', '1534458456', 'no'),
(205, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.2\";}}', 'no'),
(213, '_site_transient_timeout_theme_roots', '1534389916', 'no'),
(214, '_site_transient_theme_roots', 'a:1:{s:5:\"grupo\";s:7:\"/themes\";}', 'no'),
(219, 'options_contact_info_fields_0_contact_name', 'Mexico', 'no'),
(220, '_options_contact_info_fields_0_contact_name', 'field_contact_name', 'no'),
(221, 'options_contact_info_fields_0_contact_phone', '01 800 099 0350', 'no'),
(222, '_options_contact_info_fields_0_contact_phone', 'field_contact_phone', 'no'),
(223, 'options_contact_info_fields_0_contact_flag', '125', 'no'),
(224, '_options_contact_info_fields_0_contact_flag', 'field_contact_flag', 'no'),
(225, 'options_contact_info_fields_1_contact_name', 'US & Canada', 'no'),
(226, '_options_contact_info_fields_1_contact_name', 'field_contact_name', 'no'),
(227, 'options_contact_info_fields_1_contact_phone', '1800 993 4198', 'no'),
(228, '_options_contact_info_fields_1_contact_phone', 'field_contact_phone', 'no'),
(229, 'options_contact_info_fields_1_contact_flag', '126', 'no'),
(230, '_options_contact_info_fields_1_contact_flag', 'field_contact_flag', 'no'),
(231, 'options_contact_info_fields', '2', 'no'),
(232, '_options_contact_info_fields', 'contacts_field_repeater', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:22:\"Grupo \"[your-subject]\"\";s:6:\"sender\";s:33:\"[your-name] <wordpress@grupo.loc>\";s:4:\"body\";s:164:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Grupo (http://grupo.loc:802)\";s:9:\"recipient\";s:14:\"test@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"Grupo \"[your-subject]\"\";s:6:\"sender\";s:27:\"Grupo <wordpress@grupo.loc>\";s:4:\"body\";s:106:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Grupo (http://grupo.loc:802)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:24:\"Reply-To: test@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'en_US'),
(9, 3, '_edit_lock', '1534303269:1'),
(10, 3, '_edit_last', '1'),
(11, 2, '_edit_last', '1'),
(12, 2, '_edit_lock', '1534401159:1'),
(13, 9, '_wp_page_template', 'default'),
(14, 9, '_dp_original', '2'),
(15, 9, '_edit_lock', '1534400612:1'),
(16, 9, '_edit_last', '1'),
(17, 11, '_wp_page_template', 'default'),
(19, 11, '_dp_original', '9'),
(20, 11, '_edit_lock', '1534303383:1'),
(21, 11, '_edit_last', '1'),
(22, 13, '_wp_page_template', 'default'),
(24, 13, '_dp_original', '11'),
(25, 13, '_edit_lock', '1534331243:1'),
(26, 13, '_edit_last', '1'),
(27, 15, '_wp_page_template', 'default'),
(29, 15, '_dp_original', '11'),
(30, 15, '_edit_lock', '1534303562:1'),
(31, 15, '_edit_last', '1'),
(32, 18, '_wp_trash_meta_status', 'publish'),
(33, 18, '_wp_trash_meta_time', '1534304429'),
(34, 18, '_wp_desired_post_slug', 'group_5b6bc4b579576'),
(35, 19, '_wp_trash_meta_status', 'publish'),
(36, 19, '_wp_trash_meta_time', '1534304429'),
(37, 19, '_wp_desired_post_slug', 'field_5b6bc4cb50f08'),
(38, 56, '_wp_attached_file', '2018/08/brand-01.png'),
(39, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2018/08/brand-01.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"brand-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 57, '_wp_attached_file', '2018/08/brand-02.png'),
(41, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2018/08/brand-02.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"brand-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 58, '_wp_attached_file', '2018/08/brand-03.png'),
(43, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2018/08/brand-03.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"brand-03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 59, '_wp_attached_file', '2018/08/brand-04.png'),
(45, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2018/08/brand-04.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"brand-04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 60, '_wp_attached_file', '2018/08/brand-05.png'),
(47, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2018/08/brand-05.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"brand-05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 61, '_wp_attached_file', '2018/08/brand-06.png'),
(49, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2018/08/brand-06.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"brand-06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 62, '_wp_attached_file', '2018/08/brand-07.png'),
(51, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2018/08/brand-07.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"brand-07-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 63, '_wp_attached_file', '2018/08/img-01.png'),
(53, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:285;s:6:\"height\";i:285;s:4:\"file\";s:18:\"2018/08/img-01.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 64, '_wp_attached_file', '2018/08/img-02.png'),
(55, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:285;s:6:\"height\";i:285;s:4:\"file\";s:18:\"2018/08/img-02.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 65, '_wp_attached_file', '2018/08/img-03.png'),
(57, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:285;s:6:\"height\";i:285;s:4:\"file\";s:18:\"2018/08/img-03.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"img-03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 66, '_wp_attached_file', '2018/08/logo.png'),
(59, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:94;s:4:\"file\";s:16:\"2018/08/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x94.png\";s:5:\"width\";i:150;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x88.png\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 1, '_edit_lock', '1534316031:1'),
(61, 1, '_edit_last', '1'),
(63, 1, 'show_banner', '0'),
(64, 1, '_show_banner', 'field_5aeb88e804596'),
(65, 1, 'content_reusable_blocks', ''),
(66, 1, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(67, 1, 'sidebar_reusable_block', ''),
(68, 1, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(69, 1, 'title_bar_background', '#003399'),
(70, 1, '_title_bar_background', 'field_5b693dc44c381'),
(71, 1, 'content_link', ''),
(72, 1, '_content_link', 'field_5b693de54c383'),
(73, 1, 'post_category', ''),
(74, 1, '_post_category', 'field_5b6b92b6e11c6'),
(75, 67, 'show_banner', '0'),
(76, 67, '_show_banner', 'field_5aeb88e804596'),
(77, 67, 'content_reusable_blocks', ''),
(78, 67, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(79, 67, 'sidebar_reusable_block', ''),
(80, 67, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(81, 67, 'title_bar_background', '#003399'),
(82, 67, '_title_bar_background', 'field_5b693dc44c381'),
(83, 67, 'content_link', ''),
(84, 67, '_content_link', 'field_5b693de54c383'),
(85, 67, 'post_category', ''),
(86, 67, '_post_category', 'field_5b6b92b6e11c6'),
(88, 68, 'show_banner', '0'),
(89, 68, '_show_banner', 'field_5aeb88e804596'),
(90, 68, 'content_reusable_blocks', ''),
(91, 68, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(92, 68, 'sidebar_reusable_block', ''),
(93, 68, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(94, 68, 'title_bar_background', '#003399'),
(95, 68, '_title_bar_background', 'field_5b693dc44c381'),
(96, 68, 'content_link', ''),
(97, 68, '_content_link', 'field_5b693de54c383'),
(98, 68, 'post_category', ''),
(99, 68, '_post_category', 'field_5b6b92b6e11c6'),
(101, 70, 'show_banner', '0'),
(102, 70, '_show_banner', 'field_5aeb88e804596'),
(103, 70, 'content_reusable_blocks', ''),
(104, 70, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(105, 70, 'sidebar_reusable_block', ''),
(106, 70, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(107, 70, 'title_bar_background', '#003399'),
(108, 70, '_title_bar_background', 'field_5b693dc44c381'),
(109, 70, 'content_link', ''),
(110, 70, '_content_link', 'field_5b693de54c383'),
(111, 70, 'post_category', ''),
(112, 70, '_post_category', 'field_5b6b92b6e11c6'),
(113, 71, '_wp_attached_file', '2018/08/Banner.jpg'),
(114, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1652;s:6:\"height\";i:617;s:4:\"file\";s:18:\"2018/08/Banner.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Banner-300x112.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Banner-768x287.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:287;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"Banner-1024x382.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:19:\"Banner-1400x500.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"feat-banner-image\";a:4:{s:4:\"file\";s:18:\"Banner-760x284.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"listing-image\";a:4:{s:4:\"file\";s:18:\"Banner-560x560.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"single-image\";a:4:{s:4:\"file\";s:18:\"Banner-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb-sm\";a:4:{s:4:\"file\";s:18:\"Banner-360x360.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb-md\";a:4:{s:4:\"file\";s:18:\"Banner-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb-lg\";a:4:{s:4:\"file\";s:18:\"Banner-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 72, '_wp_attached_file', '2018/08/standard-image.jpg'),
(116, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1087;s:6:\"height\";i:644;s:4:\"file\";s:26:\"2018/08/standard-image.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"standard-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"standard-image-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"standard-image-768x455.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:455;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"standard-image-1024x607.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:607;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"banner-image\";a:4:{s:4:\"file\";s:27:\"standard-image-1087x500.jpg\";s:5:\"width\";i:1087;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"feat-banner-image\";a:4:{s:4:\"file\";s:26:\"standard-image-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"listing-image\";a:4:{s:4:\"file\";s:26:\"standard-image-560x560.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"single-image\";a:4:{s:4:\"file\";s:26:\"standard-image-560x360.jpg\";s:5:\"width\";i:560;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb-sm\";a:4:{s:4:\"file\";s:26:\"standard-image-360x360.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb-md\";a:4:{s:4:\"file\";s:26:\"standard-image-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"thumb-lg\";a:4:{s:4:\"file\";s:26:\"standard-image-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 2, 'show_banner', '1'),
(118, 2, '_show_banner', 'field_5aeb88e804596'),
(119, 2, 'banner_type', 'image-static'),
(120, 2, '_banner_type', 'field_5aeb898437746'),
(121, 2, 'banner_image', '71'),
(122, 2, '_banner_image', 'field_5aeb8a0a37747'),
(123, 2, 'banner_content', '<h1>we build\r\ngreat teams.</h1>\r\n<h2>TEAM BUILDING &amp; CORPORATE EVENTS</h2>'),
(124, 2, '_banner_content', 'field_5aeb8ab437750'),
(125, 2, 'content_reusable_blocks', ''),
(126, 2, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(127, 2, 'sidebar_reusable_block', ''),
(128, 2, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(129, 2, 'title_bar_background', '#003399'),
(130, 2, '_title_bar_background', 'field_5b693dc44c381'),
(131, 2, 'content_link', ''),
(132, 2, '_content_link', 'field_5b693de54c383'),
(133, 2, 'post_category', ''),
(134, 2, '_post_category', 'field_5b6b92b6e11c6'),
(135, 73, 'show_banner', '1'),
(136, 73, '_show_banner', 'field_5aeb88e804596'),
(137, 73, 'banner_type', 'image-static'),
(138, 73, '_banner_type', 'field_5aeb898437746'),
(139, 73, 'banner_image', '71'),
(140, 73, '_banner_image', 'field_5aeb8a0a37747'),
(141, 73, 'banner_content', ''),
(142, 73, '_banner_content', 'field_5aeb8ab437750'),
(143, 73, 'content_reusable_blocks', ''),
(144, 73, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(145, 73, 'sidebar_reusable_block', ''),
(146, 73, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(147, 73, 'title_bar_background', '#003399'),
(148, 73, '_title_bar_background', 'field_5b693dc44c381'),
(149, 73, 'content_link', ''),
(150, 73, '_content_link', 'field_5b693de54c383'),
(151, 73, 'post_category', ''),
(152, 73, '_post_category', 'field_5b6b92b6e11c6'),
(153, 22, '_edit_lock', '1534327005:1'),
(154, 22, '_edit_last', '1'),
(155, 2, 'button_type', 'Video'),
(156, 2, '_button_type', 'field_5b73f436467fa'),
(157, 2, 'button_text', ''),
(158, 2, '_button_text', 'field_5b73f48c467fb'),
(159, 2, 'button_url', ''),
(160, 2, '_button_url', 'field_5b73f4ae467fc'),
(161, 2, 'banner_background_color', '#00c1ff'),
(162, 2, '_banner_background_color', 'field_5b693dc44c381'),
(163, 78, 'show_banner', '1'),
(164, 78, '_show_banner', 'field_5aeb88e804596'),
(165, 78, 'banner_type', 'image-static'),
(166, 78, '_banner_type', 'field_5aeb898437746'),
(167, 78, 'banner_image', '71'),
(168, 78, '_banner_image', 'field_5aeb8a0a37747'),
(169, 78, 'banner_content', '<h1 style=\"text-align: center;\">we build\r\ngreat teams.</h1>\r\n<h2 style=\"text-align: center;\">Team Building &amp; corporate events</h2>'),
(170, 78, '_banner_content', 'field_5aeb8ab437750'),
(171, 78, 'content_reusable_blocks', ''),
(172, 78, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(173, 78, 'sidebar_reusable_block', ''),
(174, 78, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(175, 78, 'title_bar_background', '#003399'),
(176, 78, '_title_bar_background', 'field_5b693dc44c381'),
(177, 78, 'content_link', ''),
(178, 78, '_content_link', 'field_5b693de54c383'),
(179, 78, 'post_category', ''),
(180, 78, '_post_category', 'field_5b6b92b6e11c6'),
(181, 78, 'button_type', 'default'),
(182, 78, '_button_type', 'field_5b73f436467fa'),
(183, 78, 'button_text', ''),
(184, 78, '_button_text', 'field_5b73f48c467fb'),
(185, 78, 'button_url', ''),
(186, 78, '_button_url', 'field_5b73f4ae467fc'),
(187, 78, 'banner_background_color', '#00C1FF'),
(188, 78, '_banner_background_color', 'field_5b693dc44c381'),
(189, 79, 'show_banner', '1'),
(190, 79, '_show_banner', 'field_5aeb88e804596'),
(191, 79, 'banner_type', 'image-static'),
(192, 79, '_banner_type', 'field_5aeb898437746'),
(193, 79, 'banner_image', '71'),
(194, 79, '_banner_image', 'field_5aeb8a0a37747'),
(195, 79, 'banner_content', '<h1>we build\r\ngreat teams.</h1>\r\n<h2>Team Building &amp; corporate events</h2>'),
(196, 79, '_banner_content', 'field_5aeb8ab437750'),
(197, 79, 'content_reusable_blocks', ''),
(198, 79, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(199, 79, 'sidebar_reusable_block', ''),
(200, 79, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(201, 79, 'title_bar_background', '#003399'),
(202, 79, '_title_bar_background', 'field_5b693dc44c381'),
(203, 79, 'content_link', ''),
(204, 79, '_content_link', 'field_5b693de54c383'),
(205, 79, 'post_category', ''),
(206, 79, '_post_category', 'field_5b6b92b6e11c6'),
(207, 79, 'button_type', 'default'),
(208, 79, '_button_type', 'field_5b73f436467fa'),
(209, 79, 'button_text', ''),
(210, 79, '_button_text', 'field_5b73f48c467fb'),
(211, 79, 'button_url', ''),
(212, 79, '_button_url', 'field_5b73f4ae467fc'),
(213, 79, 'banner_background_color', '#00C1FF'),
(214, 79, '_banner_background_color', 'field_5b693dc44c381'),
(215, 2, 'video_url', 'whZNYPldMEY'),
(216, 2, '_video_url', 'field_5b73f4c2467fd'),
(217, 80, 'show_banner', '1'),
(218, 80, '_show_banner', 'field_5aeb88e804596'),
(219, 80, 'banner_type', 'image-static'),
(220, 80, '_banner_type', 'field_5aeb898437746'),
(221, 80, 'banner_image', '71'),
(222, 80, '_banner_image', 'field_5aeb8a0a37747'),
(223, 80, 'banner_content', '<h1>we build\r\ngreat teams.</h1>\r\n<h2>Team Building &amp; corporate events</h2>'),
(224, 80, '_banner_content', 'field_5aeb8ab437750'),
(225, 80, 'content_reusable_blocks', ''),
(226, 80, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(227, 80, 'sidebar_reusable_block', ''),
(228, 80, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(229, 80, 'title_bar_background', '#003399'),
(230, 80, '_title_bar_background', 'field_5b693dc44c381'),
(231, 80, 'content_link', ''),
(232, 80, '_content_link', 'field_5b693de54c383'),
(233, 80, 'post_category', ''),
(234, 80, '_post_category', 'field_5b6b92b6e11c6'),
(235, 80, 'button_type', 'Video'),
(236, 80, '_button_type', 'field_5b73f436467fa'),
(237, 80, 'button_text', ''),
(238, 80, '_button_text', 'field_5b73f48c467fb'),
(239, 80, 'button_url', ''),
(240, 80, '_button_url', 'field_5b73f4ae467fc'),
(241, 80, 'banner_background_color', '#00C1FF'),
(242, 80, '_banner_background_color', 'field_5b693dc44c381'),
(243, 80, 'video_url', 'whZNYPldMEY'),
(244, 80, '_video_url', 'field_5b73f4c2467fd'),
(245, 81, '_menu_item_type', 'post_type'),
(246, 81, '_menu_item_menu_item_parent', '0'),
(247, 81, '_menu_item_object_id', '15'),
(248, 81, '_menu_item_object', 'page'),
(249, 81, '_menu_item_target', ''),
(250, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(251, 81, '_menu_item_xfn', ''),
(252, 81, '_menu_item_url', ''),
(254, 82, '_menu_item_type', 'post_type'),
(255, 82, '_menu_item_menu_item_parent', '0'),
(256, 82, '_menu_item_object_id', '13'),
(257, 82, '_menu_item_object', 'page'),
(258, 82, '_menu_item_target', ''),
(259, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(260, 82, '_menu_item_xfn', ''),
(261, 82, '_menu_item_url', ''),
(263, 83, '_menu_item_type', 'post_type'),
(264, 83, '_menu_item_menu_item_parent', '0'),
(265, 83, '_menu_item_object_id', '11'),
(266, 83, '_menu_item_object', 'page'),
(267, 83, '_menu_item_target', ''),
(268, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 83, '_menu_item_xfn', ''),
(270, 83, '_menu_item_url', ''),
(272, 84, '_menu_item_type', 'post_type'),
(273, 84, '_menu_item_menu_item_parent', '0'),
(274, 84, '_menu_item_object_id', '9'),
(275, 84, '_menu_item_object', 'page'),
(276, 84, '_menu_item_target', ''),
(277, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(278, 84, '_menu_item_xfn', ''),
(279, 84, '_menu_item_url', ''),
(281, 85, '_menu_item_type', 'post_type'),
(282, 85, '_menu_item_menu_item_parent', '0'),
(283, 85, '_menu_item_object_id', '3'),
(284, 85, '_menu_item_object', 'page'),
(285, 85, '_menu_item_target', ''),
(286, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(287, 85, '_menu_item_xfn', ''),
(288, 85, '_menu_item_url', ''),
(289, 85, '_menu_item_orphaned', '1534327728'),
(290, 86, '_menu_item_type', 'post_type'),
(291, 86, '_menu_item_menu_item_parent', '0'),
(292, 86, '_menu_item_object_id', '2'),
(293, 86, '_menu_item_object', 'page'),
(294, 86, '_menu_item_target', ''),
(295, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(296, 86, '_menu_item_xfn', ''),
(297, 86, '_menu_item_url', ''),
(298, 86, '_menu_item_orphaned', '1534327729'),
(299, 87, '_edit_last', '1'),
(300, 87, '_wp_page_template', 'default'),
(309, 87, 'show_banner', '0'),
(310, 87, '_show_banner', 'field_5aeb88e804596'),
(311, 87, 'button_type', 'default'),
(312, 87, '_button_type', 'field_5b73f436467fa'),
(313, 87, 'button_text', ''),
(314, 87, '_button_text', 'field_5b73f48c467fb'),
(315, 87, 'button_url', ''),
(316, 87, '_button_url', 'field_5b73f4ae467fc'),
(317, 87, 'content_reusable_blocks', ''),
(318, 87, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(319, 89, 'show_banner', '0'),
(320, 89, '_show_banner', 'field_5aeb88e804596'),
(321, 89, 'button_type', 'default'),
(322, 89, '_button_type', 'field_5b73f436467fa'),
(323, 89, 'button_text', ''),
(324, 89, '_button_text', 'field_5b73f48c467fb'),
(325, 89, 'button_url', ''),
(326, 89, '_button_url', 'field_5b73f4ae467fc'),
(327, 89, 'content_reusable_blocks', ''),
(328, 89, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(329, 87, '_edit_lock', '1534327637:1'),
(330, 90, '_wp_page_template', 'default'),
(332, 90, '_dp_original', '13'),
(333, 90, '_edit_lock', '1534331277:1'),
(334, 90, '_edit_last', '1'),
(335, 90, 'show_banner', '0'),
(336, 90, '_show_banner', 'field_5aeb88e804596'),
(337, 90, 'banner_content', ''),
(338, 90, '_banner_content', 'field_5aeb8ab437750'),
(339, 90, 'button_type', 'default'),
(340, 90, '_button_type', 'field_5b73f436467fa'),
(341, 90, 'button_text', ''),
(342, 90, '_button_text', 'field_5b73f48c467fb'),
(343, 90, 'button_url', ''),
(344, 90, '_button_url', 'field_5b73f4ae467fc'),
(345, 90, 'content_reusable_blocks', ''),
(346, 90, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(347, 91, 'show_banner', '0'),
(348, 91, '_show_banner', 'field_5aeb88e804596'),
(349, 91, 'banner_content', ''),
(350, 91, '_banner_content', 'field_5aeb8ab437750'),
(351, 91, 'button_type', 'default'),
(352, 91, '_button_type', 'field_5b73f436467fa'),
(353, 91, 'button_text', ''),
(354, 91, '_button_text', 'field_5b73f48c467fb'),
(355, 91, 'button_url', ''),
(356, 91, '_button_url', 'field_5b73f4ae467fc'),
(357, 91, 'content_reusable_blocks', ''),
(358, 91, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(359, 92, '_wp_page_template', 'default'),
(361, 92, 'show_banner', '0'),
(362, 92, '_show_banner', 'field_5aeb88e804596'),
(363, 92, 'banner_content', ''),
(364, 92, '_banner_content', 'field_5aeb8ab437750'),
(365, 92, 'button_type', 'default'),
(366, 92, '_button_type', 'field_5b73f436467fa'),
(367, 92, 'button_text', ''),
(368, 92, '_button_text', 'field_5b73f48c467fb'),
(369, 92, 'button_url', ''),
(370, 92, '_button_url', 'field_5b73f4ae467fc'),
(371, 92, 'content_reusable_blocks', ''),
(372, 92, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(373, 92, '_dp_original', '90'),
(374, 92, '_edit_lock', '1534331430:1'),
(375, 92, '_edit_last', '1'),
(376, 93, 'show_banner', '0'),
(377, 93, '_show_banner', 'field_5aeb88e804596'),
(378, 93, 'banner_content', ''),
(379, 93, '_banner_content', 'field_5aeb8ab437750'),
(380, 93, 'button_type', 'default'),
(381, 93, '_button_type', 'field_5b73f436467fa'),
(382, 93, 'button_text', ''),
(383, 93, '_button_text', 'field_5b73f48c467fb'),
(384, 93, 'button_url', ''),
(385, 93, '_button_url', 'field_5b73f4ae467fc'),
(386, 93, 'content_reusable_blocks', ''),
(387, 93, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(388, 94, '_menu_item_type', 'post_type'),
(389, 94, '_menu_item_menu_item_parent', '82'),
(390, 94, '_menu_item_object_id', '92'),
(391, 94, '_menu_item_object', 'page'),
(392, 94, '_menu_item_target', ''),
(393, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(394, 94, '_menu_item_xfn', ''),
(395, 94, '_menu_item_url', ''),
(397, 95, '_menu_item_type', 'post_type'),
(398, 95, '_menu_item_menu_item_parent', '82'),
(399, 95, '_menu_item_object_id', '90'),
(400, 95, '_menu_item_object', 'page'),
(401, 95, '_menu_item_target', ''),
(402, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(403, 95, '_menu_item_xfn', ''),
(404, 95, '_menu_item_url', ''),
(406, 96, '_menu_item_type', 'post_type'),
(407, 96, '_menu_item_menu_item_parent', '0'),
(408, 96, '_menu_item_object_id', '87'),
(409, 96, '_menu_item_object', 'page'),
(410, 96, '_menu_item_target', ''),
(411, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(412, 96, '_menu_item_xfn', ''),
(413, 96, '_menu_item_url', ''),
(415, 22, '_wp_trash_meta_status', 'publish'),
(416, 22, '_wp_trash_meta_time', '1534372074'),
(417, 22, '_wp_desired_post_slug', 'group_5aeb8048cab83'),
(418, 23, '_wp_trash_meta_status', 'publish'),
(419, 23, '_wp_trash_meta_time', '1534372074'),
(420, 23, '_wp_desired_post_slug', 'field_5aeb890b04597'),
(421, 24, '_wp_trash_meta_status', 'publish'),
(422, 24, '_wp_trash_meta_time', '1534372074'),
(423, 24, '_wp_desired_post_slug', 'field_5aeb88e804596'),
(424, 27, '_wp_trash_meta_status', 'publish'),
(425, 27, '_wp_trash_meta_time', '1534372074'),
(426, 27, '_wp_desired_post_slug', 'field_5aeb8ab437750'),
(427, 74, '_wp_trash_meta_status', 'publish'),
(428, 74, '_wp_trash_meta_time', '1534372074'),
(429, 74, '_wp_desired_post_slug', 'field_5b73f436467fa'),
(430, 75, '_wp_trash_meta_status', 'publish'),
(431, 75, '_wp_trash_meta_time', '1534372074'),
(432, 75, '_wp_desired_post_slug', 'field_5b73f48c467fb'),
(433, 76, '_wp_trash_meta_status', 'publish'),
(434, 76, '_wp_trash_meta_time', '1534372074'),
(435, 76, '_wp_desired_post_slug', 'field_5b73f4ae467fc'),
(436, 77, '_wp_trash_meta_status', 'publish'),
(437, 77, '_wp_trash_meta_time', '1534372074'),
(438, 77, '_wp_desired_post_slug', 'field_5b73f4c2467fd'),
(439, 26, '_wp_trash_meta_status', 'publish'),
(440, 26, '_wp_trash_meta_time', '1534372074'),
(441, 26, '_wp_desired_post_slug', 'field_5aeb8a0a37747'),
(442, 38, '_wp_trash_meta_status', 'publish'),
(443, 38, '_wp_trash_meta_time', '1534372074'),
(444, 38, '_wp_desired_post_slug', 'field_5b693dc44c381'),
(445, 33, '_wp_trash_meta_status', 'publish'),
(446, 33, '_wp_trash_meta_time', '1534372074'),
(447, 33, '_wp_desired_post_slug', 'field_5b658e148fb3d'),
(448, 34, '_wp_trash_meta_status', 'publish'),
(449, 34, '_wp_trash_meta_time', '1534372074'),
(450, 34, '_wp_desired_post_slug', 'field_5b66641b8c4b0'),
(451, 43, '_wp_trash_meta_status', 'publish'),
(452, 43, '_wp_trash_meta_time', '1534372074'),
(453, 43, '_wp_desired_post_slug', 'group_5b6667bbaa4e2'),
(454, 44, '_wp_trash_meta_status', 'publish'),
(455, 44, '_wp_trash_meta_time', '1534372074'),
(456, 44, '_wp_desired_post_slug', 'field_5b6667cc75b3a'),
(457, 45, '_wp_trash_meta_status', 'publish'),
(458, 45, '_wp_trash_meta_time', '1534372074'),
(459, 45, '_wp_desired_post_slug', 'field_5b68edd816c73'),
(460, 46, '_wp_trash_meta_status', 'publish'),
(461, 46, '_wp_trash_meta_time', '1534372074'),
(462, 46, '_wp_desired_post_slug', 'field_5b666ee758922'),
(463, 47, '_wp_trash_meta_status', 'publish'),
(464, 47, '_wp_trash_meta_time', '1534372074'),
(465, 47, '_wp_desired_post_slug', 'field_5b66716d85653'),
(466, 48, '_wp_trash_meta_status', 'publish'),
(467, 48, '_wp_trash_meta_time', '1534372074'),
(468, 48, '_wp_desired_post_slug', 'field_5b66709e8564f'),
(469, 49, '_wp_trash_meta_status', 'publish'),
(470, 49, '_wp_trash_meta_time', '1534372074'),
(471, 49, '_wp_desired_post_slug', 'field_5b66780534868'),
(472, 50, '_wp_trash_meta_status', 'publish'),
(473, 50, '_wp_trash_meta_time', '1534372074'),
(474, 50, '_wp_desired_post_slug', 'field_5b66714c85652'),
(475, 51, '_wp_trash_meta_status', 'publish'),
(476, 51, '_wp_trash_meta_time', '1534372074'),
(477, 51, '_wp_desired_post_slug', 'field_5b6910d3a21d2'),
(478, 52, '_wp_trash_meta_status', 'publish'),
(479, 52, '_wp_trash_meta_time', '1534372074'),
(480, 52, '_wp_desired_post_slug', 'field_5b6910174acec'),
(481, 53, '_wp_trash_meta_status', 'publish'),
(482, 53, '_wp_trash_meta_time', '1534372074'),
(483, 53, '_wp_desired_post_slug', 'field_5b67cdac81780'),
(484, 122, 'show_banner', '1'),
(485, 122, '_show_banner', 'field_5aeb88e804596'),
(486, 122, 'banner_type', 'image-static'),
(487, 122, '_banner_type', 'field_5aeb898437746'),
(488, 122, 'banner_image', '71'),
(489, 122, '_banner_image', 'field_5aeb8a0a37747'),
(490, 122, 'banner_content', '<h1>we build\r\ngreat teams.</h1>\r\n<h2>Team Building &amp; corporate events</h2>'),
(491, 122, '_banner_content', 'field_5aeb8ab437750'),
(492, 122, 'content_reusable_blocks', ''),
(493, 122, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(494, 122, 'sidebar_reusable_block', ''),
(495, 122, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(496, 122, 'title_bar_background', '#003399'),
(497, 122, '_title_bar_background', 'field_5b693dc44c381'),
(498, 122, 'content_link', ''),
(499, 122, '_content_link', 'field_5b693de54c383'),
(500, 122, 'post_category', ''),
(501, 122, '_post_category', 'field_5b6b92b6e11c6'),
(502, 122, 'button_type', 'Video'),
(503, 122, '_button_type', 'field_5b73f436467fa'),
(504, 122, 'button_text', ''),
(505, 122, '_button_text', 'field_5b73f48c467fb'),
(506, 122, 'button_url', ''),
(507, 122, '_button_url', 'field_5b73f4ae467fc'),
(508, 122, 'banner_background_color', '#ea007d'),
(509, 122, '_banner_background_color', 'field_5b693dc44c381'),
(510, 122, 'video_url', 'whZNYPldMEY'),
(511, 122, '_video_url', 'field_5b73f4c2467fd'),
(512, 123, 'show_banner', '1'),
(513, 123, '_show_banner', 'field_5aeb88e804596'),
(514, 123, 'banner_type', 'image-static'),
(515, 123, '_banner_type', 'field_5aeb898437746'),
(516, 123, 'banner_image', '71'),
(517, 123, '_banner_image', 'field_5aeb8a0a37747'),
(518, 123, 'banner_content', '<h1>we build\r\ngreat teams.</h1>\r\n<h2>Team Building &amp; corporate events</h2>'),
(519, 123, '_banner_content', 'field_5aeb8ab437750'),
(520, 123, 'content_reusable_blocks', ''),
(521, 123, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(522, 123, 'sidebar_reusable_block', ''),
(523, 123, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(524, 123, 'title_bar_background', '#003399'),
(525, 123, '_title_bar_background', 'field_5b693dc44c381'),
(526, 123, 'content_link', ''),
(527, 123, '_content_link', 'field_5b693de54c383'),
(528, 123, 'post_category', ''),
(529, 123, '_post_category', 'field_5b6b92b6e11c6'),
(530, 123, 'button_type', 'Video'),
(531, 123, '_button_type', 'field_5b73f436467fa'),
(532, 123, 'button_text', ''),
(533, 123, '_button_text', 'field_5b73f48c467fb'),
(534, 123, 'button_url', ''),
(535, 123, '_button_url', 'field_5b73f4ae467fc'),
(536, 123, 'banner_background_color', '#00c1ff'),
(537, 123, '_banner_background_color', 'field_5b693dc44c381'),
(538, 123, 'video_url', 'whZNYPldMEY'),
(539, 123, '_video_url', 'field_5b73f4c2467fd'),
(540, 124, 'show_banner', '1'),
(541, 124, '_show_banner', 'field_5aeb88e804596'),
(542, 124, 'banner_type', 'image-static'),
(543, 124, '_banner_type', 'field_5aeb898437746'),
(544, 124, 'banner_image', '71'),
(545, 124, '_banner_image', 'field_5aeb8a0a37747'),
(546, 124, 'banner_content', '<h1>we build\r\ngreat teams.</h1>\r\n<h2>TEAM BUILDING &amp; CORPORATE EVENTS</h2>'),
(547, 124, '_banner_content', 'field_5aeb8ab437750'),
(548, 124, 'content_reusable_blocks', ''),
(549, 124, '_content_reusable_blocks', 'field_5b66641b8c4b0'),
(550, 124, 'sidebar_reusable_block', ''),
(551, 124, '_sidebar_reusable_block', 'field_5b66670dd52b7'),
(552, 124, 'title_bar_background', '#003399'),
(553, 124, '_title_bar_background', 'field_5b693dc44c381'),
(554, 124, 'content_link', ''),
(555, 124, '_content_link', 'field_5b693de54c383'),
(556, 124, 'post_category', ''),
(557, 124, '_post_category', 'field_5b6b92b6e11c6'),
(558, 124, 'button_type', 'Video'),
(559, 124, '_button_type', 'field_5b73f436467fa'),
(560, 124, 'button_text', ''),
(561, 124, '_button_text', 'field_5b73f48c467fb'),
(562, 124, 'button_url', ''),
(563, 124, '_button_url', 'field_5b73f4ae467fc'),
(564, 124, 'banner_background_color', '#00c1ff'),
(565, 124, '_banner_background_color', 'field_5b693dc44c381'),
(566, 124, 'video_url', 'whZNYPldMEY'),
(567, 124, '_video_url', 'field_5b73f4c2467fd'),
(568, 125, '_wp_attached_file', '2018/08/flag-1.png'),
(569, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:70;s:6:\"height\";i:44;s:4:\"file\";s:18:\"2018/08/flag-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(570, 126, '_wp_attached_file', '2018/08/flag-2.png'),
(571, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:70;s:6:\"height\";i:44;s:4:\"file\";s:18:\"2018/08/flag-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-15 02:33:48', '2018-08-15 02:33:48', '<h1>General Content Title (h1)</h1>\r\n<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In viverra lobortis viverra. Proin at leo in sem porttitor a in orci. Sed lacinia odio vitae erat fermentum ligula mattis. (h2)</h2>\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. (h3)</h3>\r\n<div>\r\n\r\nIn viverra lobortis viverra. Proin at leo in sem accumsan porttitor a in orci. Sed lacinia odio vitae erat malesuada, eget fermentum ligula mattis. Fusce interdum ultricies eros a consequat. Aenean quis euismod nisl, eget laoreet massa. Nulla eget risus nibh. Integer auctor, lacus eget semper pretium, lectus odio pellentesque ante, quis consectetur ex odio a leo. Maecenas sodales mauris at faucibus interdum. Maecenas lobortis eros ac consequat laoreet.\r\n\r\nCurabitur pretium consequat tristique. Sed laoreet massa ac placerat luctus. Nam interdum ex id diam lobortis efficitur. In efficitur diam vel velit cursus, nec interdum orci faucibus. Pellentesque orci dui, elementum non est in, condimentum fringilla magna. Aenean quis euismod nisl, eget laoreet massa. Nulla eget risus nibh. Integer auctor, lacus eget semper pretium, lectus odio pellentesque ante, quis consectetur ex odio a leo.\r\n<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. (h4)</h4>\r\n<ul>\r\n 	<li>In viverra lobortis viverra. Proin at leo in sem accumsan porttitor a in orci.</li>\r\n 	<li>Sed lacinia odio vitae erat malesuada, eget fermentum ligula mattis.</li>\r\n 	<li>Fusce interdum ultricies eros a consequat.</li>\r\n 	<li>Aenean quis euismod nisl, eget laoreet massa.</li>\r\n 	<li>Nulla eget risus nibh. Integer auctor, lacus pellentesque ante, quis ex odio a leo.</li>\r\n 	<li>Maecenas sodales mauris at faucibus interdum.</li>\r\n</ul>\r\n<ol>\r\n 	<li>In viverra lobortis viverra. Proin at leo in sem accumsan porttitor a in orci.</li>\r\n 	<li>Sed lacinia odio vitae erat malesuada, eget fermentum ligula mattis.</li>\r\n 	<li>Fusce interdum ultricies eros a consequat.</li>\r\n 	<li>Aenean quis euismod nisl, eget laoreet massa.</li>\r\n 	<li>Nulla eget risus nibh. Integer auctor, lacus pellentesque ante, quis ex odio a leo.</li>\r\n 	<li>Maecenas sodales mauris at faucibus interdum.</li>\r\n</ol>\r\n</div>', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-15 06:55:02', '2018-08-15 06:55:02', '', 0, 'http://grupo.loc:802/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-15 02:33:48', '2018-08-15 02:33:48', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-16 06:32:45', '2018-08-16 06:32:45', '', 0, 'http://grupo.loc:802/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-15 02:33:48', '2018-08-15 02:33:48', '', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-15 03:23:17', '2018-08-15 03:23:17', '', 0, 'http://grupo.loc:802/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-15 02:34:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-15 02:34:00', '0000-00-00 00:00:00', '', 0, 'http://grupo.loc:802/?p=4', 0, 'post', '', 0),
(5, 1, '2018-08-15 02:36:43', '2018-08-15 02:36:43', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\nGrupo \"[your-subject]\"\n[your-name] <wordpress@grupo.loc>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Grupo (http://grupo.loc:802)\ntest@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nGrupo \"[your-subject]\"\nGrupo <wordpress@grupo.loc>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Grupo (http://grupo.loc:802)\n[your-email]\nReply-To: test@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-08-15 02:36:43', '2018-08-15 02:36:43', '', 0, 'http://grupo.loc:802/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2018-08-15 03:23:17', '2018-08-15 03:23:17', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-08-15 03:23:17', '2018-08-15 03:23:17', '', 3, 'http://grupo.loc:802/2018/08/15/3-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-08-15 03:24:01', '2018-08-15 03:24:01', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://grupo.loc:802/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-15 03:24:01', '2018-08-15 03:24:01', '', 2, 'http://grupo.loc:802/2018/08/15/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-08-15 03:24:07', '2018-08-15 03:24:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-15 03:24:07', '2018-08-15 03:24:07', '', 2, 'http://grupo.loc:802/2018/08/15/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-08-15 03:24:35', '2018-08-15 03:24:35', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-08-15 03:24:35', '2018-08-15 03:24:35', '', 0, 'http://grupo.loc:802/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-08-15 03:24:35', '2018-08-15 03:24:35', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-08-15 03:24:35', '2018-08-15 03:24:35', '', 9, 'http://grupo.loc:802/2018/08/15/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-08-15 03:25:22', '2018-08-15 03:25:22', '', 'Team Building', '', 'publish', 'closed', 'closed', '', 'team-building', '', '', '2018-08-15 03:25:22', '2018-08-15 03:25:22', '', 0, 'http://grupo.loc:802/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-08-15 03:24:43', '2018-08-15 03:24:43', '', 'Team Building', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-08-15 03:24:43', '2018-08-15 03:24:43', '', 11, 'http://grupo.loc:802/2018/08/15/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-08-15 03:25:22', '2018-08-15 03:25:22', '', 'Corporate Events', '', 'publish', 'closed', 'closed', '', 'corporate-events', '', '', '2018-08-15 03:25:22', '2018-08-15 03:25:22', '', 0, 'http://grupo.loc:802/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-08-15 03:24:57', '2018-08-15 03:24:57', '', 'Corporate Events', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-08-15 03:24:57', '2018-08-15 03:24:57', '', 13, 'http://grupo.loc:802/2018/08/15/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-08-15 03:25:50', '2018-08-15 03:25:50', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-08-15 03:26:02', '2018-08-15 03:26:02', '', 0, 'http://grupo.loc:802/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-08-15 03:25:50', '2018-08-15 03:25:50', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-15 03:25:50', '2018-08-15 03:25:50', '', 15, 'http://grupo.loc:802/2018/08/15/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-08-15 03:37:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-15 03:37:12', '0000-00-00 00:00:00', '', 0, 'http://grupo.loc:802/?post_type=acf-field-group&p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"19\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Maps', 'maps', 'trash', 'closed', 'closed', '', 'group_5b6bc4b579576__trashed', '', '', '2018-08-15 03:40:29', '2018-08-15 03:40:29', '', 0, 'http://grupo.loc:802/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Maps', 'maps', 'trash', 'closed', 'closed', '', 'field_5b6bc4cb50f08__trashed', '', '', '2018-08-15 03:40:29', '2018-08-15 03:40:29', '', 18, 'http://grupo.loc:802/?post_type=acf-field&#038;p=19', 0, 'acf-field', '', 0),
(20, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_5b6bc6c650f0a', '', '', '2018-08-15 03:37:23', '2018-08-15 03:37:23', '', 19, 'http://grupo.loc:802/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Contact Info', 'contact_info', 'publish', 'closed', 'closed', '', 'field_5b6bc69b50f09', '', '', '2018-08-15 03:37:23', '2018-08-15 03:37:23', '', 19, 'http://grupo.loc:802/?post_type=acf-field&p=21', 1, 'acf-field', '', 0),
(22, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page Setup', 'page-setup', 'trash', 'closed', 'closed', '', 'group_5aeb8048cab83__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 0, 'http://grupo.loc:802/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner Setup', '', 'trash', 'closed', 'closed', '', 'field_5aeb890b04597__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:53:\"Whether to display an image/slider banner on the page\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{i:0;s:2:\"No\";i:1;s:3:\"Yes\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:17:\"save_other_choice\";i:0;s:13:\"default_value\";i:0;s:6:\"layout\";s:10:\"horizontal\";s:13:\"return_format\";s:5:\"value\";}', 'Show Banner', 'show_banner', 'trash', 'closed', 'closed', '', 'field_5aeb88e804596__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(26, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5aeb88e804596\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Banner Image', 'banner_image', 'trash', 'closed', 'closed', '', 'field_5aeb8a0a37747__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=26', 7, 'acf-field', '', 0),
(27, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5aeb88e804596\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Banner Content', 'banner_content', 'trash', 'closed', 'closed', '', 'field_5aeb8ab437750__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=27', 2, 'acf-field', '', 0),
(33, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Content Blocks', '', 'trash', 'closed', 'closed', '', 'field_5b658e148fb3d__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=33', 9, 'acf-field', '', 0),
(34, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:38:\"Select and arrange blocks for content.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:14:\"reusable-block\";}s:8:\"taxonomy\";a:1:{i:0;s:26:\"reusable-block-cat:content\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Content Reusable Blocks', 'content_reusable_blocks', 'trash', 'closed', 'closed', '', 'field_5b66641b8c4b0__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=34', 10, 'acf-field', '', 0),
(38, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"#00C1FF\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5aeb88e804596\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Banner Background Color', 'banner_background_color', 'trash', 'closed', 'closed', '', 'field_5b693dc44c381__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=38', 8, 'acf-field', '', 0),
(43, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"reusable-block\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Reusable Block Setup', 'reusable-block-setup', 'trash', 'closed', 'closed', '', 'group_5b6667bbaa4e2__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 0, 'http://grupo.loc:802/?post_type=acf-field-group&#038;p=43', 0, 'acf-field-group', '', 0),
(44, 1, '2018-08-15 03:37:23', '2018-08-15 03:37:23', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:16:\"standard-content\";s:16:\"Standard Content\";s:13:\"image-gallery\";s:13:\"Image Gallery\";s:13:\"contacts-list\";s:13:\"Contacts List\";s:18:\"latest-post-signup\";s:20:\"Latest Post & Signup\";s:9:\"page-grid\";s:9:\"Page Grid\";s:9:\"cta-block\";s:14:\"Call to Action\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Reusable Block Setup', 'reusable_block_setup', 'trash', 'closed', 'closed', '', 'field_5b6667cc75b3a__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=44', 0, 'acf-field', '', 0),
(45, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Class', 'class', 'trash', 'closed', 'closed', '', 'field_5b68edd816c73__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=45', 1, 'acf-field', '', 0),
(46, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"cta-block\";}}}}', 'Title', 'title', 'trash', 'closed', 'closed', '', 'field_5b666ee758922__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=46', 2, 'acf-field', '', 0),
(47, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:4:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:13:\"image-gallery\";}i:1;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"page-grid\";}i:2;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:13:\"contacts-list\";}i:3;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"cta-block\";}}}}', 'Content', 'content', 'trash', 'closed', 'closed', '', 'field_5b66716d85653__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=47', 3, 'acf-field', '', 0),
(48, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";i:10;s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"image-gallery\";}}}}', 'Images', 'images', 'trash', 'closed', 'closed', '', 'field_5b66709e8564f__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=48', 4, 'acf-field', '', 0),
(49, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"page-grid\";}}}}', 'Link Text', 'link_text', 'trash', 'closed', 'closed', '', 'field_5b66780534868__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=49', 5, 'acf-field', '', 0),
(50, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"page-grid\";}}}}', 'Link', 'link', 'trash', 'closed', 'closed', '', 'field_5b66714c85652__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=50', 6, 'acf-field', '', 0),
(51, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"#ffffff\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"cta-block\";}}}}', 'Text Color', 'text_color', 'trash', 'closed', 'closed', '', 'field_5b6910d3a21d2__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=51', 7, 'acf-field', '', 0),
(52, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:11:\"transparent\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"cta-block\";}}}}', 'Background Color', 'background_color', 'trash', 'closed', 'closed', '', 'field_5b6910174acec__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=52', 8, 'acf-field', '', 0),
(53, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:23:\"Select pages to display\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"page-grid\";}}}}', 'Page Grid', 'page_grid', 'trash', 'closed', 'closed', '', 'field_5b67cdac81780__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 43, 'http://grupo.loc:802/?post_type=acf-field&#038;p=53', 9, 'acf-field', '', 0),
(54, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Page', 'page', 'publish', 'closed', 'closed', '', 'field_5b67d242b0d65', '', '', '2018-08-15 03:37:24', '2018-08-15 03:37:24', '', 53, 'http://grupo.loc:802/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2018-08-15 03:37:24', '2018-08-15 03:37:24', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Excerpt', 'excerpt', 'publish', 'closed', 'closed', '', 'field_5b67d25ab0d66', '', '', '2018-08-15 03:37:24', '2018-08-15 03:37:24', '', 53, 'http://grupo.loc:802/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2018-08-15 05:01:17', '2018-08-15 05:01:17', '', 'brand-01', '', 'inherit', 'open', 'closed', '', 'brand-01', '', '', '2018-08-15 05:01:17', '2018-08-15 05:01:17', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/brand-01.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2018-08-15 05:01:18', '2018-08-15 05:01:18', '', 'brand-02', '', 'inherit', 'open', 'closed', '', 'brand-02', '', '', '2018-08-15 05:01:18', '2018-08-15 05:01:18', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/brand-02.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2018-08-15 05:01:18', '2018-08-15 05:01:18', '', 'brand-03', '', 'inherit', 'open', 'closed', '', 'brand-03', '', '', '2018-08-15 05:01:18', '2018-08-15 05:01:18', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/brand-03.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2018-08-15 05:01:19', '2018-08-15 05:01:19', '', 'brand-04', '', 'inherit', 'open', 'closed', '', 'brand-04', '', '', '2018-08-15 05:01:19', '2018-08-15 05:01:19', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/brand-04.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2018-08-15 05:01:19', '2018-08-15 05:01:19', '', 'brand-05', '', 'inherit', 'open', 'closed', '', 'brand-05', '', '', '2018-08-15 05:01:19', '2018-08-15 05:01:19', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/brand-05.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2018-08-15 05:01:20', '2018-08-15 05:01:20', '', 'brand-06', '', 'inherit', 'open', 'closed', '', 'brand-06', '', '', '2018-08-15 05:01:20', '2018-08-15 05:01:20', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/brand-06.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2018-08-15 05:01:20', '2018-08-15 05:01:20', '', 'brand-07', '', 'inherit', 'open', 'closed', '', 'brand-07', '', '', '2018-08-15 05:01:20', '2018-08-15 05:01:20', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/brand-07.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2018-08-15 05:01:21', '2018-08-15 05:01:21', '', 'img-01', '', 'inherit', 'open', 'closed', '', 'img-01', '', '', '2018-08-15 05:01:21', '2018-08-15 05:01:21', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/img-01.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2018-08-15 05:01:21', '2018-08-15 05:01:21', '', 'img-02', '', 'inherit', 'open', 'closed', '', 'img-02', '', '', '2018-08-15 05:01:21', '2018-08-15 05:01:21', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/img-02.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2018-08-15 05:01:22', '2018-08-15 05:01:22', '', 'img-03', '', 'inherit', 'open', 'closed', '', 'img-03', '', '', '2018-08-15 05:01:22', '2018-08-15 05:01:22', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/img-03.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2018-08-15 05:01:22', '2018-08-15 05:01:22', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-08-15 05:01:22', '2018-08-15 05:01:22', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/logo.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2018-08-15 06:51:02', '2018-08-15 06:51:02', '<strong>Welcome to WordPress. </strong>\r\n\r\nThis is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-15 06:51:02', '2018-08-15 06:51:02', '', 1, 'http://grupo.loc:802/2018/08/15/1-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-08-15 06:53:12', '2018-08-15 06:53:12', '<strong>Welcome to WordPress. </strong>\r\n<div>\r\n\r\nIn viverra lobortis viverra. Proin at leo in sem accumsan porttitor a in orci. Sed lacinia odio vitae erat malesuada, eget fermentum ligula mattis. Fusce interdum ultricies eros a consequat. Aenean quis euismod nisl, eget laoreet massa. Nulla eget risus nibh. Integer auctor, lacus eget semper pretium, lectus odio pellentesque ante, quis consectetur ex odio a leo. Maecenas sodales mauris at faucibus interdum. Maecenas lobortis eros ac consequat laoreet.\r\n\r\nCurabitur pretium consequat tristique. Sed laoreet massa ac placerat luctus. Nam interdum ex id diam lobortis efficitur. In efficitur diam vel velit cursus, nec interdum orci faucibus. Pellentesque orci dui, elementum non est in, condimentum fringilla magna. Aenean quis euismod nisl, eget laoreet massa. Nulla eget risus nibh. Integer auctor, lacus eget semper pretium, lectus odio pellentesque ante, quis consectetur ex odio a leo.\r\n\r\n</div>', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-15 06:53:12', '2018-08-15 06:53:12', '', 1, 'http://grupo.loc:802/2018/08/15/1-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-08-15 06:54:15', '2018-08-15 06:54:15', '<h1>General Content Title (h1)</h1>\n<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In viverra lobortis viverra. Proin at leo in sem porttitor a in orci. Sed lacinia odio vitae erat fermentum ligula mattis. (h2)</h2>\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. (h3)</h3>\n<div>\n\nIn viverra lobortis viverra. Proin at leo in sem accumsan porttitor a in orci. Sed lacinia odio vitae erat malesuada, eget fermentum ligula mattis. Fusce interdum ultricies eros a consequat. Aenean quis euismod nisl, eget laoreet massa. Nulla eget risus nibh. Integer auctor, lacus eget semper pretium, lectus odio pellentesque ante, quis consectetur ex odio a leo. Maecenas sodales mauris at faucibus interdum. Maecenas lobortis eros ac consequat laoreet.\n\nCurabitur pretium consequat tristique. Sed laoreet massa ac placerat luctus. Nam interdum ex id diam lobortis efficitur. In efficitur diam vel velit cursus, nec interdum orci faucibus. Pellentesque orci dui, elementum non est in, condimentum fringilla magna. Aenean quis euismod nisl, eget laoreet massa. Nulla eget risus nibh. Integer auctor, lacus eget semper pretium, lectus odio pellentesque ante, quis consectetur ex odio a leo.\n<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. (h4)</h4>\n&nbsp;\n\n</div>', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-08-15 06:54:15', '2018-08-15 06:54:15', '', 1, 'http://grupo.loc:802/2018/08/15/1-autosave-v1/', 0, 'revision', '', 0),
(70, 1, '2018-08-15 06:55:02', '2018-08-15 06:55:02', '<h1>General Content Title (h1)</h1>\r\n<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In viverra lobortis viverra. Proin at leo in sem porttitor a in orci. Sed lacinia odio vitae erat fermentum ligula mattis. (h2)</h2>\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. (h3)</h3>\r\n<div>\r\n\r\nIn viverra lobortis viverra. Proin at leo in sem accumsan porttitor a in orci. Sed lacinia odio vitae erat malesuada, eget fermentum ligula mattis. Fusce interdum ultricies eros a consequat. Aenean quis euismod nisl, eget laoreet massa. Nulla eget risus nibh. Integer auctor, lacus eget semper pretium, lectus odio pellentesque ante, quis consectetur ex odio a leo. Maecenas sodales mauris at faucibus interdum. Maecenas lobortis eros ac consequat laoreet.\r\n\r\nCurabitur pretium consequat tristique. Sed laoreet massa ac placerat luctus. Nam interdum ex id diam lobortis efficitur. In efficitur diam vel velit cursus, nec interdum orci faucibus. Pellentesque orci dui, elementum non est in, condimentum fringilla magna. Aenean quis euismod nisl, eget laoreet massa. Nulla eget risus nibh. Integer auctor, lacus eget semper pretium, lectus odio pellentesque ante, quis consectetur ex odio a leo.\r\n<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. (h4)</h4>\r\n<ul>\r\n 	<li>In viverra lobortis viverra. Proin at leo in sem accumsan porttitor a in orci.</li>\r\n 	<li>Sed lacinia odio vitae erat malesuada, eget fermentum ligula mattis.</li>\r\n 	<li>Fusce interdum ultricies eros a consequat.</li>\r\n 	<li>Aenean quis euismod nisl, eget laoreet massa.</li>\r\n 	<li>Nulla eget risus nibh. Integer auctor, lacus pellentesque ante, quis ex odio a leo.</li>\r\n 	<li>Maecenas sodales mauris at faucibus interdum.</li>\r\n</ul>\r\n<ol>\r\n 	<li>In viverra lobortis viverra. Proin at leo in sem accumsan porttitor a in orci.</li>\r\n 	<li>Sed lacinia odio vitae erat malesuada, eget fermentum ligula mattis.</li>\r\n 	<li>Fusce interdum ultricies eros a consequat.</li>\r\n 	<li>Aenean quis euismod nisl, eget laoreet massa.</li>\r\n 	<li>Nulla eget risus nibh. Integer auctor, lacus pellentesque ante, quis ex odio a leo.</li>\r\n 	<li>Maecenas sodales mauris at faucibus interdum.</li>\r\n</ol>\r\n</div>', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-15 06:55:02', '2018-08-15 06:55:02', '', 1, 'http://grupo.loc:802/2018/08/15/1-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-08-15 09:26:43', '2018-08-15 09:26:43', '', 'Banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2018-08-15 09:26:43', '2018-08-15 09:26:43', '', 2, 'http://grupo.loc:802/wp-content/uploads/2018/08/Banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-08-15 09:26:44', '2018-08-15 09:26:44', '', 'standard-image', '', 'inherit', 'open', 'closed', '', 'standard-image', '', '', '2018-08-15 09:26:44', '2018-08-15 09:26:44', '', 2, 'http://grupo.loc:802/wp-content/uploads/2018/08/standard-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-08-15 09:28:21', '2018-08-15 09:28:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-15 09:28:21', '2018-08-15 09:28:21', '', 2, 'http://grupo.loc:802/2018/08/15/2-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-08-15 09:42:01', '2018-08-15 09:42:01', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:7:\"default\";s:7:\"Default\";s:5:\"share\";s:12:\"Share Button\";s:5:\"Video\";s:12:\"Video Button\";}s:13:\"default_value\";a:1:{i:0;s:7:\"default\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Button Type', 'button_type', 'trash', 'closed', 'closed', '', 'field_5b73f436467fa__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=74', 3, 'acf-field', '', 0),
(75, 1, '2018-08-15 09:42:01', '2018-08-15 09:42:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b73f436467fa\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}}', 'Button Text', 'button_text', 'trash', 'closed', 'closed', '', 'field_5b73f48c467fb__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=75', 4, 'acf-field', '', 0),
(76, 1, '2018-08-15 09:42:01', '2018-08-15 09:42:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b73f436467fa\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}}', 'Button URL', 'button_url', 'trash', 'closed', 'closed', '', 'field_5b73f4ae467fc__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=76', 5, 'acf-field', '', 0),
(77, 1, '2018-08-15 09:42:01', '2018-08-15 09:42:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:16:\"Youtube video ID\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b73f436467fa\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"Video\";}}}}', 'Video URL', 'video_url', 'trash', 'closed', 'closed', '', 'field_5b73f4c2467fd__trashed', '', '', '2018-08-15 22:27:54', '2018-08-15 22:27:54', '', 22, 'http://grupo.loc:802/?post_type=acf-field&#038;p=77', 6, 'acf-field', '', 0),
(78, 1, '2018-08-15 09:44:06', '2018-08-15 09:44:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-15 09:44:06', '2018-08-15 09:44:06', '', 2, 'http://grupo.loc:802/2018/08/15/2-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-08-15 09:44:21', '2018-08-15 09:44:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-15 09:44:21', '2018-08-15 09:44:21', '', 2, 'http://grupo.loc:802/2018/08/15/2-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-08-15 09:49:15', '2018-08-15 09:49:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-15 09:49:15', '2018-08-15 09:49:15', '', 2, 'http://grupo.loc:802/2018/08/15/2-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-08-15 10:09:29', '2018-08-15 10:09:29', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2018-08-15 11:13:38', '2018-08-15 11:13:38', '', 0, 'http://grupo.loc:802/?p=81', 7, 'nav_menu_item', '', 0),
(82, 1, '2018-08-15 10:09:28', '2018-08-15 10:09:28', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2018-08-15 11:13:38', '2018-08-15 11:13:38', '', 0, 'http://grupo.loc:802/?p=82', 4, 'nav_menu_item', '', 0),
(83, 1, '2018-08-15 10:09:28', '2018-08-15 10:09:28', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2018-08-15 11:13:38', '2018-08-15 11:13:38', '', 0, 'http://grupo.loc:802/?p=83', 3, 'nav_menu_item', '', 0),
(84, 1, '2018-08-15 10:09:28', '2018-08-15 10:09:28', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2018-08-15 11:13:37', '2018-08-15 11:13:37', '', 0, 'http://grupo.loc:802/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2018-08-15 10:08:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-15 10:08:48', '0000-00-00 00:00:00', '', 0, 'http://grupo.loc:802/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2018-08-15 10:08:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-15 10:08:48', '0000-00-00 00:00:00', '', 0, 'http://grupo.loc:802/?p=86', 1, 'nav_menu_item', '', 0),
(87, 1, '2018-08-15 10:09:35', '2018-08-15 10:09:35', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-08-15 10:09:35', '2018-08-15 10:09:35', '', 0, 'http://grupo.loc:802/?page_id=87', 0, 'page', '', 0),
(89, 1, '2018-08-15 10:09:35', '2018-08-15 10:09:35', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-08-15 10:09:35', '2018-08-15 10:09:35', '', 87, 'http://grupo.loc:802/2018/08/15/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-08-15 11:10:15', '2018-08-15 11:10:15', '', 'Smart Team Building', '', 'publish', 'closed', 'closed', '', 'smart-team-building', '', '', '2018-08-15 11:10:15', '2018-08-15 11:10:15', '', 13, 'http://grupo.loc:802/?page_id=90', 0, 'page', '', 0),
(91, 1, '2018-08-15 11:10:15', '2018-08-15 11:10:15', '', 'Smart Team Building', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-08-15 11:10:15', '2018-08-15 11:10:15', '', 90, 'http://grupo.loc:802/2018/08/15/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-08-15 11:10:29', '2018-08-15 11:10:29', '', 'Outdoor Team Building', '', 'publish', 'closed', 'closed', '', 'outdoor-team-building', '', '', '2018-08-15 11:10:29', '2018-08-15 11:10:29', '', 13, 'http://grupo.loc:802/?page_id=92', 0, 'page', '', 0),
(93, 1, '2018-08-15 11:10:29', '2018-08-15 11:10:29', '', 'Outdoor Team Building', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-08-15 11:10:29', '2018-08-15 11:10:29', '', 92, 'http://grupo.loc:802/2018/08/15/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-08-15 11:10:52', '2018-08-15 11:10:52', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2018-08-15 11:13:38', '2018-08-15 11:13:38', '', 13, 'http://grupo.loc:802/?p=94', 5, 'nav_menu_item', '', 0),
(95, 1, '2018-08-15 11:10:52', '2018-08-15 11:10:52', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2018-08-15 11:13:38', '2018-08-15 11:13:38', '', 13, 'http://grupo.loc:802/?p=95', 6, 'nav_menu_item', '', 0),
(96, 1, '2018-08-15 11:13:37', '2018-08-15 11:13:37', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2018-08-15 11:13:37', '2018-08-15 11:13:37', '', 0, 'http://grupo.loc:802/?p=96', 2, 'nav_menu_item', '', 0),
(97, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Page Setup', 'page-setup', 'publish', 'closed', 'closed', '', 'group_5aeb8048cab83', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 0, 'http://grupo.loc:802/?post_type=acf-field-group&p=97', 0, 'acf-field-group', '', 0),
(98, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner Setup', '', 'publish', 'closed', 'closed', '', 'field_5aeb890b04597', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:53:\"Whether to display an image/slider banner on the page\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{i:0;s:2:\"No\";i:1;s:3:\"Yes\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:17:\"save_other_choice\";i:0;s:13:\"default_value\";i:0;s:6:\"layout\";s:10:\"horizontal\";s:13:\"return_format\";s:5:\"value\";}', 'Show Banner', 'show_banner', 'publish', 'closed', 'closed', '', 'field_5aeb88e804596', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=99', 1, 'acf-field', '', 0),
(100, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5aeb88e804596\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Banner Content', 'banner_content', 'publish', 'closed', 'closed', '', 'field_5aeb8ab437750', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=100', 2, 'acf-field', '', 0),
(101, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:7:\"default\";s:7:\"Default\";s:5:\"share\";s:12:\"Share Button\";s:5:\"Video\";s:12:\"Video Button\";}s:13:\"default_value\";a:1:{i:0;s:7:\"default\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Button Type', 'button_type', 'publish', 'closed', 'closed', '', 'field_5b73f436467fa', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=101', 3, 'acf-field', '', 0),
(102, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b73f436467fa\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}}', 'Button Text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5b73f48c467fb', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=102', 4, 'acf-field', '', 0),
(103, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b73f436467fa\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}}', 'Button URL', 'button_url', 'publish', 'closed', 'closed', '', 'field_5b73f4ae467fc', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=103', 5, 'acf-field', '', 0),
(104, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:16:\"Youtube video ID\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b73f436467fa\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"Video\";}}}}', 'Video URL', 'video_url', 'publish', 'closed', 'closed', '', 'field_5b73f4c2467fd', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=104', 6, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(105, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5aeb88e804596\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_5aeb8a0a37747', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=105', 7, 'acf-field', '', 0),
(106, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"#00C1FF\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5aeb88e804596\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}}', 'Banner Background Color', 'banner_background_color', 'publish', 'closed', 'closed', '', 'field_5b693dc44c381', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=106', 8, 'acf-field', '', 0),
(107, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Content Blocks', '', 'publish', 'closed', 'closed', '', 'field_5b658e148fb3d', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=107', 9, 'acf-field', '', 0),
(108, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:38:\"Select and arrange blocks for content.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:14:\"reusable-block\";}s:8:\"taxonomy\";a:1:{i:0;s:26:\"reusable-block-cat:content\";}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Content Reusable Blocks', 'content_reusable_blocks', 'publish', 'closed', 'closed', '', 'field_5b66641b8c4b0', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 97, 'http://grupo.loc:802/?post_type=acf-field&p=108', 10, 'acf-field', '', 0),
(109, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"reusable-block\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Reusable Block Setup', 'reusable-block-setup', 'publish', 'closed', 'closed', '', 'group_5b6667bbaa4e2', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 0, 'http://grupo.loc:802/?post_type=acf-field-group&p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:16:\"standard-content\";s:16:\"Standard Content\";s:13:\"image-gallery\";s:13:\"Image Gallery\";s:13:\"contacts-list\";s:13:\"Contacts List\";s:18:\"latest-post-signup\";s:20:\"Latest Post & Signup\";s:9:\"page-grid\";s:9:\"Page Grid\";s:9:\"cta-block\";s:14:\"Call to Action\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Reusable Block Setup', 'reusable_block_setup', 'publish', 'closed', 'closed', '', 'field_5b6667cc75b3a', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=110', 0, 'acf-field', '', 0),
(111, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Class', 'class', 'publish', 'closed', 'closed', '', 'field_5b68edd816c73', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=111', 1, 'acf-field', '', 0),
(112, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"cta-block\";}}}}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b666ee758922', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=112', 2, 'acf-field', '', 0),
(113, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:4:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:13:\"image-gallery\";}i:1;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"page-grid\";}i:2;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:13:\"contacts-list\";}i:3;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"cta-block\";}}}}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5b66716d85653', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=113', 3, 'acf-field', '', 0),
(114, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";i:10;s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"image-gallery\";}}}}', 'Images', 'images', 'publish', 'closed', 'closed', '', 'field_5b66709e8564f', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=114', 4, 'acf-field', '', 0),
(115, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"page-grid\";}}}}', 'Link Text', 'link_text', 'publish', 'closed', 'closed', '', 'field_5b66780534868', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=115', 5, 'acf-field', '', 0),
(116, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:9:\"page-grid\";}}}}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5b66714c85652', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=116', 6, 'acf-field', '', 0),
(117, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"#ffffff\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"cta-block\";}}}}', 'Text Color', 'text_color', 'publish', 'closed', 'closed', '', 'field_5b6910d3a21d2', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=117', 7, 'acf-field', '', 0),
(118, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:11:\"transparent\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"cta-block\";}}}}', 'Background Color', 'background_color', 'publish', 'closed', 'closed', '', 'field_5b6910174acec', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=118', 8, 'acf-field', '', 0),
(119, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:23:\"Select pages to display\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5b6667cc75b3a\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"page-grid\";}}}}', 'Page Grid', 'page_grid', 'publish', 'closed', 'closed', '', 'field_5b67cdac81780', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 109, 'http://grupo.loc:802/?post_type=acf-field&p=119', 9, 'acf-field', '', 0),
(120, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Page', 'page', 'publish', 'closed', 'closed', '', 'field_5b67d242b0d65', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 119, 'http://grupo.loc:802/?post_type=acf-field&p=120', 0, 'acf-field', '', 0),
(121, 1, '2018-08-15 22:28:09', '2018-08-15 22:28:09', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Excerpt', 'excerpt', 'publish', 'closed', 'closed', '', 'field_5b67d25ab0d66', '', '', '2018-08-15 22:28:09', '2018-08-15 22:28:09', '', 119, 'http://grupo.loc:802/?post_type=acf-field&p=121', 1, 'acf-field', '', 0),
(122, 1, '2018-08-16 06:27:34', '2018-08-16 06:27:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-16 06:27:34', '2018-08-16 06:27:34', '', 2, 'http://grupo.loc:802/2018/08/16/2-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-08-16 06:27:45', '2018-08-16 06:27:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-16 06:27:45', '2018-08-16 06:27:45', '', 2, 'http://grupo.loc:802/2018/08/16/2-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-08-16 06:32:45', '2018-08-16 06:32:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-16 06:32:45', '2018-08-16 06:32:45', '', 2, 'http://grupo.loc:802/2018/08/16/2-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-08-16 06:39:16', '2018-08-16 06:39:16', '', 'flag-1', '', 'inherit', 'open', 'closed', '', 'flag-1', '', '', '2018-08-16 06:39:16', '2018-08-16 06:39:16', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/flag-1.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2018-08-16 06:39:16', '2018-08-16 06:39:16', '', 'flag-2', '', 'inherit', 'open', 'closed', '', 'flag-2', '', '', '2018-08-16 06:39:16', '2018-08-16 06:39:16', '', 0, 'http://grupo.loc:802/wp-content/uploads/2018/08/flag-2.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(81, 2, 0),
(82, 2, 0),
(83, 2, 0),
(84, 2, 0),
(94, 2, 0),
(95, 2, 0),
(96, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"a5da53eb82ca9b0d44b4080622ca7ee6e06fb6270ec66e22a58a697b70374fdb\";a:4:{s:10:\"expiration\";i:1535510039;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534300439;}s:64:\"b204ca723247f90431c7acdec65055033e62a0d8a8cf25e432d6835f928fcc8a\";a:4:{s:10:\"expiration\";i:1535510128;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534300528;}s:64:\"35665a6ed9efe4a1d29a7993224fc100e4e2a45c739c5dfa53970b6e1c3a5ad3\";a:4:{s:10:\"expiration\";i:1535533833;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534324233;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'show_try_gutenberg_panel', '0'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(21, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1534309283'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:22:\"add-reusable-block-cat\";}'),
(26, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BtBLwMt3i7DvToRnlzDn6X2dsRzOsz1', 'admin', 'test@gmail.com', '', '2018-08-15 02:33:48', '', 0, 'admin');

--
-- Indexes for dumped tables
--

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
