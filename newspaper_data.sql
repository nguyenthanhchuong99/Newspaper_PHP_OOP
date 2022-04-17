-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 17, 2022 lúc 07:32 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webtintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `del_flag` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `name`, `del_flag`) VALUES
(1, 'Bóng đá', 0),
(2, 'Xem TV', 0),
(3, 'Thời trang', 0),
(4, 'Sự kiện', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `del_flag` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `del_flag` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`post_id`, `category_id`, `title`, `content`, `image`, `createdate`, `del_flag`) VALUES
(2, 2, 'Hang Sơn Đoòng', '<p>Hang Sơn Đo&ograve;ng (Quảng B&igrave;nh) được biết đến l&agrave; hang động lớn nhất thế giới v&agrave; một trong những thắng cảnh ngoạn mục nhất ở Đ&ocirc;ng Nam &Aacute;. Hang d&agrave;i hơn 5 km, cao 200 m v&agrave; một số nơi rộng 150 m.</p>\r\n\r\n<p>Hang động khổng lồ n&agrave;y được t&igrave;nh cờ ph&aacute;t hiện bởi một người d&acirc;n địa phương t&ecirc;n l&agrave; Hồ Khanh v&agrave;o đầu những năm 1990. Đến năm 2009, khi c&aacute;c nh&agrave; th&aacute;m hiểm Anh c&ugrave;ng Hồ Khanh trở lại nơi đ&acirc;y, hang Sơn Đo&ograve;ng mới ch&iacute;nh thức được x&aacute;c nhận l&agrave; hang động lớn nhất thế giới.</p>\r\n', '2.jpg', '2022-04-15 09:49:14', 0),
(3, 2, 'Thác Bản Giốc', '<p>Bản Giốc (Cao Bằng) l&agrave; một trong những th&aacute;c nước nổi tiếng nhất Việt Nam. Du kh&aacute;ch n&ecirc;n đến nơi đ&acirc;y v&agrave;o buổi trưa khi đập ở thượng nguồn mở v&agrave; mang đến d&ograve;ng th&aacute;c căng đầy, chảy xối xả.</p>\r\n\r\n<p>Bạn c&oacute; thể chi một khoản ph&iacute; nhỏ để thu&ecirc; những người chủ b&egrave; tre đưa đến gần th&aacute;c v&agrave; cảm nhận l&agrave;n nước mạnh mẽ t&aacute;p v&agrave;o mặt.</p>\r\n', '3.jpg', '2022-04-15 09:51:54', 0),
(4, 2, 'Vườn Quốc gia Ba Bể', '<p>Vườn Quốc gia Ba Bể (Bắc Kạn) l&agrave; điểm đến cho du kh&aacute;ch ưa mạo hiểm với những ngọn n&uacute;i đ&aacute; v&ocirc;i cao ch&oacute;t v&oacute;t, thung lũng s&acirc;u v&agrave; c&aacute;nh rừng thường xanh rậm rạp.</p>\r\n\r\n<p>Th&aacute;c nước, hang động v&agrave; hồ kết hợp trong một điểm đến c&ugrave;ng với hơn 550 lo&agrave;i thực vật, h&agrave;ng trăm lo&agrave;i chim, động vật kh&aacute;c nhau. Du kh&aacute;ch kh&aacute;m ph&aacute; khung cảnh thi&ecirc;n nhi&ecirc;n của Ba Bể c&oacute; thể ngồi thuyền, đi bộ xuy&ecirc;n rừng hoặc đi xe đạp leo n&uacute;i.</p>\r\n\r\n<p>Sau những giờ trải nghiệm năng nổ, bạn thư gi&atilde;n v&agrave; nạp năng lượng tại c&aacute;c homestay hay nh&agrave; nghỉ mộc mạc của người d&acirc;n tộc T&agrave;y địa phương.</p>\r\n', '4.jpg', '2022-04-15 09:52:12', 0),
(7, 2, 'Vịnh Hạ Long', '<p>L&agrave; điểm thu h&uacute;t kh&aacute;ch du lịch h&agrave;ng đầu, vịnh Hạ Long (Quảng Ninh) mang vẻ đẹp m&ecirc; hoặc của những đỉnh n&uacute;i đ&aacute; v&ocirc;i được bao bọc bởi v&ugrave;ng biển xanh ng&aacute;t. Với hơn 2.000 h&ograve;n đảo, nơi đ&acirc;y c&oacute; rất nhiều cảnh đẹp để du kh&aacute;ch kh&aacute;m ph&aacute;.&nbsp;</p>\r\n', '1.jpg', '2022-04-15 12:11:19', 0),
(8, 1, 'Cầu thủ West Ham bật khóc sau khi khiến đối thủ gãy chân', '<p>Vlasic bị sốc khi khiến Westwood d&iacute;nh chấn thương nặng trong trận đấu giữa West Ham v&agrave; Burnley ở v&ograve;ng 33 Premier League tối 17/4 (giờ H&agrave; Nội).</p>\r\n\r\n<p>Ph&uacute;t 22, Nikola Vlasic va chạm mạnh với Ashley Westwood (số 18) ở giữa s&acirc;n. Tiền vệ trung t&acirc;m của Burnley nằm s&acirc;n với vẻ đau đớn v&agrave; cố ra dấu rằng anh gặp chấn thương nặng.</p>\r\n\r\n<p>Đồng đội v&agrave; đối thủ đều bị sốc khi thấy Westwood gặp vấn đề nghi&ecirc;m trọng ở mắt c&aacute; ch&acirc;n. Do những quy định tại Premier League, c&aacute;c k&ecirc;nh truyền h&igrave;nh kh&ocirc;ng quay cận cảnh chấn thương của tiền vệ số 18.</p>\r\n\r\n<p>Vlasic cũng bị đau, nhưng kh&ocirc;ng gặp vấn đề nghi&ecirc;m trọng. Cầu thủ chạy c&aacute;nh số 11 của West Ham bật kh&oacute;c khi biết đối thủ kh&ocirc;ng thể tiếp tục thi đấu.</p>\r\n\r\n<p>Đồng đội v&agrave; cả huấn luyện vi&ecirc;n David Moyes đến b&ecirc;n cạnh để an ủi, động vi&ecirc;n Vlasic.</p>\r\n', '6.jpg', '2022-04-17 18:18:51', 0),
(9, 1, 'Ten Hag sẽ loại Ronaldo khi làm HLV của Man United', '<p>(PLO)-&nbsp; Manchester United đ&atilde; gi&agrave;nh được chiến thắng nhọc nhằn 3-2 trước Norwich City tại Premier League v&agrave;o đ&ecirc;m thứ Bảy với người h&ugrave;ng quen thuộc Ronaldo nhưng tương lai của anh kh&ocirc;ng bảo đảm tại Old Trafford.</p>\r\n\r\n<p>Một c&uacute; hat trick của Cristiano Ronaldo đ&atilde; gi&uacute;p đội b&oacute;ng của HLV tạm quyền Ralf Rangnick tiếp tục săn đuổi vị tr&iacute; trong tốp 4.</p>\r\n\r\n<p>Man United đang k&eacute;m đội xếp thứ 4 l&agrave; Tottenham Hotspur với 3 điểm &iacute;t hơn, đội đ&atilde; thua Brighton &amp; Hove Albion tr&ecirc;n s&acirc;n nh&agrave; trước đ&oacute;. Tuy nhi&ecirc;n, cựu ng&ocirc;i sao Chelsea Craig, Burley đ&atilde; th&uacute;c giục Erik ten Hag loại bỏ Cristiano Ronaldo nếu &ocirc;ng thầy người H&agrave; Lan tiếp quản đội b&oacute;ng ở s&acirc;n Old Trafford.</p>\r\n\r\n<p>Craig Burley thẳng thừng khuy&ecirc;n Erik ten Hag kh&ocirc;ng n&ecirc;n tiếp tục sử dụng Cristiano Ronaldo, khi HLV của Ajax dự kiến ​​sẽ dẫn dắt Manchester United v&agrave;o m&ugrave;a h&egrave; n&agrave;y. Với một cuộc t&aacute;i thiết lớn được y&ecirc;u cầu ở s&acirc;n Old Trafford, tương lai của ng&ocirc;i sao người Bồ Đ&agrave;o Nha cũng đang rất gần bờ vực ra đi.</p>\r\n', '7.jpg', '2022-04-17 18:21:13', 0),
(10, 3, 'Vì sao ăn cắp ý tưởng là cấm kỵ trong giới thời trang?', '<p>&quot;Ăn cắp&quot; &yacute; tưởng được cho l&agrave; h&agrave;nh động phi đạo đức, c&oacute; thể g&acirc;y nhiều thiệt hại về ph&iacute;a người mặc, stylist, thậm ch&iacute; cả thương hiệu gốc.</p>\r\n\r\n<p>Kh&ocirc;ng giống c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp kh&aacute;c, việc l&agrave;m giả c&aacute;c sản phẩm thời trang dễ d&agrave;ng hơn rất nhiều,&nbsp;<em>Vox&nbsp;</em>nhận định. Nếu may mắn v&agrave; c&aacute;c thiết kế được thay đổi nhiều so với bản gốc, việc đạo nh&aacute;i c&oacute; thể kh&oacute; bị ph&aacute;t hiện. Trong trường hợp bị mang l&ecirc;n b&agrave;n c&acirc;n, cả ph&iacute;a thương hiệu v&agrave; người đạo nh&aacute;i đều kh&ocirc;ng c&oacute; lợi.</p>\r\n\r\n<p>L&acirc;u nay, &ldquo;ăn cắp chất x&aacute;m&rdquo; vẫn l&agrave; đề t&agrave;i nhức nhối trong giới thời trang nhưng chưa c&oacute; hướng giải quyết triệt để.&nbsp;<em>The Fashion Law</em>&nbsp;cho rằng vấn đề nằm ở việc chưa c&oacute; luật cụ thể, nghi&ecirc;m khắc đối với t&igrave;nh trạng n&agrave;y.</p>\r\n\r\n<h3>Thế n&agrave;o mới l&agrave; đạo nh&aacute;i?</h3>\r\n\r\n<p>Trước ti&ecirc;n, cần phải ph&acirc;n biệt giữa sự tr&ugrave;ng lặp &yacute; tưởng v&agrave; đạo nh&aacute;i trong thời trang. Nhiều người vẫn hiểu nhầm v&agrave; quy chụp một nh&agrave; thiết kế khi nh&igrave;n thấy s&aacute;ng tạo của họ c&oacute; nhiều n&eacute;t tương đồng với c&aacute;c nh&agrave; mốt quốc tế.</p>\r\n', '8.jpg', '2022-04-17 18:24:17', 0),
(11, 3, 'Xu hướng thời trang Hè 2022: Váy ngắn càn quét, công thức mix đồ đảm bảo ăn ngay điểm 10', '<p>HHT - Miu Miu g&acirc;y sốt với chiếc v&aacute;y si&ecirc;u ngắn từ m&ugrave;a trước, th&ecirc;m loạt BST đ&igrave;nh đ&aacute;m của Chanel, Moschino, Versace... đồng loạt đẩy v&aacute;y ngắn d&aacute;ng hộp l&ecirc;n ng&ocirc;i. Thời trang H&egrave; 2022 tiếp nối cơn sốt v&aacute;y ngắn v&agrave; dưới đ&acirc;y l&agrave; h&agrave;ng t&aacute; gợi &yacute; phối đồ đỉnh cao từ c&aacute;c fashionista.&nbsp;</p>\r\n\r\n<p>Mốt v&aacute;y ngắn dự đo&aacute;n sẽ ở lại rất l&acirc;u trong danh s&aacute;ch&nbsp;<em>item hot</em>&nbsp;v&agrave; cũng l&agrave; m&oacute;n đồ dễ t&igrave;m mua, dễ c&oacute; sẵn trong tủ &aacute;o. Chỉ cần bạn cập nhật một v&agrave;i c&aacute;ch kết hợp mới của năm nay nhờ c&aacute;c ng&ocirc;i sao đường phố.</p>\r\n\r\n<p><strong>Sắc m&agrave;u rực rỡ</strong></p>\r\n\r\n<p>M&agrave;u ch&oacute;i, m&agrave;u rực rỡ kết hợp đối nghịch nhau sẽ cực&nbsp;<em>hot</em>&nbsp;H&egrave; n&agrave;y. Đi một v&ograve;ng c&aacute;c cửa h&agrave;ng c&aacute;c hiệu thời trang phổ th&ocirc;ng bạn sẽ thấy ngập tr&agrave;n v&aacute;y ngắn m&agrave;u bắt mắt, thậm ch&iacute; l&agrave; m&agrave;u neon ch&oacute;i lọi.</p>\r\n\r\n<p><strong>Cặp đ&ocirc;i ho&agrave;n hảo với phong c&aacute;ch biker</strong></p>\r\n\r\n<p>Chiếc &aacute;o kho&aacute;c&nbsp;<em>biker</em>&nbsp;cũng l&agrave; một trong những&nbsp;<em>item</em>&nbsp;thời trang chủ chốt của H&egrave; n&agrave;y. C&oacute; thể kết hợp v&aacute;y ngắn da của bạn với &aacute;o kho&aacute;c da&nbsp;<em>biker</em>&nbsp;để tăng gấp đ&ocirc;i hiệu ứng như Alexa Chung đ&atilde; l&agrave;m.</p>\r\n\r\n<p><strong>Mặc với &aacute;o tay d&agrave;i sang trọng</strong></p>\r\n\r\n<p>Prada thiết kế ra mẫu v&aacute;y ngắn bằng lụa satin khiến cho kh&aacute;i niệm v&aacute;y ngắn ho&agrave;n to&agrave;n c&oacute; thể trở n&ecirc;n sang trọng đủ cho tiệc t&ugrave;ng. C&oacute; thể kết hợp v&aacute;y ngắn v&agrave; &aacute;o d&agrave;i tay để tạo n&ecirc;n tổng thể trang trọng, sang trọng khi bạn cần xuất hiện vừa chất vừa nổi ở một bữa tiệc tối.</p>\r\n', '9.jpg', '2022-04-17 18:25:22', 0),
(12, 4, 'Cẳng thẳng tái diễn giữa Israel, Palestine tại khu đền thờ Al Aqsa', '<h2>Ng&agrave;y 17/4, đụng độ đ&atilde; xảy ra giữa cảnh s&aacute;t Israel v&agrave; người Palestine tại khu đền thờ Al Aqsa, c&ograve;n gọi l&agrave; N&uacute;i Đền, sau khi lực lượng Israel x&ocirc;ng v&agrave;o khu vực n&agrave;y, khiến &iacute;t nhất 10 người bị thương.</h2>\r\n\r\n<p>Theo T&acirc;n Hoa x&atilde;, v&agrave;o s&aacute;ng 17/4, cảnh s&aacute;t Israel đ&atilde; giải t&aacute;n đ&aacute;m đ&ocirc;ng người Palestine tụ tập tại quảng trường lớn b&ecirc;n ngo&agrave;i đền thờ Al Aqsa. V&agrave;o thời điểm n&agrave;y, h&agrave;ng chục người đang cầu nguyện b&ecirc;n trong đền thờ.</p>\r\n\r\n<p>Theo cảnh s&aacute;t Israel, lực lượng an ninh đ&atilde; tiến h&agrave;nh dỡ bỏ c&aacute;c r&agrave;o chắn m&agrave; người Palestine dựng qua đ&ecirc;m tr&ecirc;n khu vực đi bộ dẫn tới khu đền thờ. Cảnh s&aacute;t Israel cho rằng động th&aacute;i n&agrave;y l&agrave; nhằm tạo thuận lợi cho c&aacute;c t&iacute;n đồ cầu nguyện người Do Th&aacute;i v&agrave; Hồi gi&aacute;o.&nbsp;</p>\r\n\r\n<p>Nguồn tin cũng dẫn th&ocirc;ng b&aacute;o của tổ chức Trăng lưỡi liềm Đỏ Palestine cho hay đụng độ đ&atilde; nổ ra sau đ&oacute;, khiến &iacute;t nhất 10 người bị thương.&nbsp;</p>\r\n\r\n<p>Căng thẳng leo thang tại Jerusalem trong bối cảnh th&aacute;ng lễ Ramadan của t&iacute;n đồ Hồi gi&aacute;o năm nay lại tr&ugrave;ng với dịp lễ quan trọng của người Do Th&aacute;i v&agrave; Lễ Phục sinh của Cơ đốc gi&aacute;o, do đ&oacute; ước t&iacute;nh trong dịp n&agrave;y c&oacute; h&agrave;ng vạn t&iacute;n đồ đổ về Th&agrave;nh cổ Jerusalem, địa điểm linh thi&ecirc;ng đối với cả 3 t&ocirc;n gi&aacute;o.</p>\r\n\r\n<p>&nbsp;Ph&iacute;a Palestine cho biết c&oacute; 152 người bị thương trong c&aacute;c vụ đụng độ xảy ra tại khu đền thờ Al Aqsa, trong khi th&ocirc;ng tin ph&iacute;a Israel l&agrave; c&oacute; 120 người bị thương. Năm 2021, c&aacute;c vụ đụng độ tại Jerusalem đ&atilde; dẫn đến một cuộc xung đột k&eacute;o d&agrave;i 11 ng&agrave;y giữa lực lượng Israel v&agrave; c&aacute;c nh&oacute;m vũ trang ở Dải Gaza.</p>\r\n', '10.jpg', '2022-04-17 18:26:45', 0),
(13, 4, 'Thế giới ghi nhận 504,4 triệu ca mắc, 6,2 triệu ca tử vong do COVID-19', '<h2>Theo trang thống k&ecirc; worldometers.info, t&iacute;nh đến 21h30 ng&agrave;y 17/4 (giờ Việt Nam), to&agrave;n thế giới c&oacute; 504.451.596 ca mắc COVID-19, trong đ&oacute; c&oacute; 6.222.430 người kh&ocirc;ng qua khỏi. Số bệnh nh&acirc;n b&igrave;nh phục đ&atilde; l&ecirc;n tới 455.268.127 người.</h2>\r\n\r\n<p>Mỹ vẫn l&agrave; nước bị ảnh hưởng nghi&ecirc;m trọng nhất, đến nay ghi nhận 82.309.113 ca mắc, trong đ&oacute; 1.015.441 ca tử vong. Ấn Độ đứng thứ hai về số ca nhiễm với 43.042.097 ca trong khi Brazil đứng thứ hai về số ca tử vong với 661.993 ca.</p>\r\n\r\n<p>Trong 7 ng&agrave;y qua, diễn biến dịch tr&ecirc;n to&agrave;n cầu tiếp tục xu hướng t&iacute;ch cực với số ca mắc mới t&iacute;nh đến s&aacute;ng 17/4&nbsp; giảm 22% so với tuần trước đ&oacute;. Tương tự, số ca tử vong cũng giảm 21%. Ba quốc gia đứng đầu về số ca mắc mới theo ng&agrave;y trong tuần qua l&agrave; H&agrave;n Quốc, Ph&aacute;p v&agrave; Đức ghi nhận con số giảm lần lượt 30%, 6% v&agrave; 23%. Đặc biệt x&eacute;t về khu vực, số ca mắc mới đều giảm, trong đ&oacute; ch&acirc;u &Aacute; tiếp tục l&agrave; khu vực ghi nhận tỷ lệ giảm mạnh nhất với 28%.</p>\r\n\r\n<p>Điểm đ&aacute;ng ch&uacute; &yacute; trong tuần qua l&agrave; sau hơn 2 năm ho&agrave;nh h&agrave;nh, ng&agrave;y 12/4, tổng số ca mắc COVID-19 tr&ecirc;n thế giới đ&atilde; vượt mốc 500 triệu ca. T&iacute;nh từ những trường hợp đầu ti&ecirc;n được biết tới cuối năm 2019, hơn 1 năm sau, thế giới ghi nhận tổng số ca mắc COVID-19 vượt 100 triệu ca v&agrave;o ng&agrave;y 26/1/2021, hơn 6 th&aacute;ng sau, ng&agrave;y 4/8/2021, con số n&agrave;y l&agrave; 200 triệu. Sau đ&oacute; 5 th&aacute;ng, thế giới c&oacute; th&ecirc;m 100 triệu ca mắc. Khoảng thời gian tăng từ 300 triệu ca (ng&agrave;y 6/1/2022) l&ecirc;n 400 triệu ca r&uacute;t ngắn chỉ c&ograve;n khoảng 1 th&aacute;ng (ng&agrave;y 8/2/2022).&nbsp;</p>\r\n\r\n<p>Diễn biến dịch tại Trung Quốc vẫn phức tạp. Ng&agrave;y 17/4, Ủy ban Y tế quốc gia Trung Quốc th&ocirc;ng b&aacute;o ghi nhận 3.504 ca mắc mới COVID-19 c&oacute; triệu chứng&nbsp;trong ng&agrave;y 16/4, tập trung chủ yếu ở th&agrave;nh phố Thượng Hải. Trung t&acirc;m t&agrave;i ch&iacute;nh Thượng Hải hiện l&agrave; t&acirc;m dịch của đợt b&ugrave;ng ph&aacute;t mới tại Trung Quốc.</p>\r\n\r\n<p>Ng&agrave;y 16/4, th&agrave;nh phố n&agrave;y th&ocirc;ng b&aacute;o ghi nhận 3.238 ca mắc mới c&oacute; triệu chứng v&agrave; 21.582 ca mắc mới kh&ocirc;ng c&oacute; triệu chứng trong tổng số 22.512 ca mắc mới kh&ocirc;ng c&oacute; triệu chứng trong cộng đồng được ghi nhận tr&ecirc;n cả nước. D&ugrave; hầu hết người d&acirc;n tại th&agrave;nh phố đang thực hiện lệnh phong tỏa, nhưng số ca mắc mới tại đ&acirc;y vẫn chiếm phần lớn tổng số ca mắc mới ghi nhận ở Trung Quốc.</p>\r\n', '11.jpg', '2022-04-17 18:27:36', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `permission`, `username`, `password`, `email`, `createdate`, `del_flag`) VALUES
(1, 0, 'Chuong', '25f9e794323b453885f5181f1b624d0b', 'customer2@example.com', '2022-04-14 08:34:40', 0),
(2, 0, 'abc', '25f9e794323b453885f5181f1b624d0b', 'abc@gmail.com', '2022-04-14 08:37:58', 0),
(4, 1, 'admin', '25f9e794323b453885f5181f1b624d0b', 'admin@gmail.com', '2022-04-15 05:10:18', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
