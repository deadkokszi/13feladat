-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 18. 08:41
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `halak`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `faj`
--

CREATE TABLE `faj` (
  `halid` int(11) NOT NULL,
  `nev` varchar(60) NOT NULL,
  `feljegy` int(4) NOT NULL,
  `gyakorisag` varchar(1) NOT NULL,
  `vedett` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `faj`
--

INSERT INTO `faj` (`halid`, `nev`, `feljegy`, `gyakorisag`, `vedett`) VALUES
(1, 'állas küsz', 1882, 'C', 0),
(2, 'angolna', 1890, 'A', 0),
(3, 'bagoly keszeg', 1887, 'C', 1),
(4, 'balin', 1858, 'A', 0),
(5, 'bodorka', 1858, 'A', 0),
(6, 'compó', 1858, 'A', 0),
(7, 'csuka', 1858, 'A', 0),
(8, 'dévér keszeg', 1858, 'A', 1),
(9, 'ezüst kárász', 1858, 'B', 1),
(10, 'fejes domolyó', 1858, 'C', 1),
(11, 'felpillantó küllő', 1895, 'C', 1),
(12, 'fenékjáró küllő', 1858, 'A', 1),
(13, 'fürge cselle', 1858, 'B', 1),
(14, 'garda', 1830, 'A', 0),
(15, 'harcsa', 1858, 'A', 0),
(16, 'jászkeszeg', 1895, 'C', 0),
(17, 'kárász', 1858, 'A', 0),
(18, 'karika keszeg', 1830, 'A', 1),
(19, 'kecsege', 1887, 'C', 0),
(20, 'kősüllő', 1861, 'A', 0),
(21, 'kövi csík', 1858, 'B', 1),
(22, 'kurta baing', 1897, 'B', 1),
(23, 'lápi póc', 1847, 'C', 1),
(24, 'lapos keszeg', 1858, 'C', 1),
(25, 'magyar bucó', 1931, 'C', 0),
(26, 'márna', 1887, 'C', 0),
(27, 'menyhal', 1887, 'C', 0),
(28, 'német bucó', 1931, 'C', 0),
(29, 'ponty', 1858, 'A', 0),
(30, 'réti csík', 1858, 'B', 1),
(31, 'sebes pisztráng', 1906, 'C', 0),
(32, 'selymes durbincs', 1887, 'C', 0),
(33, 'sujtásos küsz', 1861, 'C', 0),
(34, 'sügér', 1847, 'C', 0),
(35, 'süllő', 1830, 'A', 0),
(36, 'szélhajtó küsz', 1858, 'A', 1),
(37, 'szivárványos ökle', 1887, 'A', 1),
(38, 'tarka géb', 1840, 'C', 0),
(39, 'vágó csík', 1858, 'B', 1),
(40, 'vágó durbincs', 1887, 'A', 1),
(41, 'vörösszárnyú keszeg', 1858, 'A', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `nev`
--

CREATE TABLE `nev` (
  `id` int(11) NOT NULL,
  `halid` int(11) NOT NULL,
  `tajnev` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `nev`
--

INSERT INTO `nev` (`id`, `halid`, `tajnev`) VALUES
(1, 2, 'ángolna'),
(2, 2, 'ángvilla'),
(3, 2, 'síkos ángolna'),
(4, 3, 'bagoly'),
(5, 3, 'bagókeszeg'),
(6, 3, 'karikakeszeg'),
(7, 3, 'száp'),
(8, 3, 'szápakeszeg'),
(9, 3, 'szápókeszeg'),
(10, 4, 'bálind'),
(11, 4, 'bálint'),
(12, 4, 'balling'),
(13, 4, 'baing'),
(14, 4, 'baksa'),
(15, 4, 'bolyín'),
(16, 4, 'boín'),
(17, 4, 'buczó'),
(18, 4, 'búczókeczeg'),
(19, 4, 'csabak'),
(20, 4, 'fenekeszeg'),
(21, 4, 'jászkeszeg'),
(22, 4, 'kapókeszeg'),
(23, 4, 'nagypénteki hal'),
(24, 4, 'nagy-szélhal'),
(25, 4, 'nyilkeszeg'),
(26, 4, 'őn'),
(27, 4, 'őnhal'),
(28, 4, 'őnkeszeg'),
(29, 4, 'őny'),
(30, 4, 'őnyhal'),
(31, 4, 'pőlind'),
(32, 4, 'ragadozó küsz'),
(33, 4, 'ragadozó őn'),
(34, 4, 'szellőkeszeg'),
(35, 4, 'torzsáskeszeg'),
(36, 4, 'vadászkeszeg'),
(37, 4, 'vezérhal'),
(38, 4, 'vizenjárókeszeg'),
(39, 5, 'béka-hal'),
(40, 5, 'boti'),
(41, 5, 'botos'),
(42, 5, 'butikóhal'),
(43, 5, 'ebhal'),
(44, 5, 'kölönte'),
(45, 5, 'kolty'),
(46, 5, 'kophal'),
(47, 5, 'kopsa'),
(48, 5, 'kutyahal'),
(49, 5, 'ördöghal'),
(50, 6, 'nyálkás czompó'),
(51, 6, 'czigányhal'),
(52, 6, 'gyászkeszeg'),
(53, 6, 'haldoktor'),
(54, 6, 'sárhal'),
(55, 6, 'tathal'),
(56, 6, 'vargahal'),
(57, 6, 'varjúhal'),
(58, 6, 'zöldike'),
(59, 7, 'köz-csuka'),
(60, 7, 'bugyli (növendék csuka)'),
(61, 7, 'ezüstcsuka'),
(62, 8, 'dévér'),
(63, 8, 'dévértkeszeg'),
(64, 8, 'bárdkeszeg'),
(65, 8, 'dorzsmáskeszeg'),
(66, 8, 'fahegykeszeg'),
(67, 8, 'keszege'),
(68, 8, 'feketeszárnyúkeszeg'),
(69, 8, 'lapátkeszeg'),
(70, 8, 'lapiska'),
(71, 8, 'lapkó'),
(72, 8, 'bárdkeszeg'),
(73, 8, 'laposka'),
(74, 8, 'lapos keszeg'),
(75, 8, 'lepényhal'),
(76, 8, 'platyicza'),
(77, 8, 'platyika'),
(78, 8, 'platyka'),
(79, 8, 'pünkösdkeszeg'),
(80, 8, 'széleskeszeg'),
(81, 8, 'szélhajtókeszeg'),
(82, 8, 'tyiszága'),
(83, 8, 'tyiszaga'),
(84, 8, 'Szent György-keszeg'),
(85, 8, 'vereskeszeg'),
(86, 8, 'véreskeszeg'),
(87, 10, 'domi'),
(88, 10, 'domolykó'),
(89, 10, 'domorkó'),
(90, 10, 'egérfogó'),
(91, 10, 'fejérkeszeg'),
(92, 10, 'fejeshal'),
(93, 10, 'fejesponty'),
(94, 10, 'jácz'),
(95, 10, 'jász'),
(96, 10, 'jászkeszeg'),
(97, 10, 'jászponty'),
(98, 10, 'jáz'),
(99, 10, 'keling'),
(100, 10, 'lógga'),
(101, 10, 'nagyfejű hal'),
(102, 10, 'nagyfejű keszeg'),
(103, 10, 'száp'),
(104, 10, 'sütő'),
(105, 10, 'telea'),
(106, 10, 'telen'),
(107, 10, 'telény'),
(108, 10, 'tomolykó'),
(109, 10, 'tömpekeszeg'),
(110, 10, 'törő'),
(111, 12, 'göbhal'),
(112, 12, 'gobhal'),
(113, 12, 'goboly'),
(114, 12, 'göcze'),
(115, 12, 'grúz'),
(116, 12, 'gulúz'),
(117, 12, 'hajas-kövihal'),
(118, 12, 'héjjas-kövihal'),
(119, 12, 'kő-hal'),
(120, 12, 'küllő'),
(121, 12, 'sármászó szaka'),
(122, 12, 'tergélye'),
(123, 13, 'cselle'),
(124, 13, 'csetni'),
(125, 13, 'egri'),
(126, 13, 'egrihal'),
(127, 13, 'egriponty'),
(128, 13, 'pelehal'),
(129, 13, 'putni'),
(130, 13, 'tökhal'),
(131, 14, 'gárdakeszeg'),
(132, 14, 'balatoni hering'),
(133, 14, 'balatoni héring'),
(134, 14, 'gallakeszeg'),
(135, 14, 'gárdakeszeg'),
(136, 14, 'gargya'),
(137, 14, 'gorda'),
(138, 14, 'görbepaducz'),
(139, 14, 'görbepaduc'),
(140, 14, 'gyargya'),
(141, 14, 'gyurgya'),
(142, 14, 'héringhal'),
(143, 14, 'hosszúkeszeg'),
(144, 14, 'karda'),
(145, 14, 'kardakeszeg'),
(146, 14, 'kardkeszeg'),
(147, 14, 'kardos'),
(148, 14, 'kaszakeszeg'),
(149, 14, 'korda'),
(150, 14, 'lánakeszeg'),
(151, 14, 'látott hal'),
(152, 14, 'lannakeszeg'),
(153, 14, 'sugárkardus'),
(154, 14, 'szabó'),
(155, 14, 'szabóhal'),
(156, 14, 'sugár kardos'),
(157, 14, 'vágóhal'),
(158, 15, 'leső harcsa'),
(159, 15, 'parasztfaló'),
(160, 15, 'pozsárharcsa'),
(161, 15, 'pumaharcsa'),
(162, 15, 'sárgaharcsa'),
(163, 15, 'harcsapundra (kis harcsa)'),
(164, 17, 'ónos jász'),
(165, 17, 'ónkeszeg'),
(166, 20, 'kő-süllő'),
(167, 20, 'bandár'),
(168, 20, 'tarkasüllő'),
(169, 20, 'tótsüllő'),
(170, 20, 'vadsüllő'),
(171, 17, 'ezüst kárász'),
(172, 17, 'kövi kárász'),
(173, 17, 'géb'),
(174, 17, 'gibbélió kárász'),
(175, 17, 'ezüst kínai kárász'),
(176, 18, 'baszárkeszeg'),
(177, 18, 'bolén'),
(178, 18, 'ezüstös balin'),
(179, 18, 'gyöngyhal'),
(180, 18, 'jeges keszeg'),
(181, 18, 'lánakeszeg'),
(182, 18, 'szalmántelt'),
(183, 18, 'szápakeszeg'),
(184, 18, 'tányérkeszeg'),
(185, 18, 'tángyérhal'),
(186, 19, 'kecsege-tok'),
(187, 19, 'kecsegetok'),
(188, 19, 'kecsöge'),
(189, 19, 'köcsög'),
(190, 19, 'köcsöge'),
(191, 21, 'bajuszos-orsófark'),
(192, 21, 'gömőhal'),
(193, 21, 'hajatlan kövihal'),
(194, 21, 'héjatlan kövihal'),
(195, 21, 'kavicshal'),
(196, 21, 'kőmarókolty'),
(197, 21, 'könyhal'),
(198, 21, 'kövecshal'),
(199, 21, 'kövi'),
(200, 21, 'kövicsik'),
(201, 21, 'kövihal'),
(202, 21, 'kűhal'),
(203, 21, 'ményhal'),
(204, 23, 'bobálik'),
(205, 23, 'bobály'),
(206, 23, 'ebhal'),
(207, 23, 'ebihal'),
(208, 23, 'kutyahal'),
(209, 23, 'peczehal'),
(210, 23, 'pócz'),
(211, 23, 'póczhal'),
(212, 23, 'ribahal'),
(213, 24, 'balinkeszeg'),
(214, 24, 'baszárkeszeg'),
(215, 24, 'lapos dévérkeszeg'),
(216, 24, 'lapos keszeg'),
(217, 24, 'lánakeszeg'),
(218, 24, 'szápakeszeg'),
(219, 24, 'szalmántelelt'),
(220, 25, 'barátbunkó'),
(221, 25, 'baráthal'),
(222, 25, 'bunkó'),
(223, 25, 'czingli'),
(224, 25, 'furkó'),
(225, 25, 'gócz'),
(226, 25, 'kócz'),
(227, 25, 'kóczhal'),
(228, 25, 'kolcz'),
(229, 25, 'kólcz'),
(230, 25, 'kosz'),
(231, 25, 'magyar buczó'),
(232, 25, 'magyar-kócz'),
(233, 25, 'orsóhal'),
(234, 26, 'brána'),
(235, 26, 'harcsaponty'),
(236, 26, 'marczi hal'),
(237, 26, 'manna'),
(238, 26, 'martikeszeg'),
(239, 26, 'merenne'),
(240, 26, 'nagy-marczi'),
(241, 26, 'rózsa márna'),
(242, 26, 'rózsamárna'),
(243, 26, 'rózsahal'),
(244, 26, 'tótkecsege'),
(245, 27, 'tarka meny'),
(246, 27, 'kutyahal'),
(247, 27, 'méhal'),
(248, 27, 'ményhal'),
(249, 27, 'nagyagyú hal'),
(250, 27, 'törzsökhal'),
(251, 28, 'apáczafúró'),
(252, 28, 'arsóhal'),
(253, 28, 'buczó'),
(254, 28, 'buczok'),
(255, 28, 'durbancs'),
(256, 28, 'kerékszeg'),
(257, 28, 'német-kócz'),
(258, 28, 'nemhal'),
(259, 28, 'orsóhal'),
(260, 28, 'orsófark'),
(261, 28, 'orsófarkú hal'),
(262, 28, 'orsóhal'),
(263, 28, 'poczokfarkú'),
(264, 28, 'ráspóhal'),
(265, 28, 'répahal'),
(266, 28, 'reszelő'),
(267, 29, 'potyka'),
(268, 29, 'duna-ponty'),
(269, 29, 'ponty'),
(270, 29, 'potyesz'),
(271, 29, 'pozsár'),
(272, 29, 'tőpotyka'),
(273, 29, 'csupaszponty'),
(274, 29, 'királyponty'),
(275, 29, 'tő-ponty'),
(276, 29, 'babajkó'),
(277, 29, 'pikkelyes nemesponty'),
(278, 29, 'nyurgaponty'),
(279, 29, 'tükörponty'),
(280, 29, 'tükrösponty'),
(281, 29, 'kakastökű ponty'),
(282, 29, 'cigányponty'),
(283, 29, 'vadponty'),
(284, 30, 'csik'),
(285, 30, 'halcsik'),
(286, 30, 'barnacsik'),
(287, 30, 'csikdánia'),
(288, 30, 'csikkirály'),
(289, 32, 'ángvilla'),
(290, 32, 'ángéla'),
(291, 32, 'barsóka'),
(292, 32, 'fehérsügér'),
(293, 32, 'ilonahal'),
(294, 32, 'ilonkakeszeg'),
(295, 32, 'selyemhal'),
(296, 32, 'selyemsügér'),
(297, 32, 'selyemdúbír'),
(298, 32, 'serincz'),
(299, 32, 'srácz'),
(300, 32, 'sráczhal'),
(301, 32, 'sréczer'),
(302, 32, 'varsinta'),
(303, 32, 'vaskó'),
(304, 33, 'fecskefarkú'),
(305, 33, 'fűzfahal'),
(306, 33, 'fűzike'),
(307, 33, 'halhuszár'),
(308, 33, 'habnyelő'),
(309, 33, 'keceg'),
(310, 33, 'sugárkeceg'),
(311, 34, 'csapó sügér'),
(312, 34, 'bules'),
(313, 34, 'dibbancs'),
(314, 34, 'dóber'),
(315, 34, 'dúbár'),
(316, 34, 'dúber'),
(317, 34, 'dúbér'),
(318, 34, 'fésüshal'),
(319, 34, 'kándró'),
(320, 34, 'körmöshal'),
(321, 34, 'parcs'),
(322, 34, 'persli'),
(323, 34, 'rappi hóhér'),
(324, 34, 'réti-durbincs'),
(325, 34, 'sígér'),
(326, 34, 'singér'),
(327, 34, 'súdér'),
(328, 34, 'süger'),
(329, 34, 'sügre'),
(330, 35, 'fogas süllő'),
(331, 35, 'fehérhúsú csuka'),
(332, 35, 'fogas'),
(333, 35, 'sül'),
(334, 35, 'szellő'),
(335, 35, 'hóttsüllő'),
(336, 36, 'ehérke'),
(337, 36, 'bökle'),
(338, 36, 'dobóka'),
(339, 36, 'fejérke'),
(340, 36, 'fejérkeszeg'),
(341, 36, 'szélkeszeg'),
(342, 36, 'fűzfahal'),
(343, 36, 'fűzike'),
(344, 36, 'göce'),
(345, 36, 'gőcze'),
(346, 36, 'huszárkeszeg'),
(347, 36, 'pisze'),
(348, 36, 'szélkeszeg'),
(349, 36, 'szélhal'),
(350, 36, 'kis szélhal'),
(351, 36, 'szélhajtó'),
(352, 36, 'kisz'),
(353, 36, 'lőbő'),
(354, 36, 'löbő ökle'),
(355, 36, 'peholhal'),
(356, 36, 'pehelyhal'),
(357, 36, 'peleh-hal'),
(358, 36, 'pehel-hal'),
(359, 36, 'pelehal'),
(360, 36, 'peszmetkehal'),
(361, 36, 'penmethal'),
(362, 36, 'pine'),
(363, 36, 'pinehal'),
(364, 36, 'pinke'),
(365, 36, 'pisze'),
(366, 36, 'piszehal'),
(367, 36, 'piszke'),
(368, 36, 'rütyőke'),
(369, 36, 'ribihal'),
(370, 36, 'szélhajtó'),
(371, 36, 'szélhal'),
(372, 36, 'szélkeszeg'),
(373, 36, 'szellőkeszeg'),
(374, 36, 'tejhal'),
(375, 36, 'ünhal'),
(376, 36, 'ruszli'),
(377, 36, 'fűzfalevél'),
(378, 36, 'huszárkeszeg'),
(379, 36, 'szűkehal'),
(380, 36, 'snajder'),
(381, 36, 'snájder'),
(382, 36, 'snöci'),
(383, 36, 'sneci'),
(384, 37, 'keserűhal'),
(385, 37, 'lapistyán'),
(386, 37, 'laponya'),
(387, 37, 'ökle'),
(388, 37, 'petikehal'),
(389, 37, 'pohé'),
(390, 37, 'sároglya'),
(391, 37, 'Szent-Péter hala'),
(392, 39, 'fövenyvágó'),
(393, 39, 'halbába'),
(394, 39, 'jégfúróhal'),
(395, 39, 'kőfúró'),
(396, 39, 'kőharapó'),
(397, 39, 'kővágó'),
(398, 39, 'sibrikhal'),
(399, 39, 'vágóhal'),
(400, 40, 'borholy'),
(401, 40, 'disznóhal'),
(402, 40, 'dörgecs'),
(403, 40, 'dörgécse'),
(404, 40, 'dörgicse'),
(405, 40, 'dörgőcse'),
(406, 40, 'dörgőcze'),
(407, 40, 'durbancs'),
(408, 40, 'durbincs'),
(409, 40, 'durda'),
(410, 40, 'dürgencs'),
(411, 40, 'görgécse'),
(412, 40, 'görgicse'),
(413, 40, 'görgőcse'),
(414, 40, 'görgőcse hal'),
(415, 40, 'kis-dürgencs'),
(416, 40, 'lecserlecs'),
(417, 40, 'lezsér'),
(418, 40, 'macza'),
(419, 40, 'paptetű'),
(420, 40, 'pikó'),
(421, 40, 'porhó'),
(422, 40, 'serincz'),
(423, 40, 'taknyos lezsér'),
(424, 40, 'taknyos macza'),
(425, 40, 'tövishal'),
(426, 40, 'tüskéshal'),
(427, 40, 'vargahal'),
(428, 40, 'vasinta'),
(429, 40, 'vaskó'),
(430, 40, 'vizidarázs'),
(431, 41, 'bőke'),
(432, 41, 'bűke'),
(433, 41, 'bürke'),
(434, 41, 'göndér'),
(435, 41, 'önhal'),
(436, 41, 'pápakeszeg'),
(437, 41, 'tamáskeszeg'),
(438, 41, 'aranyhal'),
(439, 41, 'bikkely'),
(440, 41, 'bódorkeszeg'),
(441, 41, 'búzaszeműkeszeg'),
(442, 41, 'búzaszemű kárász'),
(443, 41, 'czompókhal'),
(444, 41, 'dunakeszeg'),
(445, 41, 'gaisztás-keszeg'),
(446, 41, 'gelesztás-keszeg'),
(447, 41, 'kárászkeszeg'),
(448, 41, 'kelehal'),
(449, 41, 'kelen'),
(450, 41, 'konczhal'),
(451, 41, 'nemzetihal'),
(452, 41, 'piroska'),
(453, 41, 'piroslókeszeg'),
(454, 41, 'pirosszemű kele'),
(455, 41, 'piros szárnyú konczár'),
(456, 41, 'pirosszárnyú konczér'),
(457, 41, 'pirosszárnyú ponty'),
(458, 41, 'szőrkeszeg'),
(459, 41, 'véreskeszeg'),
(460, 41, 'veresszem'),
(461, 41, 'veresszemű hal'),
(462, 41, 'veresszemű keszeg'),
(463, 41, 'veresszárnyú jász'),
(464, 41, 'veresszárnyú konczér'),
(465, 41, 'veresszárnyú keszeg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `faj`
--
ALTER TABLE `faj`
  ADD PRIMARY KEY (`halid`);

--
-- A tábla indexei `nev`
--
ALTER TABLE `nev`
  ADD PRIMARY KEY (`id`),
  ADD KEY `halid` (`halid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `faj`
--
ALTER TABLE `faj`
  MODIFY `halid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT a táblához `nev`
--
ALTER TABLE `nev`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `nev`
--
ALTER TABLE `nev`
  ADD CONSTRAINT `nev_ibfk_1` FOREIGN KEY (`halid`) REFERENCES `faj` (`halid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
