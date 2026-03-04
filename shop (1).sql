-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 04, 2026 lúc 06:02 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `title`, `status`) VALUES
(1, 'desk_header_f56f4c3ead.webp', 'desk_header_f56f4c3ead.webp', 1),
(2, 'desk_header_34a59b165d.webp', 'desk_header_34a59b165d.webp', 1),
(3, 'desk_header_c79a90ba94.webp', 'desk_header_c79a90ba94.webp', 1),
(7, '638381426364070643_samsung_galaxy_tab_a9_wifi_64gb_5_8525714d79.webp', 'banner', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_detail`
--

CREATE TABLE `blog_detail` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `created_at`) VALUES
(17, 23, 43, 1, '2025-10-10 16:03:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `thumbnail` varchar(1024) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `thumbnail`, `status`) VALUES
(1, 'Điện Thoại', 'dien_thoai_icon_cate_05347c5136.webp', 1),
(2, 'Máy Tính Bảng', 'may_tinh_bang_ic_cate_dccb57ff5c.webp', 1),
(3, 'Laptop', 'laptop_ic_cate_47e7264bc7.webp', 1),
(4, 'Màn Hình', 'man_hinh_ic_cate_7663908793.webp', 1),
(5, 'Phụ Kiện', 'phu_kien_ic_cate_ecae8ddd38.webp', 1),
(32, 'Sim FPT', 'categories/4b4482fc-9160-4b54-985a-d348e02b20d1.webp', 1),
(33, 'Đồng Hồ Thông Minh', 'categories/339db053-22ba-40b2-b643-c366388319f1.webp', 1),
(34, 'Tivi', 'categories/7336ec29-e409-4a8c-ab5f-5996d9e30463.webp', 1),
(35, 'Tủ Lạnh', 'categories/c2133432-7c30-458a-a6bc-3cb009761211.webp', 1),
(36, 'Robot hút bụi', 'categories/89c27f96-29c8-4a30-8c79-8adb42b9138b.webp', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`id`, `image_url`, `product_id`) VALUES
(106, 'assets/images/1759947270420_nubia_a76_xam_5_87aade2a96.webp', 33),
(107, 'assets/images/1759947540660_samsung_galaxy_z_fold7_1_7beb1e3c3b.webp', 34),
(108, 'assets/images/1759947540660_samsung_galaxy_z_fold7_xam_1_de1fb8f431.webp', 34),
(109, 'assets/images/1759947540661_samsung_galaxy_z_fold7_xam_2_599278fa70.webp', 34),
(110, 'assets/images/1759947540661_samsung_galaxy_z_fold7_xam_3_0b5e82f071.webp', 34),
(111, 'assets/images/1759947540661_samsung_galaxy_z_fold7_xam_4_fa5178f864.webp', 34),
(112, 'assets/images/1759947540661_samsung_galaxy_z_fold7_xam_5_92d4df2f30.webp', 34),
(113, 'assets/images/1759947540661_samsung_galaxy_z_fold7_xam_6_de7cd6e5d9.webp', 34),
(114, 'assets/images/1759947643341_samsung_galaxy_z_flip7_do_1_5d87026b00.webp', 35),
(115, 'assets/images/1759947643341_samsung_galaxy_z_flip7_do_2_65f3751e79.webp', 35),
(116, 'assets/images/1759947643341_samsung_galaxy_z_flip7_do_3_2510cf6aef.webp', 35),
(117, 'assets/images/1759947643342_samsung_galaxy_z_flip7_do_4_d17927ee78.webp', 35),
(118, 'assets/images/1759947643343_samsung_galaxy_z_flip7_do_5_066f8b80e1.webp', 35),
(119, 'assets/images/1759947643343_samsung_galaxy_z_fold7_1_7beb1e3c3b.webp', 35),
(120, 'assets/images/1759947812104_iphone_16_pro_max_6_237dac24fb.webp', 36),
(121, 'assets/images/1759947812105_iphone_16_pro_max_desert_titan_3_19817f66c3.webp', 36),
(122, 'assets/images/1759947812105_iphone_16_pro_max_desert_titan_4_15e6458928.webp', 36),
(123, 'assets/images/1759947812105_iphone_16_pro_max_desert_titan_5_3539cf671e.webp', 36),
(124, 'assets/images/1759947812106_iphone_16_pro_max_desert_titan_3552a28ae0.webp', 36),
(125, 'assets/images/1759947927979_xiaomi_poco_x7_2_9eb0b5e78c.webp', 37),
(126, 'assets/images/1759947927979_xiaomi_poco_x7_den_vang_1_d5a61e641a.webp', 37),
(127, 'assets/images/1759947927980_xiaomi_poco_x7_den_vang_2_fccbe1f9d9.webp', 37),
(128, 'assets/images/1759947927980_xiaomi_poco_x7_den_vang_3_da74e3be1a.webp', 37),
(129, 'assets/images/1759947927981_xiaomi_poco_x7_den_vang_4_f728bc4049.webp', 37),
(130, 'assets/images/1759947927982_xiaomi_poco_x7_den_vang_5_9d618c2219.webp', 37),
(131, 'assets/images/1759948030272_xiaomi_redmi_pad_se_8_7_den_1_de5b26deb9.webp', 38),
(132, 'assets/images/1759948030273_xiaomi_redmi_pad_se_8_7_den_2_7b0a2b83f6.webp', 38),
(133, 'assets/images/1759948030273_xiaomi_redmi_pad_se_8_7_den_3_65cb91c81d.webp', 38),
(134, 'assets/images/1759948030274_xiaomi_redmi_pad_se_8_7_den_4_5a4727ad70.webp', 38),
(135, 'assets/images/1759948030274_xiaomi_redmi_pad_se_8_7_den_5_261f8a320b.webp', 38),
(136, 'assets/images/1759948030274_xiaomi_redmi_pad_se_8_7_den_6_acebd44af6.webp', 38),
(137, 'assets/images/1759948200520_xiaomi_redmi_pad_se_8_7_den_1_de5b26deb9.webp', 39),
(138, 'assets/images/1759948200520_xiaomi_redmi_pad_se_8_7_den_2_7b0a2b83f6.webp', 39),
(139, 'assets/images/1759948200521_xiaomi_redmi_pad_se_8_7_den_3_65cb91c81d.webp', 39),
(140, 'assets/images/1759948200521_xiaomi_redmi_pad_se_8_7_den_4_5a4727ad70.webp', 39),
(141, 'assets/images/1759948200521_xiaomi_redmi_pad_se_8_7_den_5_261f8a320b.webp', 39),
(142, 'assets/images/1759948200521_xiaomi_redmi_pad_se_8_7_den_6_acebd44af6.webp', 39),
(143, 'assets/images/1759948310396_honor_pad_x9a_1_1da120de88.webp', 40),
(144, 'assets/images/1759948310396_honor_pad_x9a_1_e59d1fc9af.webp', 40),
(145, 'assets/images/1759948310397_honor_pad_x9a_2_5e202a9a44.webp', 40),
(146, 'assets/images/1759948310397_honor_pad_x9a_3_1d77ece808.webp', 40),
(147, 'assets/images/1759948310398_honor_pad_x9a_4_b797205d0d.webp', 40),
(148, 'assets/images/1759948310399_honor_pad_x9a_5_508b49f579.webp', 40),
(149, 'assets/images/1759948438209_samsung_galaxy_tab_s10_lite_1_6596ad05f5.webp', 41),
(150, 'assets/images/1759948438210_samsung_galaxy_tab_s10_lite_spen_aa43373f77.webp', 41),
(151, 'assets/images/1759948438210_samsung_galaxy_tab_s10_lite_trang_2_7cd9af2fe9.webp', 41),
(152, 'assets/images/1759948438211_samsung_galaxy_tab_s10_lite_trang_3_fce8b0ad25.webp', 41),
(153, 'assets/images/1759948438211_samsung_galaxy_tab_s10_lite_trang_4_def3512af4.webp', 41),
(154, 'assets/images/1759948438211_samsung_galaxy_tab_s10_lite_trang_5_fa393b990f.webp', 41),
(155, 'assets/images/1759948438212_samsung_galaxy_tab_s10_lite_trang_fbc6162882.webp', 41),
(156, 'assets/images/1759948539533_lenovo_idea_tab_5g_3_fbb2dba3e8.webp', 42),
(157, 'assets/images/1759948539533_lenovo_idea_tab_wifi_xam_1_a2dd05f645.webp', 42),
(158, 'assets/images/1759948539534_lenovo_idea_tab_wifi_xam_2_87cc31fcac.webp', 42),
(159, 'assets/images/1759948539535_lenovo_idea_tab_wifi_xam_3_727550d05b.webp', 42),
(160, 'assets/images/1759948539535_lenovo_idea_tab_wifi_xam_5_e62a9bab67.webp', 42),
(161, 'assets/images/1759948539535_lenovo_idea_tab_wifi_xam_6_b0dd50d5ad.webp', 42),
(162, 'assets/images/1759948539536_lenovo_idea_tab_wifi_xam_7_bbd0b1c88c.webp', 42),
(163, 'assets/images/1759948662097_acer_aspire_go_14_ai_ag14_71m_52lh_01_fafdeb827d.webp', 43),
(164, 'assets/images/1759948662097_acer_aspire_go_14_ai_ag14_71m_52lh_02_c284592e68.webp', 43),
(165, 'assets/images/1759948662099_acer_aspire_go_14_ai_ag14_71m_52lh_03_29979e6959.webp', 43),
(166, 'assets/images/1759948662099_acer_aspire_go_14_ai_ag14_71m_52lh_04_45c818e3ae.webp', 43),
(167, 'assets/images/1759948662099_acer_aspire_go_14_ai_ag14_71m_52lh_06_c1506d64af.webp', 43),
(168, 'assets/images/1759948662099_acer_aspire_go_14_ai_ag14_71m_52lh_08_b549b0a855.webp', 43),
(169, 'assets/images/1759948758834_hp_gaming_victus_15_fa2732tx_1_59cb49afd5.webp', 44),
(170, 'assets/images/1759948758834_hp_gaming_victus_15_fa2732tx_2_34f0cdfcff.webp', 44),
(171, 'assets/images/1759948758834_hp_gaming_victus_15_fa2732tx_3_b52c5d2b8c.webp', 44),
(172, 'assets/images/1759948758835_hp_gaming_victus_15_fa2732tx_4_a4d33e5a95.webp', 44),
(173, 'assets/images/1759948758835_hp_gaming_victus_15_fa2732tx_5_63c87a0e61.webp', 44),
(174, 'assets/images/1759948758835_hp_gaming_victus_15_fa2732tx_i5_13420h_b85lppa_1_336a25d6d1.webp', 44),
(175, 'assets/images/1759948849249_asus_gaming_vivobook_k3605_black_1_6dec3a2e8f.webp', 45),
(176, 'assets/images/1759948849249_asus_gaming_vivobook_k3605_black_2_661be0d9e4.webp', 45),
(177, 'assets/images/1759948849250_asus_gaming_vivobook_k3605_black_3_3c36220156.webp', 45),
(178, 'assets/images/1759948849250_asus_gaming_vivobook_k3605_black_4_7dcb717dc3.webp', 45),
(179, 'assets/images/1759948849250_asus_gaming_vivobook_k3605_black_5_105e3421b6.webp', 45),
(180, 'assets/images/1759948849251_asus_gaming_vivobook_k3605_black_6_f4680b183d.webp', 45),
(181, 'assets/images/1759948849251_asus_gaming_vivobook_k3605zu_rp296w_i5_12500h_4_9d527fe0cb.webp', 45),
(182, 'assets/images/1759948968184_msi_gaming_thin_15_b13uc_1411vn_i7_13620h_4_421659c09e.webp', 46),
(183, 'assets/images/1759948968185_msi_thin_15_b13uc_1_d8b0ae6138.webp', 46),
(184, 'assets/images/1759948968185_msi_thin_15_b13uc_2_d8a1bb48e4.webp', 46),
(185, 'assets/images/1759948968185_msi_thin_15_b13uc_3_ad08339bfd.webp', 46),
(186, 'assets/images/1759948968185_msi_thin_15_b13uc_4_716875eb22.webp', 46),
(187, 'assets/images/1759948968186_msi_thin_15_b13uc_5_73ded6408a.webp', 46),
(188, 'assets/images/1759948968186_msi_thin_15_b13uc_6_de037c8d64.webp', 46),
(189, 'assets/images/1759949107611_Acer_Aspire_Lite_15_AL_15_bac_1_6ed4b0867d.webp', 47),
(190, 'assets/images/1759949107611_Acer_Aspire_Lite_15_AL_15_bac_2_0789a63dde.webp', 47),
(191, 'assets/images/1759949107611_Acer_Aspire_Lite_15_AL_15_bac_3_c3bd438d50.webp', 47),
(192, 'assets/images/1759949107612_Acer_Aspire_Lite_15_AL_15_bac_4_c6cf6266b0.webp', 47),
(193, 'assets/images/1759949107612_Acer_Aspire_Lite_15_AL_15_bac_5_a4ed416825.webp', 47),
(194, 'assets/images/1759949107613_Acer_Aspire_Lite_15_AL_15_bac_6_64328fe7c7.webp', 47),
(195, 'assets/images/1759949107613_acer_aspire_lite_15_al15_41p_r3u5_r7_5700u_3_abe4291991.webp', 47),
(196, 'assets/images/1759949306481_msi_pro_mp225v_1_9559d3157a.webp', 48),
(197, 'assets/images/1759949306482_msi_pro_mp225v_2_2f72ac5fb3.webp', 48),
(198, 'assets/images/1759949306483_msi_pro_mp225v_3_c604ef1b81.webp', 48),
(199, 'assets/images/1759949306484_msi_pro_mp225v_4_f7687e3a8f.webp', 48),
(200, 'assets/images/1759949306484_msi_pro_mp225v_5_2e539e9c32.webp', 48),
(201, 'assets/images/1759949306484_msi_pro_mp225v_6_6bdc0dacc8.webp', 48),
(202, 'assets/images/1759949306485_msi_pro_mp225v_21_5_inch_fhd_va_100hz_1_7f0f684e9d.webp', 48),
(203, 'assets/images/1759949422321_msi_thin_15_b13uc_2_d8a1bb48e4.webp', 49),
(204, 'assets/images/1759949422323_msi_thin_15_b13uc_3_ad08339bfd.webp', 49),
(205, 'assets/images/1759949422324_msi_thin_15_b13uc_4_716875eb22.webp', 49),
(206, 'assets/images/1759949422325_msi_thin_15_b13uc_5_73ded6408a.webp', 49),
(207, 'assets/images/1759949422325_msi_thin_15_b13uc_6_de037c8d64.webp', 49),
(208, 'assets/images/1759949561900_2024_2_19_638439385659072368_man-hinh-xiaomi-a27i-ela5345eu-27-inch-1.webp', 50),
(209, 'assets/images/1759949561901_2024_2_19_638439385659072368_man-hinh-xiaomi-a27i-ela5345eu-27-inch--2.webp', 50),
(210, 'assets/images/1759949561904_2024_2_19_638439385659228509_man-hinh-xiaomi-a27i-ela5345eu-27-inch--5.webp', 50),
(211, 'assets/images/1759949561905_2024_2_19_638439385659384712_man-hinh-xiaomi-a27i-ela5345eu-27-inch-3.webp', 50),
(212, 'assets/images/1759949561906_2024_5_24_638521394581466656_galaxy_tab_a9_wifi_thumb_den_86cd408f0a.webp', 50),
(213, 'assets/images/1759949561907_638381426364070643_samsung_galaxy_tab_a9_wifi_64gb_5_8525714d79.webp', 50),
(214, 'assets/images/1759949732400_viewsonic_va2214_h_1_b1a6e46da9.webp', 51),
(215, 'assets/images/1759949732402_viewsonic_va2214_h_2_b1283ff1df.webp', 51),
(216, 'assets/images/1759949732402_viewsonic_va2214_h_3_4cb0027122.webp', 51),
(217, 'assets/images/1759949732402_viewsonic_va2214_h_4_b2df5704a6.webp', 51),
(218, 'assets/images/1759949732402_viewsonic_va2214_h_5_721ad122be.webp', 51),
(219, 'assets/images/1759949732402_viewsonic_va2214_h_6_88a1b85012.webp', 51),
(220, 'assets/images/1759949732403_viewsonic_va2214_h215_inch_fhd_2_258333222e.webp', 51),
(221, 'assets/images/1759949838504_lenovo_idea_tab_wifi_xam_1_a2dd05f645.webp', 52),
(222, 'assets/images/1759949838504_lenovo_idea_tab_wifi_xam_2_87cc31fcac.webp', 52),
(223, 'assets/images/1759949838505_lenovo_idea_tab_wifi_xam_3_727550d05b.webp', 52),
(224, 'assets/images/1759949838505_lenovo_idea_tab_wifi_xam_5_e62a9bab67.webp', 52),
(225, 'assets/images/1759949838505_lenovo_idea_tab_wifi_xam_6_b0dd50d5ad.webp', 52),
(226, 'assets/images/1759949838506_lenovo_idea_tab_wifi_xam_7_bbd0b1c88c.webp', 52),
(227, 'assets/images/1759950010141_chuot_gaming_co_day_icore_gm06_1_0a98051698.webp', 53),
(228, 'assets/images/1759950010141_chuot_gaming_co_day_icore_gm06_2_bb288842b2.webp', 53),
(229, 'assets/images/1759950010142_chuot_gaming_co_day_icore_gm06_3_29ea93cd92.webp', 53),
(230, 'assets/images/1759950086005_b91e55ca18d68ecbc00d009e2d64bd87.png.webp', 54),
(231, 'assets/images/1759950086006_bo_sac_nhanh_3_cong_65w_kem_cap_type_c_to_type_c_2m_extreme_speed_devia_1_dd9a966139.webp', 54),
(232, 'assets/images/1759950086006_bo_sac_nhanh_3_cong_65w_kem_cap_type_c_to_type_c_2m_extreme_speed_devia_3_ca9cc6e66c.webp', 54),
(233, 'assets/images/1759950174057_2024_2_19_638439385659072368_man-hinh-xiaomi-a27i-ela5345eu-27-inch-1.webp', 55),
(234, 'assets/images/1759950174059_2024_2_19_638439385659072368_man-hinh-xiaomi-a27i-ela5345eu-27-inch--2.webp', 55),
(235, 'assets/images/1759950174059_2024_2_19_638439385659228509_man-hinh-xiaomi-a27i-ela5345eu-27-inch--5.webp', 55),
(236, 'assets/images/1759950174059_2024_2_19_638439385659384712_man-hinh-xiaomi-a27i-ela5345eu-27-inch-3.webp', 55),
(237, 'assets/images/1759950174059_2024_5_20_638518157258210469_ugreen-hd104 (1).webp', 55),
(238, 'assets/images/1759950174060_2024_5_20_638518157258210469_ugreen-hd104.webp', 55),
(239, 'assets/images/1759950174060_2024_5_24_638521394581466656_galaxy_tab_a9_wifi_thumb_den_86cd408f0a.webp', 55),
(240, 'assets/images/1759950286800_combo_loa_xach_tay_karaoke_icore_s6_1_0b4ac0b36e.webp', 56),
(241, 'assets/images/1759950286801_combo_loa_xach_tay_karaoke_icore_s6_2_8ba00a9905.webp', 56),
(242, 'assets/images/1759950286801_combo_loa_xach_tay_karaoke_icore_s6_3_f797aa8aa7.webp', 56),
(243, 'assets/images/1759950286801_combo_loa_xach_tay_karaoke_icore_s6_4_c6d7c5c83f.webp', 56),
(244, 'assets/images/1759950286802_combo_loa_xach_tay_karaoke_icore_s6_5_43c7e6069c.webp', 56),
(245, 'assets/images/1759950286802_combo_loa_xach_tay_karaoke_icore_s6_5_3148f93a2f.webp', 56),
(246, 'assets/images/1759950286802_combo_loa_xach_tay_karaoke_icore_s6_6_870c14db2b.webp', 56),
(247, 'assets/images/1759950382172_mieng_dan_man_hinh_kinh_cuong_luc_25d_yvs_iphone_17_series_1_74a2280c25.webp', 57),
(248, 'assets/images/1759950382173_mieng_dan_man_hinh_kinh_cuong_luc_25d_yvs_iphone_17_series_2_a123984a91.webp', 57),
(249, 'assets/images/1759950382173_mieng_dan_man_hinh_kinh_cuong_luc_25d_yvs_iphone_17_series_3_4ebb6ff9a9.webp', 57),
(250, 'assets/images/1759950829444_apple_watch_se_gps_44mm_starlight_aluminium_case_starlight_sport_band_1_0d6e1c545d.webp', 62),
(251, 'assets/images/1759950829444_apple_watch_se_gps_44mm_starlight_aluminium_case_starlight_sport_band_2_e61b83e9d7.webp', 62),
(252, 'assets/images/1759950829444_apple_watch_se_gps_44mm_starlight_aluminium_case_starlight_sport_band_3_04602b5150.webp', 62),
(253, 'assets/images/1759950829445_apple_watch_se_gps_44mm_starlight_aluminium_case_starlight_sport_band_4_3edd4ed855.webp', 62),
(254, 'assets/images/1759950829445_apple_watch_se_gps_44mm_starlight_aluminium_case_starlight_sport_band_5_1b7554962c.webp', 62),
(255, 'assets/images/1759950829446_apple_watch_se_gps_44mm_starlight_aluminium_case_starlight_sport_band_6_523ea95013.webp', 62),
(256, 'assets/images/1760005596639_samsung_smart_tv_crystal_uhd_43_inch_4k_ua43du7000_1_b2701494ba.webp', 63),
(257, 'assets/images/1760005596640_samsung_ua43du7000kxxv_1_29d412caf0.webp', 63),
(258, 'assets/images/1760005596640_samsung_ua43du7000kxxv_2_ee11a84b78.webp', 63),
(259, 'assets/images/1760005596640_samsung_ua43du7000kxxv_3_e54618fdef.webp', 63),
(260, 'assets/images/1760005596640_samsung_ua43du7000kxxv_5_9772e07648.webp', 63),
(261, 'assets/images/1760005596642_samsung_ua43du7000kxxv_6_3d404d2a2a.webp', 63),
(262, 'assets/images/1760005841198_tivi_xiaomi_a_32_inch_3af254d23a.webp', 64),
(263, 'assets/images/1760005841199_tivo_ic_cate_5c09363832.webp', 64),
(264, 'assets/images/1760006047553_tv_casper_43fgk610_1_c1547d9f69.webp', 65),
(265, 'assets/images/1760006047554_tv_casper_43fgk610_2_56787a3edd.webp', 65),
(266, 'assets/images/1760006047554_tv_casper_43fgk610_3_2921693b9a.webp', 65),
(267, 'assets/images/1760006047555_tv_casper_43fgk610_4_02fa1a0039.webp', 65),
(268, 'assets/images/1760006047555_tv_casper_43fgk610_9cf6aca288.webp', 65),
(269, 'assets/images/1760006343916_2023_8_9_638271929139734080_tivi-xiaomi-a-32-inch-1.webp', 66),
(270, 'assets/images/1760006343917_2023_8_9_638271929139734080_tivi-xiaomi-a-32-inch-3.webp', 66),
(271, 'assets/images/1760006343917_2023_8_9_638271929139891173_tivi-xiaomi-a-32-inch-2.webp', 66),
(272, 'assets/images/1760006343917_2023_8_9_638271929140203793_tivi-xiaomi-a-32-inch-4.webp', 66),
(273, 'assets/images/1760006343919_2023_10_27_638340204580962536_samsung-galaxy-tab-a9-wifi-xam-3.webp', 66),
(274, 'assets/images/1760006343919_2023_10_27_638340204581275046_samsung-galaxy-tab-a9-wifi-xam-5.webp', 66),
(275, 'assets/images/1760006343919_2023_10_27_638340204581743732_samsung-galaxy-tab-a9-wifi-xam-4.webp', 66),
(276, 'assets/images/1760006468311_2023_8_9_638271929139734080_tivi-xiaomi-a-32-inch-1.webp', 67),
(277, 'assets/images/1760006468312_2023_8_9_638271929139734080_tivi-xiaomi-a-32-inch-3.webp', 67),
(278, 'assets/images/1760006468312_2023_8_9_638271929139891173_tivi-xiaomi-a-32-inch-2.webp', 67),
(279, 'assets/images/1760006468313_2023_8_9_638271929140203793_tivi-xiaomi-a-32-inch-4.webp', 67),
(280, 'assets/images/1760006468313_2023_10_27_638340204580962536_samsung-galaxy-tab-a9-wifi-xam-3.webp', 67),
(281, 'assets/images/1760006468313_2023_10_27_638340204581275046_samsung-galaxy-tab-a9-wifi-xam-5.webp', 67),
(282, 'assets/images/1760006468313_2023_10_27_638340204581743732_samsung-galaxy-tab-a9-wifi-xam-4.webp', 67),
(283, 'assets/images/1760006468314_2024_2_19_638439385658603516_man-hinh-xiaomi-a27i-ela5345eu-27-inch-4.webp', 67),
(284, 'assets/images/1760006468314_2024_2_19_638439385659072368_man-hinh-xiaomi-a27i-ela5345eu-27-inch-1.webp', 67),
(285, 'assets/images/1760006468314_2024_2_19_638439385659072368_man-hinh-xiaomi-a27i-ela5345eu-27-inch--2.webp', 67),
(286, 'assets/images/1760006468315_2024_2_19_638439385659228509_man-hinh-xiaomi-a27i-ela5345eu-27-inch--5.webp', 67),
(287, 'assets/images/1760006468315_2024_2_19_638439385659384712_man-hinh-xiaomi-a27i-ela5345eu-27-inch-3.webp', 67);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(1028) NOT NULL,
  `status` varchar(1028) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `user_id`, `created_at`) VALUES
(68, 'enrGmbmK', '1', 23, '2025-10-10 16:03:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `quantity`, `price`, `order_id`, `product_id`) VALUES
(62, 1, 15990.000, 68, 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,3) NOT NULL,
  `price_old` decimal(10,3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `view` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `price_old`, `quantity`, `view`, `category_id`, `created_at`, `status`) VALUES
(33, 'Nubia A76 4GB 128GB (NFC)', '1759947270408_nubia_a76_xam_5_87aade2a96.webp', 'Nubia A76 NFC được định vị là sản phẩm hướng đến nhóm người dùng phổ thông, đặc biệt là những ai tìm kiếm một chiếc điện thoại kết hợp hoàn hảo giữa thiết kế phong cách flagship, camera AI 50MP chuyên nghiệp và trải nghiệm Android 15 với Google Gemini tích hợp.\r\n\r\nZTE Nubia A76 NFC không chỉ đáp ứng các nhu cầu cơ bản như liên lạc, giải trí mà còn mang đến trải nghiệm vượt trội với camera chính 50MP, vi xử lý Unisoc T7250 tám nhân 1.8GHz và loạt tính năng cao cấp hiếm thấy trong phân khúc. ZTE nubia đặt mục tiêu \"không chỉ đủ dùng mà còn vượt mong đợi\" thông qua Nubia A76, định nghĩa lại trải nghiệm công nghệ phổ thông với cấu hình mạnh, thiết kế thời thượng và dung lượng cao trong mức giá hợp lý. Đây là lựa chọn lý tưởng cho giới trẻ năng động, người dùng sáng tạo nội dung hoặc bất kỳ ai muốn sở hữu một thiết bị công nghệ đáng giá.\r\n\r\nThiết kế mỏng nhẹ và hiện đại\r\nNubia A76 NFC sở hữu thiết kế mỏng nhẹ chỉ 8.5mm độ dày và trọng lượng 197g, mang lại cảm giác thoải mái khi cầm nắm và sử dụng trong thời gian dài. Kích thước tổng thể 167.3 x 77.3 x 8.3mm được tối ưu hóa để phù hợp với bàn tay người Việt, đặc biệt thuận tiện cho việc thao tác một tay và mang theo hàng ngày.', 2490.000, 2590.000, 100, 102, 1, '2025-10-08 18:14:30', 1),
(34, 'Samsung Galaxy Z Fold7 5G 12GB 256GB', '1759947540649_samsung_galaxy_z_fold7_1_7beb1e3c3b.webp', 'Samsung Galaxy Z Fold 7 mở ra một kỷ nguyên mới cho điện thoại gập khi kết hợp hoàn hảo giữa kiểu dáng mỏng nhẹ, phần cứng mạnh mẽ và trí tuệ nhân tạo thông minh. Với diện mạo đẳng cấp cùng màn hình gập 8 inch siêu lớn, đây là thiết bị dành cho người dùng yêu cầu sự khác biệt và đột phá về trải nghiệm.', 43990.000, 56890.000, 100, 106, 1, '2025-10-08 18:19:00', 1),
(35, 'Samsung Galaxy Z Flip7 5G 12GB 256GB', '1759947643330_samsung_galaxy_z_flip7_1_7c7eb3d69a.webp', 'Galaxy Z Flip 7 là thế hệ điện thoại gập mới sở hữu màn hình ngoài lớn 4.1 inch, thiết kế thời thượng cùng bộ sưu tập màu sắc trẻ trung. Viên pin 4300mAh kết hợp chip Exynos 2500 cho hiệu năng mạnh mẽ, xử lý mượt mà các tác vụ AI. Đây chính là trợ lý thông minh nhỏ gọn, phù hợp với người dùng yêu công nghệ và thời trang.', 26590.000, 30590.000, 100, 103, 1, '2025-10-08 18:20:43', 1),
(36, 'iPhone 16 Pro Max 256GB', '1759947812095_iphone_16_pro_max_desert_titan_3552a28ae0.webp', '', 30590.000, 89000.000, 100, 103, 1, '2025-10-08 18:23:32', 1),
(37, 'Xiaomi Poco X7 5G 12GB 512GB', '1759947927970_xiaomi_poco_x7_2_9eb0b5e78c.webp', 'Với những gì được trang bị, POCO X7 5G dễ dàng trở thành lựa chọn nổi bật trong tầm giá dưới 10 triệu đồng. Từ thiết kế sang trọng, màn hình xuất sắc, hiệu năng mạnh mẽ đến pin trâu, máy hội tụ đầy đủ các yếu tố mà người dùng mong đợi. Đây là sản phẩm lý tưởng cho cả người dùng phổ thông, sinh viên đến dân công nghệ.', 7890.000, 10890.000, 100, 100, 1, '2025-10-08 18:25:27', 1),
(38, 'Xiaomi Redmi Pad SE 8.7 WiFi 4GB 128GB', '1759948030264_xiaomi_redmi_pad_se_8_7_den_2_7b0a2b83f6.webp', 'Redmi Pad SE 8.7 sở hữu thiết kế gọn nhẹ nhưng vẫn đáp ứng được sức mạnh mà người dùng yêu cầu. Màn hình 8.7 inch này còn mang đến trải nghiệm liền mạch và an toàn cho mắt. Hãy để thiết bị cùng bạn chinh phục mọi thử thách, công việc mỗi ngày.', 2690.000, 3890.000, 100, 102, 2, '2025-10-08 18:27:10', 1),
(39, 'Samsung Galaxy Tab A9 WiFi 8GB 128GB', '1759948200514_xiaomi_redmi_pad_se_8_7_den_6_acebd44af6.webp', 'Samsung Galaxy Tab A9 WiFi không chỉ là một thiết bị giải trí mà còn là một công cụ làm việc hiệu quả. Với hàng loạt tính năng nổi bật và giá bán rất phải chăng, không khó hiểu khi sản phẩm này trở thành lựa chọn hàng đầu của nhiều người dùng.\r\n\r\nSamsung Galaxy Tab A9 WiFi\r\nMàn hình TFT LCD 8.7 inch\r\nĐối với mọi thiết bị di động, màn hình là nơi mà người dùng tương tác nhiều nhất. Hiểu được điều đó, Samsung đã trang bị một màn hình TFT LCD 8.7 inch cho Galaxy Tab A9 WiFi. Màn hình này không chỉ lớn về kích thước mà còn sắc nét về chất lượng.\r\n\r\nVới độ phân giải 1340 x 800 pixels và tần số làm mới 60Hz, mỗi hình ảnh, video hay trò chơi bạn xem trên màn hình này đều sẽ trở nên mượt mà, sống động, đem đến cho người dùng trải nghiệm hiển thị không giới hạn và đẳng cấp.', 3190.000, 4350.000, 100, 101, 2, '2025-10-08 18:30:00', 1),
(40, 'Honor Pad X9a WiFi 6GB 128GB', '1759948310386_honor_pad_x9a_1_1da120de88.webp', 'Với chiếc máy tính bảng Pad X9a, đội ngũ HONOR đã đạt được điểm cân bằng lý tưởng giữa hiệu suất làm việc và trải nghiệm giải trí. Sản phẩm sở hữu màn hình 11.5 inch rộng rãi với độ phân giải 2508 x 1504 pixels, tần số quét 120Hz và hệ thống 4 loa mạnh mẽ. Mẫu máy tính bảng này hướng đến trải nghiệm nghe nhìn mượt mà, sống động.', 5990.000, 7890.000, 100, 101, 2, '2025-10-08 18:31:50', 1),
(41, 'Samsung Galaxy Tab S10 Lite WiFi 6GB 128GB', '1759948438202_samsung_galaxy_tab_s10_lite_1_6596ad05f5.webp', 'Tiếp nối tinh hoa từ dòng Galaxy Tab S10, Samsung giới thiệu Galaxy Tab S10 Lite WiFi với mức giá dễ tiếp cận hơn nhưng vẫn đảm bảo thiết kế hiện đại và tiện ích cần thiết. Máy sở hữu màn hình lớn 10.9 inch cho trải nghiệm học tập, giải trí thoải mái, đi kèm bút S Pen hỗ trợ ghi chú, vẽ phác thảo nhanh chóng. Với sự kết hợp giữa kiểu dáng mỏng nhẹ, tinh tế và phần cứng tối ưu, đây là lựa chọn lý tưởng cho nhiều đối tượng người dùng.', 8149.000, 9000.000, 100, 102, 2, '2025-10-08 18:33:58', 1),
(42, 'Lenovo Idea Tab WiFi 4GB 128GB', '1759948539526_lenovo_idea_tab_5g_3_fbb2dba3e8.webp', 'Lenovo Idea Tab WiFi 4GB 128GB là chiếc máy tính bảng dành cho những ai cần một thiết bị gọn gàng để học tập, giải trí hoặc làm việc mà vẫn muốn có được cảm giác mượt mà như laptop. Thiết kế thanh lịch bên ngoài tích hợp bên trong một hệ thống phần cứng mạnh mẽ, kèm theo đó là loạt tính năng AI thông minh mà bạn sẽ thấy ngay giá trị từ lần sử dụng đầu tiên.', 10900.000, 15690.000, 100, 101, 2, '2025-10-08 18:35:39', 1),
(43, 'Laptop Acer Aspire Go 14 AI AG14-71M-52LH Ultra 5 115U/16GB/512GB/14\" FHD+/Win11', '1759948662090_acer_aspire_go_14_ai_ag14_71m_52lh_01_fafdeb827d.webp', 'Acer Aspire Go 14 AI AG14-71M-52LH là dòng laptop AI mỏng nhẹ giá tốt có thiết kế siêu di động cùng bộ vi xử lý Intel Core Ultra thông minh. Aspire Go đảm bảo đáp ứng tốt nhu cầu học tập, làm việc hàng ngày lẫn vui chơi giải trí cơ bản, thích hợp cho học sinh, sinh viên hay nhân viên văn phòng.', 15990.000, 19000.000, 100, 102, 3, '2025-10-08 18:37:42', 1),
(44, 'Laptop HP Gaming Victus 15-fa2732TX i5-13420H/16GB/512GB/15.6\"FHD/RTX 4050 6GB/Win11_B85LPPA', '1759948758824_hp_gaming_victus_15_fa2732tx_i5_13420h_b85lppa_1_336a25d6d1.webp', 'Là mẫu laptop gaming tiêu biểu thuộc phân khúc tầm trung, HP Gaming Victus 15-fa2732TX chú trọng vào hiệu suất và đáp ứng tốt các nhu cầu đa dạng của người sử dụng. Với sự kết hợp giữa vi xử lý Intel Core i5 thế hệ 13, card đồ họa rời RTX 4050 cùng màn hình 144Hz, thiết bị mang lại trải nghiệm mượt mà cho cả công việc lẫn giải trí.\r\n\r\nChiến game tốt, học tập và làm việc đều hiệu quả\r\nBộ vi xử lý Intel Core i5-13420H đóng vai trò trung tâm trong hệ thống của HP Gaming Victus 15-fa2732TX. Sở hữu 8 nhân 12 luồng, con chip này kết hợp giữa 4 nhân hiệu năng cao và 4 nhân tiết kiệm điện, cho phép máy xử lý linh hoạt các tác vụ đa dạng từ học tập, làm việc cho đến giải trí.\r\n\r\nTốc độ xung nhịp tối đa đạt 4.6GHz giúp tăng hiệu suất trong các tác vụ cần xử lý nhanh như biên dịch mã nguồn, chỉnh sửa ảnh hay chơi game nặng. Bộ nhớ đệm 12MB hỗ trợ truyền dữ liệu nhanh, giảm độ trễ khi thực hiện các tác vụ lớn. Dù sử dụng liên tục trong thời gian dài, chip i5-13420H vẫn duy trì được hiệu suất ổn định và kiểm soát nhiệt tốt.', 22690.000, 27890.000, 100, 101, 3, '2025-10-08 18:39:18', 1),
(45, 'Laptop Asus Vivobook Gaming K3605VC-RP431W i5-13420H/16GB/512GB/16\" WUXGA/RTX 3050 4GB/W11', '1759948849241_asus_gaming_vivobook_k3605zu_rp296w_i5_12500h_4_9d527fe0cb.webp', 'Asus Vivobook Gaming K3605VC-RP431W với sự kết hợp của CPU Intel Core i5 13420H cùng card đồ họa rời NVIDIA GeForce RTX 3050 sẽ giúp bạn hoàn thành mọi công việc phức tạp cũng như giải trí hàng ngày. Đặc biệt, chiếc laptop này vô cùng mỏng nhẹ và thời trang, đảm bảo tính di động trong cuộc sống hiện đại.', 17890.000, 21790.000, 100, 101, 3, '2025-10-08 18:40:49', 1),
(46, 'Laptop MSI Gaming Thin 15 B13UC-3247VN i5 13420H/16GB/512GB/15.6FHD/RTX3050 4GB/Win11_Balo', '1759948968177_msi_gaming_thin_15_b13uc_1411vn_i7_13620h_4_421659c09e.webp', 'Ngoài việc sở hữu chip Intel Core i5-13420H 8 nhân 12 luồng mạnh mẽ, MSI Gaming Thin 15 B13UC-3247VN còn ghi điểm nhờ mức giá phải chăng và sở hữu card đồ họa NVIDIA GeForce RTX 3050 4GB GDDR6 cùng màn hình tần số quét 144Hz. Máy được trang bị ổ cứng SSD PCIe Gen4 dung lượng 512GB cùng thiết kế hiện đại, nhỏ gọn dễ mang theo.', 18790.000, 21790.000, 100, 101, 3, '2025-10-08 18:42:48', 1),
(47, 'Laptop Acer Aspire Lite 15 AL15-41P-R3U5 R7 5700U/16GB/512GB/15.6\"FHD/Win11', '1759949107605_Acer_Aspire_Lite_15_AL_15_bac_4_c6cf6266b0.webp', 'Phát huy những giá trị làm nên tên tuổi của dòng Aspire Lite, phiên bản Acer Aspire Lite 15 AL15-41P-R3U5 trở thành lựa chọn hàng đầu trong tầm giá dưới 15 triệu đồng. Sản phẩm sở hữu thiết kế mỏng nhẹ thanh lịch, màn hình Full HD sắc nét, hiệu năng mạnh mẽ nhờ chip Ryzen 7 5700U, RAM 16GB, SSD 512GB và hệ thống cổng kết nối phong phú.', 12690.000, 16789.000, 100, 100, 3, '2025-10-08 18:45:07', 1),
(48, 'Màn hình MSI Pro MP225V/21.5inch FHD(1920x1080)/VA 100Hz', '1759949306470_msi_pro_mp225v_21_5_inch_fhd_va_100hz_1_7f0f684e9d.webp', 'Lên kệ với mức giá vừa túi tiền, MSI Pro MP225V 21.5 inch là mẫu màn hình văn phòng rất đáng sở hữu. Sản phẩm được trang bị tấm nền IPS độ phân giải Full HD sắc nét, có tần số quét 100Hz mượt mà và nhiều công nghệ bản vệ mắt. Đây là lựa chọn tốt để phục vụ công việc đồng thời đáp ứng nhu cầu giải trí cơ bản.', 1590.000, 2900.000, 100, 100, 4, '2025-10-08 18:48:26', 1),
(49, 'Màn hình MSI MP251 E2/24.5 inch FullHD (1920x1080)/IPS 120Hz', '1759949422310_msi_pro_mp225v_21_5_inch_fhd_va_100hz_1_7f0f684e9d.webp', 'Được thiết kế tối ưu dành cho các tác vụ văn phòng, màn hình MSI MP251 E2 24.5 inch đem đến sự hỗ trợ chuyên nghiệp nhất trên bàn làm việc của bạn. Sản phẩm không chỉ cung cấp trải nghiệm hình ảnh sắc nét mà còn có thiết kế đậm chất thanh lịch. Bộ công nghệ bảo vệ mắt đem lại cảm nhận dễ chịu khi nhìn ngắm.', 9000.000, 19900.000, 100, 102, 4, '2025-10-08 18:50:22', 1),
(50, 'Màn hình Xiaomi A27i EU(ELA5345EU)/27 inch/FullHD (1920x1080)/IPS 100Hz', '1759949561887_2024_2_19_638439385659384712_man-hinh-xiaomi-a27i-ela5345eu-27-inch-3.webp', 'Bên trong thiết kế tối giản và chuyên nghiệp của màn hình Xiaomi A27i là tấm nền IPS cho góc nhìn rộng mở. Sản phẩm có tần số quét cao 100Hz, đảm bảo trải nghiệm tốt cho cả công việc và giải trí, độ phân giải Full HD và khả năng hiển thị màu sắc đạt 99% chuẩn sRGB sẽ đem lại những khuôn hình sống động, sắc nét đáng kinh ngạc.', 10090.000, 15098.000, 100, 202, 4, '2025-10-08 18:52:41', 1),
(51, 'Màn hình Viewsonic VA2214-H/21.5inch FHD (1920x1080)/IPS 100Hz', '1759949732393_viewsonic_va2214_h215_inch_fhd_2_258333222e.webp', 'Với mức giá rất dễ tiếp cận, màn hình ViewSonic VA2214-H đem lại sự hỗ trợ tốt hơn cho trải nghiệm công việc, học tập và giải trí của bạn. Sản phẩm có kích thước 21.5 inch, độ phân giải Full HD và tần số quét 100Hz. Viewsonic đã tích hợp thêm công nghệ bảo vệ mắt Eye ProTech nhằm mang lại trải nghiệm hình ảnh thân thiện và dễ chịu khi sử dụng lâu dài.', 2980.000, 3980.000, 100, 101, 4, '2025-10-08 18:55:32', 1),
(52, 'Màn hình LG 24MR400-B/23.8 inch FullHD (1920x1080)/IPS 100Hz', '1759949838497_lg_24mr400_b_23_8_inch_fhd_ips_100hz_1_9a85b6f587.webp', 'Lên kệ với mức giá phải chăng và đến từ thương hiệu hàng đầu trong lĩnh vực màn hình máy tính, LG 24MR400-B cung cấp chất lượng hiển thị tuyệt vời thông qua tấm nền IPS chất lượng cao tần số quét 100Hz. Sản phẩm được trang bị công nghệ AMD FreeSync cùng nhiều chức năng bảo vệ sức khỏe thị lực, hứa hẹn là trợ thủ tuyệt vời cho cả tác vụ làm việc và giải trí.', 2190.000, 4150.000, 100, 101, 4, '2025-10-08 18:57:18', 1),
(53, 'Chuột Gaming có dây iCore GM06', '1759950010133_chuot_gaming_co_day_icore_gm06_2_bb288842b2.webp', 'Chuột gaming có dây iCore GM06 là người bạn đồng hành không thể thiếu dành cho các game thủ. Với ngoại hình mạnh mẽ, tích hợp LED 7 màu sống động cùng khả năng tùy chỉnh DPI từ 1200 đến 7200, thiết bị này cho phép người dùng làm chủ mọi tình huống trong game. Đặc biệt, kiểu dáng công thái học mang đến cảm giác thoải mái và chắc tay trong suốt quá trình sử dụng.\r\n\r\nTrang bị dây kết nối bọc dù với độ dài 1.8 mét\r\niCore GM06 tích hợp dây kết nối dài 1.8 mét, được bọc dù chắc chắn. Ngoài việc hạn chế hiện tượng rối dây hay đứt gãy, lớp bọc dù này còn có độ bền vượt trội, chịu được lực kéo và va đập nhẹ khi di chuyển. Với chiều dài lý tưởng, người dùng dễ dàng bố trí chuột linh hoạt trên mặt bàn mà không lo giới hạn không gian di chuyển, tạo sự thoải mái tối đa khi chơi game hay làm việc.', 259.000, 450.000, 100, 110, 5, '2025-10-08 19:00:10', 1),
(54, 'Bộ sạc nhanh 3 cổng 65W kèm cáp Type-C to Type-C 2M Extreme Speed Devia', '1759950085999_bo_sac_nhanh_3_cong_65w_kem_cap_type_c_to_type_c_2m_extreme_speed_devia_1_dd9a966139.webp', 'Bộ sạc nhanh 3 cổng 65W Devia Extreme Speed là thiết bị hỗ trợ sạc mạnh mẽ, đi kèm cáp Type-C to Type-C tiện lợi. Sản phẩm này phù hợp cho cả điện thoại, máy tính bảng lẫn laptop. Với thiết kế nhỏ gọn, chất liệu an toàn và tích hợp nhiều công nghệ hiện đại, bộ sạc Devia đáp ứng tốt nhu cầu sử dụng hàng ngày.\r\n\r\nCombo 65W sạc nhanh cho laptop và điện thoại\r\nVới tổng công suất lên đến 65W, bộ sạc có thể nạp đầy năng lượng nhanh chóng cho nhiều thiết bị, bao gồm cả MacBook, iPad, điện thoại Android và iPhone. Nó có thể cung cấp 55% pin điện thoại chỉ trong 30 phút, sạc đầy MacBook trong 1.5 giờ và hỗ trợ sạc điện thoại Samsung với công suất 22.5W. Đây là giải pháp hữu ích cho những ai thường xuyên cần sạc nhanh thiết bị trong thời gian ngắn.', 300.000, 529.000, 100, 101, 5, '2025-10-08 19:01:25', 1),
(55, 'Cáp HDMI to HDMI Ugreen HD104 dài 2M', '1759950174051_2024_2_19_638439385659072368_man-hinh-xiaomi-a27i-ela5345eu-27-inch--2.webp', 'Cáp HDMI to HDMI Ugreen HD104 dài 2M là một sản phẩm nổi bật với nhiều tính năng vượt trội. Nó không chỉ mang lại trải nghiệm giải trí đỉnh cao mà còn là công cụ hữu ích trong công việc, giúp bạn kết nối các thiết bị một cách dễ dàng và hiệu quả.\r\n\r\nHỗ trợ độ phân giải 4K 60Hz\r\nCáp Ugreen HD104 nổi bật với khả năng hỗ trợ độ phân giải lên đến 4K 60Hz, mang lại hình ảnh sắc nét và chân thực nhất. Điều này không chỉ giúp bạn tận hưởng các bộ phim, chương trình truyền hình và trò chơi với chất lượng cao nhất mà còn tạo ra trải nghiệm thị giác tuyệt vời.\r\n\r\nKhả năng truyền tín hiệu hình ảnh với độ phân giải 4K giúp mọi chi tiết của nội dung, từ màu sắc đến độ tương phản, đều được tái hiện một cách sống động và rõ ràng. Nhờ vậy, cáp HDMI to HDMI Ugreen HD104 dài 2M sẽ rất hữu ích trong các cuộc họp trực tuyến hoặc trình chiếu dự án, đảm bảo mọi chi tiết đều được hiển thị chính xác và rõ ràng, giúp bạn tự tin và chuyên nghiệp hơn trong mỗi buổi thuyết trình.', 99.000, 209.000, 100, 101, 5, '2025-10-08 19:02:54', 1),
(56, 'Combo Loa xách tay Karaoke iCore S6', '1759950286793_combo_loa_xach_tay_karaoke_icore_s6_1_0b4ac0b36e.webp', 'Combo loa xách tay karaoke iCore S6 là lựa chọn lý tưởng cho những ai đam mê âm nhạc và hát karaoke. Từ thiết kế sang trọng đến chất lượng âm thanh trung thực, iCore S6 mang đến trải nghiệm giải trí hoàn hảo cho người dùng. Với công suất mạnh mẽ, khả năng kết nối đa dạng cùng các tính năng hiện đại như ghi âm và kết nối không dây, đây thực sự là một thiết bị không thể thiếu cho mọi cuộc vui hay giải trí cùng gia đình, bạn bè.\r\n\r\nThiết kế sang trọng, đẳng cấp với các nút vặn tiện dụng\r\nVề thiết kế, loa xách tay karaoke iCore S6 mang đậm phong cách cổ điển và toát lên vẻ sang trọng, đẳng cấp. Thùng loa làm từ chất liệu gỗ chắc chắn và phủ da đen nhám, trong khi mặt trước loa được phủ lưới ê căng vải hoa văn tinh tế. Bảng điều khiển trang bị ở mặt trên với các nút vặn được mạ vàng, tạo điểm nhấn sang trọng, giúp iCore S6 trở thành một thiết bị nâng tầm chất lượng giải trí của bạn.', 2900.000, 3000.000, 100, 101, 5, '2025-10-08 19:04:46', 1),
(57, 'Miếng dán màn hình kính cường lực iPhone Air 2.5D YVS', '1759950382165_mieng_dan_man_hinh_kinh_cuong_luc_25d_yvs_iphone_17_series_1_74a2280c25.webp', 'Trong quá trình sử dụng điện thoại, màn hình luôn là phần dễ bị ảnh hưởng nhất bởi những tác động bên ngoài. Miếng dán màn hình kính cường lực iPhone Air 2.5D YVS ra đời nhằm hỗ trợ bảo vệ thiết bị, đồng thời duy trì trải nghiệm sử dụng quen thuộc. Với sự kết hợp giữa thiết kế tinh tế và chất liệu cao cấp, phụ kiện này giúp người dùng yên tâm hơn khi thao tác mỗi ngày.\r\n\r\nThiết kế 2.5D tạo cảm giác liền mạch\r\nMiếng dán iPhone Air YVS được thiết kế 2.5D với viền kính được bo cong nhẹ nhàng. Do đó, bề mặt trở nên liền mạch với khung máy, tạo cảm giác thoải mái khi cầm nắm và sử dụng. Việc vuốt từ cạnh màn hình cũng diễn ra mượt mà, không bị cấn tay hay gây khó chịu. Phần viền bo cong còn góp phần hạn chế bụi bẩn hoặc mảnh vụn tích tụ ở mép, giữ cho màn hình trông gọn gàng hơn trong quá trình sử dụng.\r\n\r\nChất liệu kính cường lực chất lượng cao\r\nMiếng dán được chế tác từ kính cường lực bền chắc, có khả năng chịu lực vượt trội. Bề mặt kính trong suốt, hạn chế trầy xước từ những va chạm nhỏ trong đời sống thường ngày. Với độ cứng cao, màn hình iPhone Air được bảo vệ toàn diện trước những tình huống vô tình làm rơi hoặc va chạm nhẹ. Chất liệu này cũng giữ được sự ổn định lâu dài, giúp phụ kiện duy trì hiệu quả bảo vệ trong suốt quá trình sử dụng.\r\n\r\nĐộ mỏng hợp lý, không ảnh hưởng đến thao tác\r\nMiếng dán kính cường lực iPhone Air 2.5D YVS được thiết kế với độ mỏng vừa phải, không gây cồng kềnh cho thiết bị. Khi dán lên, màn hình vẫn giữ nguyên vẻ ngoài thanh thoát, không làm thay đổi trải nghiệm cầm nắm vốn có của iPhone. Với độ mỏng này, người dùng có thể bỏ điện thoại vào túi áo hay túi quần mà không cảm thấy vướng víu.\r\n\r\nĐộ trong suốt cao, duy trì hiển thị vốn có\r\nMột trong những ưu điểm được đánh giá cao của miếng dán YVS là khả năng duy trì độ trong suốt gần như tuyệt đối. Màu sắc, hình ảnh và độ sắc nét của màn hình iPhone Air vẫn được thể hiện rõ ràng, không bị mờ hay ám màu. Điều này cho phép người dùng trải nghiệm trọn vẹn khi xem phim, chơi game hoặc đọc tài liệu. Sự trong suốt còn góp phần giữ cho màn hình luôn sáng đẹp, không làm giảm đi tính thẩm mỹ của thiết bị.\r\n\r\nĐảm bảo độ nhạy cảm ứng như màn hình gốc\r\nMiếng dán kính cường lực iPhone Air 2.5D YVS vẫn đảm bảo độ nhạy cảm ứng như màn hình gốc. Người dùng có thể thao tác vuốt, chạm hoặc nhập văn bản một cách mượt mà, không bị trễ. Đặc biệt, những ai thường xuyên chơi game sẽ đánh giá cao sự chính xác này, bởi từng thao tác đều được phản hồi nhanh chóng. Cảm ứng ổn định giúp trải nghiệm hàng ngày trở nên liền mạch, giữ nguyên sự thoải mái quen thuộc khi sử dụng iPhone.\r\n\r\nKhả năng hạn chế va đập và trầy xước\r\nKính cường lực 2.5D YVS đóng vai trò như một lớp bảo vệ chắc chắn trước các tác động bất ngờ. Trong quá trình sử dụng, màn hình thường xuyên đối diện với nguy cơ bị xước khi đặt trên bàn hoặc chạm phải vật cứng. Miếng dán này góp phần giảm thiểu những ảnh hưởng đó, giữ cho màn hình không bị hư hại. Bên cạnh đó, lớp kính còn có khả năng chịu lực tốt, hạn chế tình trạng nứt vỡ khi thiết bị gặp va chạm nhẹ.\r\n\r\nTương thích hoàn hảo với iPhone Air\r\nMiếng dán được thiết kế chuyên biệt cho iPhone Air, ôm sát bề mặt màn hình mà không gây hở viền. Các chi tiết được cắt gọt chuẩn xác, do đó miếng dán nằm gọn gàng trên thiết bị và giữ nguyên tính thẩm mỹ. Sự tương thích này còn giúp quá trình dán diễn ra dễ dàng, không xuất hiện bọt khí khó chịu. Khi tháo ra để thay thế, bề mặt cũng không bị keo dính, giữ cho màn hình luôn sạch sẽ.\r\n\r\nĐọc thêm', 100.000, 149.000, 100, 102, 5, '2025-10-08 19:06:22', 1),
(58, 'SIM FPT F79 1T', '1759950570171_sim_fpt_ic_cate_52dde72ae3.webp', '', 179.000, 200.000, 100, 100, 32, '2025-10-08 19:09:30', 1),
(59, 'SIM FPT BAO RẺ 1T', '1759950634084_sim_fpt_ic_cate_52dde72ae3.webp', '', 189.000, 210.000, 100, 100, 32, '2025-10-08 19:10:34', 1),
(60, 'SIM FPT BAO NÉT 1T', '1759950676076_sim_fpt_ic_cate_52dde72ae3.webp', '', 199.000, 200.000, 100, 102, 32, '2025-10-08 19:11:16', 1),
(61, 'SIM FPT F99 1T', '1759950727379_sim_fpt_ic_cate_52dde72ae3.webp', '', 299.000, 300.000, 100, 900000, 32, '2025-10-08 19:12:07', 1),
(62, 'Apple Watch SE 2024 GPS 44mm Viền Nhôm Dây Cao Su S/M', '1759950829436_apple_watch_se_gps_44mm_starlight_aluminium_case_starlight_sport_band_1_0d6e1c545d.webp', 'Với thiết kế sang trọng và nhiều tính năng đi kèm, Apple Watch SE 2024 sẽ trở thành người bạn đồng hành lý tưởng, giúp bạn kết nối với thế giới xung quanh, theo dõi sức khỏe và tận hưởng trọn vẹn cuộc sống mỗi ngày.\r\n\r\nApple Watch SE 2 GPS 40mm Viền nhôm Dây cao su cỡ S/M 88\r\n\r\nNgười bạn đồng hành hoàn hảo dành cho bạn\r\nApple Watch SE 2024 không chỉ là một chiếc đồng hồ thông minh, mà còn là trợ lý cá nhân hoàn hảo, giúp bạn theo dõi sức khỏe, duy trì liên lạc và bảo vệ an toàn mọi lúc, mọi nơi. Được trang bị chip S8 hiện đại, chiếc đồng hồ này có khả năng xử lý nhanh chóng và vượt trội hơn lên đến 20% so với phiên bản trước, đảm bảo trải nghiệm mượt mà và đáp ứng nhanh chóng mọi yêu cầu của bạn.\r\n\r\nVới hàng loạt các tính năng an toàn và sức khỏe, Apple Watch SE 2024 sẽ giúp bạn theo dõi và đánh giá hiệu suất tập luyện của mình một cách chính xác và toàn diện. Những tính năng này không chỉ giúp nâng cao chất lượng cuộc sống, mà còn là nguồn động viên lớn lao để bạn duy trì lối sống lành mạnh trong thế giới đầy hối hả.\r\n\r\nApple Watch SE 2 GPS 40mm Viền nhôm Dây cao su cỡ S/M\r\n\r\nBền bỉ và phong cách\r\nApple Watch SE 2024 phiên bản GPS sở hữu màn hình OLED Retina lớn, sắc nét, mang lại hình ảnh sống động và trải nghiệm xem tuyệt vời cho người dùng. Bên cạnh đó, đồng hồ thông minh còn được trang bị khung viền được làm từ nhôm cao cấp, giúp tăng thêm vẻ sang trọng và độ bền cho sản phẩm. Khả năng chống nước lên đến 50 mét giúp bạn thoải mái sử dụng đồng hồ này khi tắm, bơi lội hay tham gia các hoạt động ngoài trời. Do đó, Apple Watch SE 2024 sẽ phù hợp để bạn đeo trong mọi hoàn cảnh và điều kiện sử dụng.\r\n\r\nApple Watch SE 2 GPS 40mm Viền nhôm Dây cao su cỡ S/M 3\r\n\r\nBảo vệ tối đa cho người dùng\r\nKhi nói đến sức khỏe và an toàn, Apple Watch SE 2024 phiên bản GPS không chỉ là một trợ thủ đắc lực, mà còn là một người bạn đồng hành tin cậy. Đồng hồ thông minh này được trang bị các tính năng an toàn tiên tiến như Crash Detection, Fall Detection và Emergency SOS, đảm bảo rằng bạn sẽ nhận được sự hỗ trợ kịp thời và hiệu quả trong những tình huống khẩn cấp.\r\n\r\nApple Watch SE 2 GPS 40mm Viền nhôm Dây cao su cỡ S/M 3\r\n\r\nKhông chỉ vậy, chiếc đồng hồ này còn có khả năng gửi thông báo cảnh báo khi phát hiện nhịp tim không đều, quá cao hoặc quá thấp, giúp bạn luôn giữ được tình trạng sức khỏe dưới sự kiểm soát và phòng tránh kịp thời các rủi ro về sức khỏe.\r\n\r\nNgoài ra, Apple Watch SE 2024 GPS còn mang đến sự đa dạng và toàn diện trong việc theo dõi sức khỏe với nhiều tính năng đo lường và theo dõi khác nhau. Từ việc đo nhịp tim, theo dõi chất lượng giấc ngủ đến đo độ bão hòa oxy trong máu, mỗi tính năng đều được thiết kế để giúp người dùng có cái nhìn toàn diện về trạng thái sức khỏe của mình.\r\n\r\nApple Watch SE 2 GPS 40mm Viền nhôm Dây cao su cỡ S/M 10\r\n\r\nTích hợp hoàn hảo với thiết bị và dịch vụ Apple\r\nApple Watch SE 2024 không chỉ là một chiếc đồng hồ thông minh với nhiều tính năng nổi bật, mà còn là một phần mở rộng hoàn hảo của hệ sinh thái Apple. Sự tương thích mượt mà và linh hoạt với các thiết bị và dịch vụ của Apple mang đến trải nghiệm người dùng liền mạch và thuận tiện. Bạn có thể tự động mở khóa Mac mà không cần phải nhập mật khẩu, tìm kiếm và định vị các thiết bị Apple của mình một cách dễ dàng và nhanh chóng, giúp tiết kiệm thời gian, công sức.\r\n\r\nKhông chỉ vậy, việc thực hiện các giao dịch tài chính cũng trở nên đơn giản và an toàn hơn bao giờ hết với Apple Pay. Bạn có thể thanh toán mua sắm, gửi tiền cho bạn bè và người thân một cách nhanh chóng, tiện lợi và bảo mật, mọi lúc mọi nơi, chỉ cần có Apple Watch SE 2024 trên cổ tay của mình.\r\n\r\nApple Watch SE 2 GPS 40mm Viền nhôm Dây cao su cỡ S/M 16\r\n\r\nTruy cập App Store ngay trên cổ tay\r\nVới khả năng kết nối và truy cập vào kho ứng dụng khổng lồ của App Store ngay trên chiếc đồng hồ đeo tay, Apple Watch SE 2024 mở ra một thế giới đa dạng, đáp ứng mọi nhu cầu và sở thích cá nhân của bạn. Dù là ứng dụng giải trí, sức khỏe, thể thao hay công việc, bạn đều có thể tìm thấy và trải nghiệm mọi lúc, mọi nơi, ngay trên cổ tay mình.\r\n\r\nNgoài ra, Apple Watch SE 2024 còn là một người bạn đồng hành lý tưởng trong hành trình rèn luyện sức khỏe của bạn. Với ứng dụng Workout tiên tiến được tích hợp sẵn, smartwatch này sẽ mang đến cho bạn nhiều phương pháp tập luyện mới và đa dạng, cùng với các chỉ số chi tiết, chính xác, giúp bạn theo dõi đánh giá hiệu suất tập luyện của mình một cách toàn diện.\r\n\r\nApple Watch SE 2 GPS 40mm Viền nhôm Dây cao su cỡ S/M 99\r\n\r\nNâng tầm trải nghiệm khi kết nối với iPhone\r\nKhi được kết nối với iPhone, Apple Watch SE 2024 sẽ trở cầu nối giúp bạn kết nối với thế giới từ chính cổ tay của mình. Bạn có thể dễ dàng gửi tin nhắn, thực hiện cuộc gọi, thưởng thức âm nhạc và podcast yêu thích, tất cả ngay trên cổ tay, không cần phải sử dụng đến chiếc điện thoại.\r\n\r\nKhông chỉ vậy, với việc hỗ trợ của trợ lý ảo Siri, bạn có thể thực hiện nhiều công việc khác nhau chỉ bằng giọng nói, từ việc tìm kiếm thông tin, đặt lịch hẹn, đến việc điều khiển các thiết bị trong nhà thông minh, giúp cuộc sống hàng ngày trở nên thông minh và tiện lợi hơn bao giờ hết.\r\n\r\nApple Watch SE 2 GPS 40mm Viền nhôm Dây cao su cỡ S/M 2\r\n\r\nĐọc thêm', 6390.000, 7490.000, 100, 103, 33, '2025-10-08 19:13:49', 1),
(63, 'Samsung Smart TV Crystal UHD 43 inch 4K UA43DU7000', '1760005596622_samsung_smart_tv_crystal_uhd_43_inch_4k_ua43du7000_1_b2701494ba.webp', 'Samsung Smart TV Crystal UHD 43 inch 4K UA43DU7000 là dòng tivi hiện đại, tạo ra trải nghiệm giải trí sống động với chất lượng hình ảnh vượt trội. Bên cạnh đó, thiết bị này tích hợp công nghệ Q-Symphony, mang đến hiệu ứng âm thanh vòm sống động khi xem phim, nghe nhạc hoặc chơi game. Với hệ điều hành Samsung Tizen, tivi cung cấp kho ứng dụng phong phú, cho phép người dùng tận hưởng những chương trình yêu thích suốt cả ngày.\r\n\r\nViền siêu mỏng, mở rộng khung hình hiển thị\r\nSamsung Smart TV Crystal UHD 43 inch 4K UA43DU7000 sở hữu thiết kế viền siêu mỏng, giúp mở rộng không gian hiển thị và mang đến trải nghiệm xem hoàn hảo. Nhờ đó, người xem có thể tập trung theo dõi nội dung đang phát mà không bị xao nhãng. Ngoài ra, tivi còn trang bị chân đế chắc chắn, hỗ trợ thiết bị đứng vững vàng trên kệ hay mặt phẳng. Nếu muốn tiết kiệm diện tích, bạn có thể treo tivi lên tường để tối ưu không gian trong nhà.', 6400.000, 7890.000, 100, 101, 34, '2025-10-09 10:26:36', 1),
(64, 'Xiaomi Google TV 32 inch HD A L32M8-P2SEA', '1760005841173_tivi_xiaomi_a_32_inch_3af254d23a.webp', 'Xiaomi Google TV A 32 inch sẽ mang tới cho bạn những trải nghiệm tuyệt vời với mức giá cực kỳ phải chăng. Sản phẩm sở hữu tấm nền HD 32 inch, có thể diễn đạt tới 16 triệu màu sống động. Ngoài ra, cụm loa ngoài 5W + 5W, công nghệ Dolby Audio và hệ thống Google TV cũng hứa hẹn những phút giây giải trí tuyệt vời cho người dùng.', 3920.000, 4320.000, 100, 101, 34, '2025-10-09 10:30:41', 1),
(65, 'Casper Google TV 43 inch Full HD 43FGK610', '1760006047535_tv_casper_43fgk610_1_c1547d9f69.webp', 'Casper Google Tivi FHD 43 inch 43FGK610 nổi bật với thiết kế tràn viền đẹp mắt, mang đến cho người dùng trải nghiệm xem rộng lớn và đắm chìm. Không những thế, thiết bị này còn trang bị ảnh sắc nét, âm thanh sống động cùng với đó là hệ điều hành thông minh và trợ lý ảo tích hợp. Đây chắc chắn là một lựa chọn lý tưởng cho những ai đang tìm kiếm một chiếc tivi vừa chất lượng vừa hiện đại.\r\n\r\nMàn hình tràn viền ấn tượng, hiển thị rộng rãi\r\nMột trong những điểm nhấn của Casper Google Tivi FHD 43 inch 43FGK610 chính là thiết kế màn hình tràn viền ấn tượng. Phần viền được tối ưu hóa về kích thước, tạo nên một không gian hiển thị rộng rãi, giúp người xem tập trung hơn vào nội dung mà không bị xao lãng bởi những yếu tố bên ngoài khác.\r\n\r\nThiết kế này không chỉ tạo điểm nhấn cho không gian nội thất mà còn mang lại trải nghiệm xem phim, nghe nhạc hay chơi game trở nên sống động hơn. Đặc biệt, độ phân giải Full HD trên màn hình 43 inch chắc chắn sẽ tái hiện rõ nét từng chi tiết của hình ảnh, từ đó nâng cao chất lượng trải nghiệm của người dùng.', 4990.000, 5690.000, 100, 101, 34, '2025-10-09 10:34:07', 1),
(66, 'Tủ lạnh Mini Aqua 90 lít AQR-D100FA(BS)', '1760006343908_2023_8_9_638271929139734080_tivi-xiaomi-a-32-inch-1.webp', '', 3900.000, 4100.000, 100, 101, 35, '2025-10-09 10:39:03', 1),
(67, 'Tủ lạnh Mini Hisense 94 lít HR09DB', '1760006468304_2024_5_20_638518157258210469_ugreen-hd104 (1).webp', '', 1900.000, 2389.000, 100, 100, 35, '2025-10-09 10:41:08', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(23, 'admin@gmail.com', '$2a$10$XHpGE4IrpNNweKDaXfKi.e8XPTCAnppot5jpO80TRV9bH56PUZLde', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_detail`
--
ALTER TABLE `blog_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gallery_product` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog_detail`
--
ALTER TABLE `blog_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blog_detail`
--
ALTER TABLE `blog_detail`
  ADD CONSTRAINT `blog_detail_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `fk_gallery_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
