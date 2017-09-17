-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Sep 17, 2017 at 10:15 PM
-- Server version: 10.1.18-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `saigonintelahcm_saigonintela`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE IF NOT EXISTS `category_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_permissions_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2017-09-08 02:07:39', '2017-09-08 02:07:39'),
(2, 'User', '2017-09-08 02:07:39', '2017-09-08 02:07:39'),
(3, 'Tin Tức', '2017-09-08 02:07:39', '2017-09-08 02:07:39'),
(4, 'Cấu Hình', '2017-09-08 02:07:39', '2017-09-08 02:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE IF NOT EXISTS `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `configs_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `description`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'email-receive', 'saigonintelahcm@gmail.com', 'Cấu Hình Email Nhận Thông Tin', 1, 1, '2017-09-08 02:31:44', '2017-09-11 07:39:43'),
(2, 'email-sender-subject', 'Re: SaiGon Intela Thông Tin Đặt Chỗ', 'Cấu Hình Subject Gửi Khách Hàng', 2, 1, '2017-09-08 02:31:44', '2017-09-12 04:48:07'),
(3, 'email-sender-from', 'SaiGon Intela', 'Cấu Hình From Gửi Khách Hàng', 3, 1, '2017-09-08 02:31:44', '2017-09-10 14:48:58'),
(4, 'email-receive-subject', 'Có Thông Tin Đặt Chổ Từ Khách Hàng', 'Cấu Hình Subject Nhận Thông Tin', 4, 1, '2017-09-08 02:31:44', '2017-09-10 14:48:58'),
(5, 'email-receive-from', 'Khách Hàng', 'Cấu Hình From Nhận Thông Tin', 5, 1, '2017-09-08 02:31:44', '2017-09-10 14:48:58'),
(6, 'email-signatures', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:13.3333px"><strong>Cty THHN Thương Mại Dịch Vụ Bất Động Sản Hưng Vượng</strong></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><strong><span style="color:#212121">Tel:</span></strong> <strong><span style="color:#212121">0909.633.252</span></strong></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><strong><span style="color:#212121">Email: </span></strong><span style="color:#212121"><a href="mailto:baotoantp@gmail.com" style="color:blue; text-decoration:underline" target="_blank">saigonintelahcm@gmail.com</a></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="font-size:18.0pt"><span style="color:#351c75">Ad: DP11, Nguyen Huu Tho street, &nbsp;Phuoc Kien, Nha Be district.</span></span></span></p>', 'Cấu Hình Chữ Ký', 7, 1, '2017-09-08 02:31:45', '2017-09-14 04:08:36'),
(7, 'email-sender-content', '<p>Xin Ch&acirc;n Th&agrave;nh Cảm Ơn Qu&yacute; Kh&aacute;ch, Ch&uacute;ng T&ocirc;i Sẽ Phản Hồi Sớm</p>', 'Cấu Hình Nội Dung Gửi Khách Hàng', 6, 1, '2017-09-08 02:31:45', '2017-09-10 14:48:58'),
(8, 'cf-address-post', '<p style="text-align:center">Mọi chi tiết về <strong>dự &aacute;n SaiGon Intela</strong> vui l&ograve;ng li&ecirc;n hệ<strong>: <span style="color:#ff0000">0909.633.252<br />\r\n(PKD Chủ Đầu Tư Căn Hộ -LGD Groups)</span></strong></p>', 'Cấu Hình Địa Chỉ Trang Con', 8, 1, '2017-09-10 06:43:30', '2017-09-11 02:21:14'),
(9, 'cf-phone', '0909633252', 'Cấu Hình Số Điện Thoại Chung', 9, 1, '2017-09-10 07:07:58', '2017-09-11 02:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_08_085902_create_entrust_setup_tables', 2),
(4, '2017_09_08_092701_create_configs_tables', 3),
(5, '2017_09_08_092809_create_sliders_tables', 4),
(6, '2017_09_08_141611_create_posts_table', 5),
(7, '2017_09_08_142322_create_news_table', 6),
(8, '2017_09_09_125507_create_tienichs_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isPost` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `path`, `content`, `isPost`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Căn hộ Sài Gòn Intela Bình Chánh nơi cuộc sống thăng hoa', 'can-ho-sai-gon-intela-binh-chanh-noi-cuoc-song-thang-hoa', '<p>S&agrave;i G&ograve;n Intela&nbsp;sở hữu vị tr&iacute; đắc địa nhất khu vực, tọa lạc&nbsp;13E Nguyễn Văn Linh B&igrave;nh Ch&aacute;nh. Nhờ vị tr&iacute; đắc địa, dự &aacute;n&nbsp;l&agrave; trung t&acirc;m của c&aacute;c tuyến đường huyết mạch chạy đến c&aacute;c quận trung t&acirc;m như quận 1,3,4,5,7&hellip; Hệ thống giao th&ocirc;ng rộng lớn, l&agrave; sự giao thoa của nhiều tuyến đường lớn chạy dọc đến c&aacute;c tiện &iacute;ch ngoại khu tốt nhất.&nbsp;Căn hộ S&agrave;i G&ograve;n intela&nbsp;c&ograve;n gần&nbsp;khu d&acirc;n cư Intresco&nbsp;cao cấp được x&acirc;y dựng kh&oacute;e l&eacute;o với những&nbsp;tiện &iacute;ch kh&eacute;p k&iacute;n v&ocirc; c&ugrave;ng&nbsp;đẳng cấp theo ti&ecirc;u chuẩn quốc tế mang phong c&aacute;ch hiện đại cộng hưởng mang đến&nbsp;dự &aacute;n Intela B&igrave;nh Ch&aacute;nh những đặc điểm tốt nhất khu vực.</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="Căn hộ Sài Gòn intela" src="http://saigonintelabinhchanh.com/pl/img/16/can-ho-sai-gon-intela-1.jpg" title="Căn hộ Sài Gòn intela" /></div>\r\n\r\n<p>Kh&ocirc;ng chỉ sở hữu&nbsp;vị tr&iacute; đắc địa tr&ecirc;n đường Nguyễn Văn Linh, chủ đầu tư c&ograve;n mang đến cho&nbsp;cư d&acirc;n nơi đ&acirc;y sự thiết kế kh&ocirc;ng gian mở, tho&aacute;ng khi mang đến cuộc sống thanh b&igrave;nh nhất. Với hệ thống c&acirc;y xanh được đầu tư tối đa, nhằm đưa cho kh&aacute;ch h&agrave;ng một m&ocirc;i trường sống khỏe ph&ugrave; hợp với xu hướng sống xanh của cư d&acirc;n. Hệ thống tiện &iacute;ch nhanh ch&oacute;ng cư d&acirc;n dễ d&agrave;ng&nbsp;kết nối với c&aacute;c tiện &iacute;ch ngoại khu tốt nhất từ bệnh viện, trung t&acirc;m thương mại v&agrave; gi&aacute;o dục đ&aacute;p ứng những nhu cầu về vật chất lẫn tinh thần cho cư d&acirc;n như:&nbsp;bệnh viện quốc tế Hạnh Ph&uacute;c, trường quốc tế Singapore, trường đại học Luật, TTTM Aeon, TTTM Lotte Mart, chợ đầu mối Tam B&igrave;nh&hellip; Chắc chắn căn hộ Intela B&igrave;nh ch&aacute;nh sẽ&nbsp;mang đến cho cư d&acirc;n sở hữu căn hộ nơi đ&acirc;y&nbsp;sự tiện nghi, thoải m&aacute;i v&agrave; một kh&ocirc;ng gian sống hiện đại bậc nhất.</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="Căn hộ Sài Gòn intela" src="http://saigonintelabinhchanh.com/pl/img/16/can-ho-sai-gon-intela-3.jpg" title="Căn hộ Sài Gòn intela" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhằm mang đến kh&ocirc;ng gian sống hiện đại bậc nhất, cư d&acirc;n căn hộ được trang bị hệ thống&nbsp;tiện &iacute;ch thiết yếu nhất m&agrave;&nbsp;kh&ocirc;ng cần phải đi đ&acirc;u xa bởi, tất cả&nbsp;đều c&oacute; ngay gần nh&agrave;,&nbsp;chủ đầu tư LDG Group đ&atilde; kiến tạo n&ecirc;n những&nbsp;tiện &iacute;ch phong ph&uacute; v&agrave; đa dạng như:&nbsp;nh&agrave; trẻ, si&ecirc;u thị tiện lợi, hồ bơi, khu vui chơi trẻ em, gym, spa, nh&agrave; h&agrave;ng caf&eacute;&hellip;Dự &aacute;n lu&ocirc;n được trang bị hệ thống an ninh kh&eacute;p k&iacute;n, PCCC, bảo vệ 24/24h mang lại cuộc sống b&igrave;nh y&ecirc;n nhất cho giấc ngủ của cư d&acirc;n.</p>', 1, 'images/uploads/images/tintucs/can-ho-sai-gon-intela-1.jpg', 1, '2017-09-09 07:13:39', '2017-09-10 09:28:15'),
(3, '6 Tiêu Chuẩn Căn Hộ Thông Minh', '6-tieu-chuan-can-ho-thong-minh', '<div class="col-md-12" style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/tintucs/Slide2.JPG" style="height:100%; width:100%" /></div>', 0, 'images/uploads/images/tintucs/Slide2.JPG', 1, '2017-09-14 07:16:45', '2017-09-14 07:24:49'),
(4, '8 Điều Khác Biệt Duy Nhất Chỉ Có Tại SaiGon Intela', '8-dieu-khac-biet-duy-nhat-chi-co-tai-saigon-intela', '<div class="col-md-12" style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/tintucs/Slide25.JPG" style="height:100%; width:100%" /></div>', 0, 'images/uploads/images/tintucs/Slide25.JPG', 1, '2017-09-14 07:18:55', '2017-09-14 07:24:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_category_permission_id_foreign` (`category_permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(9, 'news-list', 'Xem Toàn Bộ Tin Tức', 'Được Xem Toàn Bộ Tin Tức', 3, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(10, 'news-create', 'Tạo Tin Tức Mới', 'Được Tạo Tin Tức Mới', 3, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(11, 'news-edit', 'Cập Nhật Tin Tức', 'Được Cập Nhật Tin Tức', 3, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(12, 'news-delete', 'Xóa Tin Tức', 'Được Xóa Tin Tức', 3, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(13, 'config-list', 'Toàn Quyền Cấu Hình', 'Được Toàn Quyền Cấu Hình', 4, '2017-09-08 02:10:57', '2017-09-08 02:10:57'),
(14, 'config-create', 'Thêm Mới Cấu Hình', 'Được Thêm Mới Cấu Hình', 4, '2017-09-08 02:10:58', '2017-09-08 02:10:58'),
(15, 'config-edit', 'Cập Nhật Cấu Hình', 'Được Cập Nhật Cấu Hình', 4, '2017-09-08 02:10:58', '2017-09-08 02:10:58'),
(16, 'config-delete', 'Xóa Cấu Hình', 'Được Xóa Cấu Hình', 4, '2017-09-08 02:10:58', '2017-09-08 02:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `content`, `description`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'vitri-contents', '<p><strong>Căn hộ Saigon Intela</strong>&nbsp;sở hữu vị tr&iacute; đắc địa nhất khu vực, l&agrave; trung t&acirc;m của c&aacute;c tuyến đường huyết mạch chạy đến c&aacute;c quận trung t&acirc;m như quận 1,3,4,5,7&hellip;&nbsp;Dự &aacute;n tọa lạc tại khu d&acirc;n cư Intresco 13E Nguyễn Văn Linh B&igrave;nh Ch&aacute;nh, l&agrave; khu căn hộ cao cấp v&agrave; tổ hợp tiện &iacute;ch kh&eacute;p k&iacute;n được x&acirc;y dựng đẳng cấp theo ti&ecirc;u chuẩn quốc tế mang phong c&aacute;ch hiện đại nhất cộng hưởng c&ugrave;ng dự &aacute;n Intela.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Căn hộ x&acirc;y dựng tại vị tr&iacute; c&oacute; hệ thống giao th&ocirc;ng ho&agrave;n chỉnh với c&aacute;c tuyến đường Nguyễn Văn Linh, Nguyễn Hữu Thọ, Nguyễn Văn Cừ nối d&agrave;i, Phạm H&ugrave;ng&hellip;.</p>\r\n\r\n<div class="col-md-12"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/vitris/ket-noi-khu-vuc_du_an_saigon_intela.png" style="width:100%" /></div>\r\n\r\n<p>Trong tương lai, nơi đ&acirc;y c&ograve;n trở th&agrave;nh đầu mối giao th&ocirc;ng hiện đại khi tuyến metro số 2, tuyến metro số 3a, tuyến đường sắt đ&ocirc; thị số 5, tuyến Metro số 4 v&agrave; tuyến BRT số 5&hellip; đi v&agrave;o hoạt động</p>\r\n\r\n<p>Dự &aacute;n nằm ngay tr&ecirc;n&nbsp;đường Nguyễn Văn Linh B&igrave;nh Ch&aacute;nh S&agrave;i G&ograve;n l&agrave; tuyến đường rộng lớn kết nối nhanh đến&nbsp;những tuyến đường giao th&ocirc;ng huyết mạch của th&agrave;nh phố v&agrave; thừa hưởng to&agrave;n bộ tiện &iacute;ch khu vực. Ngo&agrave;i ra đ&acirc;y cũng sở hữu điểm&nbsp;giao lộ tại ng&atilde; tư An Dương Vương v&agrave; Đại Lộ V&otilde; Văn Kiệt (tuyến đường đẹp nhất nội đ&ocirc; rộng 60m2), cạnh c&aacute;c tuyến đường lớn: V&otilde; văn Kiệt, Kinh Dương Vương, Nguyễn Văn Linh, Quốc Lộ 1.</p>\r\n\r\n<div class="col-md-12"><img alt="" src="http://www.saigonintelahcm.com/images/uploads/images/vitris/saigon-intela-1.jpg" style="width:100%" /></div>', 'Bài Viết Vị Trí Dự Án', 1, 1, '2017-09-08 07:20:48', '2017-09-12 09:00:39'),
(10, 'trangchu-contents-km', '<p>Khuyến M&atilde;i</p>', 'Bài Viết Trang Chủ Phần Khuyến Mãi', 2, 1, '2017-09-09 04:49:36', '2017-09-11 02:23:32'),
(11, 'trangchu-contents-gt', '<h2><span style="color:null"><strong>Tiềm năng tăng gi&aacute;</strong></span></h2>\r\n\r\n<p style="text-align:justify"><span style="color:null"><span style="font-size:16px">Căn hộ SaiGon Intela nằm ngay b&ecirc;n cạnh đại lộ Nguyễn Văn Linh, vị tr&iacute; m&agrave; đ&acirc;t tăng gi&aacute; t&iacute;nh theo ng&agrave;y. Sở hữu căn hộ S&agrave;i G&ograve;n l&agrave; sự lựa chọn đầu tư v&ocirc; c&ugrave;ng th&ocirc;ng minh khi m&agrave; gi&aacute; đất v&ocirc; c&ugrave;ng loạn c&ograve;n ch&uacute;ng t&ocirc;i lu&ocirc;n mang đến cho bạn 1 mức gi&aacute; đ&aacute;ng tin cậy đảm bảo 100% khả năng sinh lời.</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<h2 style="text-align:justify"><span style="color:null"><strong>Chất lượng sống</strong></span></h2>\r\n\r\n<p style="text-align:justify"><span style="color:null"><span style="font-size:16px">Tọa lạc tại vị tr&iacute; đẹp cận thị, cận giang, cận lộ..trong 1 khu d&acirc;n cư hiện hữu bạn chỉ mất 1 ph&uacute;t đến chợ, 5 ph&uacute;t đến bệnh viện, trường học v&agrave; 10 ph&uacute;t để sở hữu tất cả tiện &iacute;ch của Ph&uacute; Mỹ Hưng.</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<h2><span style="color:null"><strong>Vừa t&uacute;i tiền</strong></span></h2>\r\n\r\n<p><span style="color:null"><span style="font-size:16px">Với mức gi&aacute; chỉ từ 1 tỷ đồng/1 căn hộ v&agrave; chỉ cần thanh to&aacute;n 300 triệu l&agrave; nhận nh&agrave; trong 1 khu d&acirc;n cư hiện hữu đ&acirc;y ch&iacute;nh l&agrave; niềm mơ ước lớn của c&aacute;c bạn trẻ v&agrave; ch&uacute;ng t&ocirc;i đang gi&uacute;p bạn đến gần v&agrave; dễ d&agrave;ng hơn bao giờ hết hiện thực h&oacute;a giấc mơ về ng&ocirc;i nh&agrave; v&agrave; những đứa trẻ</span></span></p>', 'Bài Viết Trang Chủ Phần Giới Thiệu Dự Án', 3, 1, '2017-09-09 04:49:36', '2017-09-10 09:23:25'),
(12, 'trangchu-contents-vt', '<p style="text-align:justify"><span style="color:#ffffff"><span style="font-size:16px">Nhằm mang đến cho kh&aacute;ch h&agrave;ng một kh&ocirc;ng gian sống hiện đại v&agrave; kh&aacute;c biệt, Saigon Intela được thiết kế theo m&ocirc; h&igrave;nh căn hộ th&ocirc;ng minh với thiết kế tối ưu h&oacute;a kh&ocirc;ng gian.</span></span></p>\r\n\r\n<p style="text-align:justify"><span style="color:#ffffff"><span style="font-size:16px">Nội thất Saigon Intela linh hoạt, đa chức năng, gi&uacute;p chủ nh&acirc;n căn hộ tiết kiệm kh&ocirc;ng gian.</span></span></p>\r\n\r\n<p style="text-align:justify"><span style="color:#ffffff"><span style="font-size:16px">Điểm đặc biệt của Saigon Intela l&agrave; tất cả c&aacute;c căn hộ đều c&oacute; tầm nh&igrave;n hướng s&ocirc;ng v&agrave; c&oacute; hồ sinh th&aacute;i tự nhi&ecirc;n điều h&ograve;a kh&ocirc;ng kh&iacute; chung to&agrave;n dự &aacute;n, tạo kh&ocirc;ng gian tho&aacute;ng m&aacute;t. B&ecirc;n cạnh đ&oacute;, khu thương mại được thiết kế m&ocirc; h&igrave;nh shop th&ocirc;ng tầng (douplex shophouse) phục vụ nhu cầu mua sắm, giải tr&iacute; sẽ được x&acirc;y dựng theo m&ocirc; h&igrave;nh Shophouse Duplex.</span></span></p>\r\n\r\n<p style="text-align:justify"><span style="color:#ffffff"><span style="font-size:16px"><strong>Căn hộ S&agrave;i G&ograve;n Intela</strong>&nbsp;B&igrave;nh Ch&aacute;nh được thiết nhằm mang đến cho cư d&acirc;n xu hướng sống xanh tho&aacute;ng m&aacute;t, xung quanh c&ocirc;ng tr&igrave;nh vẫn l&agrave; những h&agrave;ng c&acirc;y, những vườn dạo, c&ocirc;ng vi&ecirc;n mặt nước đa dạng sẽ khiến cho cư d&acirc;n sống tại đ&acirc;y sự thư gi&atilde;n tốt nhất.</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>', 'Bài Viết Trang Chủ Phần Vị Trí Dự Án', 4, 1, '2017-09-09 04:49:36', '2017-09-10 09:23:25'),
(13, 'trangchu-contents-lh', '<p style="text-align:center"><span style="font-size:14px"><strong>Địa chỉ:</strong> DP-11, Dragon Parc 1, Đường Nguyễn Hữu Thọ, Phước Kiển, H.Nh&agrave; B&egrave;. TP.HCM.</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14px"><strong>Điện thoại:</strong> 0909.633.252</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14px"><strong>Website:</strong> <a href="http://saigonintelahcm.com/"><strong>LGD Groups</strong></a> saigonintelahcm.com</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14px"><strong>Email:</strong> saigonintelahcm@gmail.com </span></p>', 'Bài Viết Trang Chủ Phần Liên Hệ', 5, 1, '2017-09-09 04:49:36', '2017-09-11 07:02:54'),
(14, 'canho-contents', '<h1 style="text-align:center">CĂN HỘ 1 PH&Ograve;NG NGỦ</h1>\r\n\r\n<p style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/mat-bang-can-41%2C34m2-sai-gon-intela.png" style="height:345px; width:345px" /><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/vi-tri-can-ho-41m2-sai-gon-intela.png" style="height:345px; width:345px" /></p>\r\n\r\n<h1 style="text-align:center">CĂN HỘ 2 PH&Ograve;NG NGỦ</h1>\r\n\r\n<p style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/mat-bang-can-54%2C6m2-sai-gon-intela.png" style="height:345px; width:345px" /><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/vi-tri-can-54%2C6m2-sai-gon-intela.png" style="height:345px; width:345px" /></p>\r\n\r\n<h1 style="text-align:center">CĂN HỘ 3 PH&Ograve;NG NGỦ</h1>\r\n\r\n<p style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/mat-bang-can-78m2-sai-gon-intela.png" style="height:345px; width:345px" /><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/vi-tri-can-78m2-sai-gon-intela.png" style="height:345px; width:345px" /></p>\r\n\r\n<h1 style="text-align:center">CĂN HỘ MẪU</h1>\r\n\r\n<div class="col-md-6"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/bep-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/can-ho-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/noi-that-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/phong-khach-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/phong-ngu-can-ho-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-12"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/thiet-ke-can-ho-saigon-intela-2.jpg" style="height:517px; width:100%" /></div>\r\n\r\n<div class="col-md-12"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/thiet-ke-can-ho-saigon-intela-4.jpg" style="height:517px; width:100%" /></div>\r\n\r\n<div class="col-md-12"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/canhos/thiet-ke-can-ho-saigon-intela-5.jpg" style="height:517px; width:100%" /></div>', 'Bài Viết Thông Tin Căn Hộ', 1, 1, '2017-09-09 14:25:09', '2017-09-14 01:48:22'),
(15, 'thietke-contents', '<h1 style="text-align:center">MẶT BẰNG TỔNG THỂ</h1>\r\n\r\n<div class="col-md-12"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/thietkes/Mat-bang-tong-the-saigon-intela.jpg" style="height:520px; width:100%" /></div>\r\n\r\n<div class="col-md-12"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/thietkes/saigon-intela-mat-bang-tang.jpg" style="height:546px; width:100%" /></div>\r\n\r\n<div class="col-md-12"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/thietkes/TANG-3-01.jpg" style="height:548px; width:100%" /></div>\r\n\r\n<div class="col-md-12"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/thietkes/saigon-intela-mat-bang-tang-5-23.jpg" style="height:583px; width:100%" /></div>\r\n\r\n<div class="col-md-12"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/thietkes/saigon-intela-mat-bang-tang-24.jpg" style="height:578px; width:100%" /></div>', 'Bài Viết Thiết Kế Căn Hộ', 1, 1, '2017-09-09 14:47:11', '2017-09-14 02:27:40'),
(16, 'tienich-contents', '<p>Mong muốn tạo cho kh&aacute;ch h&agrave;ng của&nbsp;<strong>S&agrave;i G&ograve;n Intela</strong>&nbsp;B&igrave;nh Ch&aacute;nh mọi tiện &iacute;ch thiết yếu nhất m&agrave;&nbsp;kh&ocirc;ng cần phải đi đ&acirc;u xa bởi, tất cả&nbsp;đều c&oacute; ngay tại nh&agrave;,&nbsp;chủ đầu tư LDG Group đ&atilde; kiến tạo n&ecirc;n những&nbsp;tiện &iacute;ch phong ph&uacute; v&agrave; đa dạng như:&nbsp;nh&agrave; trẻ, si&ecirc;u thị tiện lợi, hồ bơi, khu vui chơi trẻ em, gym, spa, nh&agrave; h&agrave;ng caf&eacute;&hellip;Dự &aacute;n lu&ocirc;n được trang bị hệ thống an ninh kh&eacute;p k&iacute;n, PCCC, bảo vệ 24/24h mang lại cuộc sống b&igrave;nh y&ecirc;n nhất cho giấc ngủ của cư d&acirc;n.</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/tienichs/Mat-bang-tong-the-saigon-intela.jpg" style="height:520px; width:545px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Mặt Bằng Tiện &Iacute;ch Dự &Aacute;n SaiGon Intela</div>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/tienichs/saigon-intela-tien-ich-noi-khu.jpg" style="height:545px; width:780px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Tiện &Iacute;ch Nội Khu SaiGon Intela</div>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/tienichs/khu-vui-choi-tre-em.jpg" style="height:625px; width:1200px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Khu Vui Chơi Trẻ Em</div>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/tienichs/Ho%20Boi.jpg" style="height:720px; width:1280px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Hồ Bơi Ch&acirc;n M&acirc;y</div>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/tienichs/ngoai-canh.jpg" style="height:864px; width:2000px" />Khu Vườn Cổ T&iacute;ch</div>\r\n\r\n<div class="col-md-12" style="text-align:center">\r\n<p style="text-align:left">Caf&eacute;/gym s&acirc;n thượng: một cuộc sống l&yacute; tưởng đang mở ra trước mắt bạn. Với ph&ograve;ng tập gym tr&agrave;n &aacute;nh s&aacute;ng, v&agrave; một khu vực caf&eacute; tr&ecirc;n tầng thượng, đảm bảo đ&acirc;y sẽ l&agrave; một th&uacute; vui m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua khi đến với dự &aacute;n Saigon Intela.</p>\r\n\r\n<p style="text-align:left">Hồ bơi: thiết kế hồ bơi ch&acirc;n m&acirc;y ti&ecirc;u chuẩn quốc tế, mang đến kh&ocirc;ng gian nghỉ dưỡng tốt nhất, bạn c&oacute; thể thoải m&aacute;i thả m&igrave;nh trong l&agrave;n nước xanh ngắt b&igrave;nh y&ecirc;n v&agrave; qu&ecirc;n đi những x&ocirc; bồ của cuộc sống hiện tại.</p>\r\n\r\n<p style="text-align:left">Giải tr&iacute; thư gi&atilde;n: c&ocirc;ng vi&ecirc;n c&acirc;y xanh v&agrave; những tiện &iacute;ch giải tr&iacute; xung quanh khu vực hứa hẹn sẽ mang đến những trải nghiệm tuyệt nhất cho bạn v&agrave; gia đ&igrave;nh.</p>\r\n\r\n<p style="text-align:left">Nh&agrave; trẻ Childhouse</p>\r\n\r\n<p style="text-align:left">C&ocirc;ng vi&ecirc;n thần thoại 5 chủ đề Fairy World. C&ocirc;ng vi&ecirc;n li&ecirc;n ho&agrave;n chủ đề cổ t&iacute;ch ( Fairy World) với 5 cụm c&ocirc;ng vi&ecirc;n v&agrave; đường đi bộ cổ t&iacute;ch.</p>\r\n\r\n<p style="text-align:left">Con đường đi bộ cổ t&iacute;ch</p>\r\n\r\n<p style="text-align:left">Khu c&ocirc;ng vi&ecirc;n giải tr&iacute; gia đ&igrave;nh Family Site (c&ocirc;ng vi&ecirc;n Picnic, Khu BBQ, vườn c&acirc;y Sắc m&agrave;u&hellip;)</p>\r\n\r\n<p style="text-align:left">Intela Pool Skybar</p>\r\n\r\n<p style="text-align:left">Intel Sky Pool</p>\r\n\r\n<p style="text-align:left">Welcome Intela Fountain</p>\r\n\r\n<p style="text-align:left">Intela Terrace Coffee</p>\r\n\r\n<p style="text-align:left">Khu c&ocirc;ng vi&ecirc;n vui chơi trẻ em Intela ChildCourt</p>\r\n\r\n<p style="text-align:left">Shop thương mại Duplex &ndash; Intelashop</p>\r\n\r\n<p style="text-align:left">Ngo&agrave;i ra, tại Saigon Intela c&ograve;n c&oacute; hệ thống tiết kiệm năng lượng v&agrave; tiện dụng; đảm bảo an ninh, tiện &iacute;ch v&agrave; giảm chi ph&iacute; vận h&agrave;nh; sử dụng năng lượng sạch nhằm tạo kh&ocirc;ng gian sống gần gũi thi&ecirc;n nhi&ecirc;n, an to&agrave;n.</p>\r\n\r\n<p style="text-align:left">Hệ thống tiện &iacute;ch tại Saigon Intela&nbsp;được vận h&agrave;nh th&ocirc;ng minh với ti&ecirc;u ch&iacute; gi&aacute;o dục, thẩm mỹ v&agrave; giải tr&iacute; được ưu ti&ecirc;n h&agrave;ng đầu.</p>\r\n\r\n<p style="text-align:left">Tại tầng thượng, LDG Group cũng đầu tư thiết kế 6 căn hộ s&acirc;n vườn Skyview như những căn penthouse đẳng cấp phục vụ cho những kh&aacute;ch h&agrave;ng muốn trải nghiệm cảm gi&aacute;c căn hộ tr&ecirc;n kh&ocirc;ng.</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/tienichs/tien-ich-noi-khu.jpg" style="height:476px; width:765px" /></div>\r\n\r\n<p style="text-align:left">Ngo&agrave;i ra S&agrave;i G&ograve;n Intela c&oacute; vị tr&iacute; rất gần với c&aacute;c tiện &iacute;ch trong khu vực như:</p>\r\n\r\n<p style="text-align:left">Trường ĐH ( RMIT, T&ocirc;n Đức Thắng, T&agrave;i Ch&iacute;nh Marketing),</p>\r\n\r\n<p style="text-align:left">Khu trung t&acirc;m thương mại quận 7 (Crescent Mall, Lotte Mart, Vivo City)</p>\r\n\r\n<p style="text-align:left">Bệnh viện ( BV Ph&aacute;p Việt, BV T&acirc;m Đức, BV Chợ Rẫy, BV Nhiệt đới&hellip;)</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://saigonintelahcm.com/images/uploads/images/tienichs/saigon-intela-tien-ich-ngoai-khu.jpg" style="height:481px; width:780px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Tiện &Iacute;ch Ngoại Khu Dự &Aacute;n SaiGon Intela</div>\r\n</div>', 'Bài Viết Tiện Ích Dự Án', 1, 1, '2017-09-10 05:12:15', '2017-09-14 01:49:38'),
(17, 'canhomau-contents', NULL, 'Bài Viết Căn Hộ Mẫu Dự Án', 1, 1, '2017-09-10 05:44:28', '2017-09-10 05:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2017-09-08 02:04:13', '2017-09-08 02:04:13'),
(2, 'quantri', 'quantri', 'quantri', '2017-09-12 01:34:26', '2017-09-12 01:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider_order` int(11) NOT NULL DEFAULT '1',
  `slider_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_order`, `slider_is_active`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 3, 0, 'images/uploads/images/silders/can-ho-penhouse.jpg', '2017-09-10 03:58:39', '2017-09-14 06:41:01'),
(2, 2, 0, 'images/uploads/images/silders/saigon-intela.jpg', '2017-09-10 04:13:36', '2017-09-14 06:40:50'),
(3, 1, 0, 'images/uploads/images/silders/can-ho-saigon-intela.jpg', '2017-09-10 04:14:49', '2017-09-14 06:40:44'),
(4, 1, 0, 'images/uploads/images/tienichs/Ho-boi-tran-bo.jpg', '2017-09-12 04:49:26', '2017-09-14 06:40:40'),
(5, 1, 1, 'images/uploads/images/silders/Sai-Gon-intela.jpg', '2017-09-14 06:40:33', '2017-09-14 06:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `tienichs`
--

CREATE TABLE IF NOT EXISTS `tienichs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tienich_order` int(11) NOT NULL DEFAULT '1',
  `tienich_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `tienich_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tienich_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tienichs`
--

INSERT INTO `tienichs` (`id`, `tienich_order`, `tienich_is_active`, `tienich_image`, `tienich_content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'images/uploads/images/tienichs/Phong-tap-Gym-hien-dai-phuc-vu-gioi-thuong-luu-1170x500.jpg', 'Phòng Gym Hiện Đại', '2017-09-09 06:23:23', '2017-09-09 14:05:22'),
(2, 2, 1, 'images/uploads/images/tienichs/ngoai-canh.jpg', 'Khu Vườn Cổ Tích', '2017-09-09 06:35:10', '2017-09-09 14:04:18'),
(3, 3, 1, 'images/uploads/images/tienichs/Ho%20Boi.jpg', 'Hồ Bơi Chân Mây 400 m2', '2017-09-09 06:35:50', '2017-09-09 14:02:13'),
(4, 4, 1, 'images/uploads/images/tienichs/khu-vui-choi-tre-em.jpg', 'Khu Vui Chơi Trẻ Em', '2017-09-09 06:38:14', '2017-09-09 13:59:43'),
(5, 6, 1, 'images/uploads/images/tienichs/VMMRoyalCity.jpg', 'Trung Tâm Thương Mại', '2017-09-09 14:08:59', '2017-09-09 14:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$kWIZYZwdWUx4ghBSWmB1QO0820bTOCC0M2HlwSCIZ4wGJKBB1sUyG', 'AvWBQiNT59ithcFMMhgqJEZh8GlPhbLM6l5VYvWjWczTqgwERJ5R7LErGUoU', '2017-09-08 01:47:10', NULL),
(2, 'SaiGon Intela', 'saigonintelahcm@gmail.com', '$2y$10$NjN52UgTvpmV.9Rzl1iNweaJiXZ1bwH/OGMRLelV4yNy5Dci6s7ai', NULL, '2017-09-12 01:35:25', '2017-09-12 01:35:25');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
