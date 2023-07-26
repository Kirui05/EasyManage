-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2023 at 10:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easy-manage`
--

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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-06-07 12:32:47', '2023-06-07 12:32:47', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

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
(1, 'siteurl', 'http://localhost/EasyManage', 'yes'),
(2, 'home', 'http://localhost/EasyManage', 'yes'),
(3, 'blogname', 'EasyManage', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nicholaskirui6@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:25:\"EasyManage/EasyManage.php\";i:1;s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'EasyManage', 'yes'),
(41, 'stylesheet', 'EasyManage', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1701693166', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:15:\"program_manager\";a:2:{s:4:\"name\";s:15:\"Program Manager\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;}}s:7:\"trainer\";a:2:{s:4:\"name\";s:7:\"Trainer\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;}}s:7:\"trainee\";a:2:{s:4:\"name\";s:7:\"Trainee\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '66', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1688596368;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1688603568;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688603577;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1688646768;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688646777;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688646781;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
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
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686141876;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1688594509;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688594512;s:7:\"checked\";a:4:{s:10:\"EasyManage\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(147, 'can_compress_scripts', '1', 'no'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(151, 'current_theme', 'EasyManage Theme', 'yes'),
(152, 'theme_mods_EasyManage', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:38;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686555637;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(182, 'category_children', 'a:0:{}', 'yes'),
(188, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":5,\"critical\":1}', 'yes'),
(287, 'recently_activated', 'a:0:{}', 'yes'),
(306, 'theme_mods_twentytwentyone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686555662;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(316, 'recovery_mode_email_last_sent', '1687941752', 'yes'),
(612, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688594512;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=2787935\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";}}s:7:\"checked\";a:2:{s:25:\"EasyManage/EasyManage.php\";s:3:\"1.0\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:5:\"1.3.2\";}}', 'no'),
(778, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1688648428', 'no'),
(779, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(796, '_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314', '1689084982', 'no'),
(797, '_site_transient_browser_14d58a1ba286f087d9736249ec785314', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(813, '_site_transient_timeout_theme_roots', '1688596311', 'no'),
(814, '_site_transient_theme_roots', 'a:4:{s:10:\"EasyManage\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

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
(9, 7, '_edit_lock', '1686147839:1'),
(10, 7, '_wp_page_template', 'page-login.php'),
(13, 11, '_edit_lock', '1686210173:1'),
(14, 11, '_wp_page_template', 'page-dashboard.php'),
(15, 13, '_edit_lock', '1686210367:1'),
(16, 13, '_wp_page_template', 'page-update-program-manager.php'),
(17, 15, '_edit_lock', '1686210491:1'),
(18, 15, '_wp_page_template', 'page-create-trainer.php'),
(19, 17, '_edit_lock', '1686210632:1'),
(20, 17, '_wp_page_template', 'page-update-trainer.php'),
(21, 19, '_edit_lock', '1686316055:1'),
(22, 19, '_wp_page_template', 'page-create-project.php'),
(23, 21, '_edit_lock', '1686211073:1'),
(24, 21, '_wp_page_template', 'page-create-trainee.php'),
(25, 23, '_edit_lock', '1686211198:1'),
(26, 23, '_wp_page_template', 'page-update-trainee.php'),
(27, 25, '_edit_lock', '1686211460:1'),
(28, 25, '_wp_page_template', 'page-update-project.php'),
(29, 27, '_edit_lock', '1686484337:1'),
(30, 27, '_wp_page_template', 'page-all-users.php'),
(31, 29, '_edit_lock', '1686484373:1'),
(32, 29, '_wp_page_template', 'page-all-trainers.php'),
(33, 31, '_edit_lock', '1686484523:1'),
(34, 31, '_wp_page_template', 'page-all-trainees.php'),
(35, 33, '_edit_lock', '1686484738:1'),
(36, 33, '_wp_page_template', 'page-projects-assigned.php'),
(37, 35, '_edit_lock', '1686485652:1'),
(38, 35, '_wp_page_template', 'page-projects.php'),
(39, 37, '_wp_trash_meta_status', 'publish'),
(40, 37, '_wp_trash_meta_time', '1686553570'),
(42, 42, '_edit_lock', '1686558001:1'),
(43, 42, '_wp_page_template', 'page-dashboard-pm.php'),
(44, 44, '_edit_lock', '1686558090:1'),
(45, 44, '_wp_page_template', 'page-dashboard-trainer.php'),
(46, 46, '_edit_lock', '1686561212:1'),
(47, 46, '_wp_page_template', 'page-dashboard-trainee.php'),
(48, 49, '_edit_lock', '1686565312:1'),
(49, 49, '_wp_page_template', 'page-profile-pictures.php'),
(50, 54, '_edit_lock', '1687250063:1'),
(51, 54, '_wp_page_template', 'page-create-stack.php'),
(52, 56, '_edit_lock', '1687261348:1'),
(53, 56, '_wp_page_template', 'page-update-stack.php'),
(54, 58, '_edit_lock', '1687261719:1'),
(55, 58, '_wp_page_template', 'page-stacks.php'),
(56, 61, '_edit_lock', '1687453878:1'),
(57, 61, '_wp_page_template', 'page-user-card.php'),
(69, 67, '_edit_lock', '1687537829:1'),
(70, 67, '_wp_page_template', 'page-create-program-manager.php'),
(71, 70, '_edit_lock', '1687860558:1'),
(72, 70, '_wp_page_template', 'page-all-program-managers.php');

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
(1, 1, '2023-06-07 12:32:47', '2023-06-07 12:32:47', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-06-07 12:32:47', '2023-06-07 12:32:47', '', 0, 'http://localhost/EasyManage/?p=1', 0, 'post', '', 1),
(7, 1, '2023-06-07 12:51:11', '2023-06-07 12:51:11', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2023-06-07 12:51:11', '2023-06-07 12:51:11', '', 0, 'http://localhost/EasyManage/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-06-07 12:51:11', '2023-06-07 12:51:11', '', 'Login', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-07 12:51:11', '2023-06-07 12:51:11', '', 7, 'http://localhost/EasyManage/?p=8', 0, 'revision', '', 0),
(11, 1, '2023-06-08 07:45:16', '2023-06-08 07:45:16', '', 'Dashboard', '', 'publish', 'closed', 'closed', '', 'dashboard', '', '', '2023-06-08 07:45:16', '2023-06-08 07:45:16', '', 0, 'http://localhost/EasyManage/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-06-08 07:45:16', '2023-06-08 07:45:16', '', 'Dashboard', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-06-08 07:45:16', '2023-06-08 07:45:16', '', 11, 'http://localhost/EasyManage/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-06-08 07:48:29', '2023-06-08 07:48:29', '', 'Update program manager', '', 'publish', 'closed', 'closed', '', 'update-program-manager', '', '', '2023-06-08 07:48:29', '2023-06-08 07:48:29', '', 0, 'http://localhost/EasyManage/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-06-08 07:48:29', '2023-06-08 07:48:29', '', 'Update program manager', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-06-08 07:48:29', '2023-06-08 07:48:29', '', 13, 'http://localhost/EasyManage/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-06-08 07:50:33', '2023-06-08 07:50:33', '', 'Create trainer', '', 'publish', 'closed', 'closed', '', 'create-trainer', '', '', '2023-06-08 07:50:33', '2023-06-08 07:50:33', '', 0, 'http://localhost/EasyManage/?page_id=15', 0, 'page', '', 0),
(16, 1, '2023-06-08 07:50:33', '2023-06-08 07:50:33', '', 'Create trainer', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-06-08 07:50:33', '2023-06-08 07:50:33', '', 15, 'http://localhost/EasyManage/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-06-08 07:52:54', '2023-06-08 07:52:54', '', 'Update trainer', '', 'publish', 'closed', 'closed', '', 'update-trainer', '', '', '2023-06-08 07:52:54', '2023-06-08 07:52:54', '', 0, 'http://localhost/EasyManage/?page_id=17', 0, 'page', '', 0),
(18, 1, '2023-06-08 07:52:54', '2023-06-08 07:52:54', '', 'Update trainer', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2023-06-08 07:52:54', '2023-06-08 07:52:54', '', 17, 'http://localhost/EasyManage/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-06-08 07:57:59', '2023-06-08 07:57:59', '', 'Create project', '', 'publish', 'closed', 'closed', '', 'create-project', '', '', '2023-06-08 07:57:59', '2023-06-08 07:57:59', '', 0, 'http://localhost/EasyManage/?page_id=19', 0, 'page', '', 0),
(20, 1, '2023-06-08 07:57:59', '2023-06-08 07:57:59', '', 'Create project', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-06-08 07:57:59', '2023-06-08 07:57:59', '', 19, 'http://localhost/EasyManage/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-06-08 08:00:15', '2023-06-08 08:00:15', '', 'Create trainee', '', 'publish', 'closed', 'closed', '', 'create-trainee', '', '', '2023-06-08 08:00:15', '2023-06-08 08:00:15', '', 0, 'http://localhost/EasyManage/?page_id=21', 0, 'page', '', 0),
(22, 1, '2023-06-08 08:00:15', '2023-06-08 08:00:15', '', 'Create trainee', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-06-08 08:00:15', '2023-06-08 08:00:15', '', 21, 'http://localhost/EasyManage/?p=22', 0, 'revision', '', 0),
(23, 1, '2023-06-08 08:02:21', '2023-06-08 08:02:21', '', 'Update trainee', '', 'publish', 'closed', 'closed', '', 'update-trainee', '', '', '2023-06-08 08:02:21', '2023-06-08 08:02:21', '', 0, 'http://localhost/EasyManage/?page_id=23', 0, 'page', '', 0),
(24, 1, '2023-06-08 08:02:21', '2023-06-08 08:02:21', '', 'Update trainee', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-08 08:02:21', '2023-06-08 08:02:21', '', 23, 'http://localhost/EasyManage/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-06-08 08:06:44', '2023-06-08 08:06:44', '', 'Update project', '', 'publish', 'closed', 'closed', '', 'update-project', '', '', '2023-06-08 08:06:44', '2023-06-08 08:06:44', '', 0, 'http://localhost/EasyManage/?page_id=25', 0, 'page', '', 0),
(26, 1, '2023-06-08 08:06:44', '2023-06-08 08:06:44', '', 'Update project', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2023-06-08 08:06:44', '2023-06-08 08:06:44', '', 25, 'http://localhost/EasyManage/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-06-11 11:24:43', '2023-06-11 11:24:43', '', 'All users', '', 'publish', 'closed', 'closed', '', 'all-users', '', '', '2023-06-11 11:24:43', '2023-06-11 11:24:43', '', 0, 'http://localhost/EasyManage/?page_id=27', 0, 'page', '', 0),
(28, 1, '2023-06-11 11:24:43', '2023-06-11 11:24:43', '', 'All users', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-06-11 11:24:43', '2023-06-11 11:24:43', '', 27, 'http://localhost/EasyManage/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-06-11 11:55:16', '2023-06-11 11:55:16', '', 'All trainers', '', 'publish', 'closed', 'closed', '', 'all-trainers', '', '', '2023-06-11 11:55:16', '2023-06-11 11:55:16', '', 0, 'http://localhost/EasyManage/?page_id=29', 0, 'page', '', 0),
(30, 1, '2023-06-11 11:55:16', '2023-06-11 11:55:16', '', 'All trainers', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-06-11 11:55:16', '2023-06-11 11:55:16', '', 29, 'http://localhost/EasyManage/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-06-11 11:57:46', '2023-06-11 11:57:46', '', 'All trainees', '', 'publish', 'closed', 'closed', '', 'all-trainees', '', '', '2023-06-11 11:57:46', '2023-06-11 11:57:46', '', 0, 'http://localhost/EasyManage/?page_id=31', 0, 'page', '', 0),
(32, 1, '2023-06-11 11:57:46', '2023-06-11 11:57:46', '', 'All trainees', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-06-11 11:57:46', '2023-06-11 11:57:46', '', 31, 'http://localhost/EasyManage/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-06-11 12:01:21', '2023-06-11 12:01:21', '', 'Projects assigned', '', 'publish', 'closed', 'closed', '', 'projects-assigned', '', '', '2023-06-11 12:01:21', '2023-06-11 12:01:21', '', 0, 'http://localhost/EasyManage/?page_id=33', 0, 'page', '', 0),
(34, 1, '2023-06-11 12:01:21', '2023-06-11 12:01:21', '', 'Projects assigned', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-06-11 12:01:21', '2023-06-11 12:01:21', '', 33, 'http://localhost/EasyManage/?p=34', 0, 'revision', '', 0),
(35, 1, '2023-06-11 12:16:35', '2023-06-11 12:16:35', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2023-06-11 12:16:35', '2023-06-11 12:16:35', '', 0, 'http://localhost/EasyManage/?page_id=35', 0, 'page', '', 0),
(36, 1, '2023-06-11 12:16:35', '2023-06-11 12:16:35', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2023-06-11 12:16:35', '2023-06-11 12:16:35', '', 35, 'http://localhost/EasyManage/?p=36', 0, 'revision', '', 0),
(37, 1, '2023-06-12 07:06:10', '2023-06-12 07:06:10', '{\n    \"custom_css[EasyManage]\": {\n        \"value\": \"html{\\n\\tmargin-top: 0 !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-12 07:06:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9f35aa4f-6c2f-4c24-964a-a27b4aaa17b2', '', '', '2023-06-12 07:06:10', '2023-06-12 07:06:10', '', 0, 'http://localhost/EasyManage/2023/06/12/9f35aa4f-6c2f-4c24-964a-a27b4aaa17b2/', 0, 'customize_changeset', '', 0),
(38, 1, '2023-06-12 07:06:10', '2023-06-12 07:06:10', 'html{\n	margin-top: 0 !important;\n}', 'EasyManage', '', 'publish', 'closed', 'closed', '', 'easymanage', '', '', '2023-06-12 07:06:10', '2023-06-12 07:06:10', '', 0, 'http://localhost/EasyManage/2023/06/12/easymanage/', 0, 'custom_css', '', 0),
(39, 1, '2023-06-12 07:06:10', '2023-06-12 07:06:10', 'html{\n	margin-top: 0 !important;\n}', 'EasyManage', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-06-12 07:06:10', '2023-06-12 07:06:10', '', 38, 'http://localhost/EasyManage/?p=39', 0, 'revision', '', 0),
(42, 1, '2023-06-12 08:22:23', '2023-06-12 08:22:23', '', 'PM dashboard', '', 'publish', 'closed', 'closed', '', 'pm-dashboard', '', '', '2023-06-12 08:22:23', '2023-06-12 08:22:23', '', 0, 'http://localhost/EasyManage/?page_id=42', 0, 'page', '', 0),
(43, 1, '2023-06-12 08:22:23', '2023-06-12 08:22:23', '', 'PM dashboard', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-06-12 08:22:23', '2023-06-12 08:22:23', '', 42, 'http://localhost/EasyManage/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-06-12 08:23:52', '2023-06-12 08:23:52', '', 'Trainer dashboard', '', 'publish', 'closed', 'closed', '', 'trainer-dashboard', '', '', '2023-06-12 08:23:52', '2023-06-12 08:23:52', '', 0, 'http://localhost/EasyManage/?page_id=44', 0, 'page', '', 0),
(45, 1, '2023-06-12 08:23:52', '2023-06-12 08:23:52', '', 'Trainer dashboard', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-06-12 08:23:52', '2023-06-12 08:23:52', '', 44, 'http://localhost/EasyManage/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-06-12 08:25:02', '2023-06-12 08:25:02', '', 'Trainee dashboard', '', 'publish', 'closed', 'closed', '', 'trainee-dashboard', '', '', '2023-06-12 08:25:02', '2023-06-12 08:25:02', '', 0, 'http://localhost/EasyManage/?page_id=46', 0, 'page', '', 0),
(47, 1, '2023-06-12 08:25:02', '2023-06-12 08:25:02', '', 'Trainee dashboard', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-06-12 08:25:02', '2023-06-12 08:25:02', '', 46, 'http://localhost/EasyManage/?p=47', 0, 'revision', '', 0),
(49, 1, '2023-06-12 10:24:14', '2023-06-12 10:24:14', '', 'Profile pictures page', '', 'publish', 'closed', 'closed', '', 'profile-pictures-page', '', '', '2023-06-12 10:24:14', '2023-06-12 10:24:14', '', 0, 'http://localhost/EasyManage/?page_id=49', 0, 'page', '', 0),
(50, 1, '2023-06-12 10:24:14', '2023-06-12 10:24:14', '', 'Profile pictures page', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-06-12 10:24:14', '2023-06-12 10:24:14', '', 49, 'http://localhost/EasyManage/?p=50', 0, 'revision', '', 0),
(54, 1, '2023-06-20 08:33:42', '2023-06-20 08:33:42', '', 'create stack', '', 'publish', 'closed', 'closed', '', 'create-stack', '', '', '2023-06-20 08:33:42', '2023-06-20 08:33:42', '', 0, 'http://localhost/EasyManage/?page_id=54', 0, 'page', '', 0),
(55, 1, '2023-06-20 08:33:42', '2023-06-20 08:33:42', '', 'create stack', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2023-06-20 08:33:42', '2023-06-20 08:33:42', '', 54, 'http://localhost/EasyManage/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-06-20 11:44:07', '2023-06-20 11:44:07', '', 'update stack', '', 'publish', 'closed', 'closed', '', 'update-stack', '', '', '2023-06-20 11:44:07', '2023-06-20 11:44:07', '', 0, 'http://localhost/EasyManage/?page_id=56', 0, 'page', '', 0),
(57, 1, '2023-06-20 11:44:07', '2023-06-20 11:44:07', '', 'update stack', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2023-06-20 11:44:07', '2023-06-20 11:44:07', '', 56, 'http://localhost/EasyManage/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-06-20 11:51:01', '2023-06-20 11:51:01', '', 'stacks', '', 'publish', 'closed', 'closed', '', 'stacks', '', '', '2023-06-20 11:51:01', '2023-06-20 11:51:01', '', 0, 'http://localhost/EasyManage/?page_id=58', 0, 'page', '', 0),
(59, 1, '2023-06-20 11:51:01', '2023-06-20 11:51:01', '', 'stacks', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2023-06-20 11:51:01', '2023-06-20 11:51:01', '', 58, 'http://localhost/EasyManage/?p=59', 0, 'revision', '', 0),
(61, 1, '2023-06-22 17:13:40', '2023-06-22 17:13:40', '', 'user card', '', 'publish', 'closed', 'closed', '', 'user-card', '', '', '2023-06-22 17:13:40', '2023-06-22 17:13:40', '', 0, 'http://localhost/EasyManage/?page_id=61', 0, 'page', '', 0),
(62, 1, '2023-06-22 17:13:40', '2023-06-22 17:13:40', '', 'user card', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2023-06-22 17:13:40', '2023-06-22 17:13:40', '', 61, 'http://localhost/EasyManage/?p=62', 0, 'revision', '', 0),
(67, 1, '2023-06-23 16:28:58', '2023-06-23 16:28:58', '', 'Create program manager', '', 'publish', 'closed', 'closed', '', 'create-program-manager', '', '', '2023-06-23 16:28:58', '2023-06-23 16:28:58', '', 0, 'http://localhost/EasyManage/?page_id=67', 0, 'page', '', 0),
(68, 1, '2023-06-23 16:28:58', '2023-06-23 16:28:58', '', 'Create program manager', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2023-06-23 16:28:58', '2023-06-23 16:28:58', '', 67, 'http://localhost/EasyManage/?p=68', 0, 'revision', '', 0),
(70, 1, '2023-06-27 10:11:37', '2023-06-27 10:11:37', '', 'All program managers', '', 'publish', 'closed', 'closed', '', 'all-program-managers', '', '', '2023-06-27 10:11:37', '2023-06-27 10:11:37', '', 0, 'http://localhost/EasyManage/?page_id=70', 0, 'page', '', 0),
(71, 1, '2023-06-27 10:11:37', '2023-06-27 10:11:37', '', 'All program managers', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2023-06-27 10:11:37', '2023-06-27 10:11:37', '', 70, 'http://localhost/EasyManage/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-07-04 14:16:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-07-04 14:16:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/EasyManage/?p=72', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_projects`
--

