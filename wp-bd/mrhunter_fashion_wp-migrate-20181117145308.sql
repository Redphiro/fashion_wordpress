# WordPress MySQL database migration
#
# Generated: Saturday 17. November 2018 14:53 UTC
# Hostname: localhost
# Database: `mrhunter_fashion_wp`
# URL: http://localhost/fashion_wordpress
# Path: http://localhost/fashion_wordpress
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, attachment, banners, galerias, marcas, nav_menu_item, noticias, page, post
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=555 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/fashion_wordpress', 'yes'),
(2, 'home', 'http://localhost/fashion_wordpress', 'yes'),
(3, 'blogname', 'Fashion Wordpress', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sebastian.alvcort@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:193:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:11:"noticias/?$";s:28:"index.php?post_type=noticias";s:41:"noticias/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=noticias&feed=$matches[1]";s:36:"noticias/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=noticias&feed=$matches[1]";s:28:"noticias/page/([0-9]{1,})/?$";s:46:"index.php?post_type=noticias&paged=$matches[1]";s:11:"galerias/?$";s:28:"index.php?post_type=galerias";s:41:"galerias/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=galerias&feed=$matches[1]";s:36:"galerias/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=galerias&feed=$matches[1]";s:28:"galerias/page/([0-9]{1,})/?$";s:46:"index.php?post_type=galerias&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"tipo_galerias/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?tipo_galerias=$matches[1]&feed=$matches[2]";s:49:"tipo_galerias/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?tipo_galerias=$matches[1]&feed=$matches[2]";s:30:"tipo_galerias/([^/]+)/embed/?$";s:46:"index.php?tipo_galerias=$matches[1]&embed=true";s:42:"tipo_galerias/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?tipo_galerias=$matches[1]&paged=$matches[2]";s:24:"tipo_galerias/([^/]+)/?$";s:35:"index.php?tipo_galerias=$matches[1]";s:54:"tipo_noticias/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?tipo_noticias=$matches[1]&feed=$matches[2]";s:49:"tipo_noticias/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?tipo_noticias=$matches[1]&feed=$matches[2]";s:30:"tipo_noticias/([^/]+)/embed/?$";s:46:"index.php?tipo_noticias=$matches[1]&embed=true";s:42:"tipo_noticias/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?tipo_noticias=$matches[1]&paged=$matches[2]";s:24:"tipo_noticias/([^/]+)/?$";s:35:"index.php?tipo_noticias=$matches[1]";s:36:"noticias/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"noticias/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"noticias/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"noticias/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"noticias/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"noticias/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"noticias/([^/]+)/embed/?$";s:41:"index.php?noticias=$matches[1]&embed=true";s:29:"noticias/([^/]+)/trackback/?$";s:35:"index.php?noticias=$matches[1]&tb=1";s:49:"noticias/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?noticias=$matches[1]&feed=$matches[2]";s:44:"noticias/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?noticias=$matches[1]&feed=$matches[2]";s:37:"noticias/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?noticias=$matches[1]&paged=$matches[2]";s:44:"noticias/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?noticias=$matches[1]&cpage=$matches[2]";s:33:"noticias/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?noticias=$matches[1]&page=$matches[2]";s:25:"noticias/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"noticias/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"noticias/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"noticias/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"noticias/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"noticias/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"marcas/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"marcas/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"marcas/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"marcas/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"marcas/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"marcas/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"marcas/([^/]+)/embed/?$";s:39:"index.php?marcas=$matches[1]&embed=true";s:27:"marcas/([^/]+)/trackback/?$";s:33:"index.php?marcas=$matches[1]&tb=1";s:35:"marcas/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?marcas=$matches[1]&paged=$matches[2]";s:42:"marcas/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?marcas=$matches[1]&cpage=$matches[2]";s:31:"marcas/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?marcas=$matches[1]&page=$matches[2]";s:23:"marcas/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"marcas/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"marcas/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"marcas/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"marcas/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"marcas/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"galerias/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"galerias/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"galerias/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"galerias/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"galerias/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"galerias/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"galerias/([^/]+)/embed/?$";s:41:"index.php?galerias=$matches[1]&embed=true";s:29:"galerias/([^/]+)/trackback/?$";s:35:"index.php?galerias=$matches[1]&tb=1";s:49:"galerias/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?galerias=$matches[1]&feed=$matches[2]";s:44:"galerias/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?galerias=$matches[1]&feed=$matches[2]";s:37:"galerias/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?galerias=$matches[1]&paged=$matches[2]";s:44:"galerias/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?galerias=$matches[1]&cpage=$matches[2]";s:33:"galerias/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?galerias=$matches[1]&page=$matches[2]";s:25:"galerias/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"galerias/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"galerias/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"galerias/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"galerias/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"galerias/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"banners/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"banners/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"banners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"banners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"banners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"banners/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"banners/([^/]+)/embed/?$";s:40:"index.php?banners=$matches[1]&embed=true";s:28:"banners/([^/]+)/trackback/?$";s:34:"index.php?banners=$matches[1]&tb=1";s:36:"banners/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?banners=$matches[1]&paged=$matches[2]";s:43:"banners/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?banners=$matches[1]&cpage=$matches[2]";s:32:"banners/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?banners=$matches[1]&page=$matches[2]";s:24:"banners/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"banners/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"banners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"banners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"banners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"banners/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"amn_smtp/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"amn_smtp/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"amn_smtp/([^/]+)/embed/?$";s:41:"index.php?amn_smtp=$matches[1]&embed=true";s:29:"amn_smtp/([^/]+)/trackback/?$";s:35:"index.php?amn_smtp=$matches[1]&tb=1";s:37:"amn_smtp/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&paged=$matches[2]";s:44:"amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&cpage=$matches[2]";s:33:"amn_smtp/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?amn_smtp=$matches[1]&page=$matches[2]";s:25:"amn_smtp/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"amn_smtp/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"amn_smtp/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:"admin-menu-editor/menu-editor.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:72:"C:\\wamp\\www\\fashion_wordpress/wp-content/themes/fashionwptheme/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'fashionwptheme', 'yes'),
(41, 'stylesheet', 'fashionwptheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_CL', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1542468645;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1542493845;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1542493858;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1542493859;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1542497718;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1535064778;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(142, 'theme_mods_fashionwptheme', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:4:"menu";i:2;}}', 'yes'),
(143, 'current_theme', 'Fashion WP Theme', 'yes'),
(144, 'theme_switched', '', 'yes'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'ws_menu_editor', 'a:24:{s:22:"hide_advanced_settings";b:1;s:16:"show_extra_icons";b:0;s:11:"custom_menu";N;s:19:"custom_network_menu";N;s:18:"first_install_time";i:1535154476;s:21:"display_survey_notice";b:1;s:17:"plugin_db_version";i:140;s:24:"security_logging_enabled";b:0;s:17:"menu_config_scope";s:6:"global";s:13:"plugin_access";s:14:"manage_options";s:15:"allowed_user_id";N;s:28:"plugins_page_allowed_user_id";N;s:27:"show_deprecated_hide_button";b:1;s:37:"dashboard_hiding_confirmation_enabled";b:1;s:21:"submenu_icons_enabled";s:9:"if_custom";s:22:"force_custom_dashicons";b:1;s:16:"ui_colour_scheme";s:7:"classic";s:13:"visible_users";a:0:{}s:23:"show_plugin_menu_notice";b:1;s:20:"unused_item_position";s:8:"relative";s:23:"unused_item_permissions";s:9:"unchanged";s:15:"error_verbosity";i:2;s:20:"compress_custom_menu";b:0;s:16:"is_active_module";a:1:{s:19:"highlight-new-menus";b:0;}}', 'yes'),
(169, 'acf_version', '5.6.10', 'yes'),
(172, 'cptui_new_install', 'false', 'yes'),
(174, 'cptui_post_types', 'a:4:{s:8:"noticias";a:28:{s:4:"name";s:8:"noticias";s:5:"label";s:8:"Noticias";s:14:"singular_label";s:7:"Noticia";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:4:"true";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"all_items";s:18:"Todas las Noticias";s:7:"add_new";s:21:"Agregar nueva noticia";s:12:"add_new_item";s:22:"Agregar nueva noticias";s:9:"edit_item";s:14:"Editar noticia";s:9:"menu_name";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:6:"marcas";a:28:{s:4:"name";s:6:"marcas";s:5:"label";s:6:"Marcas";s:14:"singular_label";s:6:"marcas";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:7:"add_new";s:19:"Agregar Nueva Marca";s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:8:"galerias";a:28:{s:4:"name";s:8:"galerias";s:5:"label";s:8:"Galerias";s:14:"singular_label";s:7:"Galeria";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:4:"true";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:7:"banners";a:28:{s:4:"name";s:7:"banners";s:5:"label";s:7:"Banners";s:14:"singular_label";s:6:"Banner";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(189, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(330, 'cptui_taxonomies', 'a:2:{s:13:"tipo_galerias";a:21:{s:4:"name";s:13:"tipo_galerias";s:5:"label";s:13:"Tipo Galerias";s:14:"singular_label";s:12:"Tipo Galeria";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:12:"hierarchical";s:5:"false";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:12:"object_types";a:1:{i:0;s:8:"galerias";}}s:13:"tipo_noticias";a:21:{s:4:"name";s:13:"tipo_noticias";s:5:"label";s:13:"Tipo Noticias";s:14:"singular_label";s:12:"Tipo Noticia";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:12:"hierarchical";s:5:"false";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:12:"object_types";a:1:{i:0;s:8:"noticias";}}}', 'yes'),
(479, 'wp_mail_smtp_initial_version', '1.3.3', 'no'),
(480, 'wp_mail_smtp_version', '1.3.3', 'no'),
(481, 'wp_mail_smtp', 'a:5:{s:4:"mail";a:6:{s:10:"from_email";s:27:"sebastian.alvcort@gmail.com";s:9:"from_name";s:17:"Fashion Wordpress";s:6:"mailer";s:4:"smtp";s:11:"return_path";b:0;s:16:"from_email_force";b:0;s:15:"from_name_force";b:0;}s:4:"smtp";a:7:{s:7:"autotls";b:0;s:4:"host";s:14:"smtp.gmail.com";s:10:"encryption";s:3:"ssl";s:4:"port";i:465;s:4:"auth";b:1;s:4:"user";s:27:"sebastian.alvcort@gmail.com";s:4:"pass";s:14:"hunter81481412";}s:5:"gmail";a:2:{s:9:"client_id";s:0:"";s:13:"client_secret";s:0:"";}s:7:"mailgun";a:2:{s:7:"api_key";s:0:"";s:6:"domain";s:0:"";}s:8:"sendgrid";a:1:{s:7:"api_key";s:0:"";}}', 'no'),
(482, '_amn_smtp_last_checked', '1542412800', 'yes'),
(483, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(489, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1542466388;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(14, 8, '_edit_last', '1'),
(15, 8, '_edit_lock', '1535154327:1'),
(18, 11, '_edit_last', '1'),
(19, 11, '_edit_lock', '1537749308:1'),
(20, 12, '_edit_last', '1'),
(21, 12, '_edit_lock', '1535161058:1'),
(22, 13, '_edit_last', '1'),
(23, 13, '_edit_lock', '1535160943:1'),
(24, 14, '_wp_attached_file', '2018/08/articulo-1.jpg'),
(25, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:22:"2018/08/articulo-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"articulo-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"articulo-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(26, 13, '_thumbnail_id', '14'),
(27, 15, '_wp_attached_file', '2018/08/articulo-2.jpg'),
(28, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:22:"2018/08/articulo-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"articulo-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"articulo-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(29, 12, '_thumbnail_id', '15'),
(32, 17, '_wp_attached_file', '2018/08/articulo-3.jpg'),
(33, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:22:"2018/08/articulo-3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"articulo-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"articulo-3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(34, 11, '_thumbnail_id', '17'),
(35, 18, '_edit_last', '1'),
(36, 18, '_edit_lock', '1535166359:1'),
(37, 19, '_wp_attached_file', '2018/08/wrangler.jpg'),
(38, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:180;s:4:"file";s:20:"2018/08/wrangler.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"wrangler-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 18, '_thumbnail_id', '19'),
(40, 20, '_edit_last', '1'),
(41, 20, '_edit_lock', '1535166413:1'),
(42, 21, '_wp_attached_file', '2018/08/calvinklein.jpg'),
(43, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:180;s:4:"file";s:23:"2018/08/calvinklein.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"calvinklein-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(44, 20, '_thumbnail_id', '21'),
(45, 22, '_edit_last', '1'),
(46, 22, '_edit_lock', '1535166477:1'),
(47, 23, '_wp_attached_file', '2018/08/levis.jpg'),
(48, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:180;s:4:"file";s:17:"2018/08/levis.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"levis-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(49, 22, '_thumbnail_id', '23'),
(50, 24, '_edit_last', '1'),
(51, 24, '_edit_lock', '1535167724:1'),
(52, 25, '_wp_attached_file', '2018/08/lee.jpg'),
(53, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:180;s:4:"file";s:15:"2018/08/lee.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"lee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(54, 24, '_thumbnail_id', '25'),
(60, 28, '_menu_item_type', 'custom'),
(61, 28, '_menu_item_menu_item_parent', '0'),
(62, 28, '_menu_item_object_id', '28'),
(63, 28, '_menu_item_object', 'custom'),
(64, 28, '_menu_item_target', ''),
(65, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 28, '_menu_item_xfn', ''),
(67, 28, '_menu_item_url', 'http://localhost/fashion_wordpress/'),
(86, 31, '_edit_last', '1'),
(87, 31, '_edit_lock', '1541982984:1'),
(97, 2, '_edit_lock', '1535213256:1'),
(125, 38, '_edit_last', '1'),
(126, 38, '_edit_lock', '1541987224:1'),
(127, 40, '_menu_item_type', 'post_type'),
(128, 40, '_menu_item_menu_item_parent', '0'),
(129, 40, '_menu_item_object_id', '38'),
(130, 40, '_menu_item_object', 'page'),
(131, 40, '_menu_item_target', ''),
(132, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 40, '_menu_item_xfn', ''),
(134, 40, '_menu_item_url', ''),
(145, 42, '_edit_last', '1'),
(146, 42, '_edit_lock', '1541982989:1'),
(155, 47, '_edit_last', '1'),
(156, 47, '_edit_lock', '1541986490:1'),
(157, 49, '_edit_last', '1'),
(158, 49, 'galerias_fotos', 'a:8:{i:0;s:2:"17";i:1;s:2:"15";i:2;s:2:"14";i:3;s:2:"19";i:4;s:2:"56";i:5;s:2:"25";i:6;s:2:"23";i:7;s:2:"21";}'),
(159, 49, '_galerias_fotos', 'field_5b833811dc621'),
(160, 49, '_edit_lock', '1541984274:1'),
(161, 49, 'galerias_tipo', 'galerias'),
(162, 49, '_galerias_tipo', 'field_5b8341381d00e'),
(163, 55, '_edit_last', '1'),
(164, 55, 'galerias_fotos', ''),
(165, 55, '_galerias_fotos', 'field_5b833811dc621'),
(166, 55, 'galerias_tipo', 'galerias'),
(167, 55, '_galerias_tipo', 'field_5b8341381d00e'),
(168, 55, '_edit_lock', '1542384265:1'),
(169, 56, '_wp_attached_file', '2018/08/30762746886_fd8e7f9e26_o.jpg'),
(170, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:498;s:6:"height";i:750;s:4:"file";s:36:"2018/08/30762746886_fd8e7f9e26_o.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"30762746886_fd8e7f9e26_o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"30762746886_fd8e7f9e26_o-199x300.jpg";s:5:"width";i:199;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(171, 49, '_thumbnail_id', '56'),
(172, 59, '_edit_last', '1'),
(173, 59, '_edit_lock', '1536458821:1'),
(174, 59, '_thumbnail_id', '56'),
(203, 31, '_wp_page_template', 'default'),
(204, 42, '_wp_page_template', 'default'),
(205, 65, '_menu_item_type', 'custom'),
(206, 65, '_menu_item_menu_item_parent', '0'),
(207, 65, '_menu_item_object_id', '65'),
(208, 65, '_menu_item_object', 'custom'),
(209, 65, '_menu_item_target', ''),
(210, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(211, 65, '_menu_item_xfn', ''),
(212, 65, '_menu_item_url', 'http://localhost/fashion_wordpress/galerias'),
(214, 66, '_menu_item_type', 'custom'),
(215, 66, '_menu_item_menu_item_parent', '0'),
(216, 66, '_menu_item_object_id', '66'),
(217, 66, '_menu_item_object', 'custom'),
(218, 66, '_menu_item_target', ''),
(219, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(220, 66, '_menu_item_xfn', ''),
(221, 66, '_menu_item_url', 'http://localhost/fashion_wordpress/noticias') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(228, 49, 'galerias_fotos_paginas', '4'),
(229, 49, '_galerias_fotos_paginas', 'field_5be8cfbe08e3c'),
(232, 71, '_edit_last', '1'),
(233, 71, '_edit_lock', '1541986666:1'),
(237, 76, '_edit_last', '1'),
(238, 76, '_edit_lock', '1542384274:1'),
(239, 77, '_wp_attached_file', '2018/11/banner.jpg'),
(240, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2018/11/banner.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"banner-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"banner-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"banner-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(241, 76, 'banner_subtitulo', 'Moda de los 90\'s'),
(242, 76, '_banner_subtitulo', 'field_5be8d990cca4a'),
(243, 76, 'banner_link', 'http://localhost/fashion_wordpress/galerias/'),
(244, 76, '_banner_link', 'field_5be8d9a5cca4c'),
(245, 76, 'banner_imagen', '77'),
(246, 76, '_banner_imagen', 'field_5be8d99acca4b'),
(247, 76, 'banner_alineacion', '11'),
(248, 76, '_banner_alineacion', 'field_5be8d9bbcca4d'),
(249, 78, '_edit_last', '1'),
(250, 78, '_edit_lock', '1542384344:1'),
(251, 78, 'banner_subtitulo', 'Vea las noticias reicentes'),
(252, 78, '_banner_subtitulo', 'field_5be8d990cca4a'),
(253, 78, 'banner_link', 'http://localhost/fashion_wordpress/noticias'),
(254, 78, '_banner_link', 'field_5be8d9a5cca4c'),
(255, 78, 'banner_imagen', '79'),
(256, 78, '_banner_imagen', 'field_5be8d99acca4b'),
(257, 78, 'banner_alineacion', '21'),
(258, 78, '_banner_alineacion', 'field_5be8d9bbcca4d'),
(259, 55, '_thumbnail_id', '14'),
(260, 55, 'galerias_fotos_paginas', '6'),
(261, 55, '_galerias_fotos_paginas', 'field_5be8cfbe08e3c'),
(262, 79, '_wp_attached_file', '2018/11/cropped-banner-fashion.jpg'),
(263, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:733;s:4:"file";s:34:"2018/11/cropped-banner-fashion.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"cropped-banner-fashion-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"cropped-banner-fashion-300x115.jpg";s:5:"width";i:300;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"cropped-banner-fashion-768x293.jpg";s:5:"width";i:768;s:6:"height";i:293;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"cropped-banner-fashion-1024x391.jpg";s:5:"width";i:1024;s:6:"height";i:391;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-08-23 19:30:40', '2018-08-23 22:30:40', 'Esta es una página de ejemplo. Es diferente a un artículo del blog, ya que se quedará fijo y se mostrará en la navegación del sitio (en la mayoría de themes). La mayoría de la gente empieza con una página Acerca de que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero sobre bicicleta, un aspirante a actor por la noche, y este es mi blog. Vivo en Los Ángeles, tengo un perro grande llamado Jack, y me gustan las piñas coladas. (Y quedar atrapado en la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ Artilugios, fue fundada en 1971, y ha estado desde entonces proporcionando al público de artilugios de calidad. Está situado en la ciudad de Gotham, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas impresionantes para la comunidad de Gotham.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/fashion_wordpress/wp-admin/">su Escritorio</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-de-ejemplo', '', '', '2018-08-23 19:30:40', '2018-08-23 22:30:40', '', 0, 'http://localhost/fashion_wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-23 19:30:40', '2018-08-23 22:30:40', '<h2>Quiénes somos</h2><p>Nuestra dirección de sitio web es: http://localhost/fashion_wordpress.</p><h2>Qué datos personales recopilamos y por qué lo recogemos</h2><h3>Comentarios</h3><p>Cuando los visitantes dejan comentarios en el sitio recopilamos los datos mostrados en el formulario de comentarios, y también la dirección IP del visitante y la cadena del agente de usuario del navegador para ayudar a la detección de spam.</p><p>Se puede proporcionar una cadena anonimizada creada a partir de su dirección de correo electrónico (también denominada hash) al servicio gravatar para ver si la está utilizando. La política de privacidad del servicio gravar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, su imagen de perfil es visible para el público en el contexto de tu comentario.</p><h3>Multimedia</h3><p>Si subes imágenes al sitio web, debes evitar cargar imágenes con datos de ubicación incrustados (EXIF GPS). Los visitantes del sitio web pueden descargar y extraer los datos de la ubicación de las imágenes en el sitio Web.</p><h3>Formularios de Contacto</h3><h3>Cookies</h3><p>Si deja un Comentario en nuestro sitio puedes optar por guardar tu nombre, dirección de correo electrónico y sitio web en cookies. Éstos son para tu conveniencia de modo que no tengas que rellenar tus datos otra vez cuando dejes otro comentario. Estas cookies durarán un año.</p><p>Si tienes una cuenta e inicias sesión en este sitio, configuraremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se descarta al cerrar el navegador.</p><p>Cuando inicies sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y sus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si selecciona &quot;Recordarme&quot; en tu inicio de sesión se mantendrá durante dos semanas. Si cierra la sesión de tu cuenta, se eliminarán las cookies de inicio de sesión.</p><p>Si editas o publicas un artículo, una cookie adicional se guardará en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de correo del artículo que acabas de editar. Expira después de 1 día.</p><h3>Contenido incrustado de otros sitios web</h3><p>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p><p>Estos sitios web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tiene una cuenta y está conectado a dicho sitio web.</p><h3>Analíticas</h3><h2>Con quién compartimos tus datos</h2><h2>Cuánto tiempo conservamos tus datos</h2><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar automáticamente cualquier comentario de seguimiento en lugar de mantenerlos en una cola de moderación.</p><p>Para los usuarios que se registren en nuestro sitio web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o borrar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de sitios web también pueden ver y editar esa información.</p><h2>Qué derechos tienen sobre sus datos</h2><p>Si tienes una cuenta en este sitio, o ha dejado comentarios, puedes solicitar recibir un archivo exportado de los datos personales que tengamos sobre usted, incluyendo cualquier dato que nos haya proporcionado. También puede solicitar que borremos cualquier dato personal que mantengamos sobre usted. Esto no incluye los datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p><h2>Dónde enviamos tus datos</h2><p>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p><h2>Tu información de contacto</h2><h2>Información adicional</h2><h3>Cómo protegemos sus datos</h3><h3>Qué procedimientos de violación de datos tenemos en marcha</h3><h3>De qué terceros recibimos datos</h3><h3>Qué toma de decisiones y/o perfiles automatizados haremos con los datos del usuario</h3><h3>Requisitos de divulgación regulatoria de la industria</h3>', 'Políticas de Privacidad', '', 'draft', 'closed', 'open', '', 'politica-de-privacidad', '', '', '2018-08-23 19:30:40', '2018-08-23 22:30:40', '', 0, 'http://localhost/fashion_wordpress/?page_id=3', 0, 'page', '', 0),
(8, 1, '2018-08-24 20:45:50', '2018-08-24 23:45:50', 'Noticia', 'Hola', '', 'publish', 'open', 'open', '', 'hola', '', '', '2018-08-24 20:45:50', '2018-08-24 23:45:50', '', 0, 'http://localhost/fashion_wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2018-08-24 20:45:50', '2018-08-24 23:45:50', 'Noticia', 'Hola', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-08-24 20:45:50', '2018-08-24 23:45:50', '', 8, 'http://localhost/fashion_wordpress/index.php/2018/08/24/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-08-24 22:34:03', '2018-08-25 01:34:03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac urna ullamcorper, ultricies ligula gravida, tincidunt enim. Sed id nisi eget ligula vehicula eleifend. Sed eu finibus lectus. Duis dignissim scelerisque sollicitudin.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac urna ullamcorper, ultricies ligula gravida, tincidunt enim. Sed id nisi eget ligula vehicula eleifend. Sed eu finibus lectus. Duis dignissim scelerisque sollicitudin.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac urna ullamcorper, ultricies ligula gravida, tincidunt enim. Sed id nisi eget ligula vehicula eleifend. Sed eu finibus lectus. Duis dignissim scelerisque sollicitudin.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac urna ullamcorper, ultricies ligula gravida, tincidunt enim. Sed id nisi eget ligula vehicula eleifend. Sed eu finibus lectus. Duis dignissim scelerisque sollicitudin.', 'Fashion 1', '', 'publish', 'closed', 'closed', '', 'fashion-1', '', '', '2018-08-29 21:35:11', '2018-08-30 00:35:11', '', 0, 'http://localhost/fashion_wordpress/?post_type=noticias&#038;p=11', 0, 'noticias', '', 0),
(12, 1, '2018-08-24 22:35:01', '2018-08-25 01:35:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac urna ullamcorper, ultricies ligula gravida, tincidunt enim. Sed id nisi eget ligula vehicula eleifend. Sed eu finibus lectus. Duis dignissim scelerisque sollicitudin.', 'Fashion 2', '', 'publish', 'closed', 'closed', '', 'fashion-2', '', '', '2018-08-24 22:38:32', '2018-08-25 01:38:32', '', 0, 'http://localhost/fashion_wordpress/?post_type=noticias&#038;p=12', 0, 'noticias', '', 0),
(13, 1, '2018-08-24 22:35:31', '2018-08-25 01:35:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac urna ullamcorper, ultricies ligula gravida, tincidunt enim. Sed id nisi eget ligula vehicula eleifend. Sed eu finibus lectus. Duis dignissim scelerisque sollicitudin.', 'Fashion 3', '', 'publish', 'closed', 'closed', '', 'fashion-3', '', '', '2018-08-24 22:37:48', '2018-08-25 01:37:48', '', 0, 'http://localhost/fashion_wordpress/?post_type=noticias&#038;p=13', 0, 'noticias', '', 0),
(14, 1, '2018-08-24 22:37:39', '2018-08-25 01:37:39', '', 'articulo-1', '', 'inherit', 'open', 'closed', '', 'articulo-1', '', '', '2018-08-26 20:35:00', '2018-08-26 23:35:00', '', 13, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/08/articulo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-08-24 22:38:23', '2018-08-25 01:38:23', '', 'articulo-2', '', 'inherit', 'open', 'closed', '', 'articulo-2', '', '', '2018-11-11 22:41:46', '2018-11-12 01:41:46', '', 12, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/08/articulo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-08-24 22:41:12', '2018-08-25 01:41:12', '', 'articulo-3', '', 'inherit', 'open', 'closed', '', 'articulo-3', '', '', '2018-08-24 22:41:12', '2018-08-25 01:41:12', '', 11, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/08/articulo-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-08-25 00:07:50', '2018-08-25 03:07:50', '', 'Wrangler', '', 'publish', 'closed', 'closed', '', 'wrangler', '', '', '2018-08-25 00:07:50', '2018-08-25 03:07:50', '', 0, 'http://localhost/fashion_wordpress/?post_type=marcas&#038;p=18', 0, 'marcas', '', 0),
(19, 1, '2018-08-25 00:07:38', '2018-08-25 03:07:38', '', 'wrangler', '', 'inherit', 'open', 'closed', '', 'wrangler', '', '', '2018-08-25 00:07:38', '2018-08-25 03:07:38', '', 18, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/08/wrangler.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-08-25 00:08:53', '2018-08-25 03:08:53', '', 'Calvin Klein', '', 'publish', 'closed', 'closed', '', 'calvin-klein', '', '', '2018-08-25 00:08:53', '2018-08-25 03:08:53', '', 0, 'http://localhost/fashion_wordpress/?post_type=marcas&#038;p=20', 0, 'marcas', '', 0),
(21, 1, '2018-08-25 00:08:42', '2018-08-25 03:08:42', '', 'calvinklein', '', 'inherit', 'open', 'closed', '', 'calvinklein', '', '', '2018-08-25 00:08:42', '2018-08-25 03:08:42', '', 20, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/08/calvinklein.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-08-25 00:09:46', '2018-08-25 03:09:46', '', 'Levis', '', 'publish', 'closed', 'closed', '', 'levis', '', '', '2018-08-25 00:09:46', '2018-08-25 03:09:46', '', 0, 'http://localhost/fashion_wordpress/?post_type=marcas&#038;p=22', 0, 'marcas', '', 0),
(23, 1, '2018-08-25 00:09:33', '2018-08-25 03:09:33', '', 'levis', '', 'inherit', 'open', 'closed', '', 'levis', '', '', '2018-08-25 00:09:33', '2018-08-25 03:09:33', '', 22, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/08/levis.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-08-25 00:10:54', '2018-08-25 03:10:54', '', 'Lee', '', 'publish', 'closed', 'closed', '', 'lee', '', '', '2018-08-25 00:10:54', '2018-08-25 03:10:54', '', 0, 'http://localhost/fashion_wordpress/?post_type=marcas&#038;p=24', 0, 'marcas', '', 0),
(25, 1, '2018-08-25 00:10:39', '2018-08-25 03:10:39', '', 'lee', '', 'inherit', 'open', 'closed', '', 'lee', '', '', '2018-08-25 00:10:39', '2018-08-25 03:10:39', '', 24, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/08/lee.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-08-25 07:45:27', '2018-08-25 10:45:27', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-11-11 21:39:08', '2018-11-12 00:39:08', '', 0, 'http://localhost/fashion_wordpress/?p=28', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-08-25 12:37:35', '2018-08-25 15:37:35', 'Lipsum', 'Galeria', '', 'publish', 'closed', 'closed', '', 'galerias-page', '', '', '2018-11-11 21:36:23', '2018-11-12 00:36:23', '', 0, 'http://localhost/fashion_wordpress/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-08-25 12:37:35', '2018-08-25 15:37:35', '', 'Galeria', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-08-25 12:37:35', '2018-08-25 15:37:35', '', 31, 'http://localhost/fashion_wordpress/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-08-25 13:56:04', '2018-08-25 16:56:04', 'Lipsum', 'Galeria', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-08-25 13:56:04', '2018-08-25 16:56:04', '', 31, 'http://localhost/fashion_wordpress/31-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-08-25 15:29:34', '2018-08-25 18:29:34', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2018-08-25 15:29:34', '2018-08-25 18:29:34', '', 0, 'http://localhost/fashion_wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-08-25 15:29:34', '2018-08-25 18:29:34', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-08-25 15:29:34', '2018-08-25 18:29:34', '', 38, 'http://localhost/fashion_wordpress/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-08-25 15:29:58', '2018-08-25 18:29:58', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2018-11-11 21:39:08', '2018-11-12 00:39:08', '', 0, 'http://localhost/fashion_wordpress/?p=40', 4, 'nav_menu_item', '', 0),
(42, 1, '2018-08-25 16:21:27', '2018-08-25 19:21:27', 'Lipsum', 'Noticias', '', 'publish', 'closed', 'closed', '', 'noticias-page', '', '', '2018-11-11 21:36:29', '2018-11-12 00:36:29', '', 0, 'http://localhost/fashion_wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-08-25 16:21:27', '2018-08-25 19:21:27', '', 'Noticias', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-08-25 16:21:27', '2018-08-25 19:21:27', '', 42, 'http://localhost/fashion_wordpress/42-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-08-26 20:31:17', '2018-08-26 23:31:17', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"galerias";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}', 'Secciones Galerias', 'secciones-galerias', 'publish', 'closed', 'closed', '', 'group_5b8337dcb9af3', '', '', '2018-11-11 22:00:54', '2018-11-12 01:00:54', '', 0, 'http://localhost/fashion_wordpress/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2018-08-26 20:31:17', '2018-08-26 23:31:17', 'a:16:{s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"insert";s:6:"append";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5b8341381d00e";s:8:"operator";s:2:"==";s:5:"value";s:8:"galerias";}}}}', 'Fotografias', 'galerias_fotos', 'publish', 'closed', 'closed', '', 'field_5b833811dc621', '', '', '2018-08-26 21:11:24', '2018-08-27 00:11:24', '', 47, 'http://localhost/fashion_wordpress/?post_type=acf-field&#038;p=48', 0, 'acf-field', '', 0),
(49, 1, '2018-08-26 20:33:13', '2018-08-26 23:33:13', '', 'Jeans', '', 'publish', 'closed', 'closed', '', 'jeans', '', '', '2018-11-11 21:57:47', '2018-11-12 00:57:47', '', 0, 'http://localhost/fashion_wordpress/?post_type=galerias&#038;p=49', 0, 'galerias', '', 0),
(51, 1, '2018-08-26 21:10:50', '2018-08-27 00:10:50', 'a:12:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:6:"videos";s:11:"Tipo Videos";s:8:"galerias";s:13:"Tipo Galerias";}s:10:"allow_null";i:0;s:12:"other_choice";i:0;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:13:"return_format";s:5:"value";}', 'Tipo de galeria', 'galerias_tipo', 'publish', 'closed', 'closed', '', 'field_5b8341381d00e', '', '', '2018-08-29 13:06:32', '2018-08-29 16:06:32', '', 47, 'http://localhost/fashion_wordpress/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(54, 1, '2018-08-29 15:07:51', '2018-08-29 18:07:51', 'Lipsum', 'Noticias', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-08-29 15:07:51', '2018-08-29 18:07:51', '', 42, 'http://localhost/fashion_wordpress/42-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-08-30 14:37:17', '2018-08-30 17:37:17', '', 'Fashion', '', 'publish', 'closed', 'closed', '', 'fashion', '', '', '2018-11-16 13:05:23', '2018-11-16 16:05:23', '', 0, 'http://localhost/fashion_wordpress/?post_type=galerias&#038;p=55', 0, 'galerias', '', 0),
(56, 1, '2018-08-30 15:03:28', '2018-08-30 18:03:28', '', '30762746886_fd8e7f9e26_o', '', 'inherit', 'open', 'closed', '', '30762746886_fd8e7f9e26_o', '', '', '2018-11-11 21:37:21', '2018-11-12 00:37:21', '', 49, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/08/30762746886_fd8e7f9e26_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-09-08 22:18:10', '2018-09-09 01:18:10', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Otro Titulo', '', 'publish', 'closed', 'closed', '', 'otro-titulo', '', '', '2018-09-08 22:18:10', '2018-09-09 01:18:10', '', 0, 'http://localhost/fashion_wordpress/?post_type=noticias&#038;p=59', 0, 'noticias', '', 0),
(64, 1, '2018-11-11 20:58:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-11 20:58:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/fashion_wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2018-11-11 21:39:08', '2018-11-12 00:39:08', '', 'Galerías', '', 'publish', 'closed', 'closed', '', 'galerias', '', '', '2018-11-11 21:39:08', '2018-11-12 00:39:08', '', 0, 'http://localhost/fashion_wordpress/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2018-11-11 21:39:08', '2018-11-12 00:39:08', '', 'Noticias', '', 'publish', 'closed', 'closed', '', 'noticias', '', '', '2018-11-11 21:39:08', '2018-11-12 00:39:08', '', 0, 'http://localhost/fashion_wordpress/?p=66', 3, 'nav_menu_item', '', 0),
(69, 1, '2018-11-11 21:56:55', '2018-11-12 00:56:55', 'a:12:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";i:6;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5b8341381d00e";s:8:"operator";s:2:"==";s:5:"value";s:8:"galerias";}}}}', 'Fotos por pagina', 'galerias_fotos_paginas', 'publish', 'closed', 'closed', '', 'field_5be8cfbe08e3c', '', '', '2018-11-11 22:00:54', '2018-11-12 01:00:54', '', 47, 'http://localhost/fashion_wordpress/?post_type=acf-field&#038;p=69', 2, 'acf-field', '', 0),
(71, 1, '2018-11-11 22:40:03', '2018-11-12 01:40:03', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"banners";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:14:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:13:"custom_fields";i:3;s:10:"discussion";i:4;s:8:"comments";i:5;s:9:"revisions";i:6;s:4:"slug";i:7;s:6:"author";i:8;s:6:"format";i:9;s:15:"page_attributes";i:10;s:14:"featured_image";i:11;s:10:"categories";i:12;s:4:"tags";i:13;s:15:"send-trackbacks";}s:11:"description";s:0:"";}', 'Opciones Banner', 'opciones-banner', 'publish', 'closed', 'closed', '', 'group_5be8d9818c051', '', '', '2018-11-11 22:40:03', '2018-11-12 01:40:03', '', 0, 'http://localhost/fashion_wordpress/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2018-11-11 22:40:03', '2018-11-12 01:40:03', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Sub titulo', 'banner_subtitulo', 'publish', 'closed', 'closed', '', 'field_5be8d990cca4a', '', '', '2018-11-11 22:40:03', '2018-11-12 01:40:03', '', 71, 'http://localhost/fashion_wordpress/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2018-11-11 22:40:03', '2018-11-12 01:40:03', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link', 'banner_link', 'publish', 'closed', 'closed', '', 'field_5be8d9a5cca4c', '', '', '2018-11-11 22:40:03', '2018-11-12 01:40:03', '', 71, 'http://localhost/fashion_wordpress/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2018-11-11 22:40:03', '2018-11-12 01:40:03', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Imagen', 'banner_imagen', 'publish', 'closed', 'closed', '', 'field_5be8d99acca4b', '', '', '2018-11-11 22:40:03', '2018-11-12 01:40:03', '', 71, 'http://localhost/fashion_wordpress/?post_type=acf-field&p=74', 2, 'acf-field', '', 0),
(75, 1, '2018-11-11 22:40:03', '2018-11-12 01:40:03', 'a:11:{s:4:"type";s:5:"range";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";i:50;s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Alineación Imagen', 'banner_alineacion', 'publish', 'closed', 'closed', '', 'field_5be8d9bbcca4d', '', '', '2018-11-11 22:40:03', '2018-11-12 01:40:03', '', 71, 'http://localhost/fashion_wordpress/?post_type=acf-field&p=75', 3, 'acf-field', '', 0),
(76, 1, '2018-11-11 22:41:08', '2018-11-12 01:41:08', '', 'Fashion Jeans Banner', '', 'publish', 'closed', 'closed', '', 'fashion-jeans-banner', '', '', '2018-11-11 22:48:41', '2018-11-12 01:48:41', '', 0, 'http://localhost/fashion_wordpress/?post_type=banners&#038;p=76', 0, 'banners', '', 0),
(77, 1, '2018-11-11 22:40:59', '2018-11-12 01:40:59', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2018-11-11 22:41:06', '2018-11-12 01:41:06', '', 76, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/11/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-11-11 22:41:49', '2018-11-12 01:41:49', '', 'Fashion News', '', 'publish', 'closed', 'closed', '', 'fashion-news', '', '', '2018-11-16 13:07:37', '2018-11-16 16:07:37', '', 0, 'http://localhost/fashion_wordpress/?post_type=banners&#038;p=78', 0, 'banners', '', 0),
(79, 1, '2018-11-16 13:07:20', '2018-11-16 16:07:20', '', 'cropped-banner-fashion', '', 'inherit', 'open', 'closed', '', 'cropped-banner-fashion', '', '', '2018-11-16 13:07:22', '2018-11-16 16:07:22', '', 78, 'http://localhost/fashion_wordpress/wp-content/uploads/2018/11/cropped-banner-fashion.jpg', 0, 'attachment', 'image/jpeg', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(8, 1, 0),
(28, 2, 0),
(40, 2, 0),
(65, 2, 0),
(66, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú', 'menu', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminseba'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"a57348ad2dad4c8e2cfab6d0be074261de8e3bae5fb0e6f0beb73b4929358b92";a:4:{s:10:"expiration";i:1542557049;s:2:"ip";s:13:"181.160.164.2";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0";s:5:"login";i:1542384249;}s:64:"0503154fe0807348f1134ffb7e81fc00dfb15883718c806e247743efcbc9dacb";a:4:{s:10:"expiration";i:1542639048;s:2:"ip";s:13:"181.160.75.60";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0";s:5:"login";i:1542466248;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '64'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:12:"181.160.75.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1535589308'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:20:"add-post-type-marcas";i:1;s:12:"add-post_tag";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(25, 1, 'tgmpa_dismissed_notice_wp-mail-smtp', '1') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminseba', '$P$BOBSJeggZmNPmEc.Seh/Gosv4RWxp//', 'adminseba', 'sebastian.alvcort@gmail.com', '', '2018-08-23 22:30:39', '', 0, 'adminseba') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

