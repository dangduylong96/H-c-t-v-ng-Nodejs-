-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 17, 2019 lúc 06:19 PM
-- Phiên bản máy phục vụ: 5.7.25-0ubuntu0.16.04.2
-- Phiên bản PHP: 7.0.33-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoc_tu_vung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user_name`, `name`, `password`, `created_at`) VALUES
(1, 'nh0xpr0py', 'Long Duy', 'd91ee452f1cc55dc23cea1ad9eeba9ce181b07e0', '2019-01-20 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `word`
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
-- Đang đổ dữ liệu cho bảng `word`
--

INSERT INTO `word` (`id`, `user_id`, `english_word`, `vietnam_word`, `vietname_sub_word`, `img`, `status`) VALUES
(7, 1, 'accident', 'Tai nạn', 'ác ci đần', 'hVtLKlKDyYdownload (1).jpeg', '0'),
(8, 1, 'appreciation', 'sự đánh giá', 'app rec lại action', 'Kdh2qWODGJdownload (2).jpeg', '0'),
(10, 1, 'caters', 'phục vụ', '', 'AXyVtcT4oLphucvu.jpeg', '0'),
(11, 1, 'competition', 'cuộc thi', '', 'PJake8UhfNdownload (3).jpeg', '0'),
(12, 1, 'contributor', 'người đóng góp', '', 'PvW1L4cjUzteam-work-business-concept-drawing_csp17450908.jpg', '0'),
(13, 1, 'courteous', 'lịch sự', 'cô tới rồi', 'fh711vRxkWdownload (4).jpeg', '1'),
(14, 1, 'decided', 'Quyết định', 'Đi kí đi', 'sORjAO9nfqdownload (5).jpeg', '0'),
(15, 1, 'disposed', 'xử lí', 'xử lí diss boss đi', 'Au9HmwukBIBV-Acharya-1.jpg', '1'),
(16, 1, 'fines', 'Phạt', '', 'qM9dHRXu8Cdownload.jpeg', '0'),
(17, 1, 'government', 'Chính phủ', 'cô vợ mần', 'PP6AH1kuPbdownload (6).jpeg', '0'),
(18, 1, 'sincere', 'chân hành', 'xin cơ rơ chân thành', 'Xd7nPyFYnddownload (7).jpeg', '0'),
(19, 1, 'suddenly', 'đột ngột', '', '', '0'),
(20, 1, 'wasted', 'lãng phí', '', 'vAHWNObvx1download (8).jpeg', '0'),
(21, 1, 'wages', 'tiền lương', 'quà ghê', 'prObSN0IvUdownload (9).jpeg', '0'),
(22, 1, 'vacant', 'bỏ trống', 'đồng nghĩa empty', 'OkRjBabNjSmaxresdefault.jpg', '0'),
(23, 1, 'potential', 'tiềm năng', '', '0rg2WyEAegdownload (10).jpeg', '0'),
(24, 1, 'mayor', 'thị trưởng', 'mày giàu', 'W9kiQC84c2download (11).jpeg', '0'),
(25, 1, 'express', 'bày tỏ', 'vnexpress => việt nam bày tỏ', 'sKu5emP8lzimages.png', '0'),
(26, 1, 'exaggeration', 'phóng đại', 'ít gáy sần', 'O8Tkj5HazIdownload (12).jpeg', '0'),
(27, 1, 'dispute', 'tranh chấp', 'discuss pute', 'Nn0LKKSqiNdownload (13).jpeg', '1'),
(28, 1, 'counselling', 'tư vấn', 'count của selling', 'PbYWatvXgXdownload (14).jpeg', '0'),
(29, 1, 'attracting', 'thu hút', 'át tracker', 'bSXAICscDrdownload.png', '0'),
(30, 1, 'law', 'pháp luật', '', 'tgod4MLCAZdownload.jpeg', '0'),
(31, 1, 'retires', 'nghỉ hưu', 're tired (mệt mỏi) ==> Cần làm gì', 'lWX7CAPvvQdownload (1).jpeg', '0'),
(32, 1, 'pension', 'lương hưu', 'best sion nhận lương hưu', 'O78DoLlR5aArticle.jpg', '0'),
(33, 1, 'colleagues', 'đồng nghiệp', 'collect gues => Chọn lựa khách làm đồng nghiệp', 'i5x82mi2Dydownload.png', '0'),
(34, 1, 'approach', 'tiếp cận', 'app roach (con gián) ==> Đưa nhau TIẾP CẬN loài gián', 'EfmELcuvo7cách tiếp cận khách hàng.jpg', '1'),
(35, 1, 'despite', 'mặc dù', 'đồng nghĩa although', '', '1'),
(36, 1, 'predicte', 'dự đoán', 'predicte score in football', 'PsHiIwzAR8download.jpeg', '1'),
(37, 1, 'article', 'bài báo', '', 'XHaU7eIjsSdownload (2).jpeg', '0'),
(38, 1, 'survey', 'khảo sát', '', 'vbLEDGNDRGSurvey-1110x630.jpg', '0'),
(39, 1, 'peak', 'cao điểm', 'pea => đậu xanh, đậu xanh k => cao', '4ktwDcENoqimages.jpeg', '1'),
(40, 1, 'forecast', 'dự báo, dự đoán', 'fore = trước, cast = diễn viên. Dự báo trước diễn viên', 'eCthitYLOLdownload (3).jpeg', '1'),
(41, 1, 'appointed', 'bổ nhiệm', 'pointed=> chỉ định, chỉ định 1 người khác lên làm giám đốc là gì?', 'wqGWUaYRo2download (4).jpeg', '1'),
(42, 1, 'dimension', 'kích thước', '', '2clqjI4NT3download (1).png', '0'),
(43, 1, 'climbing', 'leo', '', 'co7yrlE5WD279616_31645_L2.jpg', '0'),
(44, 1, 'apology', 'lời xin lỗi', '==  sorry', '8awZPa6CBhdownload (5).jpeg', '0'),
(45, 1, 'reserve', 'dự trữ, đặt trước,..', '', 'IgXxvwacSUimages (1).jpeg', '0'),
(46, 1, 'commence', 'bắt đầu', 'bắt đầu comment', 'AIkWdrH1gkdownload (6).jpeg', '0'),
(47, 1, 'facilities', 'cơ sở vật chất', '', 'Yxqy5e92M9download (2).png', '0'),
(48, 1, 'dependent', 'phụ thuộc', '', 'WOrT2aXNGG45821295927259289.jpg', '0'),
(49, 1, 'founded', 'thành lập', 'founder, tìm thấy ed để ... câu.', 'xyrLplqnG5maxresdefault.jpg', '0'),
(50, 1, 'stringent', 'nghiêm khắc', 'strong để làm gì dạy con ?', 'alVkFL36iWdownload (7).jpeg', '1'),
(51, 1, 'favorable', 'thuận lợi', 'favor => ủng hộ, able => có thể. Có thể ủng hộ 1 cách ..... (suôn sẻ)', '2AVEqJqLPE29562429-eraser-changing-the-word-unfavorable-for-favorable.jpg', '1'),
(52, 1, 'afterwards', 'sau đó', '== later', 'D5UzcN8fXYdownload (8).jpeg', '1'),
(53, 1, 'concerns', 'mối quan tâm', 'con chị e cưng ==> quan tâm', 'UyM2jBkF9RCONCERN.jpg', '1'),
(54, 1, 'industries', 'các ngành công nghiệp', '', 'nlgS1yrOk2industry_with_chimney.jpeg', '1'),
(55, 1, 'prompt', 'lời nhắc', 'prompt trong javascript ==> Hiện lên thông báo lời nhắc', 'nUVLZQjqEDdownload (3).png', '1'),
(56, 1, 'retail', 'bán lẻ', 'tail ==> đuôi, coi lại cái đuổi để BÁN LẺ', 'CWl3Ejomerretail_shopping_cart_commerce-100722772-large.jpg', '1'),
(57, 1, 'economy', 'nền kinh tế, cần kiệm, dành dụm', '', 'ewKFKprnrYdownload (9).jpeg', '0'),
(58, 1, 'percent', 'phần trăm', '', 'DHEhwD9zBZdownload.png', '0'),
(59, 1, 'authority', 'cầm quyền, được quyền', '', 'KngrNxpuGLshutterstock_343396823.jpg', '0'),
(60, 1, 'confuse', 'bối rối, lẫn lộn', '', 'QjQaUfcT8Idownload.jpeg', '0'),
(61, 1, 'schedule', 'lịch trình', '', 'LeGJSPjcL9download (1).png', '0'),
(62, 1, 'appointment', 'cuộc hẹn', 'appointed ==> Bổ nhiệm, appointment ==> Cuộc hẹn', 'n4gfCW1V7Tdownload (1).jpeg', '0'),
(63, 1, 'imply', 'nghĩa là, ngụ ý', '', '', '1'),
(64, 1, 'endorserment', 'chứng thực', '==  authentication, ê cái đồ sợ mẹ không chứng thực', 'rryvacyBX2download (2).png', '1'),
(65, 1, 'barely', 'vừa đủ', 'bare ==> Trần truồng, trần truồng VỪA ĐỦ thôi', 'xo6NVgHO7Vdownload (2).jpeg', '1'),
(66, 1, 'gradually', 'dần dần', 'grad => Tốt nghiệp, dradually ==> Tốt nghiệp dần dần', 'SJHzH0UXgQdownload (3).jpeg', '1'),
(67, 1, 'necessary', 'cần thiết', 'nét séc sợ gì? cần thiết nên k sợ', 'GcIZs9yzytdownload (4).jpeg', '0'),
(68, 1, 'directly', 'trực tiếp', 'directly == livestream (director là giám đốc)', 'lXV0FDin8Fimages.jpeg', '0'),
(69, 1, 'announce', 'thông báo', '', 'sZnfzC7jpQ4b30a9d4638fbade4f9e7d7b8a6b4e42_icon.png', '0'),
(70, 1, 'attend', 'tham dự', 'attendtion ==> Chú ý, attend ==> Tham gia, chú ý tham gia', 'q238bEjfiOdownload (5).jpeg', '0'),
(71, 1, 'immediately', 'ngay lập tức', 'im mẹ đi té liền Ngay lập tức', 'pUgkhWXXTEdownload (6).jpeg', '1'),
(72, 1, 'prosperous', 'thịnh vượng', 'pro pờ rút => pro good ==> Thịnh vượng', 'Nt3SQYJPRXdownload (7).jpeg', '1'),
(73, 1, 'mature', 'trưởng thành', 'mặt trẻ', 'CUpfrho2g7download (8).jpeg', '1'),
(74, 1, 'reason', 'lý do', '', 'jaVZ5id8N2download (3).png', '1'),
(75, 1, 'occur', 'xảy ra', '', 'pokuO6UlHimaxresdefault.jpg', '0'),
(76, 1, 'nervous', 'lo lắng', 'Lo lắng né cái vợt', 'FW7ozA0dFgnervous.jpg', '1'),
(77, 1, 'speech', 'phát biểu', 'speed ==> Tốc độ, thay d thành ch ==> phát biểu', 'DKYtIb2Qxwdownload (9).jpeg', '1'),
(78, 1, 'reach', 'chạm tới', '', 'AZKfQcNJAqdownload (10).jpeg', '1'),
(80, 1, 'unless', 'trừ khi', '== if not', 'vGl5hbph22download (12).jpeg', '0'),
(81, 1, 'therefore', 'vì thế', '== so', '', '0'),
(82, 1, 'represent', 'đại diện', 'present ==> Hiện tại, nhìn lại hiện tài để BIỂU DIỄN', '5ZSUcHiXL8images (1).jpeg', '0'),
(83, 1, 'perform', 'biểu diễn', '', 'pvcX9FKjr6download (13).jpeg', '0'),
(84, 1, 'decision', 'phán quyết, giải quyết', 'PHÁN QUYẾT đi chị sần', 'nvjEjd6cCaimages (2).jpeg', '0'),
(85, 1, 'accuse', 'buộc tội', 'ác như xe sẽ bị BUỘC TỘI', 'xjkWO4eWMs63240526-concept-of-accuse-guilty-young-man.jpg', '1'),
(86, 1, 'court', 'tòa án', '', 't87mO9468odownload (14).jpeg', '1'),
(87, 1, 'attorney', 'luật sư', 'át tớ nè ==> tớ kêu LUẬT SƯ', '3pTu430gGZdownload (15).jpeg', '1'),
(88, 1, 'condolences', 'chia buồn', '', 'hCyOs2v0qhcondolences-messages-feature.jpg', '0'),
(89, 1, 'charges', 'tiền phí', '', 'iafEKVxeoYdownload.jpeg', '0'),
(90, 1, 'interpret', 'thông dịch', '', 'v9DCCcygGZ1_74578.jpg', '0'),
(91, 1, 'involved', 'liên quan', 'in vô về vấn đề liên quan', 'nJCtAXLEuidownload.png', '0'),
(92, 1, 'shortage', 'thiếu hụt', '', '72F2ox4H1x1200px-Escasez_en_Venezuela,_Central_Madeirense_8.JPG', '0'),
(93, 1, 'whereas', 'trong khi', '== during, when', '', '0'),
(94, 1, 'otherwise', 'mặc khác', '', '', '0'),
(95, 1, 'enroll', 'ghi danh', '', 'j1NmpdiR3zdownload (1).png', '0'),
(96, 1, 'among', 'trong số', '', '', '0'),
(97, 1, 'regular', 'đều đặn', '', '', '1'),
(98, 1, 'durable', 'bền vững', 'đùa à bồ', 'iKBCUQaLMOdownload (2).png', '1'),
(99, 1, 'indifferently', 'thờ ơ', 'in khác làm thờ ơ', 'r7E1v0aovFindifferent-3110-e8ec18e4672bad79010ed231125ecb54@1x.jpg', '1'),
(100, 1, 'presumably', 'có lẻ', '= maybe', '', '1'),
(101, 1, 'unbearably', 'không chịu nổi', 'uống bia ly không chịu nổi', 'u59CHJZQ2ximagining-something-unbearably-cute→-something-p-unbearably-cute-_-o-anime-irl-3121866.png', '1'),
(102, 1, 'tough', 'khó khăn', '', 'uE8E9F4L4Zdownload (1).jpeg', '1'),
(103, 1, 'excessive', 'quá đáng', '', 'BXuZwlUZjxdownload (2).jpeg', '1'),
(104, 1, 'convenient', 'tiện lợi', '', 'I5vjb3wzI5MjkwNTA0Ng.jpeg', '0'),
(105, 1, 'stable', 'ổn định', '', 'AOqWvozit142378692subscriptions_FCEC.jpg', '0'),
(106, 1, 'persist', 'kiên trì', 'bê sít kiên trì', 'kw9eSdFS4Gdownload (3).jpeg', '1'),
(107, 1, 'raise', 'nâng lên, nâng cao', '', 'ti2pwzmssYdownload (4).jpeg', '0'),
(108, 1, 'persuade', 'khuyên bảo, thuyết phục', 'thuyết phục uống bò sữa dê', '2QY3NBirKD186835f5-d01b-4775-86e9-35254aa69c98_Screenshot20130812at53551PM.crop_570x427_0,90.preview.jpeg', '1'),
(109, 1, 'instruction', 'chỉ dẫn', '', 'fPGGqzTrOAbusiness-instruction-28610589.jpg', '1'),
(110, 1, 'situation', 'tình hình, tình huống', '', '', '1'),
(111, 1, 'worse', 'tệ hơn', '', 'lGo6CUGkQzdownload (5).jpeg', '1'),
(112, 1, 'as if', 'dường như', '', '', '1'),
(113, 1, 'even so', 'ngay cả như vậy', '', '', '1'),
(114, 1, 'no matter', 'không vấn đề', '', '', '0'),
(115, 1, 'detective', 'thám tử', '', 'Qg3dnfSopcdoc-truyen-tranh-conan-online-tren-dien-thoai-1.png', '0'),
(116, 1, 'anonymouse', 'ẩn danh', '', 'uIWglTr6XPdownload (6).jpeg', '0'),
(117, 1, 'habit', 'thói quen', '', '99t8CNIPOqdownload (7).jpeg', '1'),
(118, 1, 'renew', 'làm mới', '', '5XXAFEMo5ldownload (3).png', '1'),
(119, 1, 'rival', 'đối thủ', '', '0Fngh3mt0zdownload (4).png', '1'),
(120, 1, 'undisclosed', 'không tiết lộ', 'disclosed =  bí mật, k tiết lộ', 'vT0SQhH6Vjundisclosed-stamp.png', '1'),
(121, 1, 'contract', 'hợp đồng', '', 'hdg362mB6zdownload (8).jpeg', '0'),
(122, 1, 'prohibited', 'cấm', 'pro cấm cắn', 'yswje0Yythdownload (5).png', '1'),
(123, 1, 'scenery', 'phong cảnh', 'scene => bối cảnh, scenery => phong cảnh', 'wIIGOWlRmtdownload (9).jpeg', '1'),
(124, 1, 'advise', 'khuyên nhủ', '', '1piCseYzf8download (10).jpeg', '0'),
(125, 1, 'beside', 'bên cạnh', '', '2be0DHxbbndownload.jpeg', '0'),
(126, 1, 'briefcase', 'cặp sách', '', 'a5hNk120eadownload (1).jpeg', '0'),
(127, 1, 'composer', 'nhà soạn nhạc', '', 'd1r17FR02plogo-composer-transparent.png', '0'),
(128, 1, 'propose', 'để nghị, đề xuất', '', 'eZpID0a1nrdownload (3).jpeg', '1'),
(129, 1, 'whether', 'liệu rằng', '', '', '1'),
(130, 1, 'adjustment', 'điều chỉnh', '', 'eX1BPvmTSzdownload (4).jpeg', '0'),
(131, 1, 'improve', 'cải tiến, cải thiện', '', 'UWRR2aHvVndownload (5).jpeg', '0'),
(132, 1, 'renowned', 'nổi tiếng', 'reset người chủ => Thành nổi tiếng', 'A52smkmb631200px-Renowned_Film_Logo.jpg', '1'),
(133, 1, 'specialist, expert', 'chuyên gia', '', 'X0S3qjKwYLdownload.png', '1'),
(134, 1, 'period', 'giai đọan, thời hạn', '', 'oPKdNdFems180716-period-parties-parents-feature.jpg', '1'),
(135, 1, 'obligation', 'nghĩa vụ, bổn phận', '', 'ovFjaSynR7download (6).jpeg', '1'),
(136, 1, 'engagement', 'hôn ước, khế ước', '', 'ylIiW4RTxq180717-engagement-ring-ac-620p_49c4dea2eae511182ac76f2321fcb631.fit-760w.jpg', '1'),
(137, 1, 'enhanced', 'tăng cường', 'em nhân che nên tăng cường bảo vệ', '4x3MRZ0Fbvdong-trung-ha-thao-tang-cuong-he-mien-dich.jpg', '1'),
(138, 1, 'destination', 'nơi đến, chỗ đến, đích đến', 'đíchtination', 'X2X0XFVALHdownload (7).jpeg', '1'),
(139, 1, 'efficient', 'hiệu quả', '', 'oyGV3vcxKjdownload (8).jpeg', '0'),
(140, 1, 'unfortunately', 'không may', '', '', '1'),
(141, 1, 'retain', 'giữ lại', '', '4B1z5HNcm6769-How-to-Retain-The-Best-Employees.png', '1'),
(142, 1, 'gained', 'đạt được', '', 'X9RwZMDxF61-1505569965942.png', '1'),
(143, 1, 'bankruptly', 'phá sản', '', 'TWyDmFs32Ndownload.jpeg', '0'),
(144, 1, 'rapid', 'nhanh', '', '', '1'),
(145, 1, 'consider', 'xem xét', '', '', '1'),
(146, 1, 'mention', 'đề cập', '', '', '1'),
(147, 1, 'inquiries', 'yêu cầu', '', 'Z8Yv4QvE8mdownload.png', '1'),
(148, 1, 'consume', 'tiêu thụ', '', '70UD6v9iRwimages.png', '1'),
(149, 1, 'legal', 'hợp pháp', '', 'CjrvgITr7ldownload (1).jpeg', '1'),
(150, 1, 'inherit', 'thừa kế, thừa hưởng', '', 'VwacGnBsKEdownload (2).jpeg', '1'),
(151, 1, 'circulate', 'lưu hành', '', 'EUBdss2z7Ddownload (3).jpeg', '1'),
(152, 1, 'procedure', 'thủ tục', '', '2Pz1dHWTGpdownload (4).jpeg', '1'),
(153, 1, 'recognition', 'sự công nhận', '', '', '1'),
(154, 1, 'abuse', 'lạm dụng', '', 'E3wAqlDv7W589a2ca42800002700997755.jpg', '1'),
(155, 1, 'variety', 'đa dạng', '', 'k4BfHlTVXFdownload.jpeg', '1'),
(156, 1, 'rather', 'hơn', '', '', '1'),
(157, 1, 'organize', 'tổ chức', '', 'fqSQXCLcUDdownload.jpeg', '1'),
(158, 1, 'conservation', 'bảo tồn', '', 'ZykzhOqNvp171025141124_1_900x600.jpg', '1'),
(159, 1, 'competitive', 'cạnh tranh', '', 'GfYUElHqmNdownload (1).png', '1'),
(160, 1, 'pristine', 'nguyên sơ, đầu tiên, thời xưa', '', 'WTHl3GoDFmantarctic-peninsula_cf56-800x538px.jpg', '1'),
(161, 1, 'audit', 'kiểm toán, kiểm tra', '', 'tg4Skk95sl1680kh960-content-audit-01.png', '1'),
(162, 1, 'admission', 'thú nhận', 'By his own addmission, admin thú nhận', 'pOviaclb9Yadmission.jpg', '1'),
(163, 1, 'debate', 'tranh luận', '', '13pFcMa8EPdownload (5).jpeg', '1'),
(164, 1, 'loyal', 'trung thành', '', '1B64MCfdLDdownload (6).jpeg', '1'),
(165, 1, 'probably', 'có lẻ', '', 'yHgZvqZs6ldownload (7).jpeg', '1'),
(166, 1, 'objection', 'sự phản đối', 'object hay mà sao phản đối?', 'KSbtMYSCpZhqdefault.jpg', '1'),
(167, 1, 'substantial', 'đáng kể', '', '', '1'),
(168, 1, 'lend', 'cho mượn', '', 'rgIh2tVZHt104051247-Untitled-1.530x298.jpg', '1'),
(169, 1, 'unexpected', 'không mong muốn', '', 't0w0WsRJZpdownload.jpeg', '1'),
(170, 1, 'deserve', 'xứng đáng', '', 'lT4OLGMGBwdownload (8).jpeg', '1'),
(171, 1, 'fund', 'quỹ', 'fund-rasing: gây qũy', 'YDb4Zmeeabmutual-funds.jpg', '1'),
(172, 1, 'prior to', 'trước', '', '', '1'),
(173, 1, 'held', 'được tổ chức', '', '', '1'),
(174, 1, 'similarly', 'tương tự', '', 'jskpObqn6Cdownload (9).jpeg', '1'),
(175, 1, 'tightly', 'chặt chẽ', '', 'RQtGeoAWN4child-mother-holding-hands-image-his-tightly-hertfordshire-england-69156007.jpg', '1'),
(176, 1, 'actual', 'thực tế', '', 'ld9RkIcLG6images.jpeg', '1'),
(177, 1, 'accurate', 'chính xác, đúng', '', 'I6W0R8a77Zdownload (10).jpeg', '1'),
(178, 1, 'postponed', 'hoãn lại', '', 'FTRtVk6zLvdownload (11).jpeg', '1'),
(179, 1, 'producer', 'nhà sản xuất', '', 'JW6KeHIbjBdownload (12).jpeg', '1'),
(180, 1, 'positive', 'tích cực', '', 'QyrOE60AUWdownload (13).jpeg', '1'),
(181, 1, 'repetitive', 'lặp đi lặp lại', '', 'sbXXr6jcVadownload.jpeg', '1'),
(182, 1, 'thorough', 'kỹ lưỡng', '', '', '1'),
(183, 1, 'consecutive', ' liên tiếp', '', 'uZyVNC22QiConsecutive-Days-Banner-Image.png', '1'),
(184, 1, 'entire', 'toàn bộ', '', '', '1'),
(185, 1, 'remain', 'vẫn còn', '', 'oUAphSvT48download (1).jpeg', '1'),
(186, 1, 'arrange', 'sắp xếp', '', 'GqUKXWL1FOhow-to-arrange-books-1-638.jpg', '1'),
(187, 1, 'behave', 'hành xử', '', 'XXGx04zgUsbehave.jpg', '1'),
(188, 1, 'adapt', 'thích nghi', '', '9k5AbDdUZ4adapt_200.png', '1'),
(189, 1, 'exhaust', 'hút cạn, thoát ra, kiệt quệ, bốc hơi', '', '', '1'),
(190, 1, 'obtain', 'đạt được', '', '', '1'),
(191, 1, 'strategy', 'chiến lược', '', 'zMakQ2kXJ4download.png', '1'),
(192, 1, 'lifeguard', 'nhân viên cứu hộ', '', 'IBQdb7xicsdownload.jpeg', '1'),
(193, 1, 'duty', 'nhiệm vụ', '', 'UHoMDrwGZjdownload (1).jpeg', '1'),
(194, 1, 'exhibition', 'triển lãm', '', 'NHCOYkS8hLdownload (2).jpeg', '1'),
(195, 1, 'consent', 'bằng lòng, tán thành', '', 'eM1ZUL4EZZdownload (3).jpeg', '1'),
(196, 1, 'recipient', 'người nhận', '', 'EUDPVDhR8Qimages.jpeg', '1'),
(197, 1, 'expected', 'kì vọng', '', 'FJsKhFJikvdownload (4).jpeg', '1'),
(198, 1, 'measure', 'đo', '', 'cTaQwSevNJdownload (5).jpeg', '1'),
(199, 1, 'demand', 'nhu cầu', '', 'KA5FPuVXaSdownload (1).png', '1'),
(200, 1, 'confident', 'tự tin', '', 'w9FyE3kXTMboldwaystobeaconfidentleader.jpg', '1'),
(201, 1, 'precision', 'chính xác', '', 'U4xURpOEKtdownload (6).jpeg', '1'),
(202, 1, 'recruit', 'tuyển dụng', '', 'XTEWC3pq36download.jpeg', '1'),
(203, 1, 'statements', 'các câu lệnh', '', '49FEbhI050download (1).jpeg', '1'),
(204, 1, 'seasonal', 'thời vụ, theo mùa', '', 'IuQzMsBjUrdownload (2).jpeg', '1'),
(205, 1, 'opportunities', 'cơ hội', '', 'h5LrrLVPjw1_f9hLTA83UXWus0B1FeUrFQ.png', '1'),
(206, 1, 'budget', 'ngân sách', '', 'Jla8ojPRKdPayroll.jpg', '1'),
(207, 1, 'assist', 'hỗ trợ', 'support, mạng assits trong game', 'OztmJ3kuyWdownload (3).jpeg', '1'),
(208, 1, 'inspect', 'thanh tra, kiểm tra', 'inspect element', 'fgiMOaVYlNdownload (4).jpeg', '1'),
(209, 1, 'further', 'hơn nữa, xa hơn, thêm nữa', '', '', '1'),
(210, 1, 'opinion', 'ý kiến', '', '5n1q3TExTXdownload (5).jpeg', '1'),
(211, 1, 'establish', 'thành lập', '', 'jlV9QbTnkmdownload (6).jpeg', '1'),
(212, 1, 'criteria', 'tiêu chí', '', 'CUhXAwwTvacriteria.jpg', '1'),
(213, 1, 'towards', 'hướng đến', '', 'udQ1HpEEtIdownload (7).jpeg', '1'),
(214, 1, 'productivity', 'năng suất', '', 'cSgopPvzxsHow to Increase Productivity Without Increasing Stress_Open Graph Image.png', '1'),
(215, 1, 'dispatch', 'công văn', '', '', '1'),
(216, 1, 'manually', 'thủ công', '', '', '1'),
(217, 1, 'exclusive', 'độc quyền, riêng', '', 'pEumyNvoSodownload (8).jpeg', '1'),
(218, 1, 'delegate', 'đại biểu', '', 'WWXns13hHNdownload (9).jpeg', '1'),
(219, 1, 'gratitude', 'lòng biết ơn', '', 'FWxOElcwrqdownload (10).jpeg', '1'),
(220, 1, 'appropriate', 'thích hợp', '', '', '1'),
(221, 1, 'advances', 'tiến bộ', '', 'Fi7uzCFCundownload (11).jpeg', '1'),
(222, 1, 'even though', 'mặc dù', '', '', '1'),
(223, 1, 'indicate', 'biểu thị, cho hay', '', '', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `word`
--
ALTER TABLE `word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