CREATE TABLE `wp_projects` (
  `id` int(11) NOT NULL,
  `project_name` text NOT NULL,
  `due_date` date NOT NULL,
  `is_completed` int(11) NOT NULL DEFAULT 0,
  `project_description` text NOT NULL,
  `assignee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_projects`
--

INSERT INTO `wp_projects` (`id`, `project_name`, `due_date`, `is_completed`, `project_description`, `assignee`) VALUES
(1, 'event managementcc', '2023-07-20', 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'brian kimani'),
(2, 'api', '2023-07-03', 0, 'xxxxxxxxdfghdfghxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'daniel'),
(3, 'api', '2023-07-03', 0, 'xxxxxxxxdfghdfghxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'daniel'),
(4, 'project management', '2023-07-10', 0, 'xxxxxxxxdfghdfghxxxxxxxxxxxxxxxxxxxxxxxxxxgggggggggggxxxxxxxxx', 'Hope Mwenda'),
(5, 'to-do list', '2023-06-29', 0, 'xxxxxxxxdfghdfghxxxxxxxxxxxxxxxxxxxxxxxxxxgggggggggggxxxxxxxxx', 'Hope Mwenda, Joy mwende'),
(6, 'e-commerce', '2023-06-30', 0, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '0'),
(7, 'e-commerce', '2023-06-30', 0, 'ffffffffffffffffffffffffffffff', '22'),
(8, 'ticketing', '2023-06-28', 0, 'ttttttttttttttttttttttttttttttttt', 'Brian K'),
(9, 'e-commerce', '2023-06-28', 0, 'xcccccccccccccccccccccccccccccc', 'Daniel Kitheka'),
(10, 'ticketing', '2023-06-30', 0, 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', ''),
(11, 'e-commerce', '2023-06-29', 0, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', ''),
(12, 'ticketing', '2023-06-30', 0, 'tttttttttttttttttttttttttttttttttttttttttttttttttt', 'Amos Kirui, Brian K, Daniel Kitheka'),
(13, 'event', '2023-06-30', 0, 'In this modified code, a new container div with the class \\\"table-container\\\" is added around the table. The container is given a maximum height and an overflow-y property set to \\\"auto\\\", which enables vertical scrolling when the table content exceeds the container\\\'s height.', 'kirui Ruth, leonard K, Patrick Kimani'),
(14, 'dd', '2023-06-30', 0, 'dddddddddddddddddddddddddddddddddddd', 'murithi hope'),
(15, 'ee', '2023-06-30', 0, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'leonard K, murithi hope'),
(16, 'gg', '2023-06-30', 0, 'gggggggggggggggggggggggggggg', 'murithi hope, Patrick Kimani'),
(17, 'Java', '2023-06-29', 0, 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 'Amos Kirui, Brian K'),
(18, 'e-commerce', '2023-06-30', 0, 'asdfghasdfghjasdfghjklsdfghj', 'Brian K'),
(19, 'risk management', '2023-07-12', 0, 'xxxxxxxxxxxxxxxxxxadfghjsfdxxxxxxxxxxxxxxxxxxxxxxxxx', 'hope mwenda'),
(20, 'event manasdfvbagement', '2023-06-30', 0, 'xxxxxxxxxxxxxxasdfgxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'kirui asdfnick'),
(21, 'risk management', '2023-07-13', 0, 'xxxxxxxxxxxxxxasdfgsdfgxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'hope mwenda'),
(22, 'FIRE management', '2023-07-13', 0, 'xxxxxxxxxxxxxxasdfgsdfgxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'KAS KAS'),
(23, 'FIRES management', '2023-07-13', 0, 'xxxxxxxxxxxxxxasdfgsdfgxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'KAS KAS'),
(24, 'event management', '2023-06-30', 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'kirui nickkkki'),
(25, 'e-commerce', '2023-07-03', 0, 'dfjkwnfwertttttttttttttttttttttttttttttttt', 'Josh K'),
(26, 'ticketing', '2023-08-07', 0, 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwfffffffffffff', 'cassypool');

-- --------------------------------------------------------

--
-- Table structure for table `wp_stacks`
--

CREATE TABLE `wp_stacks` (
  `id` int(11) NOT NULL,
  `stack_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `assignee` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_stacks`
--

INSERT INTO `wp_stacks` (`id`, `stack_name`, `location`, `start_date`, `end_date`, `assignee`) VALUES
(1, 'CSS3', 'KDS', '2023-06-29', '2023-06-30', 'Brian Kalusi'),
(2, 'QA/QE', 'Nyeri Tech', '2023-06-29', '2023-07-27', 'kimani elisha'),
(3, 'Wordpress', 'Kirinyaga', '2023-04-03', '2023-06-30', 'Anthony Musembi'),
(4, 'Python', 'KDS', '2023-04-03', '2023-06-30', 'Amon Kingi'),
(5, 'C', 'KDS', '2023-04-03', '2023-06-30', 'Nicholas k'),
(6, 'C/C++', 'Dekut', '2023-04-03', '2023-06-30', 'James Maina'),
(7, 'python', 'Dekut', '0000-00-00', '0000-00-00', 'Daniel'),
(8, 'kubernetes', 'Dekut', '0000-00-00', '0000-00-00', 'Mildred'),
(9, 'F#', 'Dekut', '2023-07-10', '2023-10-10', 'Arnold k'),
(10, 'QE', 'dekut', '2023-06-26', '2023-09-26', '11'),
(11, 'HTML', 'kirinyaga', '2023-06-27', '2023-07-27', '12'),
(12, 'f', 'dekut', '2023-06-27', '2023-07-19', ''),
(13, 'kk', 'dekut', '2023-06-29', '2023-06-30', '12'),
(14, 'x', 'dekut', '2023-06-27', '2023-06-30', 'hope mwenda'),
(15, 'c', 'dekut', '2023-06-26', '2023-08-26', 'Brian Kalusi'),
(16, 'C#**', 'dekut', '2023-06-29', '2023-08-29', 'Gerald Kim');

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
(1, 'Uncategorized', 'uncategorized', 0);

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
(1, 1, 0);

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
(1, 1, 'category', '', 0, 1);

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
(1, 1, 'nickname', 'admin1'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '72'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:23:\"taxonomy-panel-post_tag\";i:3;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-06-07T12:48:39.403Z\";}'),
(23, 2, 'nickname', 'program manager'),
(24, 2, 'first_name', 'Nicholas'),
(25, 2, 'last_name', 'Kirui'),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(35, 2, 'wp_user_level', '0'),
(36, 2, 'dismissed_wp_pointers', ''),
(38, 2, 'wp_dashboard_quick_press_last_post_id', '69'),
(41, 3, 'nickname', 'trainer'),
(42, 3, 'first_name', 'Nicholas'),
(43, 3, 'last_name', 'Kirui'),
(44, 3, 'description', ''),
(45, 3, 'rich_editing', 'true'),
(46, 3, 'syntax_highlighting', 'true'),
(47, 3, 'comment_shortcuts', 'false'),
(48, 3, 'admin_color', 'fresh'),
(49, 3, 'use_ssl', '0'),
(50, 3, 'show_admin_bar_front', 'true'),
(51, 3, 'locale', ''),
(52, 3, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(53, 3, 'wp_user_level', '0'),
(54, 3, 'dismissed_wp_pointers', ''),
(55, 4, 'nickname', 'trainee'),
(56, 4, 'first_name', 'Nicholas'),
(57, 4, 'last_name', 'Kirui'),
(58, 4, 'description', ''),
(59, 4, 'rich_editing', 'true'),
(60, 4, 'syntax_highlighting', 'true'),
(61, 4, 'comment_shortcuts', 'false'),
(62, 4, 'admin_color', 'fresh'),
(63, 4, 'use_ssl', '0'),
(64, 4, 'show_admin_bar_front', 'true'),
(65, 4, 'locale', ''),
(66, 4, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(67, 4, 'wp_user_level', '0'),
(68, 4, 'dismissed_wp_pointers', ''),
(71, 3, 'wp_dashboard_quick_press_last_post_id', '53'),
(75, 1, 'profile_picture', 'https://cdn-icons-png.flaticon.com/512/5556/5556512.png'),
(77, 2, 'profile_picture', 'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745'),
(79, 4, 'profile_picture', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
(83, 3, 'profile_picture', 'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745'),
(104, 3, 'update_project', NULL),
(132, 5, 'nickname', 'Hope Murithi'),
(133, 5, 'first_name', ''),
(134, 5, 'last_name', ''),
(135, 5, 'description', ''),
(136, 5, 'rich_editing', 'true'),
(137, 5, 'syntax_highlighting', 'true'),
(138, 5, 'comment_shortcuts', 'false'),
(139, 5, 'admin_color', 'fresh'),
(140, 5, 'use_ssl', '0'),
(141, 5, 'show_admin_bar_front', 'true'),
(142, 5, 'locale', ''),
(143, 5, 'is_deactivated', '0'),
(144, 5, 'is_deleted', '0'),
(145, 5, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(146, 5, 'wp_user_level', '0'),
(147, 5, 'dismissed_wp_pointers', ''),
(148, 6, 'nickname', 'Faith Kadima'),
(149, 6, 'first_name', ''),
(150, 6, 'last_name', ''),
(151, 6, 'description', ''),
(152, 6, 'rich_editing', 'true'),
(153, 6, 'syntax_highlighting', 'true'),
(154, 6, 'comment_shortcuts', 'false'),
(155, 6, 'admin_color', 'fresh'),
(156, 6, 'use_ssl', '0'),
(157, 6, 'show_admin_bar_front', 'true'),
(158, 6, 'locale', ''),
(159, 6, 'is_deactivated', '0'),
(160, 6, 'is_deleted', '0'),
(161, 6, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(162, 6, 'wp_user_level', '0'),
(163, 6, 'dismissed_wp_pointers', ''),
(164, 7, 'nickname', 'Mercy K'),
(165, 7, 'first_name', ''),
(166, 7, 'last_name', ''),
(167, 7, 'description', ''),
(168, 7, 'rich_editing', 'true'),
(169, 7, 'syntax_highlighting', 'true'),
(170, 7, 'comment_shortcuts', 'false'),
(171, 7, 'admin_color', 'fresh'),
(172, 7, 'use_ssl', '0'),
(173, 7, 'show_admin_bar_front', 'true'),
(174, 7, 'locale', ''),
(175, 7, 'is_deactivated', '0'),
(176, 7, 'is_deleted', '0'),
(177, 7, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(178, 7, 'wp_user_level', '0'),
(179, 7, 'dismissed_wp_pointers', ''),
(180, 8, 'nickname', 'Betsy C'),
(181, 8, 'first_name', ''),
(182, 8, 'last_name', ''),
(183, 8, 'description', ''),
(184, 8, 'rich_editing', 'true'),
(185, 8, 'syntax_highlighting', 'true'),
(186, 8, 'comment_shortcuts', 'false'),
(187, 8, 'admin_color', 'fresh'),
(188, 8, 'use_ssl', '0'),
(189, 8, 'show_admin_bar_front', 'true'),
(190, 8, 'locale', ''),
(191, 8, 'is_deactivated', '0'),
(192, 8, 'is_deleted', '1'),
(193, 8, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(194, 8, 'wp_user_level', '0'),
(195, 8, 'dismissed_wp_pointers', ''),
(196, 9, 'nickname', 'Frank K'),
(197, 9, 'first_name', ''),
(198, 9, 'last_name', ''),
(199, 9, 'description', ''),
(200, 9, 'rich_editing', 'true'),
(201, 9, 'syntax_highlighting', 'true'),
(202, 9, 'comment_shortcuts', 'false'),
(203, 9, 'admin_color', 'fresh'),
(204, 9, 'use_ssl', '0'),
(205, 9, 'show_admin_bar_front', 'true'),
(206, 9, 'locale', ''),
(207, 9, 'is_deactivated', '0'),
(208, 9, 'is_deleted', '1'),
(209, 9, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(210, 9, 'wp_user_level', '0'),
(211, 9, 'dismissed_wp_pointers', ''),
(212, 10, 'nickname', 'Collins C'),
(213, 10, 'first_name', ''),
(214, 10, 'last_name', ''),
(215, 10, 'description', ''),
(216, 10, 'rich_editing', 'true'),
(217, 10, 'syntax_highlighting', 'true'),
(218, 10, 'comment_shortcuts', 'false'),
(219, 10, 'admin_color', 'fresh'),
(220, 10, 'use_ssl', '0'),
(221, 10, 'show_admin_bar_front', 'true'),
(222, 10, 'locale', ''),
(223, 10, 'is_deactivated', '0'),
(224, 10, 'is_deleted', '0'),
(225, 10, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(226, 10, 'wp_user_level', '0'),
(227, 10, 'dismissed_wp_pointers', ''),
(228, 11, 'nickname', 'Collins Kirui'),
(229, 11, 'first_name', ''),
(230, 11, 'last_name', ''),
(231, 11, 'description', ''),
(232, 11, 'rich_editing', 'true'),
(233, 11, 'syntax_highlighting', 'true'),
(234, 11, 'comment_shortcuts', 'false'),
(235, 11, 'admin_color', 'fresh'),
(236, 11, 'use_ssl', '0'),
(237, 11, 'show_admin_bar_front', 'true'),
(238, 11, 'locale', ''),
(239, 11, 'is_deactivated', '0'),
(240, 11, 'is_deleted', '0'),
(241, 11, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(242, 11, 'wp_user_level', '0'),
(243, 11, 'dismissed_wp_pointers', ''),
(244, 12, 'nickname', 'Brian Kalusi'),
(245, 12, 'first_name', ''),
(246, 12, 'last_name', ''),
(247, 12, 'description', ''),
(248, 12, 'rich_editing', 'true'),
(249, 12, 'syntax_highlighting', 'true'),
(250, 12, 'comment_shortcuts', 'false'),
(251, 12, 'admin_color', 'fresh'),
(252, 12, 'use_ssl', '0'),
(253, 12, 'show_admin_bar_front', 'true'),
(254, 12, 'locale', ''),
(255, 12, 'is_deactivated', '0'),
(256, 12, 'is_deleted', '1'),
(257, 12, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(258, 12, 'wp_user_level', '0'),
(259, 12, 'dismissed_wp_pointers', ''),
(260, 13, 'nickname', 'Joy Mwende'),
(261, 13, 'first_name', ''),
(262, 13, 'last_name', ''),
(263, 13, 'description', ''),
(264, 13, 'rich_editing', 'true'),
(265, 13, 'syntax_highlighting', 'true'),
(266, 13, 'comment_shortcuts', 'false'),
(267, 13, 'admin_color', 'fresh'),
(268, 13, 'use_ssl', '0'),
(269, 13, 'show_admin_bar_front', 'true'),
(270, 13, 'locale', ''),
(271, 13, 'is_deactivated', '0'),
(272, 13, 'is_deleted', '0'),
(273, 13, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(274, 13, 'wp_user_level', '0'),
(275, 13, 'dismissed_wp_pointers', ''),
(276, 14, 'nickname', 'Daniel Kitheka'),
(277, 14, 'first_name', ''),
(278, 14, 'last_name', ''),
(279, 14, 'description', ''),
(280, 14, 'rich_editing', 'true'),
(281, 14, 'syntax_highlighting', 'true'),
(282, 14, 'comment_shortcuts', 'false'),
(283, 14, 'admin_color', 'fresh'),
(284, 14, 'use_ssl', '0'),
(285, 14, 'show_admin_bar_front', 'true'),
(286, 14, 'locale', ''),
(287, 14, 'is_deactivated', '0'),
(288, 14, 'is_deleted', '0'),
(289, 14, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(290, 14, 'wp_user_level', '0'),
(291, 14, 'dismissed_wp_pointers', ''),
(292, 15, 'nickname', 'Patrick Mwaniki'),
(293, 15, 'first_name', ''),
(294, 15, 'last_name', ''),
(295, 15, 'description', ''),
(296, 15, 'rich_editing', 'true'),
(297, 15, 'syntax_highlighting', 'true'),
(298, 15, 'comment_shortcuts', 'false'),
(299, 15, 'admin_color', 'fresh'),
(300, 15, 'use_ssl', '0'),
(301, 15, 'show_admin_bar_front', 'true'),
(302, 15, 'locale', ''),
(303, 15, 'is_deactivated', '0'),
(304, 15, 'is_deleted', '0'),
(305, 15, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(306, 15, 'wp_user_level', '0'),
(307, 15, 'dismissed_wp_pointers', ''),
(308, 16, 'nickname', 'Patrick Kimani'),
(309, 16, 'first_name', ''),
(310, 16, 'last_name', ''),
(311, 16, 'description', ''),
(312, 16, 'rich_editing', 'true'),
(313, 16, 'syntax_highlighting', 'true'),
(314, 16, 'comment_shortcuts', 'false'),
(315, 16, 'admin_color', 'fresh'),
(316, 16, 'use_ssl', '0'),
(317, 16, 'show_admin_bar_front', 'true'),
(318, 16, 'locale', ''),
(319, 16, 'is_deactivated', '0'),
(320, 16, 'is_deleted', '0'),
(321, 16, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(322, 16, 'wp_user_level', '0'),
(323, 16, 'dismissed_wp_pointers', ''),
(324, 17, 'nickname', 'Joel Kores'),
(325, 17, 'first_name', ''),
(326, 17, 'last_name', ''),
(327, 17, 'description', ''),
(328, 17, 'rich_editing', 'true'),
(329, 17, 'syntax_highlighting', 'true'),
(330, 17, 'comment_shortcuts', 'false'),
(331, 17, 'admin_color', 'fresh'),
(332, 17, 'use_ssl', '0'),
(333, 17, 'show_admin_bar_front', 'true'),
(334, 17, 'locale', ''),
(335, 17, 'is_deactivated', '0'),
(336, 17, 'is_deleted', '0'),
(337, 17, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(338, 17, 'wp_user_level', '0'),
(339, 17, 'dismissed_wp_pointers', ''),
(340, 18, 'nickname', 'Francisca C'),
(341, 18, 'first_name', ''),
(342, 18, 'last_name', ''),
(343, 18, 'description', ''),
(344, 18, 'rich_editing', 'true'),
(345, 18, 'syntax_highlighting', 'true'),
(346, 18, 'comment_shortcuts', 'false'),
(347, 18, 'admin_color', 'fresh'),
(348, 18, 'use_ssl', '0'),
(349, 18, 'show_admin_bar_front', 'true'),
(350, 18, 'locale', ''),
(351, 18, 'is_deactivated', '0'),
(352, 18, 'is_deleted', '0'),
(353, 18, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(354, 18, 'wp_user_level', '0'),
(355, 18, 'dismissed_wp_pointers', ''),
(356, 19, 'nickname', 'Jane Maby'),
(357, 19, 'first_name', ''),
(358, 19, 'last_name', ''),
(359, 19, 'description', ''),
(360, 19, 'rich_editing', 'true'),
(361, 19, 'syntax_highlighting', 'true'),
(362, 19, 'comment_shortcuts', 'false'),
(363, 19, 'admin_color', 'fresh'),
(364, 19, 'use_ssl', '0'),
(365, 19, 'show_admin_bar_front', 'true'),
(366, 19, 'locale', ''),
(367, 19, 'is_deactivated', '0'),
(368, 19, 'is_deleted', '0'),
(369, 19, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(370, 19, 'wp_user_level', '0'),
(371, 19, 'dismissed_wp_pointers', ''),
(372, 20, 'nickname', 'Rawlin J'),
(373, 20, 'first_name', ''),
(374, 20, 'last_name', ''),
(375, 20, 'description', ''),
(376, 20, 'rich_editing', 'true'),
(377, 20, 'syntax_highlighting', 'true'),
(378, 20, 'comment_shortcuts', 'false'),
(379, 20, 'admin_color', 'fresh'),
(380, 20, 'use_ssl', '0'),
(381, 20, 'show_admin_bar_front', 'true'),
(382, 20, 'locale', ''),
(383, 20, 'is_deactivated', '0'),
(384, 20, 'is_deleted', '0'),
(385, 20, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(386, 20, 'wp_user_level', '0'),
(387, 20, 'dismissed_wp_pointers', ''),
(388, 21, 'nickname', 'Josh K'),
(389, 21, 'first_name', ''),
(390, 21, 'last_name', ''),
(391, 21, 'description', ''),
(392, 21, 'rich_editing', 'true'),
(393, 21, 'syntax_highlighting', 'true'),
(394, 21, 'comment_shortcuts', 'false'),
(395, 21, 'admin_color', 'fresh'),
(396, 21, 'use_ssl', '0'),
(397, 21, 'show_admin_bar_front', 'true'),
(398, 21, 'locale', ''),
(399, 21, 'is_deactivated', '0'),
(400, 21, 'is_deleted', '0'),
(401, 21, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(402, 21, 'wp_user_level', '0'),
(403, 21, 'dismissed_wp_pointers', ''),
(405, 22, 'nickname', 'Brian K'),
(406, 22, 'first_name', ''),
(407, 22, 'last_name', ''),
(408, 22, 'description', ''),
(409, 22, 'rich_editing', 'true'),
(410, 22, 'syntax_highlighting', 'true'),
(411, 22, 'comment_shortcuts', 'false'),
(412, 22, 'admin_color', 'fresh'),
(413, 22, 'use_ssl', '0'),
(414, 22, 'show_admin_bar_front', 'true'),
(415, 22, 'locale', ''),
(416, 22, 'is_deactivated', '0'),
(417, 22, 'is_deleted', '0'),
(418, 22, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(419, 22, 'wp_user_level', '0'),
(420, 22, 'dismissed_wp_pointers', ''),
(421, 23, 'nickname', 'Amos Kirui'),
(422, 23, 'first_name', ''),
(423, 23, 'last_name', ''),
(424, 23, 'description', ''),
(425, 23, 'rich_editing', 'true'),
(426, 23, 'syntax_highlighting', 'true'),
(427, 23, 'comment_shortcuts', 'false'),
(428, 23, 'admin_color', 'fresh'),
(429, 23, 'use_ssl', '0'),
(430, 23, 'show_admin_bar_front', 'true'),
(431, 23, 'locale', ''),
(432, 23, 'is_deactivated', '0'),
(433, 23, 'is_deleted', '1'),
(434, 23, 'wp_capabilities', 'a:1:{s:8:\"inactive\";b:1;}'),
(435, 23, 'wp_user_level', '0'),
(436, 23, 'dismissed_wp_pointers', ''),
(437, 24, 'nickname', 'Kip Francis'),
(438, 24, 'first_name', ''),
(439, 24, 'last_name', ''),
(440, 24, 'description', ''),
(441, 24, 'rich_editing', 'true'),
(442, 24, 'syntax_highlighting', 'true'),
(443, 24, 'comment_shortcuts', 'false'),
(444, 24, 'admin_color', 'fresh'),
(445, 24, 'use_ssl', '0'),
(446, 24, 'show_admin_bar_front', 'true'),
(447, 24, 'locale', ''),
(448, 24, 'is_deactivated', '0'),
(449, 24, 'is_deleted', '0'),
(450, 24, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(451, 24, 'wp_user_level', '0'),
(452, 24, 'dismissed_wp_pointers', ''),
(453, 25, 'nickname', 'Kip Jackson'),
(454, 25, 'first_name', ''),
(455, 25, 'last_name', ''),
(456, 25, 'description', ''),
(457, 25, 'rich_editing', 'true'),
(458, 25, 'syntax_highlighting', 'true'),
(459, 25, 'comment_shortcuts', 'false'),
(460, 25, 'admin_color', 'fresh'),
(461, 25, 'use_ssl', '0'),
(462, 25, 'show_admin_bar_front', 'true'),
(463, 25, 'locale', ''),
(464, 25, 'is_deactivated', '0'),
(465, 25, 'is_deleted', '0'),
(466, 25, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(467, 25, 'wp_user_level', '0'),
(468, 25, 'dismissed_wp_pointers', ''),
(469, 26, 'nickname', 'leonard K'),
(470, 26, 'first_name', ''),
(471, 26, 'last_name', ''),
(472, 26, 'description', ''),
(473, 26, 'rich_editing', 'true'),
(474, 26, 'syntax_highlighting', 'true'),
(475, 26, 'comment_shortcuts', 'false'),
(476, 26, 'admin_color', 'fresh'),
(477, 26, 'use_ssl', '0'),
(478, 26, 'show_admin_bar_front', 'true'),
(479, 26, 'locale', ''),
(480, 26, 'is_deactivated', '0'),
(481, 26, 'is_deleted', '0'),
(482, 26, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(483, 26, 'wp_user_level', '0'),
(484, 26, 'dismissed_wp_pointers', ''),
(490, 1, 'is_deleted', '1'),
(491, 27, 'nickname', 'Aldo Bir'),
(492, 27, 'first_name', ''),
(493, 27, 'last_name', ''),
(494, 27, 'description', ''),
(495, 27, 'rich_editing', 'true'),
(496, 27, 'syntax_highlighting', 'true'),
(497, 27, 'comment_shortcuts', 'false'),
(498, 27, 'admin_color', 'fresh'),
(499, 27, 'use_ssl', '0'),
(500, 27, 'show_admin_bar_front', 'true'),
(501, 27, 'locale', ''),
(502, 27, 'is_deactivated', '0'),
(503, 27, 'is_deleted', '0'),
(504, 27, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(505, 27, 'wp_user_level', '0'),
(506, 27, 'dismissed_wp_pointers', ''),
(507, 28, 'nickname', 'harry k'),
(508, 28, 'first_name', ''),
(509, 28, 'last_name', ''),
(510, 28, 'description', ''),
(511, 28, 'rich_editing', 'true'),
(512, 28, 'syntax_highlighting', 'true'),
(513, 28, 'comment_shortcuts', 'false'),
(514, 28, 'admin_color', 'fresh'),
(515, 28, 'use_ssl', '0'),
(516, 28, 'show_admin_bar_front', 'true'),
(517, 28, 'locale', ''),
(518, 28, 'is_deactivated', '0'),
(519, 28, 'is_deleted', '0'),
(520, 28, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(521, 28, 'wp_user_level', '0'),
(522, 28, 'dismissed_wp_pointers', ''),
(523, 29, 'nickname', 'mary c'),
(524, 29, 'first_name', ''),
(525, 29, 'last_name', ''),
(526, 29, 'description', ''),
(527, 29, 'rich_editing', 'true'),
(528, 29, 'syntax_highlighting', 'true'),
(529, 29, 'comment_shortcuts', 'false'),
(530, 29, 'admin_color', 'fresh'),
(531, 29, 'use_ssl', '0'),
(532, 29, 'show_admin_bar_front', 'true'),
(533, 29, 'locale', ''),
(534, 29, 'is_deactivated', '0'),
(535, 29, 'is_deleted', '1'),
(536, 29, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(537, 29, 'wp_user_level', '0'),
(538, 29, 'dismissed_wp_pointers', ''),
(539, 30, 'nickname', 'hope c'),
(540, 30, 'first_name', ''),
(541, 30, 'last_name', ''),
(542, 30, 'description', ''),
(543, 30, 'rich_editing', 'true'),
(544, 30, 'syntax_highlighting', 'true'),
(545, 30, 'comment_shortcuts', 'false'),
(546, 30, 'admin_color', 'fresh'),
(547, 30, 'use_ssl', '0'),
(548, 30, 'show_admin_bar_front', 'true'),
(549, 30, 'locale', ''),
(550, 30, 'is_deactivated', '0'),
(551, 30, 'is_deleted', '0'),
(552, 30, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(553, 30, 'wp_user_level', '0'),
(554, 30, 'dismissed_wp_pointers', ''),
(555, 31, 'nickname', 'hop murithi'),
(556, 31, 'first_name', ''),
(557, 31, 'last_name', ''),
(558, 31, 'description', ''),
(559, 31, 'rich_editing', 'true'),
(560, 31, 'syntax_highlighting', 'true'),
(561, 31, 'comment_shortcuts', 'false'),
(562, 31, 'admin_color', 'fresh'),
(563, 31, 'use_ssl', '0'),
(564, 31, 'show_admin_bar_front', 'true'),
(565, 31, 'locale', ''),
(566, 31, 'is_deactivated', '0'),
(567, 31, 'is_deleted', '1'),
(568, 31, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(569, 31, 'wp_user_level', '0'),
(570, 31, 'dismissed_wp_pointers', ''),
(571, 32, 'nickname', 'joel kk'),
(572, 32, 'first_name', ''),
(573, 32, 'last_name', ''),
(574, 32, 'description', ''),
(575, 32, 'rich_editing', 'true'),
(576, 32, 'syntax_highlighting', 'true'),
(577, 32, 'comment_shortcuts', 'false'),
(578, 32, 'admin_color', 'fresh'),
(579, 32, 'use_ssl', '0'),
(580, 32, 'show_admin_bar_front', 'true'),
(581, 32, 'locale', ''),
(582, 32, 'is_deactivated', '0'),
(583, 32, 'is_deleted', '1'),
(584, 32, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(585, 32, 'wp_user_level', '0'),
(586, 32, 'dismissed_wp_pointers', ''),
(588, 33, 'nickname', 'ruth kizito'),
(589, 33, 'first_name', ''),
(590, 33, 'last_name', ''),
(591, 33, 'description', ''),
(592, 33, 'rich_editing', 'true'),
(593, 33, 'syntax_highlighting', 'true'),
(594, 33, 'comment_shortcuts', 'false'),
(595, 33, 'admin_color', 'fresh'),
(596, 33, 'use_ssl', '0'),
(597, 33, 'show_admin_bar_front', 'true'),
(598, 33, 'locale', ''),
(599, 33, 'is_deactivated', '0'),
(600, 33, 'is_deleted', '1'),
(601, 33, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(602, 33, 'wp_user_level', '0'),
(603, 33, 'dismissed_wp_pointers', ''),
(607, 34, 'nickname', 'Gerald Kim'),
(608, 34, 'first_name', ''),
(609, 34, 'last_name', ''),
(610, 34, 'description', ''),
(611, 34, 'rich_editing', 'true'),
(612, 34, 'syntax_highlighting', 'true'),
(613, 34, 'comment_shortcuts', 'false'),
(614, 34, 'admin_color', 'fresh'),
(615, 34, 'use_ssl', '0'),
(616, 34, 'show_admin_bar_front', 'true'),
(617, 34, 'locale', ''),
(618, 34, 'is_deactivated', '0'),
(619, 34, 'is_deleted', '0'),
(620, 34, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(621, 34, 'wp_user_level', '0'),
(622, 34, 'dismissed_wp_pointers', ''),
(633, 35, 'nickname', 'kirui Ruth'),
(634, 35, 'first_name', ''),
(635, 35, 'last_name', ''),
(636, 35, 'description', ''),
(637, 35, 'rich_editing', 'true'),
(638, 35, 'syntax_highlighting', 'true'),
(639, 35, 'comment_shortcuts', 'false'),
(640, 35, 'admin_color', 'fresh'),
(641, 35, 'use_ssl', '0'),
(642, 35, 'show_admin_bar_front', 'true'),
(643, 35, 'locale', ''),
(644, 35, 'is_deactivated', '0'),
(645, 35, 'is_deleted', '0'),
(646, 35, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(647, 35, 'wp_user_level', '0'),
(648, 35, 'dismissed_wp_pointers', ''),
(650, 36, 'nickname', 'kirui ngina kizito'),
(651, 36, 'first_name', ''),
(652, 36, 'last_name', ''),
(653, 36, 'description', ''),
(654, 36, 'rich_editing', 'true'),
(655, 36, 'syntax_highlighting', 'true'),
(656, 36, 'comment_shortcuts', 'false'),
(657, 36, 'admin_color', 'fresh'),
(658, 36, 'use_ssl', '0'),
(659, 36, 'show_admin_bar_front', 'true'),
(660, 36, 'locale', ''),
(661, 36, 'is_deactivated', '0'),
(662, 36, 'is_deleted', '0'),
(663, 36, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(664, 36, 'wp_user_level', '0'),
(665, 36, 'dismissed_wp_pointers', ''),
(671, 37, 'nickname', 'grey kizito'),
(672, 37, 'first_name', ''),
(673, 37, 'last_name', ''),
(674, 37, 'description', ''),
(675, 37, 'rich_editing', 'true'),
(676, 37, 'syntax_highlighting', 'true'),
(677, 37, 'comment_shortcuts', 'false'),
(678, 37, 'admin_color', 'fresh'),
(679, 37, 'use_ssl', '0'),
(680, 37, 'show_admin_bar_front', 'true'),
(681, 37, 'locale', ''),
(682, 37, 'phone_number', NULL),
(683, 37, 'is_deactivated', '0'),
(684, 37, 'is_deleted', '0'),
(685, 37, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(686, 37, 'wp_user_level', '0'),
(687, 37, 'dismissed_wp_pointers', ''),
(688, 38, 'nickname', 'kiplagat brian'),
(689, 38, 'first_name', ''),
(690, 38, 'last_name', ''),
(691, 38, 'description', ''),
(692, 38, 'rich_editing', 'true'),
(693, 38, 'syntax_highlighting', 'true'),
(694, 38, 'comment_shortcuts', 'false'),
(695, 38, 'admin_color', 'fresh'),
(696, 38, 'use_ssl', '0'),
(697, 38, 'show_admin_bar_front', 'true'),
(698, 38, 'locale', ''),
(699, 38, 'is_deactivated', '0'),
(700, 38, 'is_deleted', '0'),
(701, 38, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(702, 38, 'wp_user_level', '0'),
(703, 38, 'dismissed_wp_pointers', ''),
(704, 39, 'nickname', 'kiplag bryan'),
(705, 39, 'first_name', ''),
(706, 39, 'last_name', ''),
(707, 39, 'description', ''),
(708, 39, 'rich_editing', 'true'),
(709, 39, 'syntax_highlighting', 'true'),
(710, 39, 'comment_shortcuts', 'false'),
(711, 39, 'admin_color', 'fresh'),
(712, 39, 'use_ssl', '0'),
(713, 39, 'show_admin_bar_front', 'true'),
(714, 39, 'locale', ''),
(715, 39, 'phone_number', NULL),
(716, 39, 'is_deactivated', '0'),
(717, 39, 'is_deleted', '0'),
(718, 39, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(719, 39, 'wp_user_level', '0'),
(720, 39, 'dismissed_wp_pointers', ''),
(721, 40, 'nickname', 'mwaniki patrick'),
(722, 40, 'first_name', ''),
(723, 40, 'last_name', ''),
(724, 40, 'description', ''),
(725, 40, 'rich_editing', 'true'),
(726, 40, 'syntax_highlighting', 'true'),
(727, 40, 'comment_shortcuts', 'false'),
(728, 40, 'admin_color', 'fresh'),
(729, 40, 'use_ssl', '0'),
(730, 40, 'show_admin_bar_front', 'true'),
(731, 40, 'locale', ''),
(732, 40, 'is_deactivated', '0'),
(733, 40, 'is_deleted', '0'),
(734, 40, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(735, 40, 'wp_user_level', '0'),
(736, 40, 'dismissed_wp_pointers', ''),
(737, 41, 'nickname', 'Nick'),
(738, 41, 'first_name', ''),
(739, 41, 'last_name', ''),
(740, 41, 'description', ''),
(741, 41, 'rich_editing', 'true'),
(742, 41, 'syntax_highlighting', 'true'),
(743, 41, 'comment_shortcuts', 'false'),
(744, 41, 'admin_color', 'fresh'),
(745, 41, 'use_ssl', '0'),
(746, 41, 'show_admin_bar_front', 'true'),
(747, 41, 'locale', ''),
(748, 41, 'is_deactivated', '0'),
(749, 41, 'is_deleted', '0'),
(750, 41, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(751, 41, 'wp_user_level', '0'),
(752, 41, 'dismissed_wp_pointers', ''),
(758, 42, 'nickname', 'kili'),
(759, 42, 'first_name', ''),
(760, 42, 'last_name', ''),
(761, 42, 'description', ''),
(762, 42, 'rich_editing', 'true'),
(763, 42, 'syntax_highlighting', 'true'),
(764, 42, 'comment_shortcuts', 'false'),
(765, 42, 'admin_color', 'fresh'),
(766, 42, 'use_ssl', '0'),
(767, 42, 'show_admin_bar_front', 'true'),
(768, 42, 'locale', ''),
(769, 42, 'is_deactivated', '0'),
(770, 42, 'is_deleted', '0'),
(771, 42, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(772, 42, 'wp_user_level', '0'),
(773, 42, 'dismissed_wp_pointers', ''),
(776, 43, 'nickname', 'hope mwenda'),
(777, 43, 'first_name', ''),
(778, 43, 'last_name', ''),
(779, 43, 'description', ''),
(780, 43, 'rich_editing', 'true'),
(781, 43, 'syntax_highlighting', 'true'),
(782, 43, 'comment_shortcuts', 'false'),
(783, 43, 'admin_color', 'fresh'),
(784, 43, 'use_ssl', '0'),
(785, 43, 'show_admin_bar_front', 'true'),
(786, 43, 'locale', ''),
(787, 43, 'is_deactivated', '0'),
(788, 43, 'is_deleted', '0'),
(789, 43, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(790, 43, 'wp_user_level', '0'),
(791, 43, 'dismissed_wp_pointers', ''),
(794, 44, 'nickname', 'Ken Kimani'),
(795, 44, 'first_name', ''),
(796, 44, 'last_name', ''),
(797, 44, 'description', ''),
(798, 44, 'rich_editing', 'true'),
(799, 44, 'syntax_highlighting', 'true'),
(800, 44, 'comment_shortcuts', 'false'),
(801, 44, 'admin_color', 'fresh'),
(802, 44, 'use_ssl', '0'),
(803, 44, 'show_admin_bar_front', 'true'),
(804, 44, 'locale', ''),
(805, 44, 'is_deactivated', '0'),
(806, 44, 'is_deleted', '0'),
(807, 44, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(808, 44, 'wp_user_level', '0'),
(809, 44, 'dismissed_wp_pointers', ''),
(810, 45, 'nickname', 'Joek Koros'),
(811, 45, 'first_name', ''),
(812, 45, 'last_name', ''),
(813, 45, 'description', ''),
(814, 45, 'rich_editing', 'true'),
(815, 45, 'syntax_highlighting', 'true'),
(816, 45, 'comment_shortcuts', 'false'),
(817, 45, 'admin_color', 'fresh'),
(818, 45, 'use_ssl', '0'),
(819, 45, 'show_admin_bar_front', 'true'),
(820, 45, 'locale', ''),
(821, 45, 'is_deactivated', '0'),
(822, 45, 'is_deleted', '0'),
(823, 45, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(824, 45, 'wp_user_level', '0'),
(825, 45, 'dismissed_wp_pointers', ''),
(826, 46, 'nickname', 'joy chep'),
(827, 46, 'first_name', ''),
(828, 46, 'last_name', ''),
(829, 46, 'description', ''),
(830, 46, 'rich_editing', 'true'),
(831, 46, 'syntax_highlighting', 'true'),
(832, 46, 'comment_shortcuts', 'false'),
(833, 46, 'admin_color', 'fresh'),
(834, 46, 'use_ssl', '0'),
(835, 46, 'show_admin_bar_front', 'true'),
(836, 46, 'locale', ''),
(837, 46, 'is_deactivated', '0'),
(838, 46, 'is_deleted', '0'),
(839, 46, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(840, 46, 'wp_user_level', '0'),
(841, 46, 'dismissed_wp_pointers', ''),
(843, 47, 'nickname', 'yobra kn'),
(844, 47, 'first_name', ''),
(845, 47, 'last_name', ''),
(846, 47, 'description', ''),
(847, 47, 'rich_editing', 'true'),
(848, 47, 'syntax_highlighting', 'true'),
(849, 47, 'comment_shortcuts', 'false'),
(850, 47, 'admin_color', 'fresh'),
(851, 47, 'use_ssl', '0'),
(852, 47, 'show_admin_bar_front', 'true'),
(853, 47, 'locale', ''),
(854, 47, 'is_deactivated', '0'),
(855, 47, 'is_deleted', '0'),
(856, 47, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(857, 47, 'wp_user_level', '0'),
(858, 47, 'dismissed_wp_pointers', ''),
(859, 48, 'nickname', 'y nn'),
(860, 48, 'first_name', ''),
(861, 48, 'last_name', ''),
(862, 48, 'description', ''),
(863, 48, 'rich_editing', 'true'),
(864, 48, 'syntax_highlighting', 'true'),
(865, 48, 'comment_shortcuts', 'false'),
(866, 48, 'admin_color', 'fresh'),
(867, 48, 'use_ssl', '0'),
(868, 48, 'show_admin_bar_front', 'true'),
(869, 48, 'locale', ''),
(870, 48, 'is_deactivated', '0'),
(871, 48, 'is_deleted', '0'),
(872, 48, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(873, 48, 'wp_user_level', '0'),
(874, 48, 'dismissed_wp_pointers', ''),
(875, 49, 'nickname', 'prono k'),
(876, 49, 'first_name', ''),
(877, 49, 'last_name', ''),
(878, 49, 'description', ''),
(879, 49, 'rich_editing', 'true'),
(880, 49, 'syntax_highlighting', 'true'),
(881, 49, 'comment_shortcuts', 'false'),
(882, 49, 'admin_color', 'fresh'),
(883, 49, 'use_ssl', '0'),
(884, 49, 'show_admin_bar_front', 'true'),
(885, 49, 'locale', ''),
(886, 49, 'is_deactivated', '0'),
(887, 49, 'is_deleted', '0'),
(888, 49, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(889, 49, 'wp_user_level', '0'),
(890, 49, 'dismissed_wp_pointers', ''),
(891, 50, 'nickname', 'wilfred marete'),
(892, 50, 'first_name', ''),
(893, 50, 'last_name', ''),
(894, 50, 'description', ''),
(895, 50, 'rich_editing', 'true'),
(896, 50, 'syntax_highlighting', 'true'),
(897, 50, 'comment_shortcuts', 'false'),
(898, 50, 'admin_color', 'fresh'),
(899, 50, 'use_ssl', '0'),
(900, 50, 'show_admin_bar_front', 'true'),
(901, 50, 'locale', ''),
(902, 50, 'is_deactivated', '0'),
(903, 50, 'is_deleted', '0'),
(904, 50, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(905, 50, 'wp_user_level', '0'),
(906, 50, 'dismissed_wp_pointers', ''),
(907, 51, 'nickname', 'elija kk'),
(908, 51, 'first_name', ''),
(909, 51, 'last_name', ''),
(910, 51, 'description', ''),
(911, 51, 'rich_editing', 'true'),
(912, 51, 'syntax_highlighting', 'true'),
(913, 51, 'comment_shortcuts', 'false'),
(914, 51, 'admin_color', 'fresh'),
(915, 51, 'use_ssl', '0'),
(916, 51, 'show_admin_bar_front', 'true'),
(917, 51, 'locale', ''),
(918, 51, 'is_deactivated', '0'),
(919, 51, 'is_deleted', '0'),
(920, 51, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(921, 51, 'wp_user_level', '0'),
(922, 51, 'dismissed_wp_pointers', ''),
(925, 52, 'nickname', 'jack omondi'),
(926, 52, 'first_name', ''),
(927, 52, 'last_name', ''),
(928, 52, 'description', ''),
(929, 52, 'rich_editing', 'true'),
(930, 52, 'syntax_highlighting', 'true'),
(931, 52, 'comment_shortcuts', 'false'),
(932, 52, 'admin_color', 'fresh'),
(933, 52, 'use_ssl', '0'),
(934, 52, 'show_admin_bar_front', 'true'),
(935, 52, 'locale', ''),
(936, 52, 'is_deactivated', '0'),
(937, 52, 'is_deleted', '0'),
(938, 52, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(939, 52, 'wp_user_level', '0'),
(940, 52, 'dismissed_wp_pointers', ''),
(941, 53, 'nickname', 'kelvin mwangi'),
(942, 53, 'first_name', ''),
(943, 53, 'last_name', ''),
(944, 53, 'description', ''),
(945, 53, 'rich_editing', 'true'),
(946, 53, 'syntax_highlighting', 'true'),
(947, 53, 'comment_shortcuts', 'false'),
(948, 53, 'admin_color', 'fresh'),
(949, 53, 'use_ssl', '0'),
(950, 53, 'show_admin_bar_front', 'true'),
(951, 53, 'locale', ''),
(952, 53, 'is_deactivated', '0'),
(953, 53, 'is_deleted', '0'),
(954, 53, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(955, 53, 'wp_user_level', '0'),
(956, 53, 'dismissed_wp_pointers', ''),
(957, 54, 'nickname', 'kimani elisha'),
(958, 54, 'first_name', ''),
(959, 54, 'last_name', ''),
(960, 54, 'description', ''),
(961, 54, 'rich_editing', 'true'),
(962, 54, 'syntax_highlighting', 'true'),
(963, 54, 'comment_shortcuts', 'false'),
(964, 54, 'admin_color', 'fresh'),
(965, 54, 'use_ssl', '0'),
(966, 54, 'show_admin_bar_front', 'true'),
(967, 54, 'locale', ''),
(968, 54, 'is_deactivated', '0'),
(969, 54, 'is_deleted', '0'),
(970, 54, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(971, 54, 'wp_user_level', '0'),
(972, 54, 'dismissed_wp_pointers', ''),
(981, 55, 'nickname', 'cassypool'),
(982, 55, 'first_name', ''),
(983, 55, 'last_name', ''),
(984, 55, 'description', ''),
(985, 55, 'rich_editing', 'true'),
(986, 55, 'syntax_highlighting', 'true'),
(987, 55, 'comment_shortcuts', 'false'),
(988, 55, 'admin_color', 'fresh'),
(989, 55, 'use_ssl', '0'),
(990, 55, 'show_admin_bar_front', 'true'),
(991, 55, 'locale', ''),
(992, 55, 'is_deactivated', '0'),
(993, 55, 'is_deleted', '0'),
(994, 55, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(995, 55, 'wp_user_level', '0'),
(996, 55, 'dismissed_wp_pointers', ''),
(1000, 56, 'nickname', 'cassypool kapondo'),
(1001, 56, 'first_name', ''),
(1002, 56, 'last_name', ''),
(1003, 56, 'description', ''),
(1004, 56, 'rich_editing', 'true'),
(1005, 56, 'syntax_highlighting', 'true'),
(1006, 56, 'comment_shortcuts', 'false'),
(1007, 56, 'admin_color', 'fresh'),
(1008, 56, 'use_ssl', '0'),
(1009, 56, 'show_admin_bar_front', 'true'),
(1010, 56, 'locale', ''),
(1011, 56, 'is_deactivated', '0'),
(1012, 56, 'is_deleted', '0'),
(1013, 56, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(1014, 56, 'wp_user_level', '0'),
(1015, 56, 'dismissed_wp_pointers', ''),
(1017, 57, 'nickname', 'murithi hope'),
(1018, 57, 'first_name', ''),
(1019, 57, 'last_name', ''),
(1020, 57, 'description', ''),
(1021, 57, 'rich_editing', 'true'),
(1022, 57, 'syntax_highlighting', 'true'),
(1023, 57, 'comment_shortcuts', 'false'),
(1024, 57, 'admin_color', 'fresh'),
(1025, 57, 'use_ssl', '0'),
(1026, 57, 'show_admin_bar_front', 'true'),
(1027, 57, 'locale', ''),
(1028, 57, 'is_deactivated', '0'),
(1029, 57, 'is_deleted', '0'),
(1030, 57, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(1031, 57, 'wp_user_level', '0'),
(1032, 57, 'dismissed_wp_pointers', ''),
(1034, 57, 'profile_picture', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
(1037, 50, 'profile_picture', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
(1049, 58, 'nickname', 'ezra kibet'),
(1050, 58, 'first_name', ''),
(1051, 58, 'last_name', ''),
(1052, 58, 'description', ''),
(1053, 58, 'rich_editing', 'true'),
(1054, 58, 'syntax_highlighting', 'true'),
(1055, 58, 'comment_shortcuts', 'false'),
(1056, 58, 'admin_color', 'fresh'),
(1057, 58, 'use_ssl', '0'),
(1058, 58, 'show_admin_bar_front', 'true'),
(1059, 58, 'locale', ''),
(1060, 58, 'is_deactivated', '0'),
(1061, 58, 'is_deleted', '0'),
(1062, 58, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(1063, 58, 'wp_user_level', '0'),
(1064, 58, 'dismissed_wp_pointers', ''),
(1065, 1, 'session_tokens', 'a:1:{s:64:\"a3610957d3c325f7ed27d068e89de96a84f9de9a77636436f1ddef73a65c5838\";a:4:{s:10:\"expiration\";i:1688652977;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688480177;}}'),
(1068, 59, 'nickname', 'Jason Kingi'),
(1069, 59, 'first_name', ''),
(1070, 59, 'last_name', ''),
(1071, 59, 'description', ''),
(1072, 59, 'rich_editing', 'true'),
(1073, 59, 'syntax_highlighting', 'true'),
(1074, 59, 'comment_shortcuts', 'false'),
(1075, 59, 'admin_color', 'fresh'),
(1076, 59, 'use_ssl', '0'),
(1077, 59, 'show_admin_bar_front', 'true'),
(1078, 59, 'locale', ''),
(1079, 59, 'is_deactivated', '0'),
(1080, 59, 'is_deleted', '0'),
(1081, 59, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(1082, 59, 'wp_user_level', '0'),
(1083, 59, 'dismissed_wp_pointers', ''),
(1088, 57, 'session_tokens', 'a:3:{s:64:\"524bb283d73c2a892738b7f18a1fa0c43e4577004a6aaac8eed2c4ff51e14886\";a:4:{s:10:\"expiration\";i:1688110646;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1687937846;}s:64:\"86b9a5b6c449f856a36fa7d377e3b2264a9e09327850d59b98a5e2f64ae84cf6\";a:4:{s:10:\"expiration\";i:1688110944;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1687938144;}s:64:\"220d57bf49f2a98704a4eaaf672b840f6a79cd3bef420b57e658410fd81149bf\";a:4:{s:10:\"expiration\";i:1688127461;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1687954661;}}'),
(1093, 60, 'nickname', 'Gilbert Kisuli'),
(1094, 60, 'first_name', ''),
(1095, 60, 'last_name', ''),
(1096, 60, 'description', ''),
(1097, 60, 'rich_editing', 'true'),
(1098, 60, 'syntax_highlighting', 'true'),
(1099, 60, 'comment_shortcuts', 'false'),
(1100, 60, 'admin_color', 'fresh'),
(1101, 60, 'use_ssl', '0'),
(1102, 60, 'show_admin_bar_front', 'true'),
(1103, 60, 'locale', ''),
(1104, 60, 'is_deactivated', '0'),
(1105, 60, 'is_deleted', '0'),
(1106, 60, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(1107, 60, 'wp_user_level', '0'),
(1108, 60, 'dismissed_wp_pointers', ''),
(1111, 60, 'profile_picture', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
(1112, 61, 'nickname', 'Andrew Kibor'),
(1113, 61, 'first_name', ''),
(1114, 61, 'last_name', ''),
(1115, 61, 'description', ''),
(1116, 61, 'rich_editing', 'true'),
(1117, 61, 'syntax_highlighting', 'true'),
(1118, 61, 'comment_shortcuts', 'false'),
(1119, 61, 'admin_color', 'fresh'),
(1120, 61, 'use_ssl', '0'),
(1121, 61, 'show_admin_bar_front', 'true'),
(1122, 61, 'locale', ''),
(1123, 61, 'is_deactivated', '0'),
(1124, 61, 'is_deleted', '0'),
(1125, 61, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(1126, 61, 'wp_user_level', '0'),
(1127, 61, 'dismissed_wp_pointers', ''),
(1129, 61, 'profile_picture', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
(1130, 62, 'nickname', 'Stephen Kimani'),
(1131, 62, 'first_name', ''),
(1132, 62, 'last_name', ''),
(1133, 62, 'description', ''),
(1134, 62, 'rich_editing', 'true'),
(1135, 62, 'syntax_highlighting', 'true'),
(1136, 62, 'comment_shortcuts', 'false'),
(1137, 62, 'admin_color', 'fresh'),
(1138, 62, 'use_ssl', '0'),
(1139, 62, 'show_admin_bar_front', 'true'),
(1140, 62, 'locale', ''),
(1141, 62, 'is_deactivated', '0'),
(1142, 62, 'is_deleted', '0'),
(1143, 62, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(1144, 62, 'wp_user_level', '0'),
(1145, 62, 'dismissed_wp_pointers', ''),
(1148, 62, 'profile_picture', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
(1149, 63, 'nickname', 'Esther Wanja'),
(1150, 63, 'first_name', ''),
(1151, 63, 'last_name', ''),
(1152, 63, 'description', ''),
(1153, 63, 'rich_editing', 'true'),
(1154, 63, 'syntax_highlighting', 'true'),
(1155, 63, 'comment_shortcuts', 'false'),
(1156, 63, 'admin_color', 'fresh'),
(1157, 63, 'use_ssl', '0'),
(1158, 63, 'show_admin_bar_front', 'true'),
(1159, 63, 'locale', ''),
(1160, 63, 'is_deactivated', '0'),
(1161, 63, 'is_deleted', '0'),
(1162, 63, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(1163, 63, 'wp_user_level', '0'),
(1164, 63, 'dismissed_wp_pointers', ''),
(1166, 63, 'profile_picture', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
(1167, 2, 'session_tokens', 'a:1:{s:64:\"fc64d87588333fe33dc98c7595675a4e9c9a8ce03103ee66520350d48ca39557\";a:4:{s:10:\"expiration\";i:1688226747;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688053947;}}'),
(1170, 64, 'nickname', 'Kizito Ruth'),
(1171, 64, 'first_name', ''),
(1172, 64, 'last_name', ''),
(1173, 64, 'description', ''),
(1174, 64, 'rich_editing', 'true'),
(1175, 64, 'syntax_highlighting', 'true'),
(1176, 64, 'comment_shortcuts', 'false'),
(1177, 64, 'admin_color', 'fresh'),
(1178, 64, 'use_ssl', '0'),
(1179, 64, 'show_admin_bar_front', 'true'),
(1180, 64, 'locale', ''),
(1181, 64, 'is_deactivated', '0'),
(1182, 64, 'is_deleted', '0'),
(1183, 64, 'wp_capabilities', 'a:1:{s:15:\"program_manager\";b:1;}'),
(1184, 64, 'wp_user_level', '0'),
(1185, 64, 'dismissed_wp_pointers', ''),
(1187, 64, 'profile_picture', 'https://media.istockphoto.com/id/1331335517/vector/female-avatar-icon.jpg?s=170667a&w=0&k=20&c=5PQV26-QjlYXqeTsEDVkz40IClWLVabzj6rWr9bTPik='),
(1190, 65, 'nickname', 'hedwig kizito'),
(1191, 65, 'first_name', ''),
(1192, 65, 'last_name', ''),
(1193, 65, 'description', ''),
(1194, 65, 'rich_editing', 'true'),
(1195, 65, 'syntax_highlighting', 'true'),
(1196, 65, 'comment_shortcuts', 'false'),
(1197, 65, 'admin_color', 'fresh'),
(1198, 65, 'use_ssl', '0'),
(1199, 65, 'show_admin_bar_front', 'true'),
(1200, 65, 'locale', ''),
(1201, 65, 'is_deactivated', '0'),
(1202, 65, 'is_deleted', '0'),
(1203, 65, 'wp_capabilities', 'a:1:{s:7:\"trainer\";b:1;}'),
(1204, 65, 'wp_user_level', '0'),
(1205, 65, 'dismissed_wp_pointers', ''),
(1207, 65, 'profile_picture', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
(1208, 66, 'nickname', 'brian kimeto'),
(1209, 66, 'first_name', ''),
(1210, 66, 'last_name', ''),
(1211, 66, 'description', ''),
(1212, 66, 'rich_editing', 'true'),
(1213, 66, 'syntax_highlighting', 'true'),
(1214, 66, 'comment_shortcuts', 'false'),
(1215, 66, 'admin_color', 'fresh'),
(1216, 66, 'use_ssl', '0'),
(1217, 66, 'show_admin_bar_front', 'true'),
(1218, 66, 'locale', ''),
(1219, 66, 'is_deactivated', '0'),
(1220, 66, 'is_deleted', '0'),
(1221, 66, 'wp_capabilities', 'a:1:{s:7:\"trainee\";b:1;}'),
(1222, 66, 'wp_user_level', '0'),
(1223, 66, 'dismissed_wp_pointers', ''),
(1225, 66, 'profile_picture', 'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg');

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
(1, 'admin1', '$P$B/tmkMwoYst2uYd7nSN69ndbw4Iuez1', 'admin1', 'nicholaskirui6@gmail.com', 'http://localhost/EasyManage', '2023-06-07 12:32:47', '', 0, 'admin1'),
(2, 'program manager', '$P$B4yPAlvEKvR3xkUku5mZU.1oJZo17P/', 'program-manager', 'nkirui6@gmail.com', '', '2023-06-12 07:24:18', '1686554659:$P$Bw0tFfsXWfTnnYEzXKqNMYMhpL2w6e.', 0, 'Nicholas Kirui'),
(3, 'trainer', '$P$B/qhNjkzH6bW2gY/hBD.iOQ.eOUVZk.', 'trainer', 'nickirui6@gmail.com', '', '2023-06-12 07:53:18', '1686556398:$P$B60WNUtFqTsm54tgzsJoYS5I9lprTL1', 0, 'Nicholas Kirui'),
(4, 'trainee', '$P$BGEjGND.pAZwAGtF6JG4mEynaF5vui/', 'trainee', 'nicholakirui6@gmail.com', '', '2023-06-12 07:53:49', '1686556429:$P$BZEekNRE3/63yw5iZChnqn4Mo.q0QN.', 0, 'Nicholas Kirui'),
(5, 'Hope Murithi', '$P$Bs0rqVCK12jQhNeE/nS2rKIDOQyBRF1', 'hope-murithi', 'hm@yopmail.com', '', '2023-06-19 14:41:32', '', 0, 'Hope Murithi'),
(6, 'Faith Kadima', '$P$BBSoLLXcrOHLENyGwZSKB/OmyY8LBY1', 'faith-kadima', 'chepkiruif@gmail.com', '', '2023-06-19 21:30:57', '', 0, 'Faith Chepkirui'),
(7, 'Mercy K', '$P$Bz6CqM3MNAaYyPX2vp7r0R86Vmq4Rq.', 'mercy-k', 'mercyk@gmail.com', '', '2023-06-19 21:31:24', '', 0, 'Mercy K'),
(8, 'Betsy C', '$P$Bj6YknCz9b.D.u.V3UWjwHwwDHoHD90', 'betsy-c', 'cb@gmail.com', '', '2023-06-19 21:31:41', '', 0, 'Betsy C'),
(9, 'Frank K', '$P$BlpJ9lTRkHGbTmX0aWWxIBA/MNQ9oq1', 'frank-k', 'fk@gmail.com', '', '2023-06-19 21:31:58', '', 0, 'Frank K'),
(10, 'Collins C', '$P$BLolIEOmLwMR.bToJ08EqUsF5azgO50', 'collins-c', 'cc@gmail.com', '', '2023-06-19 21:32:13', '', 0, 'Collins C'),
(11, 'Collins Kirui', '$P$Bxw3wjEo.4rpqJDKgP.VzNE3T6E/t7/', 'collins-kirui', 'ck@gmail.com', '', '2023-06-19 21:49:22', '', 0, 'Collins Kirui'),
(12, 'Brian Kalusi', '$P$Be/B.p9zaPL.wknAzx0rhPaSzH07qa1', 'brian-kalusi', 'bk1@gmail.com', '', '2023-06-19 21:50:05', '', 0, 'Brian Kirui'),
(13, 'Joy Mwende', '$P$BNXKYi.9RpQwxQNwFhDmfjs6spVlEz0', 'joy-mwende', 'jm@gmail.com', '', '2023-06-19 21:50:27', '', 0, 'Joy Mwende'),
(14, 'Daniel Kitheka', '$P$BK0EjOiW6RypF1ecLps.DDXJGL1ofU.', 'daniel-kitheka', 'kakinyidk@gmail.com', '', '2023-06-19 21:58:01', '', 0, 'Daniel Kakinyi'),
(15, 'Patrick Mwaniki', '$P$Bbjwu3EzZV8d5NYqOHb8CPF35YEnjy/', 'patrick-mwaniki', 'kimanip@gmail.com', '', '2023-06-19 21:58:32', '', 0, 'Patrick kimani'),
(16, 'Patrick Kimani', '$P$BJTcA0AA34lDkyLb8HKLJYRhY4.SKz.', 'patrick-kimani', 'petersonk@gmail.com', '', '2023-06-19 21:58:55', '', 0, 'Peterson Kimani'),
(17, 'Joel Kores', '$P$B/AhImpjWSgICQGrRyuYd07we4UZqX1', 'joel-kores', 'jk@gmail.com', '', '2023-06-19 21:59:31', '', 0, 'Joel Kores'),
(18, 'Francisca C', '$P$BPXmMw6RE97Eh8aPhcWX80VlkCqzrU.', 'francisca-c', 'cf@gmail.com', '', '2023-06-19 22:05:16', '', 0, 'Francisca C'),
(19, 'Jane Maby', '$P$BY1f6PZvhWXstNyA1GxAo/B.F5vOFK/', 'jane-maby', 'mabyj@gmail.com', '', '2023-06-19 22:05:33', '', 0, 'Jane Maby'),
(20, 'Rawlin J', '$P$Bi06sILppSLffsao3q2f8prpQDXiIY1', 'rawlin-j', 'rawlinj@gmail.com', '', '2023-06-19 22:05:59', '', 0, 'Rawlin J'),
(21, 'Josh K', '$P$BIni/yGCa8urYmeHe6YcuFXaaFBw2j.', 'josh-k', 'kj@gmail.com', '', '2023-06-19 22:06:21', '', 0, 'Josh K'),
(22, 'Brian K', '$P$BrWyx.x07gwEaHbWeNhS.BMArvC7Xf/', 'brian-k', 'kb@gmail.com', '', '2023-06-19 22:21:53', '', 0, 'Brian K'),
(23, 'Amos Kirui', '$P$B14ib8ZFZzihbSEuCbXbXDgKIq8xf1/', 'amos-kirui', 'kiruiamos@gmail.com', '', '2023-06-19 22:22:18', '', 0, 'Amos Kirui'),
(24, 'Kip Francis', '$P$BJB.8ymS.hlrc.V4Q2MrwrduJFdu5z1', 'kip-francis', 'kipf@gmail.com', '', '2023-06-19 22:22:45', '', 0, 'Kip Francis'),
(25, 'Kip Jackson', '$P$BU/ylkNrtSV/vTsoU07dC3lspnOVrk1', 'kip-jackson', 'jackk@gmail.com', '', '2023-06-19 22:23:11', '', 0, 'Kip Jackson'),
(26, 'leonard K', '$P$B3quRFzCAOGrieWjIEMzyBPKyrFPbs.', 'leonard-k', 'lk@gmail.com', '', '2023-06-19 22:23:42', '', 0, 'leonard K'),
(27, 'Aldo Bir', '$P$BgSGZXWQTF4WlQYJXDp1NMS4AICAVl/', 'aldo-bir', 'aldob@gmail.com', '', '2023-06-21 10:39:08', '', 0, 'Aldo Bir'),
(28, 'harry k', '$P$B0Ora46uUw/selfAlet52NekanMum11', 'harry-k', 'hk@gmail.com', '', '2023-06-21 11:36:29', '', 0, 'harry k'),
(29, 'mary c', '$P$BVmjapY.JwpfIhm5mT7uRVLgXZRGml.', 'mary-c', 'cm@gmail.com', '', '2023-06-21 13:41:53', '', 0, 'mary c'),
(30, 'hope c', '$P$Bt7i7sm2CBMtT/FRs893jNGAkKyD04.', 'hope-c', 'ch@gmail.com', '', '2023-06-21 13:45:32', '', 0, 'hope c'),
(31, 'hop murithi', '$P$BW3y56QrIqyICm1LBrHJ2bJHYBicJi1', 'hop-murithi', 'hmt@gmail.com', '', '2023-06-21 13:46:11', '', 0, 'hop murithi'),
(32, 'joel kk', '$P$B7aV26U6OyxaIxiJoR8L.hLsI/wG9y0', 'joel-kk', 'jkk@gmail.com', '', '2023-06-21 13:48:01', '', 0, 'joel kk'),
(33, 'ruth kizito', '$P$B93QCYd3Y9AhouF2QS/mB7lzVZIW0s1', 'ruth-kizito', 'rk@gmail.com', '', '2023-06-21 19:40:31', '', 0, 'ruth kizito'),
(34, 'Gerald Kim', '$P$BiGLEDWcJHSgsMYO7JQSdmpR3KlK8c1', 'gerald-kim', 'kimg@gmail.com', '', '2023-06-22 09:46:05', '', 0, 'Gerald Kim'),
(35, 'kirui Ruth', '$P$BlbEG5ykm6QRKH7vsa7KoNBxG3RvJ.0', 'kirui-ruth', 'kiruiruth@gmail.com', '', '2023-06-22 13:52:49', '', 0, 'kirui Ruth'),
(36, 'kirui ngina kizito', '$P$B0LOiBBvKaSLsnRR8snD6GrbWIHBIo.', 'kirui-ngina-kizito', 'kiruingina@gmail.com', '', '2023-06-22 18:27:34', '', 0, 'kirui ngina kizito'),
(37, 'grey kizito', '$P$BrVhCglek9nR5EbHuS5/GwNX.2BmDF1', 'grey-kizito', 'gk@gmail.com', '', '2023-06-23 11:31:30', '', 0, 'grey kizito'),
(38, 'kiplagat brian', '$P$BxchBYquUqki9KFQ/viL/PicHZBxaV/', 'kiplagat-brian', 'briank@gmail.com', '', '2023-06-23 11:39:44', '', 0, 'kiplagat brian'),
(39, 'kiplag bryan', '$P$BJuLR9VmqaG4CZ.twu0zqeSpaqng8N/', 'kiplag-bryan', 'briag@gmail.com', '', '2023-06-23 11:44:29', '', 0, 'kiplag bryan'),
(40, 'mwaniki patrick', '$P$Bo5JKZSeY62IsPb3U.7yAIl5pDBavb1', 'mwaniki-patrick', 'mwanikipat@gmail.com', '', '2023-06-23 12:37:38', '', 0, 'mwaniki patrick'),
(41, 'Nick', '$P$BzGL9zKJFqUc2YMIcjgbYdMWSi5i5F1', 'nick', 'nick@gmail.com', '', '2023-06-23 12:49:23', '', 0, 'Nick'),
(42, 'kili', '$P$B0TOc8JIglu9z9sZyRD43aLvGs68NG0', 'kili', 'kili@gmail.com', '', '2023-06-25 21:10:20', '', 0, 'kili'),
(43, 'hope mwenda', '$P$Bz31e5jv7UAgygNKBDGF.NsWtAXZaK0', 'hope-mwenda', 'nkirxx@gmail.com', '', '2023-06-26 06:24:16', '', 0, 'hope mwenda'),
(44, 'Ken Kimani', '$P$Bjbo8dIEsxtii4iIQ8eDdqgiWh/GK1/', 'ken-kimani', 'kenkimg@gmail.com', '', '2023-06-26 07:04:54', '', 0, 'Ken Kimani'),
(45, 'Joek Koros', '$P$Bmh3DDoG5YAqakZJH2Soj66xTfkSoq0', 'joek-koros', 'joelk@gmail.com', '', '2023-06-26 07:06:51', '', 0, 'Joek Koros'),
(46, 'joy chep', '$P$BAVR31MYLMcVC.3KsJbMKtpnfYbzCP.', 'joy-chep', 'joychep@gmail.com', '', '2023-06-26 07:13:53', '', 0, 'joy chep'),
(47, 'yobra kn', '$P$Bw/rlhu52PAuPXmN92jC6ZSgeSaTUj/', 'yobra-kn', 'brayo@gmail.com', '', '2023-06-26 07:14:50', '', 0, 'brian kimani'),
(48, 'y nn', '$P$BQCubtMR7/OLfJ6R3ZDplR5a8JkhgF/', 'y-nn', 'yn@gmail.com', '', '2023-06-26 07:15:36', '', 0, 'y nn'),
(49, 'prono k', '$P$B6..2tHQsfE0dDrRaMw/tyR7ZAo6Vp.', 'prono-k', 'pronok@gmail.com', '', '2023-06-26 07:17:26', '', 0, 'prono k'),
(50, 'wilfred marete', '$P$BxSxxmR7EEzFPQkW7D900cRpC2Mst01', 'wilfred-marete', 'maretew@gmail.com', '', '2023-06-26 08:33:19', '', 0, 'wilfred marete'),
(51, 'elija kk', '$P$B51Lcvb0hvzMRCWBpPxI/2uZddUwmF0', 'elija-kk', 'kkel@gmail.com', '', '2023-06-26 08:50:36', '', 0, 'elija kk'),
(52, 'jack omondi', '$P$BgBNxmVybyp9QyE.WUmhFhCPxXAXtf/', 'jack-omondi', 'jom@gmail.com', '', '2023-06-26 09:14:51', '', 0, 'jack omondi'),
(53, 'kelvin mwangi', '$P$BhKoalR1UafcEiF3XIL2hPwBniT1Yr1', 'kelvin-mwangi', 'km@gmail.com', '', '2023-06-26 11:20:53', '', 0, 'kelvin mwangi'),
(54, 'kimani elisha', '$P$BjdVah7cycpABa9r1EFdbsaVJZkTlZ0', 'kimani-elisha', 'elk@gmail.com', '', '2023-06-26 11:22:19', '', 0, 'kimani elisha'),
(55, 'cassypool', '$P$B4j1loZtZmXJyuEYeaswPioF847Xz00', 'cassypool', 'cassy@gmail.com', '', '2023-06-26 13:37:19', '', 0, 'cassypool'),
(56, 'cassypool kapondo', '$P$BoeZDxGpmt0sg8QYghKGKqONqxhfQz1', 'cassypool-kapondo', 'cassypool@gmail.com', '', '2023-06-26 13:39:33', '', 0, 'cassypool kapondo'),
(57, 'murithi hope', '$P$BeM0BObqNxzvpL07LoSwHz1kHg83HI/', 'murithi-hope', 'mh@gmail.com', '', '2023-06-26 13:41:35', '', 0, 'murithi hope'),
(58, 'ezra kibet', '$P$BlADf.n2spXcYoP.UKBBgeAAQ2aDUF0', 'ezra-kibet', 'ezrakoech@gmail.com', '', '2023-06-26 22:06:00', '', 0, 'Ezra koech'),
(59, 'Jason Kingi', '$P$BTwLAEIKuQ6AqOY1cT.T4.XZ2DtGx0.', 'jason-kingi', 'jasonk@gmail.com', '', '2023-06-27 13:46:39', '', 0, 'Jason Kingi'),
(60, 'Gilbert Kisuli', '$P$BLnorZlnnfJ3yc9jx1FAuitwnGFCa5/', 'gilbert-kisuli', 'kisulig@gmail.com', '', '2023-06-29 07:30:28', '', 0, 'Gilbert Kisuli'),
(61, 'Andrew Kibor', '$P$BYMoIfDIiTsuSdRKpXgqMpnwdgeUXK.', 'andrew-kibor', 'andrewk@gmail.com', '', '2023-06-29 09:23:55', '', 0, 'Andrew Kibet'),
(62, 'Stephen Kimani', '$P$ByGP4rCxTDTcW0VVG8tlA7qungHTEU0', 'stephen-kimani', 'stephenk@gmail.com', '', '2023-06-29 09:30:55', '', 0, 'Stephen Kamau'),
(63, 'Esther Wanja', '$P$BRLS5FwhpmdqIAqu8Grq1Gy/wjvHUV.', 'esther-wanja', 'wanjirus@gmail.com', '', '2023-06-29 09:33:50', '', 0, 'Esther Wanjiru'),
(64, 'Kizito Ruth', '$P$BQttnsjeKLvwm9j68DSjPkX4IZcWZR0', 'kizito-ruth', 'rk3@gmail.com', '', '2023-07-04 14:23:42', '', 0, 'Kizito Ruth'),
(65, 'hedwig kizito', '$P$B1dVLb7/lWS1tyGQiQLeZd1nsUG3wb.', 'hedwig-kizito', 'hk1@gmail.com', '', '2023-07-04 14:35:14', '', 0, 'hedwig kizito'),
(66, 'brian kimeto', '$P$BgA6gRxCraMs9uXutMQI903SvZzOwG1', 'brian-kimeto', 'bk3@gmail.com', '', '2023-07-04 14:36:26', '', 0, 'brian kimeto');

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
-- Indexes for table `wp_projects`
--
ALTER TABLE `wp_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_stacks`
--
ALTER TABLE `wp_stacks`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=815;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `wp_projects`
--
ALTER TABLE `wp_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_stacks`
--
ALTER TABLE `wp_stacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1226;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
