-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 18, 2020 lúc 02:29 PM
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
-- Cơ sở dữ liệu: `db_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_bill`
--

CREATE TABLE `table_bill` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `ship_price` float DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_bill`
--

INSERT INTO `table_bill` (`id`, `id_customer`, `total_price`, `ship_price`, `note`, `update_at`, `status`) VALUES
(4, 6, 245900, 20000, 'note', '2020-09-16 16:29:23', 0),
(5, 7, 64000, 12000, 'note', '2020-09-16 16:38:23', 0),
(6, 8, 118000, 18000, 'note', '2020-09-17 02:20:04', 0),
(7, 9, 113900, 18000, 'note', '2020-09-17 02:30:18', 0),
(8, 10, 49900, 12000, 'note', '2020-09-17 02:32:58', 0),
(9, 11, 49900, 12000, 'note', '2020-09-17 02:48:55', 0),
(10, 12, 60000, 18000, 'note', '2020-09-17 02:50:07', 0),
(11, 13, 259800, 18000, 'note', '2020-09-17 05:17:26', 0),
(12, 14, 70000, 12000, 'note', '2020-09-17 06:09:16', 0),
(13, 15, 194000, 12000, 'note', '2020-09-17 11:35:41', 0),
(14, 16, 0, 12000, 'note', '2020-09-18 12:18:42', 0),
(15, 17, 0, 12000, 'note', '2020-09-18 12:18:44', 0),
(16, 18, 0, 12000, 'note', '2020-09-18 12:18:44', 0),
(17, 19, 0, 12000, 'note', '2020-09-18 12:18:44', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_bill_detail`
--

CREATE TABLE `table_bill_detail` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `option_product` varchar(200) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_bill_detail`
--

INSERT INTO `table_bill_detail` (`id`, `id_product`, `id_bill`, `quantity`, `option_product`, `status`) VALUES
(11, 14, 4, 1, ' ', 0),
(12, 12, 4, 1, ' ', 0),
(13, 11, 4, 2, 'M Đen', 0),
(14, 15, 5, 1, ' ', 0),
(15, 14, 6, 1, ' ', 0),
(16, 17, 6, 2, 'L ', 0),
(17, 15, 7, 1, ' ', 0),
(18, 12, 7, 1, ' ', 0),
(19, 12, 8, 1, ' ', 0),
(20, 12, 9, 1, ' ', 0),
(21, 2, 10, 1, ' ', 0),
(22, 15, 11, 1, ' ', 0),
(23, 12, 11, 2, ' ', 0),
(24, 11, 11, 1, 'M Đen', 0),
(25, 17, 11, 1, 'XL ', 0),
(26, 11, 12, 1, 'S Đen', 0),
(27, 15, 13, 1, ' ', 0),
(28, 16, 13, 2, 'M ', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_brand`
--

CREATE TABLE `table_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `name_no` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_brand`
--

