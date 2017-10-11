-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2017 at 12:24 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saigonintela`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `description`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'email-receive', 'trangnh.sml@gmail.com', 'Cấu Hình Email Nhận Thông Tin', 1, 1, '2017-09-08 02:31:44', '2017-09-11 07:30:44'),
(2, 'email-sender-subject', 'Re: SaiGon Intela Thông Tin Đặt Chổ', 'Cấu Hình Subject Gửi Khách Hàng', 2, 1, '2017-09-08 02:31:44', '2017-09-10 14:48:58'),
(3, 'email-sender-from', 'SaiGon Intela', 'Cấu Hình From Gửi Khách Hàng', 3, 1, '2017-09-08 02:31:44', '2017-09-10 14:48:58'),
(4, 'email-receive-subject', 'Có Thông Tin Đặt Chổ Từ Khách Hàng', 'Cấu Hình Subject Nhận Thông Tin', 4, 1, '2017-09-08 02:31:44', '2017-09-10 14:48:58'),
(5, 'email-receive-from', 'Khách Hàng', 'Cấu Hình From Nhận Thông Tin', 5, 1, '2017-09-08 02:31:44', '2017-09-10 14:48:58'),
(6, 'email-signatures', '<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><strong><span style="font-size:10.0pt">Nguyễn Đ&igrave;nh To&agrave;n</span></strong> /&nbsp;<span style="color:#212121">Sale Manager</span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><strong><span style="color:#212121">Tel:</span></strong> <strong><span style="color:#212121">0906.946.855</span></strong></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><strong><span style="color:#212121">Email: </span></strong><span style="color:#212121"><a href="mailto:baotoantp@gmail.com" style="color:blue; text-decoration:underline" target="_blank">baotoantp@gmail.com</a></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="font-size:18.0pt"><span style="color:#351c75">Ad: DP11, Nguyen Huu Tho street, &nbsp;Phuoc Kien, Nha Be district.</span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="font-size:18.0pt"><span style="color:#351c75">Zalo, Viber. Instagram, Line: 09745.19136</span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt"><span style="font-size:13.5pt"><span style="color:#351c75"><a href="https://www.facebook.com/nguyenngoctoan.toantienty" style="color:blue; text-decoration:underline" target="_blank">https://www.facebook.com/nguyenngoctoan.toantienty</a></span></span></span></p>', 'Cấu Hình Chữ Ký', 7, 1, '2017-09-08 02:31:45', '2017-09-11 02:24:11'),
(7, 'email-sender-content', '<p>Xin Ch&acirc;n Th&agrave;nh Cảm Ơn Qu&yacute; Kh&aacute;ch, Ch&uacute;ng T&ocirc;i Sẽ Phản Hồi Sớm</p>', 'Cấu Hình Nội Dung Gửi Khách Hàng', 6, 1, '2017-09-08 02:31:45', '2017-09-10 14:48:58'),
(8, 'cf-address-post', '<p style="text-align:center">Mọi chi tiết về <strong>dự &aacute;n SaiGon Intela</strong> vui l&ograve;ng li&ecirc;n hệ<strong>: <span style="color:#ff0000">0909.633.252<br />\r\n(PKD Chủ Đầu Tư Căn Hộ -LGD Groups)</span></strong></p>', 'Cấu Hình Địa Chỉ Trang Con', 8, 1, '2017-09-10 06:43:30', '2017-09-11 02:21:14'),
(9, 'cf-phone', '0909633252', 'Cấu Hình Số Điện Thoại Chung', 9, 1, '2017-09-10 07:07:58', '2017-09-11 02:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isPost` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `path`, `content`, `isPost`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Chọn nhà như sao Hollywood', 'chon-nha-nhu-sao-hollywood', '<p><strong>Một tổ ấm kh&ocirc;ng chỉ đẹp v&agrave; đầy đủ tiện nghi m&agrave; c&ograve;n l&agrave; nơi gửi gắm t&acirc;m hồn, tấm gương phản chiếu r&otilde; r&agrave;ng nhất phong c&aacute;ch của gia chủ. Bởi vậy, nhiều sao hạng A thế giới lu&ocirc;n kiếm t&igrave;m những căn hộ xứng tầm vị thế của ng&ocirc;i sao h&agrave;ng đầu của họ.</strong></p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://daiphuoclotus.net.vn/wp-content/uploads/2017/07/img_201707111505413156.jpg" style="height:410px; width:624px" /></div>\r\n\r\n<p><strong>Mỗi căn hộ l&agrave; cả một nghệ thuật</strong></p>\r\n\r\n<p>Cristiano Ronaldo đ&atilde; từng chi tới 18,5 triệu USD năm 2015, để sở hữu một căn hộ rộng hơn 2,500 m2 thuộc Trump Tower tr&ecirc;n đại lộ số 5 ở trung t&acirc;m Manhattan, New York. Nằm tại tầng 5 của Trump Tower, căn hộ của CR7 c&oacute; tới 3 ph&ograve;ng ngủ, 3 ph&ograve;ng tắm được lấy &yacute; tưởng từ căn hộ của Christian Grey trong bộ phim &ldquo;50 sắc th&aacute;i&rdquo; v&agrave; được thiết kế bởi nh&agrave; thiết kế nội thất h&agrave;ng đầu thế giới Juan Pablo Monyneux.</p>\r\n\r\n<p>Với mỗi ng&ocirc;i sao h&agrave;ng đầu, họ lu&ocirc;n c&oacute; c&aacute;i T&ocirc;i c&aacute; nh&acirc;n kh&aacute; cao v&agrave; đặt c&aacute;i T&ocirc;i của m&igrave;nh trong ch&iacute;nh những căn hộ họ sở hữu cũng như c&oacute; những ti&ecirc;u chuẩn khắt khe trong lựa chọn &ldquo;nơi an cư&rdquo; của m&igrave;nh. Đ&oacute; chắc chắn phải l&agrave; nơi họ sống c&ugrave;ng những cư d&acirc;n đỉnh cao nơi họ lại gặp ch&iacute;nh người h&agrave;ng x&oacute;m của ch&iacute;nh m&igrave;nh trong khoang hạng nhất. Nơi đ&oacute; hẳn phải l&agrave; nơi c&oacute; những tiện &iacute;ch đặc quyền: một bể bơi tr&agrave;n bờ hay những dịch vụ valet parking (dịch vụ đỗ xe ri&ecirc;ng) chỉ c&oacute; ở những nh&agrave; h&agrave;ng chuẩn Michelin, loại bỏ ho&agrave;n to&agrave;n sự kh&oacute; chịu mỗi khi đỗ hoặc t&igrave;m chỗ để xe.</p>\r\n\r\n<p>Trump Tower l&agrave; một dự &aacute;n kh&oacute; l&ograve;ng c&oacute; dự &aacute;n BĐS n&agrave;o vượt qua được với chất lượng dịch vụ ho&agrave;n hảo, với tầm nh&igrave;n hướng ra c&ocirc;ng vi&ecirc;n Central Park, với vị tr&iacute; đắt gi&aacute; nằm tr&ecirc;n đại lộ 5 sầm uất của Manhattan v&agrave; tr&ecirc;n hết được x&acirc;y dựng với phương ch&acirc;m &ldquo;tất cả những g&igrave; ho&agrave;n mỹ nhất phục vụ cho cuộc sống đẳng cấp nhất&rdquo;, để c&oacute; được những căn hộ xứng tầm với c&aacute;c ng&ocirc;i sao h&agrave;ng đầu thế giới.</p>\r\n\r\n<p><strong>Sunshine Center điểm s&aacute;ng mới của thị trường BĐS</strong></p>\r\n\r\n<p>Tại H&agrave; Nội người ta nhắc nhiều đến Sunshine Center bởi đ&acirc;y l&agrave; dự &aacute;n sinh ra l&agrave; để d&agrave;nh cho c&aacute;c ng&ocirc;i sao. Dự &aacute;n được coi l&agrave; đứa con tinh thần của Sunshine Group sắp được ra mắt trong thời gian tới.</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="“Tháp của những ngôi sao” Sunshine Center." src="http://channel.mediacdn.vn/thumb_w/640/prupload/270/2017/07/img20170711150457650.jpg" /></div>\r\n\r\n<p><em>&ldquo;Th&aacute;p của những ng&ocirc;i sao&rdquo; Sunshine Center.</em></p>\r\n\r\n<p>Điều đặc biệt l&agrave; Sunshine Center được kiến tạo bởi những cảm hứng từ Trump Tower &ndash; một h&igrave;nh mẫu BĐS d&agrave;nh ri&ecirc;ng cho những ng&ocirc;i sao h&agrave;ng đầu. Tại Sunshine Center, mỗi căn hộ hứa hẹn sẽ như một bảo t&agrave;ng thu nhỏ, thu gọn những t&acirc;m huyết cũng như c&aacute; t&iacute;nh của chủ nh&acirc;n. L&agrave; một người nghệ sỹ, chắc chắn kh&ocirc;ng thể bỏ qua một kh&ocirc;ng gian sống để sau mỗi ng&agrave;y lao động nghệ thuật, lại được thư th&aacute;i ngắm cảnh th&agrave;nh phố về đ&ecirc;m từ skybar hay tận hưởng những ph&uacute;t gi&acirc;y mua sắm từ những thương hiệu h&agrave;ng đầu như LV, Guici&hellip;</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="Những căn hộ mang thiết kế art – décor đậm phong cách cá nhân." src="http://channel.mediacdn.vn/prupload/270/2017/07/img_201707111505413156.jpg" /></div>\r\n\r\n<p><em>Những căn hộ mang thiết kế art &ndash; d&eacute;cor đậm phong c&aacute;ch c&aacute; nh&acirc;n.</em></p>\r\n\r\n<p>Hơn thế nữa, tại Sunshine Center, mọi dịch vụ tiện &iacute;ch đi k&egrave;m đều được chăm ch&uacute;t để kiến tạo một cuộc sống &ldquo;chuẩn sao&rdquo;, từ trung t&acirc;m dịch vụ l&agrave;m đẹp với c&aacute;c dịch vụ như spa, makeup, nail&hellip; cho tới những s&agrave;n trưng b&agrave;y si&ecirc;u xe hay kim cương, tất cả như được sinh ra để d&agrave;nh ri&ecirc;ng cho những ng&ocirc;i sao hay những cư d&acirc;n với đẳng cấp &ldquo;tầm sao&rdquo;.</p>\r\n\r\n<p>C&oacute; một điều đặc biệt, tại đ&acirc;y, c&aacute;c thang m&aacute;y đều được trang bị t&iacute;nh năng bảo mật. Chỉ c&oacute; hộ cư d&acirc;n đươc cấp Thẻ cư d&acirc;n mới được sử dụng thang, v&agrave; mỗi thang đều được kiểm so&aacute;t việc l&ecirc;n đ&uacute;ng tầng đ&atilde; được ph&acirc;n quyền. Ngo&agrave;i ra, hệ thống chu&ocirc;ng h&igrave;nh cũng được bố tr&iacute; tại c&aacute;c căn hộ, đảm bảo hơn nữa t&iacute;nh ri&ecirc;ng tư tuyệt đối cho cư d&acirc;n.</p>\r\n\r\n<p>&Ocirc;ng Nguyễn Văn Minh (Ph&oacute; TGĐ Sunshine Tech), đại diện ph&aacute;t triển c&ocirc;ng nghệ c&aacute;c dự &aacute;n của Sunshine Group chia sẻ: &ldquo;Tại Sunshine Center, c&ocirc;ng nghệ được &aacute;p dụng để mang lại cuộc sống tốt hơn, ri&ecirc;ng tư v&agrave; an to&agrave;n hơn cho con người, từ đ&oacute; đem lại những trải nghiệm cao cấp cho kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i. Sunshine Group mong muốn được kiến tạo những dịch vụ tốt nhất bằng những sản phẩm ho&agrave;n mỹ nhất, xứng đ&aacute;ng với đẳng cấp tầm sao ch&uacute;ng t&ocirc;i đang theo đuổi&rdquo;.</p>\r\n\r\n<p>C&oacute; nhiều định nghĩa về sự xa xỉ, c&oacute; nhiều c&aacute;ch để chứng minh, đ&oacute; l&agrave; bộ sưu tập những chiếc t&uacute;i Louis Vuitton, Chanel, Herm&egrave;s đắt tiền hay thậm ch&iacute; l&agrave; sở hữu những vi&ecirc;n kim cương đắt gi&aacute; hoặc đẳng cấp hơn l&agrave; những giải thưởng nghệ thuật mang đạm dấu ấn c&aacute; nh&acirc;n. Danh s&aacute;ch d&agrave;i đ&oacute; vừa được bổ sung l&agrave; một căn hộ tại Sunshine Center, nơi được sinh ra để d&agrave;nh cho những ng&ocirc;i sao.</p>', 1, 'images/uploads/images/tintucs/can-ho-intela-binh-chanh.jpg', 1, '2017-09-09 06:59:57', '2017-09-10 12:53:46'),
(2, 'Căn hộ Sài Gòn Intela Bình Chánh nơi cuộc sống thăng hoa', 'can-ho-sai-gon-intela-binh-chanh-noi-cuoc-song-thang-hoa', '<p>S&agrave;i G&ograve;n Intela&nbsp;sở hữu vị tr&iacute; đắc địa nhất khu vực, tọa lạc&nbsp;13E Nguyễn Văn Linh B&igrave;nh Ch&aacute;nh. Nhờ vị tr&iacute; đắc địa, dự &aacute;n&nbsp;l&agrave; trung t&acirc;m của c&aacute;c tuyến đường huyết mạch chạy đến c&aacute;c quận trung t&acirc;m như quận 1,3,4,5,7&hellip; Hệ thống giao th&ocirc;ng rộng lớn, l&agrave; sự giao thoa của nhiều tuyến đường lớn chạy dọc đến c&aacute;c tiện &iacute;ch ngoại khu tốt nhất.&nbsp;Căn hộ S&agrave;i G&ograve;n intela&nbsp;c&ograve;n gần&nbsp;khu d&acirc;n cư Intresco&nbsp;cao cấp được x&acirc;y dựng kh&oacute;e l&eacute;o với những&nbsp;tiện &iacute;ch kh&eacute;p k&iacute;n v&ocirc; c&ugrave;ng&nbsp;đẳng cấp theo ti&ecirc;u chuẩn quốc tế mang phong c&aacute;ch hiện đại cộng hưởng mang đến&nbsp;dự &aacute;n Intela B&igrave;nh Ch&aacute;nh những đặc điểm tốt nhất khu vực.</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="Căn hộ Sài Gòn intela" src="http://saigonintelabinhchanh.com/pl/img/16/can-ho-sai-gon-intela-1.jpg" title="Căn hộ Sài Gòn intela" /></div>\r\n\r\n<p>Kh&ocirc;ng chỉ sở hữu&nbsp;vị tr&iacute; đắc địa tr&ecirc;n đường Nguyễn Văn Linh, chủ đầu tư c&ograve;n mang đến cho&nbsp;cư d&acirc;n nơi đ&acirc;y sự thiết kế kh&ocirc;ng gian mở, tho&aacute;ng khi mang đến cuộc sống thanh b&igrave;nh nhất. Với hệ thống c&acirc;y xanh được đầu tư tối đa, nhằm đưa cho kh&aacute;ch h&agrave;ng một m&ocirc;i trường sống khỏe ph&ugrave; hợp với xu hướng sống xanh của cư d&acirc;n. Hệ thống tiện &iacute;ch nhanh ch&oacute;ng cư d&acirc;n dễ d&agrave;ng&nbsp;kết nối với c&aacute;c tiện &iacute;ch ngoại khu tốt nhất từ bệnh viện, trung t&acirc;m thương mại v&agrave; gi&aacute;o dục đ&aacute;p ứng những nhu cầu về vật chất lẫn tinh thần cho cư d&acirc;n như:&nbsp;bệnh viện quốc tế Hạnh Ph&uacute;c, trường quốc tế Singapore, trường đại học Luật, TTTM Aeon, TTTM Lotte Mart, chợ đầu mối Tam B&igrave;nh&hellip; Chắc chắn căn hộ Intela B&igrave;nh ch&aacute;nh sẽ&nbsp;mang đến cho cư d&acirc;n sở hữu căn hộ nơi đ&acirc;y&nbsp;sự tiện nghi, thoải m&aacute;i v&agrave; một kh&ocirc;ng gian sống hiện đại bậc nhất.</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="Căn hộ Sài Gòn intela" src="http://saigonintelabinhchanh.com/pl/img/16/can-ho-sai-gon-intela-3.jpg" title="Căn hộ Sài Gòn intela" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhằm mang đến kh&ocirc;ng gian sống hiện đại bậc nhất, cư d&acirc;n căn hộ được trang bị hệ thống&nbsp;tiện &iacute;ch thiết yếu nhất m&agrave;&nbsp;kh&ocirc;ng cần phải đi đ&acirc;u xa bởi, tất cả&nbsp;đều c&oacute; ngay gần nh&agrave;,&nbsp;chủ đầu tư LDG Group đ&atilde; kiến tạo n&ecirc;n những&nbsp;tiện &iacute;ch phong ph&uacute; v&agrave; đa dạng như:&nbsp;nh&agrave; trẻ, si&ecirc;u thị tiện lợi, hồ bơi, khu vui chơi trẻ em, gym, spa, nh&agrave; h&agrave;ng caf&eacute;&hellip;Dự &aacute;n lu&ocirc;n được trang bị hệ thống an ninh kh&eacute;p k&iacute;n, PCCC, bảo vệ 24/24h mang lại cuộc sống b&igrave;nh y&ecirc;n nhất cho giấc ngủ của cư d&acirc;n.</p>', 1, 'images/uploads/images/tintucs/can-ho-sai-gon-intela-1.jpg', 1, '2017-09-09 07:13:39', '2017-09-10 09:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
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

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `content`, `description`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'vitri-contents', '<p><strong>Căn hộ Saigon Intela</strong>&nbsp;sở hữu vị tr&iacute; đắc địa nhất khu vực, l&agrave; trung t&acirc;m của c&aacute;c tuyến đường huyết mạch chạy đến c&aacute;c quận trung t&acirc;m như quận 1,3,4,5,7&hellip;&nbsp;Dự &aacute;n tọa lạc tại khu d&acirc;n cư Intresco 13E Nguyễn Văn Linh B&igrave;nh Ch&aacute;nh, l&agrave; khu căn hộ cao cấp v&agrave; tổ hợp tiện &iacute;ch kh&eacute;p k&iacute;n được x&acirc;y dựng đẳng cấp theo ti&ecirc;u chuẩn quốc tế mang phong c&aacute;ch hiện đại nhất cộng hưởng c&ugrave;ng dự &aacute;n Intela.</p>\r\n\r\n<p>Căn hộ x&acirc;y dựng tại vị tr&iacute; c&oacute; hệ thống giao th&ocirc;ng ho&agrave;n chỉnh với c&aacute;c tuyến đường Nguyễn Văn Linh, Nguyễn Hữu Thọ, Nguyễn Văn Cừ nối d&agrave;i, Phạm H&ugrave;ng&hellip;.</p>\r\n\r\n<p>Trong tương lai, nơi đ&acirc;y c&ograve;n trở th&agrave;nh đầu mối giao th&ocirc;ng hiện đại khi tuyến metro số 2, tuyến metro số 3a, tuyến đường sắt đ&ocirc; thị số 5, tuyến Metro số 4 v&agrave; tuyến BRT số 5&hellip; đi v&agrave;o hoạt động</p>\r\n\r\n<p>Dự &aacute;n nằm ngay tr&ecirc;n&nbsp;đường Nguyễn Văn Linh B&igrave;nh Ch&aacute;nh S&agrave;i G&ograve;n l&agrave; tuyến đường rộng lớn kết nối nhanh đến&nbsp;những tuyến đường giao th&ocirc;ng huyết mạch của th&agrave;nh phố v&agrave; thừa hưởng to&agrave;n bộ tiện &iacute;ch khu vực. Ngo&agrave;i ra đ&acirc;y cũng sở hữu điểm&nbsp;giao lộ tại ng&atilde; tư An Dương Vương v&agrave; Đại Lộ V&otilde; Văn Kiệt (tuyến đường đẹp nhất nội đ&ocirc; rộng 60m2), cạnh c&aacute;c tuyến đường lớn: V&otilde; văn Kiệt, Kinh Dương Vương, Nguyễn Văn Linh, Quốc Lộ 1.</p>\r\n\r\n<div class="col-md-12"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/vitris/saigon-intela-1.jpg" style="height:621px; width:100%" /></div>', 'Bài Viết Vị Trí Dự Án', 1, 1, '2017-09-08 07:20:48', '2017-09-10 06:31:17'),
(10, 'trangchu-contents-km', '<p>Khuyến M&atilde;i</p>', 'Bài Viết Trang Chủ Phần Khuyến Mãi', 2, 1, '2017-09-09 04:49:36', '2017-09-11 02:23:32'),
(11, 'trangchu-contents-gt', '<h2><span style="color:null"><strong>Tiềm năng tăng gi&aacute;</strong></span></h2>\r\n\r\n<p style="text-align:justify"><span style="color:null"><span style="font-size:16px">Căn hộ SaiGon Intela nằm ngay b&ecirc;n cạnh đại lộ Nguyễn Văn Linh, vị tr&iacute; m&agrave; đ&acirc;t tăng gi&aacute; t&iacute;nh theo ng&agrave;y. Sở hữu căn hộ S&agrave;i G&ograve;n l&agrave; sự lựa chọn đầu tư v&ocirc; c&ugrave;ng th&ocirc;ng minh khi m&agrave; gi&aacute; đất v&ocirc; c&ugrave;ng loạn c&ograve;n ch&uacute;ng t&ocirc;i lu&ocirc;n mang đến cho bạn 1 mức gi&aacute; đ&aacute;ng tin cậy đảm bảo 100% khả năng sinh lời.</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<h2 style="text-align:justify"><span style="color:null"><strong>Chất lượng sống</strong></span></h2>\r\n\r\n<p style="text-align:justify"><span style="color:null"><span style="font-size:16px">Tọa lạc tại vị tr&iacute; đẹp cận thị, cận giang, cận lộ..trong 1 khu d&acirc;n cư hiện hữu bạn chỉ mất 1 ph&uacute;t đến chợ, 5 ph&uacute;t đến bệnh viện, trường học v&agrave; 10 ph&uacute;t để sở hữu tất cả tiện &iacute;ch của Ph&uacute; Mỹ Hưng.</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<h2><span style="color:null"><strong>Vừa t&uacute;i tiền</strong></span></h2>\r\n\r\n<p><span style="color:null"><span style="font-size:16px">Với mức gi&aacute; chỉ từ 1 tỷ đồng/1 căn hộ v&agrave; chỉ cần thanh to&aacute;n 300 triệu l&agrave; nhận nh&agrave; trong 1 khu d&acirc;n cư hiện hữu đ&acirc;y ch&iacute;nh l&agrave; niềm mơ ước lớn của c&aacute;c bạn trẻ v&agrave; ch&uacute;ng t&ocirc;i đang gi&uacute;p bạn đến gần v&agrave; dễ d&agrave;ng hơn bao giờ hết hiện thực h&oacute;a giấc mơ về ng&ocirc;i nh&agrave; v&agrave; những đứa trẻ</span></span></p>', 'Bài Viết Trang Chủ Phần Giới Thiệu Dự Án', 3, 1, '2017-09-09 04:49:36', '2017-09-10 09:23:25'),
(12, 'trangchu-contents-vt', '<p style="text-align:justify"><span style="color:#ffffff"><span style="font-size:16px">Nhằm mang đến cho kh&aacute;ch h&agrave;ng một kh&ocirc;ng gian sống hiện đại v&agrave; kh&aacute;c biệt, Saigon Intela được thiết kế theo m&ocirc; h&igrave;nh căn hộ th&ocirc;ng minh với thiết kế tối ưu h&oacute;a kh&ocirc;ng gian.</span></span></p>\r\n\r\n<p style="text-align:justify"><span style="color:#ffffff"><span style="font-size:16px">Nội thất Saigon Intela linh hoạt, đa chức năng, gi&uacute;p chủ nh&acirc;n căn hộ tiết kiệm kh&ocirc;ng gian.</span></span></p>\r\n\r\n<p style="text-align:justify"><span style="color:#ffffff"><span style="font-size:16px">Điểm đặc biệt của Saigon Intela l&agrave; tất cả c&aacute;c căn hộ đều c&oacute; tầm nh&igrave;n hướng s&ocirc;ng v&agrave; c&oacute; hồ sinh th&aacute;i tự nhi&ecirc;n điều h&ograve;a kh&ocirc;ng kh&iacute; chung to&agrave;n dự &aacute;n, tạo kh&ocirc;ng gian tho&aacute;ng m&aacute;t. B&ecirc;n cạnh đ&oacute;, khu thương mại được thiết kế m&ocirc; h&igrave;nh shop th&ocirc;ng tầng (douplex shophouse) phục vụ nhu cầu mua sắm, giải tr&iacute; sẽ được x&acirc;y dựng theo m&ocirc; h&igrave;nh Shophouse Duplex.</span></span></p>\r\n\r\n<p style="text-align:justify"><span style="color:#ffffff"><span style="font-size:16px"><strong>Căn hộ S&agrave;i G&ograve;n Intela</strong>&nbsp;B&igrave;nh Ch&aacute;nh được thiết nhằm mang đến cho cư d&acirc;n xu hướng sống xanh tho&aacute;ng m&aacute;t, xung quanh c&ocirc;ng tr&igrave;nh vẫn l&agrave; những h&agrave;ng c&acirc;y, những vườn dạo, c&ocirc;ng vi&ecirc;n mặt nước đa dạng sẽ khiến cho cư d&acirc;n sống tại đ&acirc;y sự thư gi&atilde;n tốt nhất.</span></span></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>', 'Bài Viết Trang Chủ Phần Vị Trí Dự Án', 4, 1, '2017-09-09 04:49:36', '2017-09-10 09:23:25'),
(13, 'trangchu-contents-lh', '<p style="text-align:center"><span style="font-size:14px"><strong>Địa chỉ:</strong> DP-11, Dragon Parc 1, Đường Nguyễn Hữu Thọ, Phước Kiển, H.Nh&agrave; B&egrave;. TP.HCM.</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14px"><strong>Điện thoại:</strong> 0909.633.252</span></p>\r\n\r\n<p style="text-align:center"><span style="font-size:14px"><strong>Website:</strong> <a href="http://saigonintelahcm.com/"><strong>LGD Groups</strong></a> saigonintelahcm.com</span></p>', 'Bài Viết Trang Chủ Phần Liên Hệ', 5, 1, '2017-09-09 04:49:36', '2017-09-11 02:23:32'),
(14, 'canho-contents', '<h1 style="text-align:center">CĂN HỘ 1 PH&Ograve;NG NGỦ</h1>\r\n\r\n<p style="text-align:center"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/mat-bang-can-41%2C34m2-sai-gon-intela.png" style="height:345px; width:345px" /><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/vi-tri-can-ho-41m2-sai-gon-intela.png" style="height:345px; width:345px" /></p>\r\n\r\n<h1 style="text-align:center">CĂN HỘ 2 PH&Ograve;NG NGỦ</h1>\r\n\r\n<p style="text-align:center"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/mat-bang-can-54%2C6m2-sai-gon-intela.png" style="height:345px; width:345px" /><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/vi-tri-can-54%2C6m2-sai-gon-intela.png" style="height:345px; width:345px" /></p>\r\n\r\n<h1 style="text-align:center">CĂN HỘ 3 PH&Ograve;NG NGỦ</h1>\r\n\r\n<p style="text-align:center"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/mat-bang-can-78m2-sai-gon-intela.png" style="height:345px; width:345px" /><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/vi-tri-can-78m2-sai-gon-intela.png" style="height:345px; width:345px" /></p>\r\n\r\n<h1 style="text-align:center">CĂN HỘ MẪU</h1>\r\n\r\n<div class="col-md-6"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/bep-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/can-ho-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/noi-that-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/phong-khach-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/phong-ngu-can-ho-sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n\r\n<div class="col-md-6"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/sai-gon-intela.jpg" style="height:458px; width:100%" /></div>\r\n<div class="col-md-12"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/thiet-ke-can-ho-saigon-intela-2.jpg" style="height:517px; width:100%" /></div>\r\n<div class="col-md-12"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/thiet-ke-can-ho-saigon-intela-4.jpg" style="height:517px; width:100%" /></div>\r\n<div class="col-md-12"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/canhos/thiet-ke-can-ho-saigon-intela-5.jpg" style="height:517px; width:100%" /></div>', 'Bài Viết Thông Tin Căn Hộ', 1, 1, '2017-09-09 14:25:09', '2017-09-10 06:08:49'),
(15, 'thietke-contents', '<h1 style="text-align:center">MẶT BẰNG TỔNG THỂ</h1>\r\n\r\n<div class=''col-md-12''><img alt="" src="images/uploads/images/thietkes/Mat-bang-tong-the-saigon-intela.jpg" style="height:520px; width:100%" /></div>\r\n\r\n<div class=''col-md-12''><img alt="" src="images/uploads/images/thietkes/saigon-intela-mat-bang-tang.jpg" style="height:546px; width:100%" /></div>\r\n\r\n<div class=''col-md-12''><img alt="" src="images/uploads/images/thietkes/saigon-intela-mat-bang-tang-2-3.jpg" style="height:548px; width:100%" /></div>\r\n\r\n<div class=''col-md-12''><img alt="" src="images/uploads/images/thietkes/saigon-intela-mat-bang-tang-5-23.jpg" style="height:583px; width:100%" /></div>\r\n<div class=''col-md-12''><img alt="" src="images/uploads/images/thietkes/saigon-intela-mat-bang-tang-24.jpg" style="height:578px; width:100%" /></div>', 'Bài Viết Thiết Kế Căn Hộ', 1, 1, '2017-09-09 14:47:11', '2017-09-10 06:18:03'),
(16, 'tienich-contents', '<p>Mong muốn tạo cho kh&aacute;ch h&agrave;ng của&nbsp;<strong>S&agrave;i G&ograve;n Intela</strong>&nbsp;B&igrave;nh Ch&aacute;nh mọi tiện &iacute;ch thiết yếu nhất m&agrave;&nbsp;kh&ocirc;ng cần phải đi đ&acirc;u xa bởi, tất cả&nbsp;đều c&oacute; ngay tại nh&agrave;,&nbsp;chủ đầu tư LDG Group đ&atilde; kiến tạo n&ecirc;n những&nbsp;tiện &iacute;ch phong ph&uacute; v&agrave; đa dạng như:&nbsp;nh&agrave; trẻ, si&ecirc;u thị tiện lợi, hồ bơi, khu vui chơi trẻ em, gym, spa, nh&agrave; h&agrave;ng caf&eacute;&hellip;Dự &aacute;n lu&ocirc;n được trang bị hệ thống an ninh kh&eacute;p k&iacute;n, PCCC, bảo vệ 24/24h mang lại cuộc sống b&igrave;nh y&ecirc;n nhất cho giấc ngủ của cư d&acirc;n.</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/tienichs/Mat-bang-tong-the-saigon-intela.jpg" style="height:520px; width:545px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Mặt Bằng Tiện &Iacute;ch Dự &Aacute;n SaiGon Intela</div>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/tienichs/saigon-intela-tien-ich-noi-khu.jpg" style="height:545px; width:780px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Tiện &Iacute;ch Nội Khu SaiGon Intela</div>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/tienichs/khu-vui-choi-tre-em.jpg" style="height:625px; width:1200px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Khu Vui Chơi Trẻ Em</div>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/tienichs/Ho%20Boi.jpg" style="height:720px; width:1280px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Hồ Bơi Ch&acirc;n M&acirc;y</div>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/tienichs/ngoai-canh.jpg" style="height:864px; width:2000px" />Khu Vườn Cổ T&iacute;ch</div>\r\n\r\n<div class="col-md-12" style="text-align:center">\r\n<p style="text-align:left">Caf&eacute;/gym s&acirc;n thượng: một cuộc sống l&yacute; tưởng đang mở ra trước mắt bạn. Với ph&ograve;ng tập gym tr&agrave;n &aacute;nh s&aacute;ng, v&agrave; một khu vực caf&eacute; tr&ecirc;n tầng thượng, đảm bảo đ&acirc;y sẽ l&agrave; một th&uacute; vui m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua khi đến với dự &aacute;n Saigon Intela.</p>\r\n\r\n<p style="text-align:left">Hồ bơi: thiết kế hồ bơi ch&acirc;n m&acirc;y ti&ecirc;u chuẩn quốc tế, mang đến kh&ocirc;ng gian nghỉ dưỡng tốt nhất, bạn c&oacute; thể thoải m&aacute;i thả m&igrave;nh trong l&agrave;n nước xanh ngắt b&igrave;nh y&ecirc;n v&agrave; qu&ecirc;n đi những x&ocirc; bồ của cuộc sống hiện tại.</p>\r\n\r\n<p style="text-align:left">Giải tr&iacute; thư gi&atilde;n: c&ocirc;ng vi&ecirc;n c&acirc;y xanh v&agrave; những tiện &iacute;ch giải tr&iacute; xung quanh khu vực hứa hẹn sẽ mang đến những trải nghiệm tuyệt nhất cho bạn v&agrave; gia đ&igrave;nh.</p>\r\n\r\n<p style="text-align:left">Nh&agrave; trẻ Childhouse</p>\r\n\r\n<p style="text-align:left">C&ocirc;ng vi&ecirc;n thần thoại 5 chủ đề Fairy World. C&ocirc;ng vi&ecirc;n li&ecirc;n ho&agrave;n chủ đề cổ t&iacute;ch ( Fairy World) với 5 cụm c&ocirc;ng vi&ecirc;n v&agrave; đường đi bộ cổ t&iacute;ch.</p>\r\n\r\n<p style="text-align:left">Con đường đi bộ cổ t&iacute;ch</p>\r\n\r\n<p style="text-align:left">Khu c&ocirc;ng vi&ecirc;n giải tr&iacute; gia đ&igrave;nh Family Site (c&ocirc;ng vi&ecirc;n Picnic, Khu BBQ, vườn c&acirc;y Sắc m&agrave;u&hellip;)</p>\r\n\r\n<p style="text-align:left">Intela Pool Skybar</p>\r\n\r\n<p style="text-align:left">Intel Sky Pool</p>\r\n\r\n<p style="text-align:left">Welcome Intela Fountain</p>\r\n\r\n<p style="text-align:left">Intela Terrace Coffee</p>\r\n\r\n<p style="text-align:left">Khu c&ocirc;ng vi&ecirc;n vui chơi trẻ em Intela ChildCourt</p>\r\n\r\n<p style="text-align:left">Shop thương mại Duplex &ndash; Intelashop</p>\r\n\r\n<p style="text-align:left">Ngo&agrave;i ra, tại Saigon Intela c&ograve;n c&oacute; hệ thống tiết kiệm năng lượng v&agrave; tiện dụng; đảm bảo an ninh, tiện &iacute;ch v&agrave; giảm chi ph&iacute; vận h&agrave;nh; sử dụng năng lượng sạch nhằm tạo kh&ocirc;ng gian sống gần gũi thi&ecirc;n nhi&ecirc;n, an to&agrave;n.</p>\r\n\r\n<p style="text-align:left">Hệ thống tiện &iacute;ch tại Saigon Intela&nbsp;được vận h&agrave;nh th&ocirc;ng minh với ti&ecirc;u ch&iacute; gi&aacute;o dục, thẩm mỹ v&agrave; giải tr&iacute; được ưu ti&ecirc;n h&agrave;ng đầu.</p>\r\n\r\n<p style="text-align:left">Tại tầng thượng, LDG Group cũng đầu tư thiết kế 6 căn hộ s&acirc;n vườn Skyview như những căn penthouse đẳng cấp phục vụ cho những kh&aacute;ch h&agrave;ng muốn trải nghiệm cảm gi&aacute;c căn hộ tr&ecirc;n kh&ocirc;ng.</p>\r\n\r\n<p style="text-align:left">Ngo&agrave;i ra S&agrave;i G&ograve;n Intela c&oacute; vị tr&iacute; rất gần với c&aacute;c tiện &iacute;ch trong khu vực như:</p>\r\n\r\n<p style="text-align:left">Trường ĐH ( RMIT, T&ocirc;n Đức Thắng, T&agrave;i Ch&iacute;nh Marketing),</p>\r\n\r\n<p style="text-align:left">Khu trung t&acirc;m thương mại quận 7 (Crescent Mall, Lotte Mart, Vivo City)</p>\r\n\r\n<p style="text-align:left">Bệnh viện ( BV Ph&aacute;p Việt, BV T&acirc;m Đức, BV Chợ Rẫy, BV Nhiệt đới&hellip;)</p>\r\n\r\n<div class="col-md-12" style="text-align:center"><img alt="" src="http://localhost:8080/saigonintela/images/uploads/images/tienichs/saigon-intela-tien-ich-ngoai-khu.jpg" style="height:481px; width:780px" /></div>\r\n\r\n<div class="col-md-12" style="text-align:center">Tiện &Iacute;ch Ngoại Khu Dự &Aacute;n SaiGon Intela</div>\r\n</div>', 'Bài Viết Tiện Ích Dự Án', 1, 1, '2017-09-10 05:12:15', '2017-09-10 06:28:38'),
(17, 'canhomau-contents', NULL, 'Bài Viết Căn Hộ Mẫu Dự Án', 1, 1, '2017-09-10 05:44:28', '2017-09-10 05:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2017-09-08 02:04:13', '2017-09-08 02:04:13'),
(2, 'quantri', 'quantri', 'Quản Trị', '2017-09-12 01:19:20', '2017-09-12 01:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
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

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_order` int(11) NOT NULL DEFAULT '1',
  `slider_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_order`, `slider_is_active`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'images/uploads/images/silders/can-ho-penhouse.jpg', '2017-09-10 03:58:39', '2017-09-18 04:13:53'),
(2, 2, 1, 'images/uploads/images/silders/saigon-intela.jpg', '2017-09-10 04:13:36', '2017-09-18 04:13:49'),
(3, 1, 1, 'images/uploads/images/silders/can-ho-saigon-intela.jpg', '2017-09-10 04:14:49', '2017-09-18 04:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `tienichs`
--

CREATE TABLE `tienichs` (
  `id` int(10) UNSIGNED NOT NULL,
  `tienich_order` int(11) NOT NULL DEFAULT '1',
  `tienich_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `tienich_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tienich_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$kWIZYZwdWUx4ghBSWmB1QO0820bTOCC0M2HlwSCIZ4wGJKBB1sUyG', 'rG5STR0SQlVrpT8SP76u1bbkxngXFb5DG0q3MRo5eYegPap9pgd3Y0syTqqo', '2017-09-08 01:47:10', NULL),
(2, 'Admin SaiGon Intela', 'saigonintelahcm@gmail.com', '$2y$10$iXq4U/C2QsRygs286M4BL.v8VKrF4Mc89ADPv.irRuY2XxobbJgY.', 'gEK5Qzvk2wwrr1rENocyDbGntR0wtYnqNv3P1953yUAIBxMBbOYvYWkMw4co', '2017-09-12 01:08:44', '2017-09-12 01:08:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configs_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tienichs`
--
ALTER TABLE `tienichs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tienichs`
--
ALTER TABLE `tienichs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
