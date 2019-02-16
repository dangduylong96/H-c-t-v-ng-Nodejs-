-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2019 at 05:42 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.0.33-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoc_tu_vung`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `name`, `password`, `created_at`) VALUES
(1, 'nh0xpr0py', 'Long Duy', 'd91ee452f1cc55dc23cea1ad9eeba9ce181b07e0', '2019-01-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `english_word` varchar(255) NOT NULL,
  `vietnam_word` varchar(255) NOT NULL,
  `vietname_sub_word` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `word`
--

INSERT INTO `word` (`id`, `user_id`, `english_word`, `vietnam_word`, `vietname_sub_word`, `img`, `status`) VALUES
(7, 1, 'accident', 'Tai nạn', 'ác ci đần', 'hVtLKlKDyYdownload (1).jpeg', '1'),
(8, 1, 'appreciation', 'sự đánh giá', 'app rec lại action', 'Kdh2qWODGJdownload (2).jpeg', '1'),
(10, 1, 'caters', 'phục vụ', '', 'AXyVtcT4oLphucvu.jpeg', '1'),
(11, 1, 'competition', 'cuộc thi', '', 'PJake8UhfNdownload (3).jpeg', '1'),
(12, 1, 'contributor', 'người đóng góp', '', 'PvW1L4cjUzteam-work-business-concept-drawing_csp17450908.jpg', '1'),
(13, 1, 'courteous', 'lịch sự', 'cô tới rồi', 'fh711vRxkWdownload (4).jpeg', '1'),
(14, 1, 'decided', 'Quyết định', 'Đi kí đi', 'sORjAO9nfqdownload (5).jpeg', '1'),
(15, 1, 'disposed', 'xử lí', 'xử lí diss boss đi', 'Au9HmwukBIBV-Acharya-1.jpg', '1'),
(16, 1, 'fines', 'Phạt', '', 'qM9dHRXu8Cdownload.jpeg', '1'),
(17, 1, 'government', 'Chính phủ', 'cô vợ mần', 'PP6AH1kuPbdownload (6).jpeg', '1'),
(18, 1, 'sincere', 'chân hành', 'xin cơ rơ chân thành', 'Xd7nPyFYnddownload (7).jpeg', '1'),
(19, 1, 'suddenly', 'đột ngột', '', '', '1'),
(20, 1, 'wasted', 'lãng phí', '', 'vAHWNObvx1download (8).jpeg', '1'),
(21, 1, 'wages', 'tiền lương', 'quà ghê', 'prObSN0IvUdownload (9).jpeg', '1'),
(22, 1, 'vacant', 'bỏ trống', 'đồng nghĩa empty', 'OkRjBabNjSmaxresdefault.jpg', '1'),
(23, 1, 'potential', 'tiềm năng', '', '0rg2WyEAegdownload (10).jpeg', '1'),
(24, 1, 'mayor', 'thị trưởng', 'mày giàu', 'W9kiQC84c2download (11).jpeg', '1'),
(25, 1, 'express', 'bày tỏ', 'vnexpress => việt nam bày tỏ', 'sKu5emP8lzimages.png', '1'),
(26, 1, 'exaggeration', 'phóng đại', 'ít gáy sần', 'O8Tkj5HazIdownload (12).jpeg', '1'),
(27, 1, 'dispute', 'tranh chấp', 'discuss pute', 'Nn0LKKSqiNdownload (13).jpeg', '1'),
(28, 1, 'counselling', 'tư vấn', 'count của selling', 'PbYWatvXgXdownload (14).jpeg', '1'),
(29, 1, 'attracting', 'thu hút', 'át tracker', 'bSXAICscDrdownload.png', '1'),
(30, 1, 'law', 'pháp luật', '', 'tgod4MLCAZdownload.jpeg', '1'),
(31, 1, 'retires', 'nghỉ hưu', 're tired (mệt mỏi) ==> Cần làm gì', 'lWX7CAPvvQdownload (1).jpeg', '1'),
(32, 1, 'pension', 'lương hưu', 'best sion nhận lương hưu', 'O78DoLlR5aArticle.jpg', '1'),
(33, 1, 'colleagues', 'đồng nghiệp', 'collect gues => Chọn lựa khách làm đồng nghiệp', 'i5x82mi2Dydownload.png', '1'),
(34, 1, 'approach', 'tiếp cận', 'app roach (con gián) ==> Đưa nhau TIẾP CẬN loài gián', 'EfmELcuvo7cách tiếp cận khách hàng.jpg', '1'),
(35, 1, 'despite', 'mặc dù', 'đồng nghĩa although', '', '1'),
(36, 1, 'predicte', 'dự đoán', 'predicte score in football', 'PsHiIwzAR8download.jpeg', '1'),
(37, 1, 'article', 'bài báo', '', 'XHaU7eIjsSdownload (2).jpeg', '1'),
(38, 1, 'survey', 'khảo sát', '', 'vbLEDGNDRGSurvey-1110x630.jpg', '1'),
(39, 1, 'peak', 'cao điểm', 'pea => đậu xanh, đậu xanh k => cao', '4ktwDcENoqimages.jpeg', '1'),
(40, 1, 'forecast', 'dự báo, dự đoán', 'fore = trước, cast = diễn viên. Dự báo trước diễn viên', 'eCthitYLOLdownload (3).jpeg', '1'),
(41, 1, 'appointed', 'bổ nhiệm', 'pointed=> chỉ định, chỉ định 1 người khác lên làm giám đốc là gì?', 'wqGWUaYRo2download (4).jpeg', '1'),
(42, 1, 'dimension', 'kích thước', '', '2clqjI4NT3download (1).png', '1'),
(43, 1, 'climbing', 'leo', '', 'co7yrlE5WD279616_31645_L2.jpg', '1'),
(44, 1, 'apology', 'lời xin lỗi', '==  sorry', '8awZPa6CBhdownload (5).jpeg', '1'),
(45, 1, 'reserve', 'dự trữ, đặt trước,..', '', 'IgXxvwacSUimages (1).jpeg', '1'),
(46, 1, 'commence', 'bắt đầu', 'bắt đầu comment', 'AIkWdrH1gkdownload (6).jpeg', '1'),
(47, 1, 'facilities', 'cơ sở vật chất', '', 'Yxqy5e92M9download (2).png', '1'),
(48, 1, 'dependent', 'phụ thuộc', '', 'WOrT2aXNGG45821295927259289.jpg', '1'),
(49, 1, 'founded', 'thành lập', 'founder, tìm thấy ed để ... câu.', 'xyrLplqnG5maxresdefault.jpg', '1'),
(50, 1, 'stringent', 'nghiêm khắc', 'strong để làm gì dạy con ?', 'alVkFL36iWdownload (7).jpeg', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