INSERT INTO `table_brand` (`id`, `name`, `name_no`, `status`) VALUES
(1, 'No Brand', 'No-Brand', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_catalog`
--

CREATE TABLE `table_catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `name_no` varchar(225) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_desc` text DEFAULT NULL,
  `seo_key` text DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_catalog`
--

INSERT INTO `table_catalog` (`id`, `name`, `name_no`, `status`, `seo_title`, `seo_desc`, `seo_key`, `update_at`) VALUES
(1, 'Áo nữ', 'Ao-nu', 0, NULL, NULL, NULL, '2020-09-17 11:09:04'),
(2, 'Nón nữ', 'Non-nu', 0, NULL, NULL, NULL, '2020-09-17 11:09:04'),
(3, 'Đồng hồ', 'Dong-ho', 0, NULL, NULL, NULL, '2020-09-17 11:10:37'),
(4, 'Quần nữ', 'Quan-nu', 0, NULL, NULL, NULL, '2020-09-17 11:10:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_color`
--

CREATE TABLE `table_color` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code_color` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_color`
--

INSERT INTO `table_color` (`id`, `name`, `code_color`, `status`) VALUES
(1, 'Xanh', NULL, 0),
(2, 'Trắng', NULL, 0),
(3, 'Đỏ', NULL, 0),
(4, 'Đen', NULL, 0),
(5, 'Vàng', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_color_product`
--

CREATE TABLE `table_color_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_color_product`
--

INSERT INTO `table_color_product` (`id`, `id_product`, `id_color`, `price`, `status`) VALUES
(1, 11, 4, NULL, 0),
(2, 11, 2, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_customer`
--

CREATE TABLE `table_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_customer`
--

INSERT INTO `table_customer` (`id`, `name`, `tel`, `mail`, `address`, `status`) VALUES
(6, 'Văn Hải', '0867832034', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Gò Vấp - 613 Thống Nhất', 0),
(7, 'Văn Hải', 'a', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Thủ Đức - 700000', 0),
(8, 'Văn Hải', '0867832034', 'hainvps07661@fpt.edu.vn', 'Quảng Bình - Đồng Hới - 613 Thống Nhất', 0),
(9, 'Văn Hải', '0867832034', 'hainvps07661@fpt.edu.vn', 'Quảng Bình - Đồng Hới - 6730 Thống Nhất', 0),
(10, 'Văn Hải', '0123456789', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Thủ Đức - 700000', 0),
(11, 'Văn Hải', '0231456789', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Thủ Đức - 700000', 0),
(12, 'Văn Hải', 'a', 'chutiembanh998@gmail.com', 'Quảng Bình - Đồng Hới - 700000', 0),
(13, 'Văn Hải', '0687945652212', 'hainvps07661@fpt.edu.vn', 'Quảng Bình - Đồng Hới - 700000', 0),
(14, 'Văn Hải', '08678932034', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Thủ Đức - 700000', 0),
(15, 'Văn Hải', 'a', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Thủ Đức - 700000', 0),
(16, 'Văn Hải', 'aaaa', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Thủ Đức - 700000', 0),
(17, 'Văn Hải', 'aaaa', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Thủ Đức - 700000', 0),
(18, 'Văn Hải', 'aaaa', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Thủ Đức - 700000', 0),
(19, 'Văn Hải', 'aaaa', 'hainvps07661@fpt.edu.vn', 'Hồ Chí Minh - Thủ Đức - 700000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_district`
--

CREATE TABLE `table_district` (
  `id` int(11) NOT NULL,
  `id_province` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `ship_price` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_district`
--

INSERT INTO `table_district` (`id`, `id_province`, `name`, `ship_price`) VALUES
(1, 1, 'Thủ Đức', 12000),
(2, 1, 'Gò Vấp', 20000),
(3, 2, 'Đồng Hới', 18000),
(4, 2, 'Lệ Thuỷ', 10000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_made`
--

CREATE TABLE `table_made` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `name_no` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_made`
--

INSERT INTO `table_made` (`id`, `name`, `name_no`, `status`) VALUES
(1, 'Việt Nam', 'Viet-Nam', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_news`
--

CREATE TABLE `table_news` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `title_no` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(225) NOT NULL,
  `alt_img` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `seo_title` varchar(225) DEFAULT NULL,
  `seo_desc` text DEFAULT NULL,
  `seo_key` text DEFAULT NULL,
  `update_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_news`
--

INSERT INTO `table_news` (`id`, `title`, `title_no`, `description`, `img`, `alt_img`, `content`, `view`, `status`, `seo_title`, `seo_desc`, `seo_key`, `update_at`) VALUES
(1, 'Tương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh', 'Tuong-lai-cua-cac-tuan-le-thoi-trang-truyen-thong-giua-bien-co-dich-benh', 'Ngày càng nhiều các nhà mốt lựa chọn các hình thức khác thay cho những lịch trình chặt chẽ của các tuần lễ thời trang truyền thống và dịch bệnh đã khiến sự chuyển đổi này càng mạnh mẽ hơn.', 'n1.jpg', 'alt', 'Trong nhiều năm, ngành công nghiệp thời trang từng bước thực hiện những thay đổi sâu rộng đối với tuần lễ thời trang do nhu cầu bền vững và để phù hợp hơn. Chỉ cần nhìn vào Thụy Điển, quốc gia đã hủy các show diễn thời trang năm 2019 vì những lý do đó.\r\n\r\nỞ những nơi khác, tuần lễ thời trang Copenhagen đã tự đặt ra các tiêu chuẩn về tính bền vững, thân thiện với môi trường và các nhà thiết kế trên khắp thế giới đang tập trung nhiều hơn vào xu hướng không theo mùa, bỏ lại phía sau lịch sản xuất truyền thống và giảm giá thường xuyên.\r\n\r\nTương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh - 1\r\n\r\nDịch bệnh Covid-19 đã đẩy các Tuần lễ thời trang có vẻ lỗi thời thành một thứ hoàn toàn khác. Kể từ tháng 3 năm 2020, các show diễn trên khắp thế giới, từ Tokyo đến Moscow, thậm chí cả Paris và Milan, đã chuyển sang chế độ kỹ thuật số hoàn toàn với một số thương hiệu chọn tổ chức các sự kiện online.\r\n\r\nCác show diễn online phi truyền thống mang lại nhiều người xem hơn và thậm chí có thể bán hàng tốt hơn. Tất cả những thay đổi nhỏ này đối với cấu trúc tổng thể, mà các thị trường thời trang lớn hơn đã chậm hoặc khó có thể tiếp nhận, thực sự có thể giúp các thương hiệu theo nhiều cách khác nhau (cũng như môi trường và toàn ngành nói chung).\r\n\r\nVậy tương lai của show diễn thời trang sẽ như thế nào? Chúng ta hãy cùng xem phân tích dưới đây.\r\n\r\nTương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh - 2\r\n\r\nKỹ thuật số\r\n\r\nKhi Tuần lễ thời trang New York bắt đầu, nhiều nhà thiết kế chọn sử dụng kỹ thuật số, ưu tiên sự an toàn và tham gia vào xu hướng phát online các show diễn. Quay trở lại vào tháng 7 năm 2020, khi Camera Nazionale della Moda Italiana quyết định tổ chức Tuần lễ thời trang Milan online, đã có nhiều lời bàn tán xung quanh các buổi trình diễn hơn bình thường. Ví dụ: những người không tham dự buổi biểu diễn Prada giờ đã đăng về nó trên Instagram cùng lúc với những người tham dự show diễn. Hầu hết các show diễn đều trở thành các bài xã luận ngắn bằng video hoặc các thương hiệu đơn giản là phát online các show diễn.', 0, 0, NULL, NULL, NULL, '2020-09-16'),
(2, 'Tương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh', 'Tuong-lai-cua-cac-tuan-le-thoi-trang-truyen-thong-giua-bien-co-dich-benh', 'Ngày càng nhiều các nhà mốt lựa chọn các hình thức khác thay cho những lịch trình chặt chẽ của các tuần lễ thời trang truyền thống và dịch bệnh đã khiến sự chuyển đổi này càng mạnh mẽ hơn.', 'n1.jpg', 'alt', 'Trong nhiều năm, ngành công nghiệp thời trang từng bước thực hiện những thay đổi sâu rộng đối với tuần lễ thời trang do nhu cầu bền vững và để phù hợp hơn. Chỉ cần nhìn vào Thụy Điển, quốc gia đã hủy các show diễn thời trang năm 2019 vì những lý do đó.\r\n\r\nỞ những nơi khác, tuần lễ thời trang Copenhagen đã tự đặt ra các tiêu chuẩn về tính bền vững, thân thiện với môi trường và các nhà thiết kế trên khắp thế giới đang tập trung nhiều hơn vào xu hướng không theo mùa, bỏ lại phía sau lịch sản xuất truyền thống và giảm giá thường xuyên.\r\n\r\nTương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh - 1\r\n\r\nDịch bệnh Covid-19 đã đẩy các Tuần lễ thời trang có vẻ lỗi thời thành một thứ hoàn toàn khác. Kể từ tháng 3 năm 2020, các show diễn trên khắp thế giới, từ Tokyo đến Moscow, thậm chí cả Paris và Milan, đã chuyển sang chế độ kỹ thuật số hoàn toàn với một số thương hiệu chọn tổ chức các sự kiện online.\r\n\r\nCác show diễn online phi truyền thống mang lại nhiều người xem hơn và thậm chí có thể bán hàng tốt hơn. Tất cả những thay đổi nhỏ này đối với cấu trúc tổng thể, mà các thị trường thời trang lớn hơn đã chậm hoặc khó có thể tiếp nhận, thực sự có thể giúp các thương hiệu theo nhiều cách khác nhau (cũng như môi trường và toàn ngành nói chung).\r\n\r\nVậy tương lai của show diễn thời trang sẽ như thế nào? Chúng ta hãy cùng xem phân tích dưới đây.\r\n\r\nTương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh - 2\r\n\r\nKỹ thuật số\r\n\r\nKhi Tuần lễ thời trang New York bắt đầu, nhiều nhà thiết kế chọn sử dụng kỹ thuật số, ưu tiên sự an toàn và tham gia vào xu hướng phát online các show diễn. Quay trở lại vào tháng 7 năm 2020, khi Camera Nazionale della Moda Italiana quyết định tổ chức Tuần lễ thời trang Milan online, đã có nhiều lời bàn tán xung quanh các buổi trình diễn hơn bình thường. Ví dụ: những người không tham dự buổi biểu diễn Prada giờ đã đăng về nó trên Instagram cùng lúc với những người tham dự show diễn. Hầu hết các show diễn đều trở thành các bài xã luận ngắn bằng video hoặc các thương hiệu đơn giản là phát online các show diễn.', 0, 0, NULL, NULL, NULL, '2020-09-14'),
(3, 'Tương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh', 'Tuong-lai-cua-cac-tuan-le-thoi-trang-truyen-thong-giua-bien-co-dich-benh', 'Ngày càng nhiều các nhà mốt lựa chọn các hình thức khác thay cho những lịch trình chặt chẽ của các tuần lễ thời trang truyền thống và dịch bệnh đã khiến sự chuyển đổi này càng mạnh mẽ hơn.', 'n3.jpg', 'alt', 'Trong nhiều năm, ngành công nghiệp thời trang từng bước thực hiện những thay đổi sâu rộng đối với tuần lễ thời trang do nhu cầu bền vững và để phù hợp hơn. Chỉ cần nhìn vào Thụy Điển, quốc gia đã hủy các show diễn thời trang năm 2019 vì những lý do đó.\r\n\r\nỞ những nơi khác, tuần lễ thời trang Copenhagen đã tự đặt ra các tiêu chuẩn về tính bền vững, thân thiện với môi trường và các nhà thiết kế trên khắp thế giới đang tập trung nhiều hơn vào xu hướng không theo mùa, bỏ lại phía sau lịch sản xuất truyền thống và giảm giá thường xuyên.\r\n\r\nTương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh - 1\r\n\r\nDịch bệnh Covid-19 đã đẩy các Tuần lễ thời trang có vẻ lỗi thời thành một thứ hoàn toàn khác. Kể từ tháng 3 năm 2020, các show diễn trên khắp thế giới, từ Tokyo đến Moscow, thậm chí cả Paris và Milan, đã chuyển sang chế độ kỹ thuật số hoàn toàn với một số thương hiệu chọn tổ chức các sự kiện online.\r\n\r\nCác show diễn online phi truyền thống mang lại nhiều người xem hơn và thậm chí có thể bán hàng tốt hơn. Tất cả những thay đổi nhỏ này đối với cấu trúc tổng thể, mà các thị trường thời trang lớn hơn đã chậm hoặc khó có thể tiếp nhận, thực sự có thể giúp các thương hiệu theo nhiều cách khác nhau (cũng như môi trường và toàn ngành nói chung).\r\n\r\nVậy tương lai của show diễn thời trang sẽ như thế nào? Chúng ta hãy cùng xem phân tích dưới đây.\r\n\r\nTương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh - 2\r\n\r\nKỹ thuật số\r\n\r\nKhi Tuần lễ thời trang New York bắt đầu, nhiều nhà thiết kế chọn sử dụng kỹ thuật số, ưu tiên sự an toàn và tham gia vào xu hướng phát online các show diễn. Quay trở lại vào tháng 7 năm 2020, khi Camera Nazionale della Moda Italiana quyết định tổ chức Tuần lễ thời trang Milan online, đã có nhiều lời bàn tán xung quanh các buổi trình diễn hơn bình thường. Ví dụ: những người không tham dự buổi biểu diễn Prada giờ đã đăng về nó trên Instagram cùng lúc với những người tham dự show diễn. Hầu hết các show diễn đều trở thành các bài xã luận ngắn bằng video hoặc các thương hiệu đơn giản là phát online các show diễn.', 0, 0, NULL, NULL, NULL, '2020-09-17'),
(4, 'Tương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh', 'Tuong-lai-cua-cac-tuan-le-thoi-trang-truyen-thong-giua-bien-co-dich-benh', 'Ngày càng nhiều các nhà mốt lựa chọn các hình thức khác thay cho những lịch trình chặt chẽ của các tuần lễ thời trang truyền thống và dịch bệnh đã khiến sự chuyển đổi này càng mạnh mẽ hơn.', 'n4.jpg', 'alt', 'Trong nhiều năm, ngành công nghiệp thời trang từng bước thực hiện những thay đổi sâu rộng đối với tuần lễ thời trang do nhu cầu bền vững và để phù hợp hơn. Chỉ cần nhìn vào Thụy Điển, quốc gia đã hủy các show diễn thời trang năm 2019 vì những lý do đó.\r\n\r\nỞ những nơi khác, tuần lễ thời trang Copenhagen đã tự đặt ra các tiêu chuẩn về tính bền vững, thân thiện với môi trường và các nhà thiết kế trên khắp thế giới đang tập trung nhiều hơn vào xu hướng không theo mùa, bỏ lại phía sau lịch sản xuất truyền thống và giảm giá thường xuyên.\r\n\r\nTương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh - 1\r\n\r\nDịch bệnh Covid-19 đã đẩy các Tuần lễ thời trang có vẻ lỗi thời thành một thứ hoàn toàn khác. Kể từ tháng 3 năm 2020, các show diễn trên khắp thế giới, từ Tokyo đến Moscow, thậm chí cả Paris và Milan, đã chuyển sang chế độ kỹ thuật số hoàn toàn với một số thương hiệu chọn tổ chức các sự kiện online.\r\n\r\nCác show diễn online phi truyền thống mang lại nhiều người xem hơn và thậm chí có thể bán hàng tốt hơn. Tất cả những thay đổi nhỏ này đối với cấu trúc tổng thể, mà các thị trường thời trang lớn hơn đã chậm hoặc khó có thể tiếp nhận, thực sự có thể giúp các thương hiệu theo nhiều cách khác nhau (cũng như môi trường và toàn ngành nói chung).\r\n\r\nVậy tương lai của show diễn thời trang sẽ như thế nào? Chúng ta hãy cùng xem phân tích dưới đây.\r\n\r\nTương lai của các tuần lễ thời trang truyền thống giữa biến cố dịch bệnh - 2\r\n\r\nKỹ thuật số\r\n\r\nKhi Tuần lễ thời trang New York bắt đầu, nhiều nhà thiết kế chọn sử dụng kỹ thuật số, ưu tiên sự an toàn và tham gia vào xu hướng phát online các show diễn. Quay trở lại vào tháng 7 năm 2020, khi Camera Nazionale della Moda Italiana quyết định tổ chức Tuần lễ thời trang Milan online, đã có nhiều lời bàn tán xung quanh các buổi trình diễn hơn bình thường. Ví dụ: những người không tham dự buổi biểu diễn Prada giờ đã đăng về nó trên Instagram cùng lúc với những người tham dự show diễn. Hầu hết các show diễn đều trở thành các bài xã luận ngắn bằng video hoặc các thương hiệu đơn giản là phát online các show diễn.', 0, 0, NULL, NULL, NULL, '2020-09-15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_news_tag`
--

CREATE TABLE `table_news_tag` (
  `id` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product`
--

CREATE TABLE `table_product` (
  `id` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_made` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `title_no` varchar(225) NOT NULL,
  `img` varchar(225) NOT NULL,
  `alt_img` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(11) NOT NULL DEFAULT 0,
  `number_limit` int(11) NOT NULL DEFAULT 100,
  `hot` tinyint(4) NOT NULL DEFAULT 0,
  `seo_title` varchar(225) DEFAULT NULL,
  `seo_desc` text DEFAULT NULL,
  `seo_key` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_product`
--

INSERT INTO `table_product` (`id`, `id_brand`, `id_made`, `title`, `title_no`, `img`, `alt_img`, `description`, `price`, `promotion_price`, `view`, `buyed`, `number_limit`, `hot`, `seo_title`, `seo_desc`, `seo_key`, `status`, `update_at`) VALUES
(1, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr1.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, NULL, 0, 0, 100, 1, NULL, NULL, NULL, 0, '2020-08-03 11:35:25'),
(2, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr2.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, 60000, 0, 12, 100, 1, NULL, NULL, NULL, 0, '2020-08-03 11:35:36'),
(3, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr3.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, NULL, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:35:36'),
(4, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr4.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, NULL, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(5, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr5.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, 50000, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(6, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr6.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, NULL, 0, 0, 100, 1, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(7, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr7.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, 63000, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(8, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr8.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, NULL, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(9, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr9.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, NULL, 0, 0, 100, 1, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(10, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr10.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, 59000, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(11, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr11.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', NULL, NULL, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(12, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr12.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, 49900, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(13, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr13.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, 23000, 0, 0, 100, 1, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(14, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr14.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, NULL, 0, 0, 100, 1, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(15, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr15.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', 64000, NULL, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(16, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr16.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', NULL, NULL, 0, 0, 100, 0, NULL, NULL, NULL, 0, '2020-08-03 11:36:08'),
(17, 1, 1, 'Gel tẩy tế bào chết', 'Gel-tay-te-bao-chet', 'pr17.jpg', 'thẻ alt', 'Gel tẩy tế bào chết 3W Clinic Collagen 180ml nhẹ nhàng loại bỏ mọi tế bào chết một cách an toàn và hiệu quả, đem đến làn da mịn màng.', NULL, NULL, 0, 0, 100, 1, NULL, NULL, NULL, 0, '2020-08-03 11:36:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product_catalog`
--

CREATE TABLE `table_product_catalog` (
  `id` int(11) NOT NULL,
  `id_catalog` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_product_catalog`
--

INSERT INTO `table_product_catalog` (`id`, `id_catalog`, `id_product`) VALUES
(1, 1, 14),
(2, 4, 14),
(3, 2, 1),
(4, 3, 2),
(5, 4, 3),
(6, 1, 4),
(7, 4, 5),
(8, 2, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_province`
--

CREATE TABLE `table_province` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_province`
--

INSERT INTO `table_province` (`id`, `name`) VALUES
(1, 'Hồ Chí Minh'),
(2, 'Quảng Bình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_size`
--

CREATE TABLE `table_size` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_size`
--

INSERT INTO `table_size` (`id`, `name`, `status`) VALUES
(1, 'S', 0),
(2, 'M', 0),
(3, 'L', 0),
(4, 'XL', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_size_product`
--

CREATE TABLE `table_size_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `price` float DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `table_size_product`
--

INSERT INTO `table_size_product` (`id`, `id_product`, `id_size`, `price`, `status`) VALUES
(1, 11, 1, 64000, 0),
(2, 11, 2, 66000, 0),
(3, 11, 1, 70000, 0),
(4, 11, 4, 75000, 0),
(5, 16, 1, 63000, 0),
(6, 16, 2, 65000, 0),
(7, 16, 3, 66000, 0),
(8, 16, 4, 70000, 0),
(9, 17, 1, 21000, 0),
(10, 17, 2, 25000, 0),
(11, 17, 3, 27000, 0),
(12, 17, 4, 30000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_tag`
--

CREATE TABLE `table_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `name_no` varchar(225) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_thumbnail`
--

CREATE TABLE `table_thumbnail` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  `alt_img` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `table_bill`
--
ALTER TABLE `table_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b-cus` (`id_customer`);

--
-- Chỉ mục cho bảng `table_bill_detail`
--
ALTER TABLE `table_bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bd-b` (`id_bill`),
  ADD KEY `bd-p` (`id_product`);

--
-- Chỉ mục cho bảng `table_brand`
--
ALTER TABLE `table_brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_catalog`
--
ALTER TABLE `table_catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_color`
--
ALTER TABLE `table_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_color_product`
--
ALTER TABLE `table_color_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clp-cl` (`id_color`),
  ADD KEY `clp-p` (`id_product`);

--
-- Chỉ mục cho bảng `table_customer`
--
ALTER TABLE `table_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_district`
--
ALTER TABLE `table_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d-p` (`id_province`);

--
-- Chỉ mục cho bảng `table_made`
--
ALTER TABLE `table_made`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_news`
--
ALTER TABLE `table_news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_news_tag`
--
ALTER TABLE `table_news_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nt-n` (`id_news`),
  ADD KEY `nt-t` (`id_tag`);

--
-- Chỉ mục cho bảng `table_product`
--
ALTER TABLE `table_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p-m` (`id_made`),
  ADD KEY `p-b` (`id_brand`);

--
-- Chỉ mục cho bảng `table_product_catalog`
--
ALTER TABLE `table_product_catalog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ctc-pc` (`id_catalog`),
  ADD KEY `p-pc` (`id_product`);

--
-- Chỉ mục cho bảng `table_province`
--
ALTER TABLE `table_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_size`
--
ALTER TABLE `table_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_size_product`
--
ALTER TABLE `table_size_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `szp-sz` (`id_size`),
  ADD KEY `szp-p` (`id_product`);

--
-- Chỉ mục cho bảng `table_tag`
--
ALTER TABLE `table_tag`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_thumbnail`
--
ALTER TABLE `table_thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tn-p` (`id_product`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `table_bill`
--
ALTER TABLE `table_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `table_bill_detail`
--
ALTER TABLE `table_bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `table_brand`
--
ALTER TABLE `table_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `table_catalog`
--
ALTER TABLE `table_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `table_color`
--
ALTER TABLE `table_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `table_color_product`
--
ALTER TABLE `table_color_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `table_customer`
--
ALTER TABLE `table_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `table_district`
--
ALTER TABLE `table_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `table_made`
--
ALTER TABLE `table_made`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `table_news`
--
ALTER TABLE `table_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `table_news_tag`
--
ALTER TABLE `table_news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_product`
--
ALTER TABLE `table_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `table_product_catalog`
--
ALTER TABLE `table_product_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `table_province`
--
ALTER TABLE `table_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `table_size`
--
ALTER TABLE `table_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `table_size_product`
--
ALTER TABLE `table_size_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `table_tag`
--
ALTER TABLE `table_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_thumbnail`
--
ALTER TABLE `table_thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `table_bill`
--
ALTER TABLE `table_bill`
  ADD CONSTRAINT `b-cus` FOREIGN KEY (`id_customer`) REFERENCES `table_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `table_bill_detail`
--
ALTER TABLE `table_bill_detail`
  ADD CONSTRAINT `bd-b` FOREIGN KEY (`id_bill`) REFERENCES `table_bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bd-p` FOREIGN KEY (`id_product`) REFERENCES `table_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `table_color_product`
--
ALTER TABLE `table_color_product`
  ADD CONSTRAINT `clp-cl` FOREIGN KEY (`id_color`) REFERENCES `table_color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clp-p` FOREIGN KEY (`id_product`) REFERENCES `table_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `table_district`
--
ALTER TABLE `table_district`
  ADD CONSTRAINT `d-p` FOREIGN KEY (`id_province`) REFERENCES `table_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `table_news_tag`
--
ALTER TABLE `table_news_tag`
  ADD CONSTRAINT `nt-n` FOREIGN KEY (`id_news`) REFERENCES `table_news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nt-t` FOREIGN KEY (`id_tag`) REFERENCES `table_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `table_product`
--
ALTER TABLE `table_product`
  ADD CONSTRAINT `p-b` FOREIGN KEY (`id_brand`) REFERENCES `table_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `p-m` FOREIGN KEY (`id_made`) REFERENCES `table_made` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `table_product_catalog`
--
ALTER TABLE `table_product_catalog`
  ADD CONSTRAINT `c-pc` FOREIGN KEY (`id_catalog`) REFERENCES `table_catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `p-pc` FOREIGN KEY (`id_product`) REFERENCES `table_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `table_size_product`
--
ALTER TABLE `table_size_product`
  ADD CONSTRAINT `szp-p` FOREIGN KEY (`id_product`) REFERENCES `table_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `szp-sz` FOREIGN KEY (`id_size`) REFERENCES `table_size` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `table_thumbnail`
--
ALTER TABLE `table_thumbnail`
  ADD CONSTRAINT `tn-p` FOREIGN KEY (`id_product`) REFERENCES `table_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
