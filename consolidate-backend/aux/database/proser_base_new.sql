-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-09-2019 a las 04:07:15
-- Versión del servidor: 10.3.17-MariaDB-1:10.3.17+maria~bionic-log
-- Versión de PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proser_base_new`
--
CREATE DATABASE IF NOT EXISTS `proser_base_new` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proser_base_new`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AccessToken`
--

DROP TABLE IF EXISTS `AccessToken`;
CREATE TABLE `AccessToken` (
  `id` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `AccessToken`
--

INSERT INTO `AccessToken` (`id`, `ttl`, `scopes`, `created`, `userId`) VALUES
('3COzAnhSP6UlQ3JVnQLdlw8UmRkKbkHIDzTKeT9hCIIAfepzI4PFPCUYccyTrCR9', 1209600, NULL, '2019-08-04 18:30:13', 22),
('3etQjP6ejJYL4hKA2GWmTMrdhPYQNwOrwFjD2oeyqdXgt0macX9dkkEEZdJbOPzl', 1209600, NULL, '2019-08-04 18:59:07', 22),
('5cexjcvXJPMlq09qJQA741crZV6i883UuOthHKPFWSovd7xQAp0tzUKX46ZuCZHm', 1209600, NULL, '2019-08-04 18:16:46', 22),
('8v3k8A6l3eeKecK4qnKNji6BTmws5YASQWsdBtD7ijPNIs21ehi4WzaxYv6WkFeU', 1209600, NULL, '2019-08-04 18:30:58', 22),
('aaCvI0sw8dJhNRXaR6UWXRuVQDTgQndeKBuVKzxSBp5i5GVfS5Gcl0PAGFANVfyS', 1209600, NULL, '2019-08-04 17:46:37', 22),
('b5wgXwNigdgNjPMb1olHxeCe5LPux5CQlh4fr31OB5sVpMWdtGwpuED0TrZO5TiK', 1209600, NULL, '2019-08-04 18:38:10', 22),
('BkDXMar7YhGyoX4KT4EQAMcyBI9E7kJE2fyUGC4c3ksnhSBImFkOvm0Gnuk3Sgmb', 1209600, NULL, '2019-08-04 17:13:12', 22),
('CcWOt2zvfdne3GUSPCGE4Jfsqmv5NZyrLj0nCWde8gxFYbwOJXJAN7N0rSfNpTuw', 1209600, NULL, '2019-08-04 18:17:52', 22),
('DBpaxbCzxN1fEby8XrMn0fTqUKE1htbhQmrL0chsyO3VkkHYD44wVGZgrOREnzmA', 1209600, NULL, '2019-08-04 18:20:12', 22),
('DsuKIIDU8BwXynNE2Ys6rvtk0tqYn9GwUadYcnCNAKhwdjDQmEIYtLwfYWiHjQBI', 1209600, NULL, '2019-08-06 12:23:24', 22),
('E32i1E17TuUxR2bGlmy2Bfd1Ay6Hiv5hMBt87Qz4fF0zoA1o9CYNTC1tmLTRnnMR', 1209600, NULL, '2019-08-04 18:29:31', 22),
('fhXpGn7Y7sMg2j7bhhkArykfJulNAjGL9IdxgH5hJIgjH8fpp65cJk2D26eL6Blq', 1209600, NULL, '2019-08-14 09:20:12', 22),
('fy9QikWssXzeNHc2UGG8q3on2YTFcMo3D1un95CowASygErp5EDBePZIagxv6zzo', 1209600, NULL, '2019-08-04 18:07:39', 22),
('G2M5u7TmwCsNpA5uGHABBbZfg7Aeafbnsd41HpoyLNGwAJmKhJQ3KDfKswHo60r2', 1209600, NULL, '2019-08-04 18:21:50', 22),
('gB2ZeMgow6tXAJpzfD2q7eDCidP48DRSYje1wViAOOoqfIPkMM0fifIeyNNMTTnj', 1209600, NULL, '2019-08-28 12:59:56', 22),
('GpRwPM6qgYNGKLcpGLPun2lbeWt5zyBgT3uugzAD1NWkKtis4ZKYsbWACRA0xb4L', 1209600, NULL, '2019-08-04 17:13:30', 22),
('gwHx1KCfzocLV5KCEpp41pAob8tY66V411ssX9K6ydksgDCyK0BEX8nesLhEVJoG', 1209600, NULL, '2019-08-04 17:52:54', 22),
('hFvg6DlzniXYt9mDFVsyLeFvX2hGVwma51Mt9wfudx3ZJ0r50s5DWOc6ccFfbJGo', 1209600, NULL, '2019-08-10 05:34:37', 22),
('HH1GKjqxaCP9r1WTRFoJw6XkhPExlMkJSdykNFywaegUtlJudGUs1iwq8duEebIs', 1209600, NULL, '2019-09-04 16:56:05', 22),
('hOrLc5SdvED0zG4ULg9ngmRWAnueARORnAocKerSWGd8nhnXpfVB1wBO2EgcWrLg', 1209600, NULL, '2019-08-04 19:02:12', 22),
('IT7oerpqbgRgrk1gzhaQjdJNbnAXg5QrLAdxN02cc52rIbUN8eLdUKiogJ2Z37cp', 1209600, NULL, '2019-08-04 17:58:07', 22),
('JO6YLY4NyNErHVjm4xQWPIR0KZcSG7zdYg39kfUmIyUMt67FV4shFDO0El6zDd6N', 1209600, NULL, '2019-08-04 17:39:46', 22),
('jXvHnk1IvnNhPBZ1rthh31J52suBbz6w0DQm9DVuR2MKTwDeyhgOQM5ERhWUAE52', 1209600, NULL, '2019-08-04 18:09:37', 22),
('KmBAHXzp0rmRC8Th0Z6XWPcTpxLqlcS08Pt6mvE9ooK9W00i8uTxWHJkb0und8oR', 1209600, NULL, '2019-08-04 17:43:59', 22),
('LDFy38VMWaSiCWM0nm4yd7e9FsAiphwqweu2E034FQoUum7ZXXFik6Ulq2vgRC2A', 1209600, NULL, '2019-08-20 20:08:31', 22),
('Liwo3GJr79dkeTD5At2fbSb9ik2h4dVw0OsdCNUJGl9TKG52LXnbKMI7rCjvjO5V', 1209600, NULL, '2019-08-12 14:02:44', 22),
('lPjMRyZZ2LzqMWFFFYJW0A1OaAEpoI8EBVTG7yWT4hIVlN2dEq05CxQtDXFBQnrn', 1209600, NULL, '2019-08-04 18:15:33', 22),
('lVblokctp1FDihAcBEX0iZrMFC8cIqRpp9x79AD08OmeNbBZsbPoa36m5EPEaEtu', 1209600, NULL, '2019-08-04 18:15:45', 22),
('NjTeGfVP200ud8HPgG1VfDbaq0egEGQxeu0JFDxQCce3HV97FN18zoWPyvqu5Zc2', 1209600, NULL, '2019-08-08 12:10:02', 22),
('O2fIdZOxWRDJ7bxF2lD7aZmEVQYsAc3P2E7gbfHC3dEihsMSs3wzq9fJktImwwJw', 1209600, NULL, '2019-08-04 17:37:10', 22),
('o2rLtNdlqXaHndLeifaFliyLi0MYEYXhkumQbGdeNXSZQsdQj5ywGyCmxKw2sdjM', 1209600, NULL, '2019-08-04 18:14:28', 22),
('O4noJ8wGdqxUXyqy9i3qaHm4pnIobSjbFGjkOuYjPjz1U8UQazQAvGD2dXRIjbRx', 1209600, NULL, '2019-08-04 17:40:20', 22),
('P8EeKijJKhtToMMXaO1Hsu5gjNgczEOqoN6sNiOghzwbM97nFlwKItw3LDQNyh7S', 1209600, NULL, '2019-08-27 16:28:01', 22),
('p9DhvxoRYxHhdaXOayhx5ypbN2GDNTgEBwAjF7REWoqVQrUg5a1dASvbEyWgdKYZ', 1209600, NULL, '2019-08-04 18:14:34', 22),
('QCFnC1W62MBFul9C36lQ53Yycu4uhvKED6yxHa4cC6ZIrpQdrcQbAspsUmVBFL1p', 1209600, NULL, '2019-09-05 11:32:34', 22),
('RsbiK5HmFSr1OKNtvMED4PKB34zWJAHMEABDlyoTqYF3LGqRlDcwT7zWhipHmL8Q', 1209600, NULL, '2019-08-04 17:35:43', 22),
('sMSXXk4edIXUsfAyV3BLwfIAnLY230dnYFHgctxB9Y65AC6qCqWYYHi0gntearZ1', 1209600, NULL, '2019-08-06 13:38:50', 22),
('srYBvTbqAkZOQQv7ZmtCwgLn3sGtAYAFg1INJIPC6fQqkX6thmAtoVqTMHDXADsa', 1209600, NULL, '2019-08-04 18:15:41', 22),
('t6dgeaZBCxZE3XEMppX7pJ5WwQ3oQU8pT6f0Bo8in222oDcPsa9Wpe132yyTfHfB', 1209600, NULL, '2019-08-05 13:28:29', 22),
('tNpRhNraaz8bSnmK24cEHQ1jUkZOdXuUQCR10M3sWf7OvhJLrhFSWwHKsc5fagUh', 1209600, NULL, '2019-08-04 18:15:42', 22),
('VHKzpdW7wSriTSGts7irriJVBR3MIGBXPXQZ7vu4xl2Cj9LEhkZyq2WWhQDbUbyk', 1209600, NULL, '2019-08-04 18:16:01', 22),
('VRLoDCLNU8tRPvLcG7dYoO0uf4jR3C80CwEZu166jydrzJ77D3b51u8FhutZncyT', 1209600, NULL, '2019-08-04 18:42:48', 22),
('woncjdTvtNMr9zmyu6Bmc11QPhDXJtZvrm7fybixwj3FqvC4vVPeY8CDq2zrW124', 1209600, NULL, '2019-08-28 12:47:05', 22),
('wpOMdR0NFtzq1wSnx2M86wUaHnXTnAP0LgU4CR7kjMC81FL7v26KsmZyioGYNzMI', 1209600, NULL, '2019-08-04 18:28:38', 22),
('XJ2sWpXEypBism6sJr2HXNDcHTUHZU7izxHgLCLAI4Ny7ilNMcVJhAKWIdMnjUqq', 1209600, NULL, '2019-08-04 18:54:39', 22),
('y7MudwzS10elKBf29Qr1EtbWHGnhS4zQanFQ96LhwBtSMOvyr8ZC34anu6j5U53y', 1209600, NULL, '2019-08-04 18:35:47', 22),
('yEWKfELHTYo9xHGPqfT9pjvZu6phfbnnljoQTjkrGgk6sfCsA8NcqIY25b8QX5aG', 1209600, NULL, '2019-08-04 18:23:06', 22),
('Z9NejHbpDfrRxHmXDPgqvm5Kmt1RBsYutoa6OFX4HaQgxW5VEcoJ9lvyARIppBng', 1209600, NULL, '2019-08-06 16:07:24', 22),
('Zc0myyzpdWA5A8kKkapjIAki1hlZEzLQJTX0KRCpFUShX5DhFuFI6HlTKSP1E7Gj', 1209600, NULL, '2019-08-04 18:08:19', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ACL`
--

