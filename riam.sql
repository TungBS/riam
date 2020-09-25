-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 25, 2020 lúc 07:47 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `riam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `tuition_fees` int(11) NOT NULL DEFAULT 0,
  `requirements` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `name`, `slug`, `active`, `type_id`, `tuition_fees`, `requirements`, `training_time`, `description`, `content`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Dược sĩ', 'duoc-si', 1, 3, 80000000, 'THCS trở lên', 'Trung cấp trở lên học 1 năm. (1 năm/ 2 hk)', 'Học Trung Cấp Dược giúp bạn trau dồi kiến thức cũng như kỹ năng chuyên môn cần thiết. Nhằm đáp ứng tốt chuẩn chất lượng nhân lực…', '<h2>KH&Oacute;A HỌC TRUNG CẤP DƯỢC CH&Iacute;NH QUY TẠI TPHCM</h2>\r\n\r\n<h3>1. Tổng quan về ng&agrave;nh Dược sĩ:</h3>\r\n\r\n<p><strong>Dược học</strong>&nbsp;(<a href=\"https://riam.edu.vn/hoc-trung-cap-duoc-tphcm/\">tiếng Anh l&agrave; Pharmacy</a>) l&agrave; m&ocirc;n khoa học nghi&ecirc;n cứu về thuốc tr&ecirc;n 2 lĩnh vực ch&iacute;nh bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Qu&aacute; tr&igrave;nh nghi&ecirc;n cứu mối li&ecirc;n quan giữa thuốc v&agrave; cơ thể</li>\r\n	<li>C&aacute;ch vận dụng thuốc trong điều trị bệnh, ph&acirc;n phối thuốc&hellip;</li>\r\n</ul>\r\n\r\n<p><strong>Dược</strong>&nbsp;học được ph&acirc;n chia th&agrave;nh nhiều lĩnh vực như:</p>\r\n\r\n<ul>\r\n	<li>Nghi&ecirc;n cứu, sản xuất, lưu th&ocirc;ng ph&acirc;n phối, đảm bảo chất lượng, quản l&yacute; dược,</li>\r\n	<li>Hướng dẫn sử dụng thuốc cho mọi người.</li>\r\n</ul>\r\n\r\n<p><strong>Dược học</strong>&nbsp;l&agrave; ng&agrave;nh học được tổng hợp dựa tr&ecirc;n nhiều ng&agrave;nh khoa học kh&aacute;c nhau, nhưng chủ yếu v&agrave; cơ bản nhất l&agrave; h&oacute;a học v&agrave; sinh học.</p>\r\n\r\n<p><img alt=\"học trung cấp dược là gì\" src=\"https://riam.edu.vn/wp-content/uploads/2020/09/hoc-TRUNG-C%E1%BA%A4P-D%C6%AF%E1%BB%A2C-l%C3%A0m-vi%E1%BB%87c-t%E1%BA%A1i-nh%C3%A0-thu%E1%BB%91c.jpg\" style=\"height:400px; width:700px\" /></p>\r\n\r\n<p><em>Dược học l&agrave; ng&agrave;nh học được tổng hợp dựa tr&ecirc;n nhiều ng&agrave;nh khoa học kh&aacute;c nhau, nhưng chủ yếu v&agrave; cơ bản nhất l&agrave; h&oacute;a học v&agrave; sinh học.</em></p>\r\n\r\n<h3>2. Học trung cấp dược xong c&oacute; thể l&agrave;m g&igrave;?</h3>\r\n\r\n<p>Trở th&agrave;nh<strong>&nbsp;Y sĩ</strong>,&nbsp;<strong>Dược sĩ</strong>&nbsp;l&agrave; ước mơ của rất nhiều bạn trẻ, nhưng kh&ocirc;ng phải ai cũng đủ năng lực, may mắn để thực hiện ước mơ đ&oacute; bởi<strong>&nbsp;điểm chuẩn</strong>&nbsp;c&aacute;c trường&nbsp;<strong>Đại học ng&agrave;nh Y</strong>&nbsp;thường rất cao v&agrave;&nbsp;<strong>học ph&iacute;</strong>&nbsp;mắc bậc nhất trong c&aacute;c ng&agrave;nh học cũng như&nbsp;<strong>thời gian</strong>&nbsp;đ&agrave;o tạo kh&aacute; l&acirc;u.</p>\r\n\r\n<p>Để tiếp tục thực hiện ước mơ, nhiều bạn trẻ lựa chọn khởi đầu x&eacute;t tuyển trung cấp dược để ho&agrave;n thiện con đường học vấn của m&igrave;nh. Sau đ&oacute; sẽ từ từ đi l&agrave;m th&ecirc;m&nbsp;<strong>kinh nghiệm</strong>&nbsp;v&agrave;&nbsp;<a href=\"https://riam.edu.vn/hoc-trung-cap-duoc-tphcm/\"><strong>li&ecirc;n th&ocirc;ng cao đẳng</strong></a>,&nbsp;<strong>đại học Dược</strong>&nbsp;để ổn định về l&acirc;u d&agrave;i cũng như ph&aacute;t triển trong tương lai.</p>\r\n\r\n<h4>C&ocirc;ng việc bạn c&oacute; thể l&agrave;m sau khi tốt nghiệp kh&oacute;a học trung cấp Dược:</h4>\r\n\r\n<ul>\r\n	<li><a href=\"https://riam.edu.vn/hoc-trung-cap-duoc-tphcm/\"><strong>Dược t&aacute; (c&ograve;n gọi l&agrave; dược sơ cấp)</strong></a></li>\r\n</ul>\r\n\r\n<p>Sau khi ho&agrave;n th&agrave;nh chương tr&igrave;nh đ&agrave;o tạo tại&nbsp;<strong>Trung cấp Y Dược&nbsp;</strong>tại TPHCM, học vi&ecirc;n tốt nghiệp khoa&nbsp;<strong>Dược</strong>&nbsp;được gọi l&agrave;&nbsp;<strong>Dược t&aacute;</strong>&nbsp;(dược sơ cấp). Nếu kh&ocirc;ng b&aacute;n thuốc ở quầy thuốc,&nbsp;<strong>dược t&aacute;</strong>&nbsp;c&oacute; thể l&agrave;m việc tại c&aacute;c x&iacute; nghiệp sản xuất thuốc, gi&uacute;p việc cho dược sĩ, cấp thuốc ở&nbsp;<strong>khoa Dược</strong>&nbsp;trong bệnh viện&hellip;</p>\r\n\r\n<p><img alt=\"công việc có thể làm sau khi ra trường ngành Dược\" src=\"https://riam.edu.vn/wp-content/uploads/2020/09/H%E1%BB%8CC-TRUNG-C%E1%BA%A4P-D%C6%AF%E1%BB%A2C-CH%C3%8DNH-QUY-T%E1%BA%A0I-TPHCM-2020.jpg\" style=\"height:400px; width:700px\" /></p>\r\n\r\n<p><em>Khi ho&agrave;n th&agrave;nh chương tr&igrave;nh đ&agrave;o tạo tại&nbsp;<strong>Trung cấp Y Dược</strong>&nbsp;tại TPHCM, học vi&ecirc;n tốt nghiệp khoa<strong>&nbsp;Dược</strong>&nbsp;được gọi l&agrave;&nbsp;<strong>Dược t&aacute;</strong>&nbsp;(dược sơ cấp)</em></p>\r\n\r\n<p>Sau đ&acirc;y sẽ l&agrave; th&ocirc;ng tin tuyển sinh kh&oacute;a học<strong>&nbsp;trung cấp Dược</strong>&nbsp;đ&agrave;o tạo tại Tphcm. Lớp học b&agrave;i bản&nbsp;<strong>bằng cấp ch&iacute;nh quy</strong>, thời gian học linh hoạt,<strong>&nbsp;học tập trung</strong>&nbsp;v&agrave;o T7 &amp; CN h&agrave;ng tuần. Kh&oacute;a học ph&ugrave; hợp với&nbsp;<strong>mọi đối tượng</strong>&nbsp;y&ecirc;u th&iacute;ch c&ocirc;ng việc, thời gian&nbsp;<strong>đ&agrave;o tạo</strong>&nbsp;phụ thuộc v&agrave;o bằng cấp đầu v&agrave;o học vi&ecirc;n.</p>\r\n\r\n<h2>I. KH&Oacute;A HỌC TRUNG CẤP DƯỢC CH&Iacute;NH QUY TẠI TPHCM</h2>\r\n\r\n<h3>1. Chuy&ecirc;n ng&agrave;nh tuyển sinh &amp; đ&agrave;o tạo:</h3>\r\n\r\n<ul>\r\n	<li><a href=\"https://riam.edu.vn/hoc-trung-cap-duoc-tphcm/\">Dược sĩ trung cấp</a></li>\r\n	<li>Y sĩ đa khoa trung cấp</li>\r\n	<li><a href=\"https://riam.edu.vn/lien-thong-dai-hoc-dieu-duong/\">Điều dưỡng đại học</a></li>\r\n</ul>\r\n\r\n<h3>2. Đối tượng tuyển sinh v&agrave; thời gian đ&agrave;o tạo:</h3>\r\n\r\n<ul>\r\n	<li>Học sinh đ&atilde; tốt nghiệp lớp 9 (THCS hoặc Bổ t&uacute;c THCS): học 2,5 năm</li>\r\n	<li>Học sinh chưa được c&ocirc;ng nhận tốt nghiệp THPT (trượt tốt nghiệp lớp 12): học 02 năm</li>\r\n	<li>Học sinh đ&atilde; tốt nghiệp lớp 12 (THPT hoặc Bổ t&uacute;c THPT): học 1,5 năm</li>\r\n</ul>\r\n\r\n<p><strong>Đặc biệt :</strong>&nbsp;sinh vi&ecirc;n đ&atilde; tốt nghiệp&nbsp;<strong>Trung cấp ch&iacute;nh quy&nbsp;</strong>trở l&ecirc;n kh&aacute;c ng&agrave;nh :</p>\r\n\r\n<ul>\r\n	<li><strong>Học 10 th&aacute;ng</strong>&nbsp;cấp bằng trung cấp ch&iacute;nh quy hệ&nbsp;<strong>Văn bằng 2 trung cấp Dược.</strong></li>\r\n</ul>\r\n\r\n<p><strong>Thời gian đ&agrave;o tạo:&nbsp;</strong></p>\r\n\r\n<p>Đ&agrave;o tạo linh hoạt, học tập trung v&agrave;o thứ 7 v&agrave; chủ nhật h&agrave;ng tuần. Học vi&ecirc;n c&oacute; thể vừa đi l&agrave;m vừa n&acirc;ng cao kỹ năng, kiến thức ho&agrave;n thiện kh&oacute;a học hiệu quả nhất.</p>\r\n\r\n<h3>3. Bằng cấp:</h3>\r\n\r\n<p>Sau khi tốt nghiệp học vi&ecirc;n được cấp bằng&nbsp;<strong>Trung cấp ch&iacute;nh quy</strong>&nbsp;v&agrave; đủ điều kiện học<strong>&nbsp;li&ecirc;n th&ocirc;ng</strong>&nbsp;trực tiếp l&ecirc;n Cao đẳng &ndash; Đại học tr&ecirc;n to&agrave;n to&agrave;n quốc.</p>\r\n\r\n<h3><strong>Ưu điểm:</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>GIẢNG VI&Ecirc;N</strong><strong>:&nbsp;</strong>Thạc sĩ, Tiến sĩ c&ocirc;ng t&aacute;c trong c&aacute;c bệnh viện lớn tr&ecirc;n to&agrave;n quốc. L&agrave; những người thầy xuất sắc tr&ecirc;n cả hai phương diện l&yacute; thuyết v&agrave; thực tiễn, khả năng sư phạm cao v&agrave; tận t&acirc;m đối với học vi&ecirc;n.</li>\r\n	<li><strong>PHƯƠNG PH&Aacute;P Đ&Agrave;O TẠO:</strong>&nbsp;Tất cả c&aacute;c học vi&ecirc;n đều được c&aacute;c thầy/c&ocirc; trực tiếp hướng dẫn cụ thể.</li>\r\n	<li><strong>M&Ocirc;I TRƯỜNG HỌC TẬP:&nbsp;</strong>Ph&ograve;ng học rộng r&atilde;i, tho&aacute;ng m&aacute;t, m&aacute;y t&iacute;nh cho mỗi học vi&ecirc;n, wifi free, gi&aacute;o tr&igrave;nh miễn ph&iacute;. Đảm bảo ti&ecirc;u ch&iacute; học tập v&agrave; l&agrave;m việc trong một m&ocirc;i trường chuy&ecirc;n nghiệp.</li>\r\n	<li><strong>T&Agrave;I LIỆU:</strong>&nbsp;Được ph&aacute;t miễn ph&iacute; gồm t&agrave;i liệu giấy, c&aacute;c clip hướng dẫn.</li>\r\n	<li><strong>THỜI GIAN HỌC :</strong>&nbsp;Linh hoạt cho học vi&ecirc;n c&oacute; thể vừa đi l&agrave;m vừa ho&agrave;n th&agrave;nh kh&oacute;a học.</li>\r\n	<li><strong>C&oacute; lớp học sẵn, bổ sung hồ sơ học vi&ecirc;n, học r&uacute;t ngắn thời gian chi ph&iacute; học tập.</strong></li>\r\n	<li>100% c&aacute;c học vi&ecirc;n sau khi ho&agrave;n th&agrave;nh đều c&oacute; c&ocirc;ng việc ổn định.</li>\r\n	<li><a href=\"https://riam.edu.vn/lien-thong-tu-trung-cap-duoc-len-cao-dang-duoc-tphcm/\">Li&ecirc;n th&ocirc;ng từ trung cấp dược l&ecirc;n cao đẳng Dược tại Tphcm</a></li>\r\n</ul>\r\n\r\n<h3>4. Hồ sơ x&eacute;t tuyển:</h3>\r\n\r\n<ul>\r\n	<li>Bằng, bảng điểm c&ocirc;ng chứng</li>\r\n	<li>Bản sao giấy khai sinh</li>\r\n	<li>Hộ khẩu c&ocirc;ng chứng</li>\r\n	<li>Giấy kh&aacute;m sức khỏe</li>\r\n	<li>Chứng minh nh&acirc;n d&acirc;n c&ocirc;ng chứng</li>\r\n	<li>Hồ sơ học sinh, sinh vi&ecirc;n c&oacute; x&aacute;c nhận dấu của cơ quan địa phương hoặc tại cơ quan l&agrave;m việc ( Hồ sơ c&oacute; b&aacute;n tại hiệu s&aacute;ch hoặc tại văn ph&ograve;ng của trường)</li>\r\n	<li>Phiếu đăng k&yacute; tuyển sinh trung cấp chuy&ecirc;n nghiệp c&oacute; x&aacute;c nhận dấu ( Hồ sơ c&oacute; b&aacute;n tại c&aacute;c hiệu s&aacute;ch hoặc tại văn ph&ograve;ng của trường)</li>\r\n	<li>4 ảnh 4*6</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://riam.edu.vn/wp-content/uploads/2020/09/T%E1%BB%94NG-H%E1%BB%A2P-KH%C3%93A-H%E1%BB%8CC-TRUNG-C%E1%BA%A4P-D%C6%AF%E1%BB%A2C-CH%C3%8DNH-QUY-T%E1%BA%A0I-TPHCM.jpg\" style=\"height:400px; width:700px\" /></p>\r\n\r\n<p><em>Đ&agrave;o tạo<strong>&nbsp;trung cấp Dược</strong>&nbsp;chuẩn đầu ra về kỹ năng v&agrave; kiến thức. 100% việc l&agrave;m sau khi tốt nghiệp.</em></p>\r\n\r\n<h2>II. Chuẩn đầu ra về kỹ năng lẫn kiến thức sau khi ho&agrave;n th&agrave;nh kh&oacute;a học Trung cấp Dược:</h2>\r\n\r\n<h3><strong>1. Về kiến thức ng&agrave;nh Dược:</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Tr&igrave;nh b&agrave;y</strong>&nbsp;được kiến thức cơ sở về&nbsp;<strong>h&oacute;a ph&acirc;n t&iacute;ch</strong>, thực vật dược, dược liệu, dược l&yacute;, c&aacute;c quy tr&igrave;nh kỹ thuật về&nbsp;<strong>b&agrave;o chế thuốc</strong>, bảo quản thuốc v&agrave; dụng cụ y tế, c&aacute;c kỹ thuật kiểm nghiệm dược&hellip;</li>\r\n	<li>X&aacute;c định được nhu cầu, lập kế hoạch cung ứng thuốc của cộng đồng nơi l&agrave;m việc.</li>\r\n	<li>Vận dụng tổng hợp kiến thức v&agrave; kỹ thuật đ&atilde; học để tham gia v&agrave;o c&aacute;c hoạt động bảo vệ v&agrave; chăm s&oacute;c sức khỏe cộng đồng.</li>\r\n</ul>\r\n\r\n<h3><strong>2. Kỹ năng Dược:</strong></h3>\r\n\r\n<ul>\r\n	<li>C&oacute; khả năng quản l&yacute;, bảo quản, lưu trữ, cung ứng thuốc, cấp ph&aacute;t tại cơ sở kh&aacute;m chữa bệnh v&agrave; c&aacute;c cơ sở kinh doanh dược phẩm đ&uacute;ng qui tr&igrave;nh kỹ thuật;</li>\r\n	<li>C&oacute; khả năng b&agrave;o chế được một thuốc th&ocirc;ng thường trong phạm vi tr&aacute;ch nhiệm được giao;</li>\r\n	<li>Hướng dẫn bệnh nh&acirc;n v&agrave; cộng đồng sử dụng thuốc an to&agrave;n, hợp l&yacute; v&agrave; hiệu quả;</li>\r\n	<li>Hướng dẫn nh&acirc;n d&acirc;n sử dụng dược liệu để l&agrave;m thuốc;</li>\r\n	<li>Tham gia thực hiện c&aacute;c chương tr&igrave;nh Y tế tại địa phương, nơi c&ocirc;ng t&aacute;c theo nhiệm vụ được giao;</li>\r\n	<li>Thực hiện luật bảo vệ nh&acirc;n d&acirc;n v&agrave; những qui định về chuy&ecirc;n m&ocirc;n nghiệp vụ của Bộ Y tế;</li>\r\n	<li>C&oacute; kỹ năng giao tiếp, truyền th&ocirc;ng tư vấn, gi&aacute;o dục sức khỏe cho người bệnh v&agrave; cộng đồng.</li>\r\n</ul>\r\n\r\n<h3><strong>Năng lực tự chủ v&agrave; tr&aacute;ch nhiệm</strong></h3>\r\n\r\n<ul>\r\n	<li>Thực h&agrave;nh nghề nghiệp theo luật ph&aacute;p, tận tụy với sự nghiệp bảo vệ, chăm s&oacute;c sức khoẻ con người.</li>\r\n	<li>T&ocirc;n trọng v&agrave; ch&acirc;n th&agrave;nh hợp t&aacute;c với đồng nghiệp, giữ g&igrave;n v&agrave; ph&aacute;t huy truyền thống tốt đẹp của ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<p><img alt=\"học trung cấp dược chính quy tại tphcm 2020 2021\" src=\"https://riam.edu.vn/wp-content/uploads/2020/09/H%E1%BB%8Dc-10-th%C3%A1ng-c%E1%BA%A5p-b%E1%BA%B1ng-trung-c%E1%BA%A5p-ch%C3%ADnh-quy-h%E1%BB%87-V%C4%83n-b%E1%BA%B1ng-2-trung-c%E1%BA%A5p-D%C6%B0%E1%BB%A3c.jpg\" style=\"height:400px; width:700px\" /></p>\r\n\r\n<p>Trở th&agrave;nh<strong>&nbsp;Y sĩ</strong>,&nbsp;<strong>Dược sĩ</strong>&nbsp;l&agrave; ước mơ của rất nhiều bạn trẻ. Học<strong>&nbsp;trung cấp Dược</strong>&nbsp;ch&iacute;nh quy đ&agrave;o tạo hiệu quả nhất tại Tphcm!</p>', '2020-09-24__dao-tao-trung-cap-duoc-si-tai-tphcm.jpg', '2020-09-23 22:02:22', '2020-09-23 22:24:32'),
(2, 'Sư phạm Mầm non', 'su-pham-mam-non', 1, 3, 82000000, 'THCS trở lên', 'THCS học 3 năm, THPT học 2 năm, TC học 1 năm', 'Ngành sư phạm mầm non được rất nhiều các bạn trẻ yêu thích nhất với các bạn nữ. Những bạn yêu quí trẻ con muốn góp sức mình dạy dỗ……', '<h2>TH&Ocirc;NG B&Aacute;O TUYỂN SINH &amp; Đ&Agrave;O TẠO LỚP TRUNG CẤP SƯ PHẠM MẦM NON</h2>\r\n\r\n<p><em>( Nhận hồ sơ tại văn ph&ograve;ng tuyển sinh trường : 181 L&ecirc; Đức Thọ, phường 17, quận G&ograve; Vấp Tphcm. Hotline : 0936.201.222)</em></p>\r\n\r\n<h3>1. Chuy&ecirc;n ng&agrave;nh đ&agrave;o tạo tuyển sinh :</h3>\r\n\r\n<ul>\r\n	<li><a href=\"https://riam.edu.vn/trung-cap-su-pham-mam-non-hoc-va-lam/\">Trung cấp sư phạm mầm non</a></li>\r\n	<li>Trung cấp sư phạm tiểu học</li>\r\n	<li>Văn bằng 2 sư phạm mầm non, tiểu học.</li>\r\n</ul>\r\n\r\n<h3>2. Đối tượng tuyển sinh :</h3>\r\n\r\n<ul>\r\n	<li>Học vi&ecirc;n tốt nghiệp từ THPT trở l&ecirc;n.</li>\r\n	<li>Học vi&ecirc;n c&oacute; nguyện vọng theo học trung cấp ng&agrave;nh mầm non</li>\r\n	<li>Học vi&ecirc;n mong muốn c&ocirc;ng t&aacute;c giảng dạy trong ng&agrave;nh sư phạm. Học văn bằng 2 trung cấp mầm non, hoặc c&oacute; định hướng li&ecirc;n th&ocirc;ng đại học chuy&ecirc;n ng&agrave;nh mầm non sau khi tốt nghiệp trung cấp.</li>\r\n</ul>\r\n\r\n<p><strong>3. Tuyển sinh :</strong>&nbsp;X&eacute;t tuyển ( kh&ocirc;ng thi đầu v&agrave;o )</p>\r\n\r\n<h3>Học ph&iacute; học trung cấp sư phạm mầm non trong năm 2020 l&agrave; :</h3>\r\n\r\n<ul>\r\n	<li><a href=\"https://riam.edu.vn/trung-cap-su-pham-mam-non-hoc-va-lam/\">&nbsp;3.750.000 VNĐ/ học kỳ ( với hệ 2 &ndash; 3 năm )</a></li>\r\n	<li>&nbsp;4.500.000 VNĐ/ học kỳ ( với hệ 1 năm / văn bằng 2 )</li>\r\n</ul>\r\n\r\n<p><strong>4. Thời gian đ&agrave;o tạo :</strong></p>\r\n\r\n<p>T&ugrave;y v&agrave;o bằng cấp cao nhất hiện tại học vi&ecirc;n ho&agrave;n th&agrave;nh m&agrave; chương tr&igrave;nh học trung cấp mầm non sẽ c&oacute; thời gian đ&agrave;o tạo kh&aacute;c nhau.</p>\r\n\r\n<ul>\r\n	<li>Đối với học vi&ecirc;n Đ&atilde; c&oacute; một bằng đại học ( học văn bằng 2 trung cấp mầm non) : Hệ 1 năm ( đ&agrave;o tạo 10 th&aacute;ng cấp bằng )</li>\r\n	<li>Đ&atilde; tốt nghiệp THPT trở l&ecirc;n : Đ&agrave;o tạo 2 năm.</li>\r\n	<li>Đ&atilde; tốt nghiệp THCS : đ&agrave;o tạo 3 năm.</li>\r\n</ul>\r\n\r\n<p><strong>5. Thời gian tuyển sinh :</strong>&nbsp;Từ ng&agrave;y ra th&ocirc;ng b&aacute;o.</p>\r\n\r\n<p><strong>6. Dự kiến khai giảng :</strong>&nbsp;<a href=\"https://riam.edu.vn/trung-cap-su-pham-mam-non-hoc-va-lam/\">li&ecirc;n tục trong năm.</a></p>\r\n\r\n<p><strong>7. Bằng cấp sau tốt nghiệp:</strong>&nbsp;<a href=\"https://riam.edu.vn/trung-cap-su-pham-mam-non-hoc-va-lam/\">Bằng trung cấp sư phạm mầm non ch&iacute;nh quy</a>&nbsp;do trường Trung cấp Quốc Tế S&agrave;i G&ograve;n cấp c&oacute; gi&aacute; trị tr&ecirc;n to&agrave;n Quốc.</p>\r\n\r\n<ul>\r\n	<li>Đặc biệt c&oacute; lớp :&nbsp;<a href=\"https://riam.edu.vn/lien-thong-dai-hoc-su-pham-mam-non-nam-2020-tai-tphcm/\">Li&ecirc;n th&ocirc;ng cao đẳng, đại học sư phạm mầm non</a>&nbsp;ngay nếu học vi&ecirc;n c&oacute; nguyện vọng. nhận hồ sơ, đ&agrave;o tạo tại G&ograve; Vấp : 181 L&ecirc; Đức Thọ, phường 17, quận G&ograve; Vấp Tphcm.&nbsp;<strong>Hotline : 0936.201.222 ( thầy Dũng nhận hồ sơ) | 0909392.666 ( C&ocirc; Tr&uacute;c tư vấn )</strong></li>\r\n</ul>\r\n\r\n<h2>8. Hồ sơ x&eacute;t tuyển Trung cấp sư phạm mầm non bao gồm :</h2>\r\n\r\n<p>✓&nbsp;Sơ yếu l&yacute; lịch học sinh &ndash; sinh vi&ecirc;n xin x&aacute;c nhận của x&atilde; phường địa phương hoặc cơ quan đang c&ocirc;ng t&aacute;c.</p>\r\n\r\n<p>✓&nbsp;Bằng + học bạ THPT photo c&ocirc;ng chứng;</p>\r\n\r\n<p>✓&nbsp;Bằng v&agrave; bảng điểm tốt nghiệp đại học, cao đẳng, trung cấp chuy&ecirc;n ng&agrave;nh văn thư lưu trữ hoặc chuy&ecirc;n ng&agrave;nh kh&aacute;c (nếu c&oacute;), nộp bản photo c&ocirc;ng chứng;</p>\r\n\r\n<p>✓&nbsp;Ảnh m&agrave;u cỡ 3x4cm (02 ảnh), 02 ảnh 4x6cm (02 ảnh);</p>\r\n\r\n<p>✓&nbsp;Giấy tờ ưu ti&ecirc;n kh&aacute;c nếu c&oacute;.</p>\r\n\r\n<p><img alt=\"tuyển sinh đào tạo TRUNG CẤP SƯ PHẠM MẦM NON\" src=\"https://riam.edu.vn/wp-content/uploads/2020/07/tuy%E1%BB%83n-sinh-%C4%91%C3%A0o-t%E1%BA%A1o-TRUNG-C%E1%BA%A4P-S%C6%AF-PH%E1%BA%A0M-M%E1%BA%A6M-NON-.jpg\" style=\"height:417px; width:626px\" /></p>\r\n\r\n<p>Đ&agrave;o tạo hệ trung cấp mầm non Uy t&iacute;n &ndash; Hiệu quả &ndash; Bằng ch&iacute;nh quy &ndash; Gi&aacute; trị to&agrave;n Quốc!</p>', '2020-09-24__lien-thong-dai-hoc-su-pham-mam-non-tai-tphcm.jpg', '2020-09-23 22:24:17', NULL),
(3, 'Sư phạm Toán', 'su-pham-toan', 1, 1, 156000000, 'Trung Cấp trở lên', 'TC học 36 tháng, CĐ học 18 tháng, VB 2 học 24 tháng', 'Học Đại học Sư phạm Toán giúp bạn trau dồi kiến thức cũng như kỹ năng chuyên môn cần thiết. Nhằm đáp ứng tốt chuẩn chất lượng nhân lực…', '<h2>TUYỂN SINH LI&Ecirc;N TH&Ocirc;NG ĐẠI HỌC SƯ PHẠM TO&Aacute;N Đ&Agrave;O TẠO TẠI TPHCM H&Igrave;NH THỨC Đ&Agrave;O TẠO VỪA HỌC VỪA L&Agrave;M</h2>\r\n\r\n<p>1. Đối tượng tuyển sinh :</p>\r\n\r\n<p>✓Những người tốt nghiệp từ trung cấp, cao đẳng&nbsp;chuy&ecirc;n ng&agrave;nh To&aacute;n, To&aacute;n &ndash; l&yacute;, To&aacute;n tin. H&igrave;nh thức đ&agrave;o tạo li&ecirc;n th&ocirc;ng đại học vừa học vừa l&agrave;m.</p>\r\n\r\n<p>✓Những người đ&atilde; tốt nghiệp &iacute;t nhất một bằng đại học, muốn học th&ecirc;m&nbsp;văn bằng 2 ng&agrave;nh sư phạm to&aacute;n. H&igrave;nh thức đ&agrave;o tạo Văn bằng 2 vừa học vừa l&agrave;m.</p>\r\n\r\n<p>2. Thời gian đ&agrave;o tạo:</p>\r\n\r\n<p>✓Từ trung cấp l&ecirc;n đại học: 36 th&aacute;ng</p>\r\n\r\n<p>✓Từ cao đẳng l&ecirc;n đại học: 18 th&aacute;ng</p>\r\n\r\n<p>✓Học văn bằng 2 sư phạm To&aacute;n : 24 th&aacute;ng.</p>\r\n\r\n<p>3. H&igrave;nh thức tuyển sinh:</p>\r\n\r\n<p>Thi tuyển:&nbsp;Thi tuyển theo đề thi tuyển sinh của trường.</p>\r\n\r\n<p>X&eacute;t tuyển:</p>\r\n\r\n<p>✓&nbsp;Sử dụng kết quả kỳ thi THPT Quốc gia.</p>\r\n\r\n<p>✓&nbsp;Điểm x&eacute;t tuyển được x&aacute;c định từ kết quả thi của tổ hợp (3 m&ocirc;n thi) do th&iacute; sinh đăng k&yacute; từ c&aacute;c tổ hợp m&ocirc;n thi của ng&agrave;nh.</p>\r\n\r\n<p>✓&nbsp;Thời gian thi v&agrave; x&eacute;t tuyển: c&aacute;c đợt trong năm theo kế hoạch tuyển sinh của Nh&agrave; trường v&agrave; hướng dẫn của Bộ GD&amp;ĐT.</p>\r\n\r\n<p><img alt=\"\" src=\"http://riam.edu.vn/wp-content/uploads/2020/01/lien-thong-dai-hoc-su-pham-toan-tphcm.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p>Tuyển sinh li&ecirc;n th&ocirc;ng Đại Học sư phạm To&aacute;n tại Tphcm| Hiệu Quả Cao</p>\r\n\r\n<h2>Dự kiến mức học ph&iacute; li&ecirc;n th&ocirc;ng đại học sư phạm To&aacute;n như sau:</h2>\r\n\r\n<ul>\r\n	<li><a href=\"http://riam.edu.vn/tuyen-sinh-lien-thong-dai-hoc-su-pham-toan-tai-tphcm-hieu-qua-cao/\">6.000.000 đồng / học kỳ</a></li>\r\n</ul>\r\n\r\n<p><strong>Hồ sơ bao gồm :</strong></p>\r\n\r\n<p>✓&nbsp;Phiếu đăng k&iacute; dự tuyển (theo mẫu ph&aacute;t h&agrave;nh k&egrave;m hồ sơ tuyển sinh) ghi đầy đủ c&aacute;c nội dung trong phiếu;</p>\r\n\r\n<p>✓&nbsp;02 bản sao c&ocirc;ng chứng: Bằng tốt nghiệp, bảng điểm kh&oacute;a học; Chứng minh thư nh&acirc;n d&acirc;n.</p>\r\n\r\n<p>✓&nbsp;Giấy x&aacute;c nhận được hưởng chế độ ưu ti&ecirc;n nếu c&oacute;;</p>\r\n\r\n<p>✓&nbsp;Bản sao giấy khai sinh;</p>\r\n\r\n<p>✓&nbsp;4 ảnh 3&times;4 (sau ảnh ghi họ v&agrave; t&ecirc;n, ng&agrave;y th&aacute;ng năm sinh);</p>\r\n\r\n<p>✓&nbsp;2 phong b&igrave; ghi r&otilde; nơi gửi.</p>\r\n\r\n<h4>Khả năng học tập, n&acirc;ng cao tr&igrave;nh độ sau khi ra trường</h4>\r\n\r\n<ul>\r\n	<li>C&oacute; năng lực học tập suốt đời;&nbsp;<a href=\"http://riam.edu.vn/tuyen-sinh-lien-thong-dai-hoc-su-pham-toan-tai-tphcm-hieu-qua-cao/\">c&oacute; đủ kiến thức để học l&ecirc;n bậc thạc sĩ</a>&nbsp;ng&agrave;nh l&yacute; luận v&agrave; phương ph&aacute;p dạy học To&aacute;n học, ng&agrave;nh gi&aacute;o dục, quản l&yacute; gi&aacute;o dục ở trong v&agrave; ngo&agrave;i nước v&agrave; c&aacute;c ng&agrave;nh c&oacute; li&ecirc;n quan đến chuy&ecirc;n ng&agrave;nh được đ&agrave;o tạo.</li>\r\n	<li>C&oacute; thể thực hiện được c&aacute;c đề t&agrave;i nghi&ecirc;n cứu khoa học cấp sơ sở hoặc tham gia đề t&agrave;i nghi&ecirc;n cứu khoa học ở c&aacute;c cấp kh&aacute;c nhau trong lĩnh vực giảng dạy v&agrave; gi&aacute;o dục.</li>\r\n</ul>\r\n\r\n<h4>Vị tr&iacute; l&agrave;m việc của người học sau khi tốt nghiệp</h4>\r\n\r\n<ul>\r\n	<li>C&oacute; thể l&agrave;m&nbsp;<a href=\"http://riam.edu.vn/tuyen-sinh-lien-thong-dai-hoc-su-pham-toan-tai-tphcm-hieu-qua-cao/\">c&ocirc;ng t&aacute;c giảng dạy</a>&nbsp;tại c&aacute;c trường tiểu học, c&aacute;c trường trung học, c&aacute;c trường trung học chuy&ecirc;n nghiệp v&agrave; dạy nghề, c&aacute;c trường cao đẳng v&agrave; đại học.</li>\r\n	<li>C&oacute; thể l&agrave;m c&ocirc;ng t&aacute;c nghi&ecirc;n cứu tại c&aacute;c trung t&acirc;m, viện nghi&ecirc;n cứu.</li>\r\n	<li>C&oacute; thể l&agrave;m c&ocirc;ng t&aacute;c chuy&ecirc;n vi&ecirc;n v&agrave; quản l&yacute; ở c&aacute;c trường học, c&aacute;c ph&ograve;ng gi&aacute;o dục, c&aacute;c cơ sở gi&aacute;o dục v&agrave; c&aacute;c cơ sở sản xuất, kinh doanh.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Tuyển sinh liên thông Đại Học sư phạm Toán tại Tphcm| Hiệu Quả Cao\" src=\"http://riam.edu.vn/wp-content/uploads/2019/12/chung-chi-nghiep-vu-su-pham-mam-non2.jpg\" style=\"height:417px; width:626px\" /></p>\r\n\r\n<p>C&oacute; thể l&agrave;m c&ocirc;ng t&aacute;c giảng dạy tại c&aacute;c trường tiểu học, c&aacute;c trường trung học, c&aacute;c trường trung học chuy&ecirc;n nghiệp v&agrave; dạy nghề, c&aacute;c trường cao đẳng v&agrave; đại học.</p>', '2020-09-24__lien-thong-dai-hoc-su-pham-toan-tai-tphcm.jpg', '2020-09-23 22:31:21', '2020-09-23 23:45:38'),
(4, 'Sư phạm Tiểu học', 'su-pham-tieu-hoc', 1, 3, 68000000, 'THCS trở lên', 'THCS học 2.5 năm, THPT học 2 năm,  văn bằng 2 học 1 năm', 'Ngành sư phạm tiểu học, thầy cô là những người đặt nền móng đầu tiên cho nhận thức và định hình nên tính cách cho các em sau này…', '<h2>TUYỂN SINH HỆ TRUNG CẤP NG&Agrave;NH SƯ PHẠM TIỂU HỌC CH&Iacute;NH QUY</h2>\r\n\r\n<p>Nh&agrave; trường th&ocirc;ng b&aacute;o tuyển sinh hệ trung cấp ng&agrave;nh sư phạm tiểu học đ&agrave;o tạo ngo&agrave;i giờ h&agrave;nh ch&iacute;nh ph&ugrave; hợp với mọi đối tượng y&ecirc;u th&iacute;ch c&ocirc;ng việc sư phạm trong năm 2020. Th&ocirc;ng tin tuyển sinh chi tiết như sau :</p>\r\n\r\n<p>Ng&agrave;nh Tuyển sinh :</p>\r\n\r\n<p><a href=\"https://riam.edu.vn/trung-cap-su-pham-mam-non-chinh-quy-tphcm-2020-hoc-ngay/\">Trung cấp sư phạm mầm non</a></p>\r\n\r\n<h3><a href=\"https://riam.edu.vn/trung-cap-su-pham-tieu-hoc-chinh-quy-tphcm-2020-vhvl/\">Trung cấp sư phạm tiểu học</a></h3>\r\n\r\n<p>Đối tượng tuyển sinh :</p>\r\n\r\n<p>&ndash; Tốt nghiệp THCS : Học 2.5 năm</p>\r\n\r\n<p>&ndash; Tốt nghiệp THPT : Học 2 năm</p>\r\n\r\n<p>&ndash; Tốt nghiệp Trung cấp ng&agrave;nh kh&aacute;c chuyển đổi sang (văn bằng 2) : Học 1 năm.</p>\r\n\r\n<p>Học vi&ecirc;n c&oacute; nhu cầu học&nbsp;<em><a href=\"https://riam.edu.vn/trung-cap-su-pham-tieu-hoc-chinh-quy-tphcm-2020-vhvl/\">Trung cấp Tiểu học&nbsp;</a></em>,&nbsp;<em>Trung cấp mầm non&nbsp;</em>để ho&agrave;n thiện hồ sơ r&uacute;t ngắn thời gian cũng như chi ph&iacute; học tập&nbsp;<a href=\"https://riam.edu.vn/lien-thong-dai-hoc-su-pham-tieu-hoc/\"><strong>li&ecirc;n th&ocirc;ng đại học sư phạm tiểu học</strong></a>&nbsp;vui l&ograve;ng li&ecirc;n hệ với ban tư vấn tuyển sinh qua số điện thoại :&nbsp;<strong>0936.201.222</strong>&nbsp;( thầy Dũng) &ndash;&nbsp;<strong>0916.004.078</strong>&nbsp;(c&ocirc; Hiền ph&ograve;ng tuyển sinh trung cấp sư phạm tiểu học )</p>\r\n\r\n<p>H&igrave;nh thức đ&agrave;o tạo :&nbsp;Học ngo&agrave;i giờ h&agrave;nh ch&iacute;nh, thứ 7 v&agrave; chủ nhật h&agrave;ng tuần. Thời gian học ph&ugrave; hợp với cả người bận rộn nhất. Học vi&ecirc;n sắp xếp thời gian linh hoạt.</p>\r\n\r\n<p>Địa điểm nhận hồ sơ v&agrave; học tập :</p>\r\n\r\n<p>+ Nhận hồ sơ tại : Văn Ph&ograve;ng tuyển sinh số 03</p>\r\n\r\n<p>+ Học vi&ecirc;n sẽ học tại :181 L&ecirc; Đức Thọ, Phường 17, Quận G&ograve; Vấp, Tphcm &ndash; Trong khu&ocirc;n vi&ecirc;n trường ĐH Nội Vụ Tphcm.</p>\r\n\r\n<h2>Học ph&iacute; học trung cấp sư phạm Tiểu học ch&iacute;nh quy tại Tphcm :</h2>\r\n\r\n<p>+ Học ph&iacute; dự kiến :&nbsp;3.750.000 vnđ / học kỳ ( HỆ HỌC 2-3 NĂM)</p>\r\n\r\n<p>+ Học ph&iacute; học&nbsp;văn bằng 2 ( VB2 ) trung cấp Sư phạm tiểu học&nbsp;: 4.750.000 vnđ / học kỳ.</p>\r\n\r\n<p>Bằng cấp :&nbsp;<strong>Trung cấp tiểu học ch&iacute;nh quy.</strong></p>\r\n\r\n<p>Sau khi ra ho&agrave;n th&agrave;nh kh&oacute;a học học vi&ecirc;n được cấp bằng trung cấp ch&iacute;nh quy ng&agrave;nh SP Tiểu Học do Bộ Gi&aacute;o Dục &amp; Đ&agrave;o tạo ban h&agrave;nh . Được li&ecirc;n th&ocirc;ng l&ecirc;n Cao đẳng 1,5 năm hoặc li&ecirc;n th&ocirc;ng trực tiếp l&ecirc;n Đại học 2,5 năm . Học vi&ecirc;n được thi x&eacute;t tuyển c&ocirc;ng chức gi&aacute;o vi&ecirc;n theo quy định.</p>\r\n\r\n<p><em>Thời gian nộp hồ sơ :&nbsp;từ ng&agrave;y ra th&ocirc;ng b&aacute;o. Nhận hồ sơ li&ecirc;n tục trong năm.</em></p>\r\n\r\n<p>Lưu &yacute; : Nh&agrave; trường sẽ dừng nhận hồ sơ khi đủ chỉ ti&ecirc;u. Học vi&ecirc;n c&oacute; nhu cầu học vui l&ograve;ng li&ecirc;n hệ qua số điện thoại của ph&ograve;ng tư vấn tuyển sinh :&nbsp;<strong>0286.286.9333 ( c&ocirc; Hiền )</strong>&nbsp;&ndash;&nbsp;<strong>0936.201.222 ( Thầy Dũng )</strong></p>\r\n\r\n<p><strong><em>Hồ sơ bao gồm :</em></strong></p>\r\n\r\n<ul>\r\n	<li>L&yacute; lịch hồ sơ học sinh sinh vi&ecirc;n</li>\r\n	<li>Bằng + bảng điểm tốt nghiệp ( bản sao )</li>\r\n	<li>Chứng minh nh&acirc;n d&acirc;n ( bản sao )</li>\r\n	<li>4 h&igrave;nh 4&times;6 ( chụp kh&ocirc;ng qu&aacute; 3 th&aacute;ng )</li>\r\n	<li>Giấy khai sinh</li>\r\n</ul>\r\n\r\n<p><img alt=\"TRUNG CẤP SƯ PHẠM tiểu học CHÍNH QUY TPHCM 2020 | HỌC NGAY\" src=\"https://riam.edu.vn/wp-content/uploads/2020/01/trung-c%E1%BA%A5p-th%C6%B0-vi%E1%BB%87n-thi%E1%BA%BFt-b%E1%BB%8B-tr%C6%B0%E1%BB%9Dng-h%E1%BB%8Dc-tphcm-2020.jpg\" style=\"height:417px; width:626px\" /></p>\r\n\r\n<p><em>Đăng k&yacute; học trung cấp &ndash; tiểu học tại Tphcm trong năm 2020 &ndash; CHẤT LƯỢNG &ndash; UY T&Iacute;N &ndash; CH&Iacute;NH QUY. Đ&agrave;o tạo Cấp bằng nhanh nhất.</em></p>', '2020-09-24__lien-thong-dai-hoc-nganh-su-pham-tieu-hoc-tai-tphcm.jpg', '2020-09-23 22:38:08', NULL),
(5, 'Ngôn ngữ Anh', 'ngon-ngu-anh', 1, 1, 84000000, 'Cao Đẳng trở lên', 'CĐ học 2.5 năm, VB 2 học 2 năm', 'Trên thế giới có hơn 80 quốc gia sử dụng ngôn ngữ Anh (ngôn ngữ thứ 2). Hơn 500 triệu người dùng làm ngôn ngữ chính. Đủ thấy mức độ phổ biến của tiếng Anh là không hề nhỏ. Tiếng Anh là công cụ giúp bạn kết nối, mở rộng mối quan hệ...', '<h2>1. Ng&agrave;nh ng&ocirc;n ngữ Anh ( English Studies)</h2>\r\n\r\n<p><a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">Ng&agrave;nh ng&ocirc;n ngữ Anh</a>&nbsp;l&agrave; một ng&agrave;nh học chuy&ecirc;n nghi&ecirc;n cứu, sử dụng tiếng Anh để sinh vi&ecirc;n c&oacute; thể l&agrave;m chủ v&agrave; giao tiếp tiếng Anh th&agrave;nh thạo. Ng&ocirc;n ngữ Anh mang đến nhiều cơ hội cho c&aacute;c bạn trẻ mong muốn l&agrave;m việc tại m&ocirc;i trường kinh tế hội nhập với c&aacute;c doanh nghiệp nước ngo&agrave;i.</p>\r\n\r\n<p><img alt=\"Ngành ngôn ngữ Anh là một ngành học chuyên nghiên cứu, sử dụng tiếng Anh để sinh viên có thể làm chủ và giao tiếp tiếng Anh thành thạo\" src=\"http://riam.edu.vn/wp-content/uploads/2019/12/lien-thong-dai-hoc-nganh-ngon-ngu-anh-vb2-tphcm.jpg\" style=\"height:418px; width:626px\" /></p>\r\n\r\n<p>Ng&agrave;nh ng&ocirc;n ngữ Anh l&agrave; một ng&agrave;nh học chuy&ecirc;n nghi&ecirc;n cứu, sử dụng tiếng Anh để sinh vi&ecirc;n c&oacute; thể l&agrave;m chủ v&agrave; giao tiếp tiếng Anh th&agrave;nh thạo</p>\r\n\r\n<h2>2. Mục ti&ecirc;u đ&agrave;o tạo:</h2>\r\n\r\n<h3>Mục ti&ecirc;u chung:</h3>\r\n\r\n<p>Đ&agrave;o tạo<a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">&nbsp;cử nh&acirc;n đại học ng&agrave;nh ch&iacute;nh Ng&ocirc;n ngữ Anh</a>&nbsp;&ndash; ng&agrave;nh phụ Quản trị Kinh doanh.</p>\r\n\r\n<p>+C&oacute; phẩm chất ch&iacute;nh trị, đạo đức v&agrave; sức khoẻ tốt, c&oacute; tr&aacute;ch nhiệm x&atilde; hội.</p>\r\n\r\n<p>+C&oacute; khả năng sử dụng tiếng Anh như một ng&ocirc;n ngữ thứ hai:</p>\r\n\r\n<ul>\r\n	<li>Để thực hiện c&aacute;c hoạt động chuy&ecirc;n m&ocirc;n trong lĩnh vực quản trị kinh doanh trong m&ocirc;i trường nghề nghiệp c&oacute; y&ecirc;u cầu sử dụng tiếng Anh l&agrave;m c&ocirc;ng cụ giao tiếp ch&iacute;nh.</li>\r\n</ul>\r\n\r\n<h3>Mục ti&ecirc;u cụ thể:</h3>\r\n\r\n<h4>&ndash; Về kiến thức:</h4>\r\n\r\n<ul>\r\n	<li>Nắm vững những kiến thức cơ bản về c&aacute;c b&igrave;nh diện ng&ocirc;n ngữ, ng&ocirc;n ngữ Anh, Việt&nbsp; cũng như văn h&oacute;a c&aacute;c nước n&oacute;i tiếng Anh (trước hết l&agrave; Anh, Mỹ) v&agrave; văn h&oacute;a Việt Nam.</li>\r\n	<li>C&oacute; tr&igrave;nh độ Tiếng Anh tương đương tr&igrave;nh độ C1 theo Khung tham chiếu về đ&aacute;nh gi&aacute; năng lực sử dụng ngoại ngữ theo ti&ecirc;u chuẩn chung Ch&acirc;u &Acirc;u (CEFR).</li>\r\n	<li>Nắm vững kiến thức cơ bản về quản trị kinh doanh v&agrave; kiến thức tiếng Anh chuy&ecirc;n ng&agrave;nh trong lĩnh vực n&agrave;y để phục vụ c&aacute;c mục đ&iacute;ch nghề nghiệp v&agrave; học tập n&acirc;ng cao.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Liên thông đại học ngành Ngôn Ngữ Anh năm 2020\" src=\"http://riam.edu.vn/wp-content/uploads/2019/12/muc-tieu-dao-tao-nganh-ngon-ngu-anh.jpg\" style=\"height:417px; width:626px\" /></p>\r\n\r\n<p>Nắm vững những kiến thức cơ bản về c&aacute;c b&igrave;nh diện ng&ocirc;n ngữ, ng&ocirc;n ngữ Anh, Việt&nbsp; cũng như văn h&oacute;a c&aacute;c nước n&oacute;i tiếng Anh (trước hết l&agrave; Anh, Mỹ) v&agrave; văn h&oacute;a Việt Nam</p>\r\n\r\n<h4>&ndash; Về kỹ năng:</h4>\r\n\r\n<ul>\r\n	<li><a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">Sử dụng tiếng Anh</a>&nbsp;th&agrave;nh thạo với c&aacute;c kỹ năng ng&ocirc;n ngữ (nghe, n&oacute;i, đọc, viết), bi&ecirc;n dịch, phi&ecirc;n dịch, c&oacute; tư duy ph&ecirc; ph&aacute;n, kỹ năng ph&acirc;n t&iacute;ch, tổng hợp, kỹ năng ph&aacute;t hiện.</li>\r\n	<li>Giải quyết vấn đề để ho&agrave;n th&agrave;nh nhiệm vụ nghề nghiệp; c&oacute; c&aacute;c năng lực v&agrave; kỹ năng kh&aacute;c cần thiết để l&agrave;m việc.</li>\r\n	<li>Ph&aacute;t triển trong m&ocirc;i trường hội nhập như kỹ năng thuyết phục,đ&agrave;m ph&aacute;n, năng lực quản l&yacute; v&agrave; năng lực tự học để học tập li&ecirc;n tục, học tập suốt đời.</li>\r\n</ul>\r\n\r\n<h4>&ndash; Về th&aacute;i độ:</h4>\r\n\r\n<ul>\r\n	<li>T&ocirc;n trọng v&agrave; chấp h&agrave;nh nghi&ecirc;m ph&aacute;p luật nh&agrave; nước, c&oacute; đạo đức nghề nghiệp v&agrave; tr&aacute;ch nhiệm x&atilde; hội</li>\r\n	<li>C&oacute; &yacute; thức tổ chức kỷ luật, c&oacute; th&aacute;i độ hợp t&aacute;c, chia sẻ, nhiệt t&igrave;nh v&agrave; chuy&ecirc;n nghiệp trong c&ocirc;ng việc.</li>\r\n</ul>\r\n\r\n<h3>&ndash; Vị tr&iacute; v&agrave; nơi l&agrave;m việc sau khi tốt nghiệp:</h3>\r\n\r\n<ul>\r\n	<li>Phi&ecirc;n dịch, bi&ecirc;n dịch, quan hệ quốc tế v&agrave; đối ngoại, nh&acirc;n vi&ecirc;n c&aacute;c ph&ograve;ng chức năng tại c&aacute;c doanh nghiệp, c&aacute;c cơ quan truyền th&ocirc;ng, c&aacute;c tổ chức kinh tế x&atilde; hội của Việt nam v&agrave; quốc tế.</li>\r\n	<li>Nếu được bồi dưỡng th&ecirc;m về nghiệp vụ sư phạm, c&oacute; thể đảm nhận c&ocirc;ng t&aacute;c giảng dạy Tiếng Anh chuy&ecirc;n ng&agrave;nh kinh tế-thương mại tại c&aacute;c cơ sở đ&agrave;o tạo kh&aacute;c nhau.</li>\r\n</ul>\r\n\r\n<p>Sau khi tốt nghiệp, sinh vi&ecirc;n sẽ c&oacute; cơ hội l&agrave;m việc:</p>\r\n\r\n<ul>\r\n	<li>Tại c&aacute;c cơ quan nh&agrave; nước, nh&agrave; xuất bản hoặc c&ocirc;ng ty tư nh&acirc;n y&ecirc;u cầu nguồn nh&acirc;n lực về c&aacute;c hoạt động bi&ecirc;n dịch, phi&ecirc;n dịch, bi&ecirc;n tập, hướng dẫn du lịch &hellip;</li>\r\n	<li>Tại c&aacute;c trung t&acirc;m nghi&ecirc;n cứu, c&aacute;c ph&ograve;ng ban chuy&ecirc;n về ng&ocirc;n ngữ, ng&ocirc;n ngữ học ứng dụng&hellip;</li>\r\n	<li>Tại c&aacute;c trường phổ th&ocirc;ng, c&aacute;c trung t&acirc;m ngoại ngữ, c&aacute;c lớp chuy&ecirc;n biệt cho c&ocirc;ng ty, x&iacute; nghiệp &hellip;</li>\r\n	<li>Tại c&aacute;c c&ocirc;ng ty trong nước v&agrave; nước ngo&agrave;i, đ&aacute;p ứng nguồn nh&acirc;n lực về c&aacute;c lĩnh vực dịch vụ kh&aacute;ch h&agrave;ng, truyền th&ocirc;ng, đối ngoại&hellip;</li>\r\n	<li>Với c&aacute;c ng&agrave;nh nghề li&ecirc;n quan tới nhu cầu giao tiếp quốc tế, tới khả năng xử l&yacute; c&aacute;c c&ocirc;ng việc li&ecirc;n quan tới năng lực n&oacute;i, viết Tiếng Anh</li>\r\n</ul>\r\n\r\n<p><img alt=\"Liên thông đại học ngành Ngôn Ngữ Anh năm 2020 văn bằng 2\" src=\"http://riam.edu.vn/wp-content/uploads/2019/12/sv-nganh-ngon-ngu-anh.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Hoạt động ngoại kh&oacute;a cho sinh vi&ecirc;n ng&agrave;nh Ng&ocirc;n ngữ Anh</p>\r\n\r\n<h2>TUYỂN SINH LI&Ecirc;N TH&Ocirc;NG ĐẠI HỌC &ndash; VĂN BẰNG 2 (vb2) &ndash;&nbsp;NG&Agrave;NH NG&Ocirc;N NGỮ ANH H&Igrave;NH THỨC VỪA HỌC VỪA L&Agrave;M</h2>\r\n\r\n<p>1. Thời gian v&agrave; h&igrave;nh thức đ&agrave;o tạo:</p>\r\n\r\n<p><strong>Thời gian đ&agrave;o tạo:</strong></p>\r\n\r\n<p>&there4;<a href=\"http://riam.edu.vn/le-phi-xet-tuyen-lien-thong-dai-hoc-nganh-dieu-duong-nam-2020/\">Ng&agrave;nh Điều dưỡng</a>&nbsp;(thời gian đ&agrave;o tạo 3.5 năm)</p>\r\n\r\n<p>&there4;<a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">Ng&agrave;nh Ng&ocirc;n ngữ Anh</a>&nbsp;(thời gian đ&agrave;o tạo 2 năm)</p>\r\n\r\n<p><strong>H&igrave;nh thức học:</strong>&nbsp;Học v&agrave;o c&aacute;c ng&agrave;y Thứ 7 &amp; chủ nhật h&agrave;ng tuần</p>\r\n\r\n<p>2. Ng&agrave;nh Đ&agrave;o tạo:</p>\r\n\r\n<p>&there4;Điều Dưỡng</p>\r\n\r\n<p>&there4;<a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">Ng&ocirc;n Ngữ Anh</a></p>\r\n\r\n<p>3. Văn Bằng :</p>\r\n\r\n<p>&there4;Cử Nh&acirc;n Điều Dưỡng</p>\r\n\r\n<p>&there4;<a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">Cử Nh&acirc;n Ng&ocirc;n Ngữ Anh</a></p>\r\n\r\n<p>Người học ho&agrave;n th&agrave;nh chương tr&igrave;nh đ&agrave;o tạo sẽ được cấp bằng&nbsp;<a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">cử nh&acirc;n h&igrave;nh thức vừa l&agrave;m vừa học</a>. Văn bằng c&oacute; gi&aacute; trị ph&aacute;p l&yacute; để được tiếp tục học l&ecirc;n bậc cao học.</p>\r\n\r\n<p>4. Đối tượng học:</p>\r\n\r\n<p>Ng&agrave;nh: Điều dưỡng, người đ&atilde; c&oacute; bằng tốt nghiệp Trung cấp hoặc Cao đẳng thuộc khối ng&agrave;nh sức khỏe v&agrave; phải tốt nghiệp Trung học phổ th&ocirc;ng. Tức l&agrave; v&iacute; dụ nếu bạn đ&atilde; c&oacute; bằng Trung cấp, cao đẳng ng&agrave;ng Dược th&igrave; vẫn c&oacute; thể li&ecirc;n th&ocirc;ng đại học Điều Dưỡng được. Chỉ cần c&oacute; chứng chỉ chuyển đổi điều dưỡng với thời gian học 3 th&aacute;ng.</p>\r\n\r\n<p>Ng&agrave;nh:&nbsp;<a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">Ng&ocirc;n ngữ Anh</a>, người đ&atilde; c&oacute; một bằng tốt nghiệp đại học kh&aacute;c ng&agrave;nh ng&ocirc;n ngữ Anh. Th&iacute; sinh đ&atilde; tốt nghiệp đại học kh&ocirc;ng ph&acirc;n biệt loại h&igrave;nh đ&agrave;o tạo.</p>\r\n\r\n<p>5. Phương thức tuyển sinh :&nbsp;</p>\r\n\r\n<ul>\r\n	<li>X&eacute;t tuyển : theo đối tượng tuyển sinh.</li>\r\n</ul>\r\n\r\n<p>6. Thời gian dự kiến khai giảng nhập học:</p>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng bố kết quả v&agrave; nhập học đầu th&aacute;ng 04/2020.</li>\r\n</ul>\r\n\r\n<h2>7. Học ph&iacute; trọn kh&oacute;a li&ecirc;n th&ocirc;ng (VB2) đại học ng&agrave;nh ng&ocirc;n ngữ Anh 2019 2020:</h2>\r\n\r\n<p><strong>Học ph&iacute; trọn kh&oacute;a:</strong></p>\r\n\r\n<p>* Học ph&iacute;:</p>\r\n\r\n<p>&there4;<a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">Ng&agrave;nh: Ng&ocirc;n ngữ Anh học ph&iacute;: 8.750.000 đồng/học kỳ (chia l&agrave;m 4 học kỳ)</a></p>\r\n\r\n<p>&there4;Ng&agrave;nh: Điều dưỡng học ph&iacute; : 9.700.000 đồng/học kỳ (chia l&agrave;m 7 học kỳ)</p>\r\n\r\n<p><strong>&there4;Lưu &Yacute; ! Học ph&iacute; tr&ecirc;n cố định kh&ocirc;ng thay đổi cho cả kh&oacute;a học</strong></p>\r\n\r\n<p><strong>Lệ ph&iacute; x&eacute;t tuyển</strong></p>\r\n\r\n<p>&there4;<a href=\"http://riam.edu.vn/le-phi-xet-tuyen-lien-thong-dai-hoc-nganh-dieu-duong-nam-2020/\">Lệ ph&iacute; x&eacute;t tuyển: 300.000đ/ th&iacute; sinh</a></p>\r\n\r\n<p>Mỗi lớp sẽ c&oacute; gi&aacute;o vi&ecirc;n chủ nhiệm lu&ocirc;n theo s&aacute;t tiến tr&igrave;nh học tập của lớp v&agrave; th&ocirc;ng b&aacute;o cũng như gi&uacute;p học sinh ho&agrave;n th&agrave;nh kh&oacute;a học. Để đảm bảo học vi&ecirc;n sẽ&nbsp;<a href=\"http://riam.edu.vn/lien-thong-dai-hoc-nganh-ngon-ngu-anh-nam-2020-thong-tin-giao-duc/\">ra trường đ&uacute;ng thời hạn</a>&nbsp;v&agrave;&nbsp;kh&ocirc;ng bị nợ m&ocirc;n k&eacute;o d&agrave;i, giam bằng cấp. Cũng như t&igrave;m chỗ thực tập, v&agrave; giới thiệu c&ocirc;ng việc sau n&agrave;y nếu học vi&ecirc;n c&oacute; nhu cầu&hellip;</p>\r\n\r\n<p><img alt=\"tuyển sinh ngành ngôn ngữ anh\" src=\"http://riam.edu.vn/wp-content/uploads/2019/12/lien-thong-dai-hoc-nganh-ngon-ngu-anh-vb2.jpg\" style=\"height:379px; width:626px\" /></p>\r\n\r\n<p>Sinh vi&ecirc;n Ng&agrave;nh Ng&ocirc;n Ngữ Anh Phương Ch&acirc;m Học thật, Thi thật, Ra đời l&agrave;m việc thật !</p>', '2020-09-24__lien-thong-dai-hoc-nganh-ngon-ngu-anh-tai-tphcm.jpg', '2020-09-23 22:41:55', '2020-09-23 23:45:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2020_09_24_032437_create_types_table', 1),
(5, '2020_09_24_032226_create_courses_table', 2),
(6, '2020_09_24_162851_create_transactions_table', 3),
(7, '2020_09_24_173143_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_course_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 thanh toan thuong, 2 thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'văn mạnh', 'vanmanh2k@gmail.com', '0164614658', NULL, 'âsasasasa', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `name`, `slug`, `status`, `description`, `avatar`, `banner`, `created_at`, `updated_at`) VALUES
(1, 'Trung cấp', 'trung-cap', 1, NULL, NULL, NULL, '2020-09-23 21:27:03', NULL),
(2, 'Cao đẳng', 'cao-dang', 1, NULL, NULL, NULL, '2020-09-23 21:26:55', NULL),
(3, 'Đại học', 'dai-hoc', 1, NULL, NULL, NULL, '2020-09-23 21:26:47', NULL),
(4, 'Thạc sĩ', 'thac-si', 1, NULL, NULL, NULL, '2020-09-23 21:27:23', NULL),
(5, 'Tiến sĩ', 'tien-si', 1, NULL, NULL, NULL, '2020-09-23 21:27:32', NULL),
(14, 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', 1, NULL, NULL, NULL, '2020-09-24 11:03:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