DROP TABLE IF EXISTS `ACL`;
CREATE TABLE `ACL` (
  `id` int(11) NOT NULL,
  `model` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `property` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `accessType` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `permission` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `principalType` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `principalId` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AuxColor`
--

DROP TABLE IF EXISTS `AuxColor`;
CREATE TABLE `AuxColor` (
  `aux_color_id` int(10) NOT NULL,
  `aux_color_name` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aux_color_string` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aux_color_use` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aux_color_status` varchar(1) COLLATE utf8_spanish_ci DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `AuxColor`
--

INSERT INTO `AuxColor` (`aux_color_id`, `aux_color_name`, `aux_color_string`, `aux_color_use`, `aux_color_status`) VALUES
(1, 'verde', '#28a745', 'Disponible', 'A'),
(2, 'rojo', '#dc3545', 'Ocupado', 'A'),
(3, 'amarillo', '#ffc107', 'Auxiliar', 'A'),
(4, 'violeta', '#6f42c1', 'Asignado', 'A'),
(6, NULL, NULL, NULL, NULL),
(7, 'Otro color', '#123456', 'Otro', 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AuxHour`
--

DROP TABLE IF EXISTS `AuxHour`;
CREATE TABLE `AuxHour` (
  `aux_hour_id` int(11) NOT NULL,
  `aux_hour_name` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aux_hour_value` time DEFAULT NULL,
  `aux_hour_status` varchar(1) COLLATE utf8_spanish_ci DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `AuxHour`
--

INSERT INTO `AuxHour` (`aux_hour_id`, `aux_hour_name`, `aux_hour_value`, `aux_hour_status`) VALUES
(0, '00 AM', '00:00:00', 'A'),
(1, '01 AM', '01:00:00', 'A'),
(2, '02 AM', '02:00:00', 'A'),
(3, '03 AM', '03:00:00', 'A'),
(4, '04 AM', '04:00:00', 'A'),
(5, '05 AM', '05:00:00', 'A'),
(6, '06 AM', '06:00:00', 'A'),
(7, '07 AM', '07:00:00', 'A'),
(8, '08 AM', '08:00:00', 'A'),
(9, '09 AM', '09:00:00', 'A'),
(10, '10 AM', '10:00:00', 'A'),
(11, '11 AM', '11:00:00', 'A'),
(12, '12 AM', '12:00:00', 'A'),
(13, '01 PM', '13:00:00', 'A'),
(14, '02 PM', '14:00:00', 'A'),
(15, '03 PM', '15:00:00', 'A'),
(16, '04 PM', '16:00:00', 'A'),
(17, '05 PM', '17:00:00', 'A'),
(18, '06 PM', '18:00:00', 'A'),
(19, '07 PM', '19:00:00', 'A'),
(20, '08 PM', '20:00:00', 'A'),
(21, '09 PM', '21:00:00', 'A'),
(22, '10 PM', '22:00:00', 'A'),
(23, '11 PM', '23:00:00', 'A'),
(24, '12 PM', '24:00:00', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AuxInfo`
--

DROP TABLE IF EXISTS `AuxInfo`;
CREATE TABLE `AuxInfo` (
  `aux_info_id` int(10) NOT NULL,
  `aux_info_name` varchar(100) DEFAULT NULL,
  `aux_info_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AuxInterval`
--

DROP TABLE IF EXISTS `AuxInterval`;
CREATE TABLE `AuxInterval` (
  `aux_interval_id` int(10) NOT NULL,
  `aux_interval_name` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aux_interval_minutes` int(11) DEFAULT NULL,
  `aux_interval_value` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aux_interval_status` varchar(1) COLLATE utf8_spanish_ci DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `AuxInterval`
--

INSERT INTO `AuxInterval` (`aux_interval_id`, `aux_interval_name`, `aux_interval_minutes`, `aux_interval_value`, `aux_interval_status`) VALUES
(1, '1 min', 1, '00:01:00', 'A'),
(5, '5 min', 5, '00:05:00', 'A'),
(10, '10 min', 10, '00:10:00', 'A'),
(15, '15 min', 15, '00:15:00', 'A'),
(30, '30 min', 30, '00:30:00', 'A'),
(45, '45 min', 45, '00:45:00', 'A'),
(60, '60 min', 60, '01:00:00', 'A'),
(120, '120 min', 120, '02:00:00', 'A'),
(180, '180 min', 180, '03:00:00', 'A'),
(240, '240 min', 240, '04:00:00', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AuxLine`
--

DROP TABLE IF EXISTS `AuxLine`;
CREATE TABLE `AuxLine` (
  `aux_line_id` int(11) NOT NULL,
  `aux_line_name` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aux_line_value` int(11) DEFAULT NULL,
  `aux_line_status` varchar(1) COLLATE utf8_spanish_ci DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `AuxLine`
--

INSERT INTO `AuxLine` (`aux_line_id`, `aux_line_name`, `aux_line_value`, `aux_line_status`) VALUES
(1, '1 lineas', 1, 'A'),
(2, '5 líneas', 5, 'A'),
(3, '10 líneas', 10, 'A'),
(4, '15 líneas', 15, 'A'),
(5, '20 líneas', 20, 'A'),
(7, '25 líneas', 25, 'A'),
(8, '30 líneas', 30, 'A'),
(9, '35 líneas', 35, 'A'),
(10, '40 líneas', 40, 'A'),
(11, '45 líneas', 45, 'A'),
(12, '50 líneas', 50, 'A'),
(13, '55 líneas', 55, 'A'),
(14, '60 líneas', 60, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HcaAgent`
--

DROP TABLE IF EXISTS `HcaAgent`;
CREATE TABLE `HcaAgent` (
  `hca_agent_serial_id` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `hca_agent_origin` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_agent_date` date DEFAULT NULL,
  `hca_agent_id` int(11) DEFAULT NULL,
  `hca_agent_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_agent_extension` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_agent_status` varchar(10) COLLATE utf8_spanish_ci DEFAULT '''A''',
  `hca_agent_laborday` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `__JSON__` varchar(1) COLLATE utf8_spanish_ci DEFAULT '1',
  `hca_agent_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"supervisor":[], "role":[]}',
  `hca_agent_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"client":[], "queue":[], "service":[], "campaign":[]}',
  `hca_agent_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"calendar":[], "schedule":[], "scheduleday":[], "schedulehours":[]}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HcaExtension`
--

DROP TABLE IF EXISTS `HcaExtension`;
CREATE TABLE `HcaExtension` (
  `hca_extension_serial_id` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `hca_extension_origin` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_extensiont_date` date DEFAULT NULL,
  `hca_extension_id` int(11) DEFAULT NULL,
  `hca_extension_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_extension_extension` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_extension_status` varchar(10) COLLATE utf8_spanish_ci DEFAULT '''A''',
  `hca_extension_laborday` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `__JSON__` varchar(1) COLLATE utf8_spanish_ci DEFAULT '1',
  `hca_extension_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"supervisor":[], "role":[]}',
  `hca_extension_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"client":[], "queue":[], "service":[], "campaign":[]}',
  `hca_extension_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"calendar":[], "schedule":[], "scheduleday":[], "schedulehours":[]}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HcaOccasion`
--

DROP TABLE IF EXISTS `HcaOccasion`;
CREATE TABLE `HcaOccasion` (
  `hca_ocassion_serial_id` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `hca_ocassion_origin` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_ocassion_date` date DEFAULT NULL,
  `hca_ocassion_id` int(11) DEFAULT NULL,
  `hca_ocassion_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_ocassion_extension` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_ocassion_status` varchar(10) COLLATE utf8_spanish_ci DEFAULT '''A''',
  `hca_ocassion_laborday` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `__JSON__` varchar(1) COLLATE utf8_spanish_ci DEFAULT '1',
  `hca_ocassion_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"supervisor":[], "role":[]}',
  `hca_ocassion_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"client":[], "queue":[], "service":[], "campaign":[]}',
  `hca_ocassion_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"calendar":[], "schedule":[], "scheduleday":[], "schedulehours":[]}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HcaQueue`
--

DROP TABLE IF EXISTS `HcaQueue`;
CREATE TABLE `HcaQueue` (
  `hca_queue_serial_id` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `hca_queue_origin` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_queue_date` date DEFAULT NULL,
  `hca_queue_start` time DEFAULT NULL,
  `hca_queue_id` int(10) DEFAULT NULL,
  `hca_queue_number` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_queue_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hca_queue_status` varchar(10) COLLATE utf8_spanish_ci DEFAULT '''A''',
  `__JSON__` int(1) DEFAULT 1,
  `hca_queue_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"client":[], "service":[]}',
  `hca_queue_system_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"scale":[]}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvAgent`
--

DROP TABLE IF EXISTS `InvAgent`;
CREATE TABLE `InvAgent` (
  `inv_agent_id` int(10) NOT NULL,
  `inv_agent_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_agent_chk` int(10) DEFAULT 1,
  `inv_agent_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_agent_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_agent_extension` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `inv_agent_legal_id` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `inv_agent_internal_id` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `inv_agent_type` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `__JSON__` int(1) DEFAULT NULL,
  `inv_agent_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"supervisor":[], "role":[]}',
  `inv_agent_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '	{"client":[], "queue":[], "service":[], "campaign":[]}',
  `inv_agent_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"calendar":[], "schedule":[]}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvAgentRole`
--

DROP TABLE IF EXISTS `InvAgentRole`;
CREATE TABLE `InvAgentRole` (
  `inv_agentrole_id` int(10) NOT NULL,
  `inv_agentrole_name` varchar(100) DEFAULT NULL,
  `inv_agentrole_status` varchar(1) DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `InvAgentRole`
--

INSERT INTO `InvAgentRole` (`inv_agentrole_id`, `inv_agentrole_name`, `inv_agentrole_status`) VALUES
(1, 'Agente', 'A'),
(2, 'Medico', 'A'),
(3, 'Gerente', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvBreak`
--

DROP TABLE IF EXISTS `InvBreak`;
CREATE TABLE `InvBreak` (
  `inv_break_id` int(10) NOT NULL,
  `inv_break_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'A',
  `inv_break_chk` int(1) DEFAULT 1,
  `inv_break_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_break_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_break_codename` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_break_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_break_type` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_break_productivity` int(11) DEFAULT 0,
  `inv_break_class` varchar(20) GENERATED ALWAYS AS (if(`inv_break_productivity` = 1,'Asignacion','Auxiliar')) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvCalendar`
--

DROP TABLE IF EXISTS `InvCalendar`;
CREATE TABLE `InvCalendar` (
  `inv_calendar_id` int(10) NOT NULL,
  `inv_calendar_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_calendar_type` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_calendar_status` varchar(11) COLLATE utf8_spanish_ci DEFAULT 'A',
  `inv_calendar_chk` int(100) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `InvCalendar`
--

INSERT INTO `InvCalendar` (`inv_calendar_id`, `inv_calendar_name`, `inv_calendar_type`, `inv_calendar_status`, `inv_calendar_chk`) VALUES
(1, 'Feriados Venezuela', 'Feriados', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvCalendarDay`
--

DROP TABLE IF EXISTS `InvCalendarDay`;
CREATE TABLE `InvCalendarDay` (
  `inv_calendarday_id` int(10) NOT NULL,
  `inv_calendar_id` int(11) DEFAULT NULL,
  `inv_calendarday_status` varchar(1) COLLATE utf8_spanish_ci DEFAULT 'A',
  `inv_calendarday_date` date DEFAULT NULL,
  `inv_calendarday_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_calendarday_type` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `InvCalendarDay`
--

INSERT INTO `InvCalendarDay` (`inv_calendarday_id`, `inv_calendar_id`, `inv_calendarday_status`, `inv_calendarday_date`, `inv_calendarday_name`, `inv_calendarday_type`) VALUES
(1, 1, 'A', '2019-01-01', 'Año Nuevo', 'Feriado Nacional'),
(2, 1, 'A', '2019-03-04', 'Carnaval', 'Feriado Nacional'),
(3, 1, 'A', '2019-03-05', 'Carnaval', 'Feriado Nacional'),
(4, 1, 'A', '2019-04-18', 'Jueves Santo', 'Feriado Nacional'),
(5, 1, 'A', '2019-04-19', 'Viernes Santo/Declaración de la Independencia', 'Feriado Nacional'),
(6, 1, 'A', '2019-05-01', 'Día del Trabajo', 'Feriado Nacional'),
(7, 1, 'A', '2019-06-24', 'Batalla de Carabobo', 'Feriado Nacional'),
(8, 1, 'A', '2019-07-05', 'Dí­a de la Independencia', 'Feriado Nacional'),
(9, 1, 'A', '2019-07-24', 'Día de Simón Bolívar', 'Feriado Nacional'),
(10, 1, 'A', '2019-12-10', 'Día de la Resistencia Indígena', 'Feriado Nacional'),
(11, 1, 'A', '2019-12-24', 'Víspera de Navidad', 'Feriado Nacional'),
(12, 1, 'A', '2019-12-25', 'Navidad', 'Feriado Nacional'),
(13, 1, 'A', '2019-12-31', 'Fiesta de Fin de Año', 'Feriado Nacional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvCampaign`
--

DROP TABLE IF EXISTS `InvCampaign`;
CREATE TABLE `InvCampaign` (
  `inv_campaign_id` int(10) NOT NULL,
  `inv_campaign_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_campaign_chk` int(10) DEFAULT NULL,
  `inv_campaign_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_campaign_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_campaign_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_campaign_queue_id` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_campaign_queue_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_campaign_queue_number` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_campaign_aftercall_time` int(10) DEFAULT NULL,
  `inv_campaign_start_date` date DEFAULT NULL,
  `inv_campaign_end_date` date DEFAULT NULL,
  `inv_campaign_start_time` time DEFAULT NULL,
  `inv_campaign_end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvClient`
--

DROP TABLE IF EXISTS `InvClient`;
CREATE TABLE `InvClient` (
  `inv_client_id` int(10) NOT NULL,
  `inv_client_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_client_chk` int(10) DEFAULT NULL,
  `inv_client_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_client_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_client_type` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `InvClient`
--

INSERT INTO `InvClient` (`inv_client_id`, `inv_client_status`, `inv_client_chk`, `inv_client_name`, `inv_client_shortname`, `inv_client_type`) VALUES
(1, 'A', 1, 'Digitel', 'Digitel', 'Normal'),
(2, 'A', 1, 'Ubiipagos', 'Ubiipagos', 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvQueue`
--

DROP TABLE IF EXISTS `InvQueue`;
CREATE TABLE `InvQueue` (
  `inv_queue_id` int(10) NOT NULL,
  `inv_queue_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_chk` int(10) DEFAULT NULL,
  `inv_queue_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_number` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_type` varchar(50) GENERATED ALWAYS AS (if(substr(`inv_queue_number`,1,1) = 9,'automatic','inbound')) STORED,
  `__JSON__` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"client":[], "service":[]}',
  `inv_queue_system_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT '{"scale":[]}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvQueueConfig`
--

DROP TABLE IF EXISTS `InvQueueConfig`;
CREATE TABLE `InvQueueConfig` (
  `queueconfig_extension` varchar(20) NOT NULL DEFAULT '',
  `queueconfig_descr` varchar(35) NOT NULL DEFAULT '',
  `queueconfig_grppre` varchar(100) NOT NULL DEFAULT '',
  `queueconfig_alertinfo` varchar(254) NOT NULL DEFAULT '',
  `queueconfig_ringing` tinyint(1) NOT NULL DEFAULT 0,
  `queueconfig_maxwait` varchar(8) NOT NULL DEFAULT '',
  `queueconfig_password` varchar(20) NOT NULL DEFAULT '',
  `queueconfig_ivr_id` varchar(8) NOT NULL DEFAULT '0',
  `queueconfig_dest` varchar(50) NOT NULL DEFAULT '',
  `queueconfig_cwignore` tinyint(1) NOT NULL DEFAULT 0,
  `queueconfig_qregex` varchar(255) DEFAULT NULL,
  `queueconfig_agentannounce_id` int(11) DEFAULT NULL,
  `queueconfig_joinannounce_id` int(11) DEFAULT NULL,
  `queueconfig_queuewait` tinyint(1) DEFAULT 0,
  `queueconfig_use_queue_context` tinyint(1) DEFAULT 0,
  `queueconfig_togglehint` tinyint(1) DEFAULT 0,
  `queueconfig_qnoanswer` tinyint(1) DEFAULT 0,
  `queueconfig_callconfirm` tinyint(1) DEFAULT 0,
  `queueconfig_callconfirm_id` int(11) DEFAULT NULL,
  `queueconfig_monitor_type` varchar(5) DEFAULT NULL,
  `queueconfig_monitor_heard` int(11) DEFAULT NULL,
  `queueconfig_monitor_spoken` int(11) DEFAULT NULL,
  `queueconfig_callback_id` varchar(8) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `InvQueueConfig`
--

INSERT INTO `InvQueueConfig` (`queueconfig_extension`, `queueconfig_descr`, `queueconfig_grppre`, `queueconfig_alertinfo`, `queueconfig_ringing`, `queueconfig_maxwait`, `queueconfig_password`, `queueconfig_ivr_id`, `queueconfig_dest`, `queueconfig_cwignore`, `queueconfig_qregex`, `queueconfig_agentannounce_id`, `queueconfig_joinannounce_id`, `queueconfig_queuewait`, `queueconfig_use_queue_context`, `queueconfig_togglehint`, `queueconfig_qnoanswer`, `queueconfig_callconfirm`, `queueconfig_callconfirm_id`, `queueconfig_monitor_type`, `queueconfig_monitor_heard`, `queueconfig_monitor_spoken`, `queueconfig_callback_id`) VALUES
('1000', 'Disponible', '', '', 0, '', '0987', 'none', 'app-blackhole,hangup,1', 1, '', 10, 0, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none'),
('2701', 'grupo Ubiipago', '', '', 0, '1800', '', 'none', 'app-blackhole,hangup,1', 1, '', 0, 24, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none'),
('3700', 'sal-marcador', '', '', 0, '', '', 'none', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'none'),
('1001', 'Disponible', ':ASE', '', 0, '', '0987', 'none', 'app-blackhole,hangup,1', 1, '', 11, 0, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none'),
('1007', 'Contingencia', '', '', 0, '', '', 'none', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none'),
('1006', 'Disponible', '', '', 0, '', '0987', 'none', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'none'),
('1003', 'Disponible', ':MAT', '', 0, '', '0987', 'none', 'app-blackhole,hangup,1', 1, '', 9, 0, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none'),
('1005', 'Disponible', '', '', 0, '', '0987', 'none', 'app-blackhole,hangup,1', 1, '', 0, 12, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none'),
('4000', 'Cola APS', '', '', 0, '', '', 'none', '', 1, '', 15, 0, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none'),
('4001', 'Farmacia', '', '', 0, '', '', 'none', '', 1, '', 14, 0, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none'),
('4002', 'VIP', '', '', 0, '', '', 'none', '', 1, '', 16, 0, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none'),
('4003', 'Grupo medico APS', '', '', 0, '', '', 'none', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 'b', 0, 0, 'none');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvScale`
--

DROP TABLE IF EXISTS `InvScale`;
CREATE TABLE `InvScale` (
  `inv_scale_id` int(10) NOT NULL,
  `inv_scale_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_scale_chk` int(10) DEFAULT NULL,
  `inv_scale_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_scale_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_scale_red` int(10) DEFAULT NULL,
  `inv_scale_yellow` int(10) DEFAULT NULL,
  `inv_scale_green` int(10) DEFAULT NULL,
  `inv_scale_blue` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `InvScale`
--

INSERT INTO `InvScale` (`inv_scale_id`, `inv_scale_status`, `inv_scale_chk`, `inv_scale_shortname`, `inv_scale_name`, `inv_scale_red`, `inv_scale_yellow`, `inv_scale_green`, `inv_scale_blue`) VALUES
(1, 'A', NULL, 'Normal', 'Normal', 50, 60, 70, 80),
(2, 'A', NULL, 'Especial', 'Especial', 80, 85, 90, 95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvSchedule`
--

DROP TABLE IF EXISTS `InvSchedule`;
CREATE TABLE `InvSchedule` (
  `inv_schedule_id` int(10) NOT NULL,
  `inv_schedule_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_schedule_chk` int(10) DEFAULT NULL,
  `inv_schedule_type` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_schedule_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_schedule_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_schedule_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `InvSchedule`
--

INSERT INTO `InvSchedule` (`inv_schedule_id`, `inv_schedule_status`, `inv_schedule_chk`, `inv_schedule_type`, `inv_schedule_name`, `inv_schedule_shortname`, `inv_schedule_description`) VALUES
(1, 'A', 1, 'Normal', '8 a 5 lunes a viernes', '8 a 5', 'Horario normal'),
(2, 'A', 1, 'Normal', 'Nocturno', 'Nocturno', 'De noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvScheduleDay`
--

DROP TABLE IF EXISTS `InvScheduleDay`;
CREATE TABLE `InvScheduleDay` (
  `inv_scheduleday_id` int(11) NOT NULL,
  `inv_schedule_id` int(11) DEFAULT NULL,
  `inv_scheduleday_weekday` int(11) DEFAULT NULL,
  `inv_scheduleday_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_scheduleday_start_time` time DEFAULT NULL,
  `inv_scheduleday_end_time` time DEFAULT NULL,
  `inv_scheduleday_legal_break` time DEFAULT NULL,
  `inv_scheduleday_laborday` int(11) DEFAULT NULL,
  `inv_scheduleday_duration` time GENERATED ALWAYS AS (`inv_scheduleday_end_time` - `inv_scheduleday_start_time` - `inv_scheduleday_legal_break`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `InvScheduleDay`
--

INSERT INTO `InvScheduleDay` (`inv_scheduleday_id`, `inv_schedule_id`, `inv_scheduleday_weekday`, `inv_scheduleday_name`, `inv_scheduleday_start_time`, `inv_scheduleday_end_time`, `inv_scheduleday_legal_break`, `inv_scheduleday_laborday`) VALUES
(1, 1, 1, 'lunes', '08:00:00', '17:00:00', '01:00:00', 1),
(2, 1, 2, 'martes', '08:00:00', '17:00:00', '01:00:00', 1),
(3, 1, 3, 'miércoles', '08:00:00', '17:00:00', '01:00:00', 1),
(4, 1, 4, 'jueves', '08:00:00', '17:00:00', '01:00:00', 1),
(5, 1, 5, 'viernes', '08:00:00', '17:00:00', '01:00:00', 1),
(6, 1, 6, 'sábado', NULL, NULL, NULL, 0),
(7, 1, 7, 'domingo', NULL, NULL, NULL, 0),
(8, 2, 1, 'lunes', '18:00:00', '01:00:00', '01:00:00', 1),
(9, 2, 2, 'martes', '18:00:00', '01:00:00', '01:00:00', 1),
(10, 2, 3, 'miércoles', '18:00:00', '01:00:00', '01:00:00', 1),
(11, 2, 4, 'jueves', '18:00:00', '01:00:00', '01:00:00', 1),
(12, 2, 5, 'viernes', '18:00:00', '01:00:00', '01:00:00', 1),
(13, 2, 6, 'sábado', NULL, NULL, NULL, 0),
(14, 2, 7, 'domingo', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvService`
--

DROP TABLE IF EXISTS `InvService`;
CREATE TABLE `InvService` (
  `inv_service_id` int(10) NOT NULL,
  `inv_service_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_service_chk` int(10) DEFAULT NULL,
  `inv_service_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_service_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_service_type` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_service_use` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `InvService`
--

INSERT INTO `InvService` (`inv_service_id`, `inv_service_status`, `inv_service_chk`, `inv_service_name`, `inv_service_shortname`, `inv_service_type`, `inv_service_use`) VALUES
(1, 'A', 1, 'Información', 'info', 'A', 'Información'),
(2, 'A', 1, 'Reclamos', 'Reclamos', 'Normal', 'Información');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvSms`
--

DROP TABLE IF EXISTS `InvSms`;
CREATE TABLE `InvSms` (
  `inv_sms_id` int(10) NOT NULL,
  `inv_sms_date` date DEFAULT NULL,
  `inv_sms_time` time DEFAULT NULL,
  `inv_sms_msg` varchar(140) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_sms_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_sms_chk` int(10) DEFAULT NULL,
  `inv_sms_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `InvSms`
--

INSERT INTO `InvSms` (`inv_sms_id`, `inv_sms_date`, `inv_sms_time`, `inv_sms_msg`, `inv_sms_status`, `inv_sms_chk`, `inv_sms_name`) VALUES
(1, '2019-07-20', '08:47:00', 'Todo perfecto', 'A', NULL, 'Regular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `InvSupervisor`
--

DROP TABLE IF EXISTS `InvSupervisor`;
CREATE TABLE `InvSupervisor` (
  `inv_supervisor_id` int(10) NOT NULL,
  `inv_supervisor_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_supervisor_chk` int(10) DEFAULT NULL,
  `inv_supervisor_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_supervisor_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_supervisor_legal_id` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `inv_supervisor_internal_id` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `__JSON__` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_supervisor_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_supervisor_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_supervisor_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `InvSupervisor`
--

INSERT INTO `InvSupervisor` (`inv_supervisor_id`, `inv_supervisor_status`, `inv_supervisor_chk`, `inv_supervisor_name`, `inv_supervisor_shortname`, `inv_supervisor_legal_id`, `inv_supervisor_internal_id`, `__JSON__`, `inv_supervisor_people_json`, `inv_supervisor_operation_json`, `inv_supervisor_time_json`) VALUES
(1, 'A', 1, 'Leo Bolívar', 'Leonardo Bolívar', '123456789', 'ABC', NULL, '{\"supervisor\":[{\"id\":1,\"name\":\"Leo Bolívar\"}],\"agent\":[],\"role\":[],\"type\":{\"id\":1,\"name\":\"Activo\"}}', '{\"campaign\":null,\"client\":[{\"id\":1,\"name\":\"Digitel\"}],\"queue\":[{\"id\":8,\"name\":\"1001 - Disponible\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}'),
(2, 'A', 1, 'Jorge Barrero', 'Jorge Barrero', '987654321', 'XYZ', NULL, '{\"agent\":[],\"supervisor\":[],\"role\":[],\"type\":{\"id\":1,\"name\":\"Activo\"}}', '{\"queue\":[{\"id\":2,\"name\":\"4000 - Cola APS\"}],\"client\":[{\"id\":1,\"name\":\"Digitel\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}],\"campaign\":[]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}'),
(3, 'A', 1, 'Luis Garcia', 'Luis Garcia', '555555', 'MNO', NULL, '{\"supervisor\":[{\"id\":3,\"name\":\"Luis Garcia\"}],\"agent\":[],\"role\":[],\"type\":{\"id\":1,\"name\":\"Activo\"}}', '{\"campaign\":null,\"client\":[{\"id\":1,\"name\":\"Digitel\"}],\"queue\":[{\"id\":7,\"name\":\"1000 - Disponible\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}'),
(10, 'I', 1, 'Juan', 'Perez', '123456', '123456', NULL, '{\"agent\":[],\"supervisor\":[],\"role\":[],\"type\":{\"id\":1,\"name\":\"Activo\"}}', '{\"queue\":[{\"id\":2,\"name\":\"4000 - Cola APS\"}],\"client\":[{\"id\":1,\"name\":\"Digitel\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}],\"campaign\":[]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}'),
(12, 'A', 1, 'pedro', 'peres', '34245', '43532', NULL, '{\"supervisor\":[{\"id\":12,\"name\":\"pedro\"}],\"agent\":[],\"role\":[],\"type\":{\"id\":1,\"name\":\"Activo\"}}', '{\"campaign\":null,\"client\":[{\"id\":1,\"name\":\"Digitel\"}],\"queue\":[{\"id\":8,\"name\":\"1001 - Disponible\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}'),
(13, 'A', 1, 'Luis', 'Caceres', '7897878', '545454', NULL, '{\"supervisor\":[{\"id\":13,\"name\":\"Luis\"}],\"agent\":[],\"role\":[],\"type\":{\"id\":2,\"name\":\"Esporádico\"}}', '{\"campaign\":\"[]\",\"client\":[{\"id\":1,\"name\":\"Digitel\"}],\"queue\":[{\"id\":7,\"name\":\"1000 - Disponible\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}'),
(14, 'A', 1, 'afdsa', 'asdfasd', 'adsfasd', 'asdfasd', NULL, '{\"supervisor\":[{\"id\":14,\"name\":\"afdsa\"}],\"agent\":[],\"role\":[],\"type\":{\"id\":2,\"name\":\"Esporádico\"}}', '{\"campaign\":\"[]\",\"client\":[{\"id\":1,\"name\":\"Digitel\"}],\"queue\":[{\"id\":8,\"name\":\"1001 - Disponible\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}'),
(15, 'A', 1, '2314223', '124312341', '2431234', '1243123', NULL, '{\"supervisor\":[{\"id\":15,\"name\":\"2314223\"}],\"agent\":[],\"role\":[],\"type\":{\"id\":2,\"name\":\"Esporádico\"}}', '{\"campaign\":\"[]\",\"client\":[{\"id\":1,\"name\":\"Digitel\"},{\"id\":2,\"name\":\"Ubiipagos\"}],\"queue\":[{\"id\":9,\"name\":\"1005 - Disponible\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}'),
(16, 'A', 1, '1243123', '1234123', '14323', '1431243', NULL, '{\"supervisor\":[{\"id\":0,\"name\":\"1243123\"}],\"agent\":[],\"role\":[],\"type\":{\"id\":1,\"name\":\"Activo\"}}', '{\"campaign\":\"[]\",\"client\":[{\"id\":1,\"name\":\"Digitel\"}],\"queue\":[{\"id\":9,\"name\":\"1005 - Disponible\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}'),
(17, 'A', 1, '1243', '12431', '243', '1243', NULL, '{\"supervisor\":[{\"id\":0,\"name\":\"1243\"}],\"agent\":[],\"role\":[],\"type\":{\"id\":1,\"name\":\"Activo\"}}', '{\"campaign\":\"[]\",\"client\":[{\"id\":1,\"name\":\"Digitel\"}],\"queue\":[{\"id\":9,\"name\":\"1005 - Disponible\"}],\"service\":[{\"id\":1,\"name\":\"Información\"}]}', '{\"calendar\":[],\"schedule\":{\"id\":1,\"name\":\"8 a 5 lunes a viernes\"},\"scheduledays\":[],\"schedulehours\":[]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LocalInvAgent`
--

DROP TABLE IF EXISTS `LocalInvAgent`;
CREATE TABLE `LocalInvAgent` (
  `inv_agent_id` int(10) NOT NULL,
  `inv_agent_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_agent_chk` int(10) DEFAULT 1,
  `inv_agent_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_agent_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_agent_extension` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `inv_agent_legal_id` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `inv_agent_internal_id` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `inv_agent_type` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `inv_agent_supervisor_json` varchar(600) COLLATE utf8_spanish_ci DEFAULT '[]',
  `inv_agent_schedule_json` varchar(600) COLLATE utf8_spanish_ci DEFAULT '[]',
  `inv_agent_client_json` varchar(600) COLLATE utf8_spanish_ci DEFAULT '[]',
  `inv_agent_queue_json` varchar(600) COLLATE utf8_spanish_ci DEFAULT '[]',
  `inv_agent_service_json` varchar(600) COLLATE utf8_spanish_ci DEFAULT '[]',
  `inv_agent_campaign_json` varchar(600) COLLATE utf8_spanish_ci DEFAULT '[]',
  `inv_agent_role_json` varchar(600) COLLATE utf8_spanish_ci DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `LocalInvAgent`
--

INSERT INTO `LocalInvAgent` (`inv_agent_id`, `inv_agent_status`, `inv_agent_chk`, `inv_agent_name`, `inv_agent_shortname`, `inv_agent_extension`, `inv_agent_legal_id`, `inv_agent_internal_id`, `inv_agent_type`, `inv_agent_supervisor_json`, `inv_agent_schedule_json`, `inv_agent_client_json`, `inv_agent_queue_json`, `inv_agent_service_json`, `inv_agent_campaign_json`, `inv_agent_role_json`) VALUES
(130, 'A', 1, '269 Contingencia 1', '269 Contingencia 1', '269', 'NULL', 'NULL', 'SIP', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(131, 'A', 1, '281 Contingencia 2', '281 Contingencia 2', '281', 'NULL', 'NULL', 'SIP', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(132, 'A', 1, '268 Contingencia 3', '268 Contingencia 3', '268', 'NULL', 'NULL', 'SIP', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(133, 'A', 1, '273 Contingencia 4', '273 Contingencia 4', '273', 'NULL', 'NULL', 'SIP', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(134, 'A', 1, '276 Contingencia 5', '276 Contingencia 5', '276', 'NULL', 'NULL', 'SIP', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(135, 'A', 1, '279 Contingencia 6', '279 Contingencia 6', '279', 'NULL', 'NULL', 'SIP', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(150, 'A', 1, 'Melanie Jauregui', 'Melanie Jauregui', '103', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(151, 'A', 1, 'Lexca Vale', 'Lexca Vale', '104', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(152, 'A', 1, 'Yeimilin Gutierrez', 'Yeimilin Gutierrez', '105', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(153, 'A', 1, '106 Maria Manjarres', '106 Maria Manjarres', '106', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(154, 'A', 1, 'Josseph Idler', 'Josseph Idler', '107', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(155, 'A', 1, 'Edward Lopez', 'Edward Lopez', '108', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(156, 'A', 1, 'Luber Gonzalez', 'Luber Gonzalez', '109', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(157, 'A', 1, 'Ligth Castro', 'Ligth Castro', '110', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(158, 'A', 1, 'Alirio Bompart', 'Alirio Bompart', '111', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(159, 'A', 1, 'Carlos Tovar', 'Carlos Tovar', '112', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(160, 'A', 1, 'Maria Estrella', 'Maria Estrella', '113', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(161, 'A', 1, 'Marianni Chacon', 'Marianni Chacon', '114', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(162, 'A', 1, 'Gilmer Landa', 'Gilmer Landa', '115', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(163, 'A', 1, 'Leyneth Pinango', 'Leyneth Pinango', '116', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(164, 'A', 1, 'Madelin Bertel', 'Madelin Bertel', '117', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(165, 'A', 1, 'Jesus Ruiz', 'Jesus Ruiz', '118', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(166, 'A', 1, 'Harly Estivenson', 'Ively Diaz', '119', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(167, 'A', 1, 'Jose Rodriguez', 'Jose Rodriguez', '120', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(168, 'A', 1, '121 Ana Mogrezutt', '121 Ana Mogrezutt', '121', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(169, 'A', 1, 'Marianny Vasquez', 'Sheila Cassiani', '122', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(170, 'A', 1, 'Alfred Arrieta', 'Alfred Arrieta', '123', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(172, 'A', 1, 'Laura Lanz', 'Laura Lanz', '125', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(173, 'A', 1, 'Kerling Chacin', 'Kerling Chacin', '126', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(174, 'A', 1, 'Isara Inojosa', 'Isara Inojosa', '127', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(175, 'A', 1, 'Maria Mosquera', 'Maria Mosquera', '128', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(176, 'A', 1, 'Lorena Morales', 'Lorena Morales', '129', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(177, 'A', 1, '130 Benny Flores', '130 Benny Flores', '130', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(180, 'A', 1, '291 Derwin Pena', '291 Derwin Pena', '291', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(185, 'A', 1, '294  Eduardo Gonzalez', '294  Eduardo Gonzalez', '294', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(187, 'A', 1, 'Beiker Villamizar', 'Beiker Villamizar', '210', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(199, 'A', 1, '290 Alpha Cabezas', '290 Alpha Cabezas', '290', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(203, 'A', 1, 'Rebeca Bolivar', 'Rebeca Bolivar', '124', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(217, 'A', 1, '252 Yuscarly Contreras', '252 Yuscarly Contreras', '252', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(218, 'A', 1, 'Jose Rangel', 'Jose Rangel', '192', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(219, 'A', 1, '131 Ricardo Ordenez', '131 Ricardo Ordenez', '131', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(220, 'A', 1, 'Juan Vasquez', 'Juan Vasquez', '132', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(221, 'A', 1, 'Cristina Paredes', 'Cristina Paredes', '133', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(222, 'A', 1, 'Karelys Quevedo', 'Karelys Quevedo', '134', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(223, 'A', 1, 'Kevin Garcia', 'Kevin Garcia', '135', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(224, 'A', 1, 'Jheiffer Borges', 'Jheiffer Borges', '136', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(225, 'A', 1, 'Joel Raimondi', 'Joel Raimondi', '137', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(226, 'A', 1, 'Jorge Carrillo', 'Jorge Carrillo', '138', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(227, 'A', 1, 'Julio Uzcategui', 'Julio Uzcategui', '139', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(228, 'A', 1, 'Marielsy Diaz', 'Marielsy Diaz', '140', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(229, 'A', 1, 'Hillary Castro', 'Hillary Castro', '142', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(230, 'A', 1, 'Edgar Chirinos', 'Edgar Chirinos', '143', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(231, 'A', 1, 'Madeline Sanchez', 'Madeline Sanchez', '144', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(232, 'A', 1, 'Mariant Garcia', 'Hilary Marcano', '145', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(233, 'A', 1, 'Christhoper Benavente', 'Christhoper Benavente', '146', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(234, 'A', 1, '100 Brush Bravo', '100 Brush Bravo', '100', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(235, 'A', 1, 'Jesus Azuaje', 'Jesus Azuaje', '147', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(236, 'A', 1, 'Francisco Ayala', 'Francisco Ayala', '903', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(237, 'A', 1, 'Sup Eduardo Taberoa', 'Sup Eduardo Taberoa', '905', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(238, 'A', 1, 'Sup Josbelin Taberoa', 'Sup Josbelin Taberoa', '906', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(240, 'A', 1, 'Luciana Sarabia', 'Luciana Sarabia', '208', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(241, 'A', 1, 'Jisuel Aponte', 'Jisuel Aponte', '148', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(242, 'A', 1, 'Kelvin Garcia', 'Kelvin Garcia', '149', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(243, 'A', 1, 'Luis Arvelaez', 'Luis Arvelaez', '150', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(244, 'A', 1, 'Winderly Tello', 'Winderly Tello', '151', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(245, 'A', 1, 'Daniela Bentacourt', 'Daniela Bentacourt', '152', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(246, 'A', 1, 'Jose Tovar', 'Jose Tovar', '153', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(247, 'A', 1, 'Sheyla Fernandez', 'Sheyla Fernandez', '154', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(248, 'A', 1, 'Marcos Torres', 'Marcos Torres', '155', 'NULL', 'NULL', 'Agent', '[{\"id\": 1, \"name\": \"Jorge\"}]', '[]', '[]', '[]', '[]', '[]', '[]'),
(249, 'A', 1, 'Keila Gonzalez', 'Keila Gonzalez', '156', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(250, 'A', 1, 'Yimer Machado', 'Yimer Machado', '157', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(251, 'A', 1, 'Salvador Hernandez', 'Salvador Hernandez', '158', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(252, 'A', 1, '159 Anyela Castillo', '159 Anyela Castillo', '159', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(253, 'A', 1, 'Sup Reinaldo Mendoza', 'Sup Reinaldo Mendoza', '907', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(254, 'A', 1, 'Alejandro Martinez', 'Alejandro Martinez', '160', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(255, 'A', 1, 'Yudithmar Rios', 'Yudithmar Rios', '162', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(257, 'A', 1, '300 Rizabeth Sanchez', '300 Rizabeth Sanchez', '300', 'NULL', 'NULL', 'Agent', '[{\"id\": 3, \"name\": \"Luis\"}]', '[]', '[]', '[]', '[]', '[]', '[]'),
(258, 'A', 1, '301 Genisis Bracho', '301 Genisis Bracho', '301', 'NULL', 'NULL', 'Agent', '[{\"id\": 2, \"name\": \"Leonardo\"}]', '[]', '[]', '[]', '[]', '[]', '[]'),
(259, 'A', 1, 'Jenifer Gil', 'Jenifer Gil', '141', 'NULL', 'NULL', 'Agent', '[{\"id\": 2, \"name\": \"Leonardo\"}]', '[]', '[]', '[]', '[]', '[]', '[]'),
(260, 'A', 1, '219 Alaim Yanez', '219 Alaim Yanez', '219', 'NULL', 'NULL', 'Agent', '[{\"id\": 2, \"name\": \"Leonardo\"}]', '[]', '[]', '[]', '[]', '[]', '[]'),
(261, 'A', 1, 'Jeshuar Quintero', 'Jeshuar Quintero', '102', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(269, 'A', 1, 'Contingencia3', 'Contingencia3', '401', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(270, 'A', 1, 'Contingencia1', 'Contingencia1', '402', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(271, 'A', 1, 'Contingencia4', 'Contingencia4', '403', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(272, 'A', 1, 'Contingencia5', 'Contingencia5', '404', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(273, 'A', 1, 'Contingencia6', 'Contingencia6', '405', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(274, 'A', 1, 'Contingencia2', 'Contingencia2', '406', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(275, 'A', 1, 'Juan Sostillo', 'Juan Sostillo', '163', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(276, 'A', 1, 'Jorge Figuera', 'Jorge Figuera', '164', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(277, 'A', 1, 'Yoleiska Flores', 'Yoleiska Flores', '165', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(278, 'A', 1, 'Albert Delgado', 'Albert Delgado', '166', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(279, 'A', 1, 'Desiree Perdomo', 'Desiree Perdomo', '167', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(280, 'A', 1, 'Greysi Leon', 'Greysi Leon', '168', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(281, 'A', 1, 'Madelin Bertel', 'Madelin Bertel', '169', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(282, 'A', 1, 'Manuel Ramirez', 'Manuel Ramirez', '170', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(283, 'A', 1, 'Ana Castro', 'Ana Castro', '171', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(284, 'A', 1, 'Ronaiker Urbina', 'Ronaiker Urbina', '172', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(285, 'A', 1, 'Aurelis Serrada', 'Aurelis Serrada', '173', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(286, 'A', 1, 'Johelismar Berbin', 'Johelismar Berbin', '174', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(287, 'A', 1, 'Karla Silveira', 'Karla Silveira', '175', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(288, 'A', 1, 'Luis Corales', 'Luis Corales', '176', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(289, 'A', 1, 'Eliana Fernadez', 'Eliana Fernadez', '177', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(290, 'A', 1, 'Yudithmar Rios', 'Yudithmar Rios', '178', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(291, 'A', 1, 'Dayerson Hernandez', 'Dayerson Hernandez', '179', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(292, 'A', 1, 'Emmanuel Varani', 'Emmanuel Varani', '180', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(293, 'A', 1, 'Gabriela Kleivimar', 'Gabriela Kleivimar', '181', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(294, 'A', 1, 'Joselyn Avila', 'Joselyn Avila', '161', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(295, 'A', 1, 'Ively Diaz', 'Ively Diaz', '182', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(296, 'A', 1, 'Jisuel Aponte', 'Jisuel Aponte', '183', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(297, 'A', 1, 'Francheska Palao', 'Francheska Palao', '184', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]'),
(298, 'A', 1, 'Oscar Bravo', 'Oscar Bravo', '185', 'NULL', 'NULL', 'Agent', '[]', '[]', '[]', '[]', '[]', '[]', '[]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LocalInvBreak`
--

DROP TABLE IF EXISTS `LocalInvBreak`;
CREATE TABLE `LocalInvBreak` (
  `inv_break_id` int(10) NOT NULL,
  `inv_break_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT 'A',
  `inv_break_chk` int(1) DEFAULT 1,
  `inv_break_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_break_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_break_description` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_break_type` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_break_productivity` int(11) DEFAULT 0,
  `inv_break_class` varchar(20) GENERATED ALWAYS AS (if(`inv_break_productivity` = 1,'Asignacion','Auxiliar')) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `LocalInvBreak`
--

INSERT INTO `LocalInvBreak` (`inv_break_id`, `inv_break_status`, `inv_break_chk`, `inv_break_name`, `inv_break_shortname`, `inv_break_description`, `inv_break_type`, `inv_break_productivity`) VALUES
(1, 'A', 1, 'Hold', 'Hold', 'Hold', 'H', 0),
(2, 'A', 1, 'Baño', 'Baño', 'Tiempo de uso del baÃ±o', 'B', 0),
(3, 'A', 1, 'Descanso', 'Descanso', 'Tiempo de descanso', 'B', 0),
(4, 'A', 1, 'Reunion', 'Reunion', 'Tiempo de reunion', 'B', 0),
(5, 'A', 1, 'Curso', 'Curso', 'Tiempo para cursos', 'B', 0),
(6, 'A', 1, 'Llamada saliente', 'Llamada saliente', 'Haciendo llamada manual', 'B', 1),
(7, 'A', 1, 'Gestion redes sociales', 'Gestion redes sociales', 'Gestion redes sociales', 'B', 1),
(8, 'A', 1, 'Feedback de calidad', 'Feedback de calidad', 'Auxiliar utilizado para feedbacks por parte del departamento de calidad.', 'B', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LocalInvQueue`
--

DROP TABLE IF EXISTS `LocalInvQueue`;
CREATE TABLE `LocalInvQueue` (
  `inv_queue_id` int(10) NOT NULL,
  `inv_queue_status` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_chk` int(10) DEFAULT NULL,
  `inv_queue_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_shortname` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_number` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_scale_json` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_client_json` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inv_queue_service_json` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `LocalInvQueue`
--

INSERT INTO `LocalInvQueue` (`inv_queue_id`, `inv_queue_status`, `inv_queue_chk`, `inv_queue_name`, `inv_queue_shortname`, `inv_queue_number`, `inv_queue_scale_json`, `inv_queue_client_json`, `inv_queue_service_json`) VALUES
(1, 'A', NULL, NULL, NULL, '1004', NULL, NULL, NULL),
(3, 'A', NULL, NULL, NULL, '7000', NULL, NULL, NULL),
(4, 'A', NULL, NULL, NULL, '7001', NULL, NULL, NULL),
(7, 'A', 1, 'Disponible', 'Disponible', '1000', NULL, NULL, NULL),
(8, 'A', 1, 'Disponible', 'Disponible', '1001', NULL, NULL, NULL),
(9, 'A', 1, 'Disponible', 'Disponible', '1005', NULL, NULL, NULL),
(10, 'A', 1, 'Disponible', 'Disponible', '1003', NULL, NULL, NULL),
(11, 'A', NULL, NULL, NULL, '5000', NULL, NULL, NULL),
(12, 'A', NULL, NULL, NULL, '1700', NULL, NULL, NULL),
(13, 'A', NULL, NULL, NULL, '2700', NULL, NULL, NULL),
(14, 'A', 1, 'sal-marcador', 'sal-marcador', '3700', NULL, NULL, NULL),
(15, 'A', 1, 'grupo Ubiipago', 'grupo Ubiipago', '2701', NULL, '[{\"id\": 2, \"name\": \"UBIPAGO\"}]', '[{\"id\": 5, \"name\": \"SERVICIOS\"}]'),
(16, 'A', 1, 'Disponible', 'Disponible', '1006', NULL, NULL, NULL),
(17, 'A', 1, 'Contingencia', 'Contingencia', '1007', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MainAudit`
--

DROP TABLE IF EXISTS `MainAudit`;
CREATE TABLE `MainAudit` (
  `audit_id` int(10) NOT NULL,
  `audit_agent_id` int(10) DEFAULT NULL,
  `audit_break_id` int(10) DEFAULT NULL,
  `audit_datetime_init` datetime DEFAULT NULL,
  `audit_datetime_end` timestamp NULL DEFAULT NULL,
  `audit_duration` time DEFAULT NULL,
  `audit_ext_parked` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__TIME__` int(10) DEFAULT NULL,
  `audit_duration_sec` int(10) DEFAULT NULL,
  `audit_status` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `audit_date` date GENERATED ALWAYS AS (`audit_datetime_init`) STORED,
  `__HCA__` int(10) DEFAULT NULL,
  `audit_hca_agent_serial_id` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__JSON__` int(10) DEFAULT NULL,
  `audit_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `audit_operation_json` varchar(175) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT '{"client":[], "queue":[], "service":[], "campaign":[]}',
  `audit_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MainCallEntry`
--

DROP TABLE IF EXISTS `MainCallEntry`;
CREATE TABLE `MainCallEntry` (
  `callentry_id` int(10) UNSIGNED NOT NULL,
  `callentry_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `callentry_queue_id` int(10) UNSIGNED NOT NULL,
  `callentry_contact_id` int(10) UNSIGNED DEFAULT NULL,
  `callentry_callerid` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `callentry_datetime_init` datetime DEFAULT NULL,
  `callentry_datetime_end` datetime DEFAULT NULL,
  `callentry_duration_sec` int(10) UNSIGNED DEFAULT NULL,
  `callentry_status` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `callentry_transfer` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `callentry_datetime_entry_queue` datetime DEFAULT NULL,
  `callentry_duration_sec_wait` int(11) DEFAULT NULL,
  `callentry_uniqueid` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `callentry_campaign_id` int(10) UNSIGNED DEFAULT NULL,
  `callentry_trunk` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `callentry_date` date GENERATED ALWAYS AS (`callentry_datetime_entry_queue`) STORED,
  `callentry_queue_time_expired` int(11) DEFAULT NULL,
  `callentry_type` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `callentry_auto_campaign` int(11) DEFAULT NULL,
  `callentry_queue_number` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__QUEUELOG__` int(1) DEFAULT NULL,
  `callentry_who_hung` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `callentry_hung_agent` int(1) DEFAULT NULL,
  `callentry_hung_caller` int(1) DEFAULT NULL,
  `__HCA__` int(10) DEFAULT NULL,
  `callentry_hca_agent_serial_id` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__JSON__` int(11) DEFAULT NULL,
  `callentry_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `callentry_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `callentry_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MainCdr`
--

DROP TABLE IF EXISTS `MainCdr`;
CREATE TABLE `MainCdr` (
  `cdr_id` int(11) UNSIGNED NOT NULL,
  `cdr_calldate` datetime DEFAULT '0000-00-00 00:00:00',
  `cdr_clid` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_src` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_dst` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_dcontext` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_channel` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_dstchannel` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_lastapp` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_lastdata` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_duration_sec` int(11) DEFAULT 0,
  `cdr_billsec_sec` int(11) DEFAULT 0,
  `cdr_disposition` varchar(45) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_amaflags` int(11) DEFAULT 0,
  `cdr_accountcode` varchar(20) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_uniqueid` varchar(32) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_userfield` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_recordingfile` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_cnum` varchar(40) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_cnam` varchar(40) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_outbound_cnum` varchar(40) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_outbound_cnam` varchar(40) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_dst_cnam` varchar(40) COLLATE utf8_spanish_ci DEFAULT '',
  `cdr_did` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `__CALLCENTER__` int(1) DEFAULT NULL,
  `cdr_callcenter_name` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cdr_call_type` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cdr_call_class` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cdr_agent_extension` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cdr_queue_number` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cdr_agent_id` int(11) DEFAULT NULL,
  `cdr_queue_id` int(1) DEFAULT NULL,
  `__DATE__` int(1) DEFAULT NULL,
  `cdr_date` date GENERATED ALWAYS AS (`cdr_calldate`) STORED,
  `__HCA__` int(1) DEFAULT NULL,
  `cdr_hca_agent_serial_id` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cdr_hca_queue_serial_id` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__MADE__` int(11) DEFAULT NULL,
  `cdr_call_made` int(11) DEFAULT NULL,
  `cdr_call_fail` int(11) DEFAULT NULL,
  `cdr_call_answered` int(11) DEFAULT NULL,
  `cdr_call_efective` int(11) DEFAULT NULL,
  `cdr_call_hungout` int(11) DEFAULT NULL,
  `__JSON__` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cdr_agent_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cdr_agent_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cdr_agent_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MainQueueLog`
--

DROP TABLE IF EXISTS `MainQueueLog`;
CREATE TABLE `MainQueueLog` (
  `queuelog_id` bigint(255) NOT NULL,
  `queuelog_time` varchar(26) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_uniqueid` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_queuename` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_agent` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_event` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_data` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_data1` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_data2` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_data3` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_data4` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_data5` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `queuelog_created` timestamp NULL DEFAULT NULL,
  `queuelog_date` date GENERATED ALWAYS AS (`queuelog_created`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MainStoredQueries`
--

DROP TABLE IF EXISTS `MainStoredQueries`;
CREATE TABLE `MainStoredQueries` (
  `msq_query_id` int(11) NOT NULL,
  `msq_query_status` varchar(1) DEFAULT 'A',
  `msq_query_chk` int(1) DEFAULT 1,
  `msq_query_name` varchar(50) DEFAULT NULL,
  `msq_query_selection` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `msq_query_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ms_query_rotation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `msq_query_datetime` datetime DEFAULT NULL,
  `msq_query_date` date DEFAULT NULL,
  `msq_query_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RealCurrentAgents`
--

DROP TABLE IF EXISTS `RealCurrentAgents`;
CREATE TABLE `RealCurrentAgents` (
  `rca_audit_login_id` int(11) NOT NULL,
  `rca_audit_logout_id` int(10) DEFAULT NULL,
  `rca_date` date DEFAULT NULL,
  `__AGENT__` int(1) DEFAULT 1,
  `rca_agent_id` int(11) DEFAULT NULL,
  `rca_agent_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rca_agent_datetime_login` datetime DEFAULT NULL,
  `rca_agent_datetime_logout` datetime DEFAULT NULL,
  `rca_agent_duration` time DEFAULT NULL,
  `rca_agent_duration_sec` int(10) DEFAULT NULL,
  `rca_agent_status` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__GROUP__` int(1) DEFAULT 1,
  `rca_group_id` int(11) DEFAULT NULL,
  `rca_group_name` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rca_subgroup_id` int(11) DEFAULT NULL,
  `rca_subgroup_name` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__HCA__` int(10) DEFAULT NULL,
  `rca_hca_agent_serial_id` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__JSON__` int(10) DEFAULT NULL,
  `rca_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rca_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rca_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__RECORD__` int(10) DEFAULT NULL,
  `rca_update_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RealCurrentBreaks`
--

DROP TABLE IF EXISTS `RealCurrentBreaks`;
CREATE TABLE `RealCurrentBreaks` (
  `rcb_break_audit_id` int(10) NOT NULL,
  `rcb_break_agent_id` int(10) DEFAULT NULL,
  `rcb_break_id` int(10) DEFAULT NULL,
  `rcb_break_datetime_init` datetime DEFAULT NULL,
  `rcb_break_datetime_end` datetime DEFAULT NULL,
  `rcb_break_duration` time DEFAULT NULL,
  `rcb_break_duration_sec` int(11) DEFAULT NULL,
  `rcb_break_name` varchar(100) DEFAULT NULL,
  `rcb_break_productivity` int(1) DEFAULT NULL,
  `rcb_date` date GENERATED ALWAYS AS (`rcb_break_datetime_init`) STORED,
  `__HCA__` int(10) DEFAULT NULL,
  `rcb_hca_agent_serial_id` varchar(100) DEFAULT NULL,
  `__JSON__` int(1) DEFAULT NULL,
  `rcb_people_json` varchar(250) DEFAULT NULL,
  `rcb_operation_json` varchar(250) DEFAULT NULL,
  `rcb_time_json` varchar(250) DEFAULT NULL,
  `__RECORD__` int(10) DEFAULT NULL,
  `rcb_update_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RealCurrentCalls`
--

DROP TABLE IF EXISTS `RealCurrentCalls`;
CREATE TABLE `RealCurrentCalls` (
  `rcc_callentry_id` int(10) NOT NULL,
  `rcc_callentry_agent_id` int(10) DEFAULT 0,
  `rcc_callentry_queue_id` int(10) DEFAULT NULL,
  `rcc_callentry_contact_id` int(10) DEFAULT NULL,
  `rcc_callentry_callerid` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rcc_callentry_datetime_init` datetime DEFAULT NULL,
  `rcc_callentry_datetime_end` datetime DEFAULT NULL,
  `rcc_callentry_duration` time DEFAULT NULL,
  `rcc_callentry_duration_sec` int(10) DEFAULT NULL,
  `rcc_callentry_status` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rcc_callentry_transfer` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rcc_callentry_datetime_entry_queue` datetime DEFAULT NULL,
  `rcc_callentry_duration_wait_sec` int(11) DEFAULT NULL,
  `rcc_callentry_uniqueid` varchar(32) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rcc_callentry_campaign_id` int(10) DEFAULT NULL,
  `rcc_callentry_trunk` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rcc_date` date GENERATED ALWAYS AS (cast(`rcc_callentry_datetime_entry_queue` as date)) STORED,
  `__HCA__` int(10) DEFAULT NULL,
  `rcc_hca_agent_serial_id` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__JSON__` int(10) DEFAULT NULL,
  `rcc_people_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rcc_operation_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rcc_time_json` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `__RECORD__` int(10) DEFAULT NULL,
  `rcc_update_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Role`
--

DROP TABLE IF EXISTS `Role`;
CREATE TABLE `Role` (
  `id` int(11) NOT NULL,
  `name` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Role`
--

INSERT INTO `Role` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'admin', 'Administrator', '2019-08-08 20:43:17', '2019-08-08 20:43:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RoleMapping`
--

DROP TABLE IF EXISTS `RoleMapping`;
CREATE TABLE `RoleMapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `principalId` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `RoleMapping`
--

INSERT INTO `RoleMapping` (`id`, `principalType`, `principalId`, `roleId`) VALUES
(1, 'ROLE', '26', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ShowDisplay`
--

DROP TABLE IF EXISTS `ShowDisplay`;
CREATE TABLE `ShowDisplay` (
  `show_display_id` int(10) NOT NULL,
  `show_display_name` varchar(100) DEFAULT NULL,
  `show_display_weekday` varchar(250) DEFAULT '{"weekday":[]}',
  `show_display_start_time` time DEFAULT '00:00:00',
  `show_display_end_time` time DEFAULT '24:00:00',
  `show_display_type` varchar(100) DEFAULT 'NULL',
  `show_display_selection` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '\'{"userSelection":{}}\'',
  `show_display_view` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '{"view": {}}'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ShowDisplay`
--

INSERT INTO `ShowDisplay` (`show_display_id`, `show_display_name`, `show_display_weekday`, `show_display_start_time`, `show_display_end_time`, `show_display_type`, `show_display_selection`, `show_display_view`) VALUES
(1, 'LEONARDO BOLIVAR', '{\"weekday\":[]}', '12:30:00', '24:00:00', NULL, '{ \"title\": \"Display llamadas entrantes\", \"entity_selection\": \"Entity Selection\", \"options\": \"Supervisor:(Leonardo Boluvar)\", \"legend\": \"Hora inicio: 00 AM - Hora fin: 24 PM\", \"login\": { \"id\": 0, \"name\": \"username\", \"profile\": \"profile\" }, \"mode\": { \"id\": 0, \"name\": \"Historic\" }, \"type\": { \"id\": 0, \"name\": \"Ejecutado\" }, \"start_date\": { \"year\": 2019, \"month\": 9, \"day\": 2 }, \"end_date\": { \"year\": 2019, \"month\": 9, \"day\": 2 }, \"start_time\": { \"id\": 0, \"name\": \"00 AM\", \"value\": \"00:00:00\" }, \"end_time\": { \"id\": 0, \"name\": \"24 PM\", \"value\": \"24:00:00\" }, \"auxiliar\": [], \"assignation\": [], \"client\": [], \"queue\": [], \"service\": [], \"campaign\": [], \"supervisor\": [ { \"id\": 1, \"name\": \"Leonardo Boluvar\" } ], \"agent\": [], \"role\": [], \"schedule\": [], \"status\": { \"id\": 0, \"name\": \"Activo\", \"value\": \"A\" }, \"last_minutes\": null, \"interval\": null, \"groupBy\": {}, \"orderBy\": {}, \"limitBy\": {} }\r\n', '\'{\"view\": {}}\'');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `realm` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `username` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Userbase`
--

DROP TABLE IF EXISTS `Userbase`;
CREATE TABLE `Userbase` (
  `id` int(11) NOT NULL,
  `firstname` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `lastname` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `profile` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `realm` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `username` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(512) COLLATE utf8_spanish_ci NOT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) COLLATE utf8_spanish_ci DEFAULT NULL,
  `memberId` int(11) DEFAULT NULL,
  `user_legal_id` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_internal_id` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_photo_path` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Userbase`
--

INSERT INTO `Userbase` (`id`, `firstname`, `lastname`, `profile`, `realm`, `username`, `password`, `email`, `emailVerified`, `verificationToken`, `memberId`, `user_legal_id`, `user_internal_id`, `user_photo_path`) VALUES
(21, 'maprotel', 'maprotel', 'user', NULL, 'maprotel', '$2a$10$1ogjvv6xOcyMvB9L/utswuOad4ttlqFKwFXO/wLeao1HZuaWAGFsK', 'maprotel@maprotel.com', NULL, NULL, NULL, '11', '', NULL),
(22, 'Jorge', 'Barrero', 'admin', NULL, 'jorgebarrero', '$2a$10$9aRtwOFN909STX3av5AnWemXCVabYgIvxCd5kgbWeeoDhAyx2sq56', 'jorgebarrero@gmail.com', NULL, NULL, NULL, '24058992', 'jorgeabarrero', NULL),
(23, 'Carlos', 'Landaeta', 'user', NULL, 'clandaeta', '$2a$10$S38faclimI7Dtl.eOa3IGuZbCDdhkovZvXKOEM4PIrPqHKW8ke6Ti', 'carlos.landaeta@inversionesdrc.com', NULL, NULL, NULL, '16450530', '', NULL),
(24, 'string', 'string', 'user', 'string', 'string', '$2a$10$AHm7E5gp1f/LZ6DcSKyyluljfkOPEusBkP3KwqgfSftI56A6TK5hK', 'string@gmail.com', NULL, NULL, NULL, 'string', 'string', 'string'),
(25, 'Jane', 'Jane', 'user', NULL, 'Jane', '$2a$10$NFhXWXs387al94wfGn73rucv0Oa4rZ2LTBlU6/NahGIwmLATayBFm', 'jane@doe.com', NULL, NULL, NULL, '123456', NULL, NULL),
(26, 'Bob', 'Bob', 'user', NULL, 'Bob', '$2a$10$yA6Gth79I4gOVhWXE2C1i.YaL4YFT1xrV/fsm9v6I1ImvZsTo9oFS', 'bob@projects.com', NULL, NULL, NULL, '123456', NULL, NULL),
(27, 'John', 'John', 'user', NULL, 'John', '$2a$10$S4iiusrFnNpMAUP14a1cre/WIejHMNqcZU2kkAZc7pHmI1FDLp49W', 'john@doe.com', NULL, NULL, NULL, '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserSelection`
--

DROP TABLE IF EXISTS `UserSelection`;
CREATE TABLE `UserSelection` (
  `user_selection_id` int(11) NOT NULL,
  `user_username` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_selection_name` varchar(100) COLLATE utf8_spanish_ci DEFAULT 'NULL',
  `user_selection_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `AccessToken`
--
ALTER TABLE `AccessToken`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ACL`
--
ALTER TABLE `ACL`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `AuxColor`
--
ALTER TABLE `AuxColor`
  ADD PRIMARY KEY (`aux_color_id`);

--
-- Indices de la tabla `AuxHour`
--
ALTER TABLE `AuxHour`
  ADD PRIMARY KEY (`aux_hour_id`);

--
-- Indices de la tabla `AuxInfo`
--
ALTER TABLE `AuxInfo`
  ADD PRIMARY KEY (`aux_info_id`);

--
-- Indices de la tabla `AuxInterval`
--
ALTER TABLE `AuxInterval`
  ADD PRIMARY KEY (`aux_interval_id`);

--
-- Indices de la tabla `AuxLine`
--
ALTER TABLE `AuxLine`
  ADD PRIMARY KEY (`aux_line_id`);

--
-- Indices de la tabla `HcaAgent`
--
ALTER TABLE `HcaAgent`
  ADD PRIMARY KEY (`hca_agent_serial_id`),
  ADD KEY `hca_agent_agent_id` (`hca_agent_id`),
  ADD KEY `hca_agent_date` (`hca_agent_date`),
  ADD KEY `hca_agent_extension` (`hca_agent_extension`),
  ADD KEY `hca_agent_people_json` (`hca_agent_people_json`),
  ADD KEY `hca_agent_operation_json` (`hca_agent_operation_json`),
  ADD KEY `hca_agent_time_json` (`hca_agent_time_json`);

--
-- Indices de la tabla `HcaExtension`
--
ALTER TABLE `HcaExtension`
  ADD PRIMARY KEY (`hca_extension_serial_id`),
  ADD KEY `hca_agent_agent_id` (`hca_extension_id`),
  ADD KEY `hca_agent_date` (`hca_extensiont_date`),
  ADD KEY `hca_agent_extension` (`hca_extension_extension`),
  ADD KEY `hca_agent_people_json` (`hca_extension_people_json`),
  ADD KEY `hca_agent_operation_json` (`hca_extension_operation_json`),
  ADD KEY `hca_agent_time_json` (`hca_extension_time_json`);

--
-- Indices de la tabla `HcaOccasion`
--
ALTER TABLE `HcaOccasion`
  ADD PRIMARY KEY (`hca_ocassion_serial_id`),
  ADD KEY `hca_agent_agent_id` (`hca_ocassion_id`),
  ADD KEY `hca_agent_date` (`hca_ocassion_date`),
  ADD KEY `hca_agent_extension` (`hca_ocassion_extension`),
  ADD KEY `hca_agent_people_json` (`hca_ocassion_people_json`),
  ADD KEY `hca_agent_operation_json` (`hca_ocassion_operation_json`),
  ADD KEY `hca_agent_time_json` (`hca_ocassion_time_json`);

--
-- Indices de la tabla `HcaQueue`
--
ALTER TABLE `HcaQueue`
  ADD PRIMARY KEY (`hca_queue_serial_id`),
  ADD KEY `hca_queue_date` (`hca_queue_date`),
  ADD KEY `hca_queue_number` (`hca_queue_number`),
  ADD KEY `hca_queue_queue_id` (`hca_queue_id`);

--
-- Indices de la tabla `InvAgent`
--
ALTER TABLE `InvAgent`
  ADD PRIMARY KEY (`inv_agent_id`),
  ADD KEY `inv_agent_legal_id` (`inv_agent_legal_id`),
  ADD KEY `inv_agent_internal_id` (`inv_agent_internal_id`),
  ADD KEY `inv_agent_extension` (`inv_agent_extension`),
  ADD KEY `inv_agent_status` (`inv_agent_status`),
  ADD KEY `inv_agent_type` (`inv_agent_type`),
  ADD KEY `inv_agent_people_json` (`inv_agent_people_json`),
  ADD KEY `inv_agent_operation_json` (`inv_agent_operation_json`),
  ADD KEY `inv_agent_time_json` (`inv_agent_time_json`);

--
-- Indices de la tabla `InvAgentRole`
--
ALTER TABLE `InvAgentRole`
  ADD PRIMARY KEY (`inv_agentrole_id`);

--
-- Indices de la tabla `InvBreak`
--
ALTER TABLE `InvBreak`
  ADD PRIMARY KEY (`inv_break_id`),
  ADD KEY `inv_break_status` (`inv_break_status`),
  ADD KEY `inv_break_productivity` (`inv_break_productivity`),
  ADD KEY `inv_break_class` (`inv_break_class`);

--
-- Indices de la tabla `InvCalendar`
--
ALTER TABLE `InvCalendar`
  ADD PRIMARY KEY (`inv_calendar_id`);

--
-- Indices de la tabla `InvCalendarDay`
--
ALTER TABLE `InvCalendarDay`
  ADD PRIMARY KEY (`inv_calendarday_id`),
  ADD UNIQUE KEY `inv_calendarday_date` (`inv_calendarday_date`),
  ADD KEY `inv_calendar_id` (`inv_calendar_id`);

--
-- Indices de la tabla `InvCampaign`
--
ALTER TABLE `InvCampaign`
  ADD PRIMARY KEY (`inv_campaign_id`),
  ADD KEY `inv_campaign_status` (`inv_campaign_status`),
  ADD KEY `inv_campaign_queue_id` (`inv_campaign_queue_id`),
  ADD KEY `inv_campaign_queue_number` (`inv_campaign_queue_number`),
  ADD KEY `inv_campaign_start_date_text` (`inv_campaign_start_date`),
  ADD KEY `inv_campaign_end_date_text` (`inv_campaign_end_date`),
  ADD KEY `inv_campaign_start_time_text` (`inv_campaign_start_time`),
  ADD KEY `inv_campaign_end_time_text` (`inv_campaign_end_time`);

--
-- Indices de la tabla `InvClient`
--
ALTER TABLE `InvClient`
  ADD PRIMARY KEY (`inv_client_id`),
  ADD KEY `inv_client_status` (`inv_client_status`),
  ADD KEY `inv_client_type` (`inv_client_type`);

--
-- Indices de la tabla `InvQueue`
--
ALTER TABLE `InvQueue`
  ADD PRIMARY KEY (`inv_queue_id`),
  ADD KEY `inv_queue_status` (`inv_queue_status`),
  ADD KEY `inv_queue_number` (`inv_queue_number`),
  ADD KEY `inv_queue_operation_json` (`inv_queue_operation_json`),
  ADD KEY `inv_queue_system_json` (`inv_queue_system_json`);

--
-- Indices de la tabla `InvQueueConfig`
--
ALTER TABLE `InvQueueConfig`
  ADD PRIMARY KEY (`queueconfig_extension`);

--
-- Indices de la tabla `InvScale`
--
ALTER TABLE `InvScale`
  ADD PRIMARY KEY (`inv_scale_id`);

--
-- Indices de la tabla `InvSchedule`
--
ALTER TABLE `InvSchedule`
  ADD PRIMARY KEY (`inv_schedule_id`),
  ADD KEY `inv_schedule_status` (`inv_schedule_status`);

--
-- Indices de la tabla `InvScheduleDay`
--
ALTER TABLE `InvScheduleDay`
  ADD PRIMARY KEY (`inv_scheduleday_id`),
  ADD KEY `inv_schedule_id` (`inv_schedule_id`),
  ADD KEY `inv_scheduleday_weekday` (`inv_scheduleday_weekday`);

--
-- Indices de la tabla `InvService`
--
ALTER TABLE `InvService`
  ADD PRIMARY KEY (`inv_service_id`),
  ADD KEY `inv_service_status` (`inv_service_status`),
  ADD KEY `inv_service_use` (`inv_service_use`),
  ADD KEY `inv_service_type` (`inv_service_type`);

--
-- Indices de la tabla `InvSms`
--
ALTER TABLE `InvSms`
  ADD PRIMARY KEY (`inv_sms_id`);

--
-- Indices de la tabla `InvSupervisor`
--
ALTER TABLE `InvSupervisor`
  ADD PRIMARY KEY (`inv_supervisor_id`),
  ADD KEY `inv_supervisor_legal_id` (`inv_supervisor_legal_id`),
  ADD KEY `inv_supervisor_internal_id` (`inv_supervisor_internal_id`),
  ADD KEY `inv_supervisor_status` (`inv_supervisor_status`);

--
-- Indices de la tabla `LocalInvAgent`
--
ALTER TABLE `LocalInvAgent`
  ADD PRIMARY KEY (`inv_agent_id`),
  ADD KEY `inv_agent_legal_id` (`inv_agent_legal_id`),
  ADD KEY `inv_agent_internal_id` (`inv_agent_internal_id`),
  ADD KEY `inv_agent_extension` (`inv_agent_extension`),
  ADD KEY `inv_agent_status` (`inv_agent_status`),
  ADD KEY `inv_agent_type` (`inv_agent_type`);

--
-- Indices de la tabla `LocalInvBreak`
--
ALTER TABLE `LocalInvBreak`
  ADD PRIMARY KEY (`inv_break_id`),
  ADD KEY `inv_break_status` (`inv_break_status`),
  ADD KEY `inv_break_productivity` (`inv_break_productivity`),
  ADD KEY `inv_break_class` (`inv_break_class`);

--
-- Indices de la tabla `LocalInvQueue`
--
ALTER TABLE `LocalInvQueue`
  ADD PRIMARY KEY (`inv_queue_id`),
  ADD KEY `inv_queue_status` (`inv_queue_status`),
  ADD KEY `inv_queue_number` (`inv_queue_number`);

--
-- Indices de la tabla `MainAudit`
--
ALTER TABLE `MainAudit`
  ADD PRIMARY KEY (`audit_id`),
  ADD KEY `audit_date` (`audit_date`),
  ADD KEY `id_break` (`audit_break_id`),
  ADD KEY `id_agent` (`audit_agent_id`),
  ADD KEY `datetime_init` (`audit_datetime_init`),
  ADD KEY `datetime_end` (`audit_datetime_end`),
  ADD KEY `duration` (`audit_duration`),
  ADD KEY `audit_secs_duration` (`audit_duration_sec`),
  ADD KEY `audit_status` (`audit_status`),
  ADD KEY `audit_hca_agent_serial_id` (`audit_hca_agent_serial_id`),
  ADD KEY `audit_people_json` (`audit_people_json`),
  ADD KEY `audit_time_json` (`audit_time_json`),
  ADD KEY `audit_operation_json` (`audit_operation_json`);

--
-- Indices de la tabla `MainCallEntry`
--
ALTER TABLE `MainCallEntry`
  ADD PRIMARY KEY (`callentry_id`),
  ADD KEY `id_agent` (`callentry_agent_id`),
  ADD KEY `id_queue_call_entry` (`callentry_queue_id`),
  ADD KEY `id_contact` (`callentry_contact_id`),
  ADD KEY `call_entry_ibfk_4` (`callentry_campaign_id`),
  ADD KEY `datetime_init` (`callentry_datetime_init`),
  ADD KEY `datetime_entry_queue` (`callentry_datetime_entry_queue`),
  ADD KEY `status` (`callentry_status`),
  ADD KEY `callentry_hca_agent_serial_id` (`callentry_hca_agent_serial_id`),
  ADD KEY `callentry_people_json` (`callentry_people_json`),
  ADD KEY `callentry_operation_json` (`callentry_operation_json`),
  ADD KEY `callentry_time_json` (`callentry_time_json`);

--
-- Indices de la tabla `MainCdr`
--
ALTER TABLE `MainCdr`
  ADD PRIMARY KEY (`cdr_id`),
  ADD KEY `IDX_UNIQUEID` (`cdr_uniqueid`),
  ADD KEY `cdr_calldate` (`cdr_calldate`),
  ADD KEY `cdr_agent_id` (`cdr_agent_id`),
  ADD KEY `cdr_queue_id` (`cdr_queue_id`),
  ADD KEY `cdr_date` (`cdr_date`),
  ADD KEY `cdr_hca_agent_serial_id` (`cdr_hca_agent_serial_id`),
  ADD KEY `cdr_hca_queue_serial_id` (`cdr_hca_queue_serial_id`);

--
-- Indices de la tabla `MainQueueLog`
--
ALTER TABLE `MainQueueLog`
  ADD PRIMARY KEY (`queuelog_id`),
  ADD KEY `time` (`queuelog_time`),
  ADD KEY `queuename` (`queuelog_queuename`),
  ADD KEY `agent` (`queuelog_agent`),
  ADD KEY `event` (`queuelog_event`);

--
-- Indices de la tabla `MainStoredQueries`
--
ALTER TABLE `MainStoredQueries`
  ADD PRIMARY KEY (`msq_query_id`);

--
-- Indices de la tabla `RealCurrentAgents`
--
ALTER TABLE `RealCurrentAgents`
  ADD PRIMARY KEY (`rca_audit_login_id`),
  ADD UNIQUE KEY `rca_agent_id` (`rca_agent_id`),
  ADD KEY `rca_hca_agent_serial_id` (`rca_hca_agent_serial_id`),
  ADD KEY `rca_people_json` (`rca_people_json`),
  ADD KEY `rca_operation_json` (`rca_operation_json`),
  ADD KEY `rca_time_json` (`rca_time_json`);

--
-- Indices de la tabla `RealCurrentBreaks`
--
ALTER TABLE `RealCurrentBreaks`
  ADD PRIMARY KEY (`rcb_break_audit_id`),
  ADD KEY `rcb_time_json` (`rcb_time_json`),
  ADD KEY `rcb_operation_json` (`rcb_operation_json`),
  ADD KEY `rcb_people_json` (`rcb_people_json`),
  ADD KEY `rcb_hca_agent_serial_id` (`rcb_hca_agent_serial_id`);

--
-- Indices de la tabla `RealCurrentCalls`
--
ALTER TABLE `RealCurrentCalls`
  ADD PRIMARY KEY (`rcc_callentry_id`),
  ADD KEY `rca_time_json` (`rcc_time_json`),
  ADD KEY `rca_operation_json` (`rcc_operation_json`),
  ADD KEY `rca_people_json` (`rcc_people_json`),
  ADD KEY `rca_hca_agent_serial_id` (`rcc_hca_agent_serial_id`);

--
-- Indices de la tabla `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `RoleMapping`
--
ALTER TABLE `RoleMapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principalId` (`principalId`);

--
-- Indices de la tabla `ShowDisplay`
--
ALTER TABLE `ShowDisplay`
  ADD PRIMARY KEY (`show_display_id`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Userbase`
--
ALTER TABLE `Userbase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `UserSelection`
--
ALTER TABLE `UserSelection`
  ADD PRIMARY KEY (`user_selection_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ACL`
--
ALTER TABLE `ACL`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `AuxColor`
--
ALTER TABLE `AuxColor`
  MODIFY `aux_color_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `AuxHour`
--
ALTER TABLE `AuxHour`
  MODIFY `aux_hour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `AuxInfo`
--
ALTER TABLE `AuxInfo`
  MODIFY `aux_info_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `AuxInterval`
--
ALTER TABLE `AuxInterval`
  MODIFY `aux_interval_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT de la tabla `AuxLine`
--
ALTER TABLE `AuxLine`
  MODIFY `aux_line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `InvAgentRole`
--
ALTER TABLE `InvAgentRole`
  MODIFY `inv_agentrole_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `InvCalendar`
--
ALTER TABLE `InvCalendar`
  MODIFY `inv_calendar_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `InvCalendarDay`
--
ALTER TABLE `InvCalendarDay`
  MODIFY `inv_calendarday_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `InvScale`
--
ALTER TABLE `InvScale`
  MODIFY `inv_scale_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `InvSchedule`
--
ALTER TABLE `InvSchedule`
  MODIFY `inv_schedule_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `InvScheduleDay`
--
ALTER TABLE `InvScheduleDay`
  MODIFY `inv_scheduleday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `InvService`
--
ALTER TABLE `InvService`
  MODIFY `inv_service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `InvSms`
--
ALTER TABLE `InvSms`
  MODIFY `inv_sms_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `InvSupervisor`
--
ALTER TABLE `InvSupervisor`
  MODIFY `inv_supervisor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `MainStoredQueries`
--
ALTER TABLE `MainStoredQueries`
  MODIFY `msq_query_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Role`
--
ALTER TABLE `Role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `RoleMapping`
--
ALTER TABLE `RoleMapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ShowDisplay`
--
ALTER TABLE `ShowDisplay`
  MODIFY `show_display_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Userbase`
--
ALTER TABLE `Userbase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `UserSelection`
--
ALTER TABLE `UserSelection`
  MODIFY `user_selection_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
