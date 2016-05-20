-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2016 at 05:29 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_arqtutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `leccion_id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `user_id`, `leccion_id`, `descripcion`, `created_at`, `updated_at`) VALUES
(4, 4, 5, 'Cuando vendra el proximo video', '2016-03-06 01:00:00', '2016-03-06 04:00:00'),
(15, 1, 3, 'Interesante video, gracias', '2016-03-06 06:55:12', '2016-03-06 06:55:12'),
(16, 2, 3, '¿Como puedo saber más del tema?', '2016-03-06 06:55:59', '2016-03-06 06:55:59'),
(17, 1, 3, 'Gracias', '2016-03-06 06:57:40', '2016-03-06 06:57:40'),
(18, 6, 3, 'Bastante completo.', '2016-03-06 06:57:47', '2016-03-06 06:57:47'),
(19, 5, 5, 'El video está bastante completo', '2016-03-06 06:58:00', '2016-03-06 06:58:00'),
(20, 1, 3, 'La teoria es bastante pertinente, gracias', '2016-03-06 22:38:08', '2016-03-06 22:38:08'),
(21, 3, 3, 'Espero la proxima leccion', '2016-03-09 05:06:41', '2016-03-09 05:06:41'),
(22, 1, 3, 'Ya viene pronto!', '2016-03-10 23:52:12', '2016-03-10 23:52:12'),
(23, 1, 5, 'Cuando los foo fighters vuelvan a Colombia', '2016-03-11 19:45:48', '2016-03-11 19:45:48'),
(24, 5, 3, 'Gracias por el video', '2016-03-12 15:46:24', '2016-03-12 15:46:24'),
(27, 1, 3, 'No hay problema!', '2016-03-16 00:28:12', '2016-03-16 00:28:12'),
(28, 1, 5, 'No se te olvide dejar tu opinión!', '2016-03-16 00:28:31', '2016-03-16 00:28:31'),
(29, 6, 6, 'Me parece excelente este espacio.', '2016-03-16 21:27:55', '2016-03-16 21:27:55'),
(35, 1, 3, 'Espero que disfruten de este tutorial!', '2016-04-26 22:47:48', '2016-04-26 22:47:48'),
(37, 4, 3, 'Muchas gracias por el video!', '2016-04-26 23:01:50', '2016-04-26 23:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `titulo`, `descripcion`, `imagen`, `created_at`, `updated_at`) VALUES
(3, 'Arquitectura de celulares', 'Curso básico de la arquitectura de celulares actuales. Este curso comenzará explicando qué es y como es la arquitectura de un celular.', 'arquitecturadecelulares1457037025.jpg', '2016-02-29 04:16:33', '2016-05-03 20:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `leccion_id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `evaluaciones`
--

INSERT INTO `evaluaciones` (`id`, `leccion_id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 3, 'Evaluación de la primer lección.', '2016-03-06 05:00:00', '2016-04-04 23:58:04'),
(6, 5, 'Esta será una nueva evaluacion para la dos.', '2016-03-07 20:54:05', '2016-03-07 20:54:05'),
(7, 8, 'Esta evaluación busca evaluar la presente lección.', '2016-03-11 19:08:57', '2016-03-26 01:40:13'),
(8, 7, 'Nueva evaluación.', '2016-05-04 23:20:49', '2016-05-04 23:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `lecciones`
--

CREATE TABLE `lecciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `curso_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teoria` text COLLATE utf8_unicode_ci NOT NULL,
  `linkvideo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lecciones`
--

INSERT INTO `lecciones` (`id`, `curso_id`, `titulo`, `descripcion`, `teoria`, `linkvideo`, `slug`, `created_at`, `updated_at`) VALUES
(3, 3, 'Introducción', 'En este primer video introductorio se explicará los objetivos de este curso, los objetivos y que se espera aprender durante todo el tutorial web.', '<p>Los teléfonos móviles han cambiado muchos aspectos de nuestra vida como lo es la forma como nos comunicamos o cómo podemos acceder a la información, haciéndolos una herramienta indispensable en la actualidad.&nbsp;Ante el reciente crecimiento y popularidad de estos teléfonos inteligentes, aprender sus diversos componentes se ha convertido en un objetivo primordial para los estudiantes relacionados con la arquitectura de artefactos tecnológicos. Debido a esto, cada día se necesitan más métodos para reforzar el aprendizaje de esta creciente tendencia tecnológica, ya sea por requisito laboral o por expandir el conocimiento. Sin embargo, son muchos los obstáculos que una persona puede llegar a enfrentar a la hora de adquirir este conocimiento.</p><br>', '5LiD09JMqH8', 'introduccion', '2016-03-02 18:03:28', '2016-05-03 17:17:48'),
(5, 3, 'Procesadores', 'En esta lección se hace una breve introducción a los procesadores.', '<p>Esta es una segunda edicion 2...!</p>', '1VQ_3sBZEm0', 'procesadores', '2016-03-02 22:06:41', '2016-04-04 23:16:35'),
(6, 3, 'Memoria ', 'Lección que explica todo sobre la memoria de un teléfono móvil, sus partes y principales características. ', '<p style="text-align: center;"><span style="line-height: 1.42857;">asdasdasdasdasdaaaaaaaaaaaaaa</span></p><span style="line-height: 1.42857;">Hola todos</span>', 'gm_c93sH7wQ', 'memoria', '2016-03-02 22:27:35', '2016-04-04 23:17:08'),
(7, 3, 'Tipos de memoria', 'El celular puede tener tanto como memoria principal, o memoria de acceso aleatorio o memoria rom.', '<p style="text-align: center;">Leccion 4</p><p style="text-align: center;"><img src="https://avatars.githubusercontent.com/u/2568430?&amp;size=50" alt=""></p><p style="text-align: center;">Esta leccion es la cuarta</p>', 'V5SrBbaIJFM', 'tipos-de-memoria', '2016-03-02 22:30:02', '2016-04-04 23:17:48'),
(8, 3, 'Giroscopio', 'En esta lección se introduce el concepto de giroscopio, elemento fundamental de los celulares que hoy en día conocemos.', 'Aaaaaaaaaaaaaa', 'Im69kzhpR3I', 'giroscopio', '2016-03-03 02:08:29', '2016-04-04 23:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_20_173056_create_cursos_table', 1),
('2016_02_20_173722_create_lecciones_table', 1),
('2016_02_21_175019_create_comentarios_table', 1),
('2016_02_26_044518_create_evaluaciones_table', 1),
('2016_02_26_044555_create_preguntas_table', 1),
('2016_02_26_044940_create_opciones_table', 1),
('2016_03_02_213102_add_userstatus_column', 2),
('2016_03_04_091435_add_leccionslug_column', 3),
('2016_03_04_092458_add_slug_to_lecciones_table', 4),
('2016_03_05_103811_add_userimagen_column', 5),
('2016_03_10_173737_add_slug_to_users_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `opciones`
--

CREATE TABLE `opciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `pregunta_id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `puntaje` enum('correcto','incorrecto') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incorrecto',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `opciones`
--

INSERT INTO `opciones` (`id`, `pregunta_id`, `descripcion`, `puntaje`, `created_at`, `updated_at`) VALUES
(15, 48, '4 GB', 'incorrecto', '2016-03-09 05:07:54', '2016-03-09 05:07:54'),
(16, 48, '2 GB', 'correcto', '2016-03-09 05:08:05', '2016-03-09 05:08:10'),
(19, 42, 'es un dispositivo electronico', 'correcto', '2016-03-10 01:12:10', '2016-03-10 01:12:13'),
(20, 42, 'dispositivo requerido', 'incorrecto', '2016-03-10 01:13:24', '2016-03-10 01:13:24'),
(21, 42, 'dispositivo mecanico', 'incorrecto', '2016-03-10 01:17:59', '2016-03-10 01:17:59'),
(24, 51, '4 GB', 'incorrecto', '2016-03-26 01:40:54', '2016-03-26 01:40:54'),
(25, 51, '2 GB', 'correcto', '2016-03-26 01:40:57', '2016-03-26 01:41:07'),
(26, 51, '10 GB', 'incorrecto', '2016-03-26 01:41:00', '2016-03-26 01:41:00'),
(27, 51, '32 GB', 'incorrecto', '2016-03-26 01:41:03', '2016-03-26 01:41:03'),
(28, 1, 'AMD', 'incorrecto', '2016-04-04 23:58:34', '2016-04-04 23:58:34'),
(29, 1, 'Intel', 'correcto', '2016-04-04 23:58:38', '2016-04-04 23:59:01'),
(31, 1, 'Apple', 'incorrecto', '2016-04-04 23:58:44', '2016-04-04 23:58:44'),
(32, 1, 'xProcessor', 'incorrecto', '2016-04-04 23:58:58', '2016-04-04 23:58:58'),
(34, 48, '16 GB', 'incorrecto', '2016-04-04 23:59:37', '2016-04-04 23:59:37'),
(35, 48, '32 GB', 'incorrecto', '2016-04-04 23:59:41', '2016-04-04 23:59:41'),
(37, 52, 'Android', 'incorrecto', '2016-04-05 00:01:16', '2016-04-05 00:01:16'),
(38, 52, 'BBOS', 'incorrecto', '2016-04-05 00:01:22', '2016-04-05 00:01:22'),
(39, 52, 'Nokia Lumia', 'incorrecto', '2016-04-05 00:01:25', '2016-04-05 00:01:25'),
(40, 52, 'iOS', 'correcto', '2016-04-05 00:01:36', '2016-04-05 00:01:39'),
(41, 53, 'Es posible gracias a la interconexión entre centrales móviles y públicas.', 'correcto', '2016-04-05 00:03:28', '2016-04-05 00:04:24'),
(42, 53, 'Es posible gracias a Bill Gates', 'incorrecto', '2016-04-05 00:03:57', '2016-04-05 00:03:57'),
(43, 53, 'A través de ciclos mecánicos internos.', 'incorrecto', '2016-04-05 00:04:16', '2016-04-05 00:04:16'),
(44, 54, 'iOS', 'incorrecto', '2016-04-05 03:00:34', '2016-04-05 03:00:34'),
(45, 54, 'Android', 'correcto', '2016-04-05 03:00:39', '2016-04-05 03:00:50'),
(46, 54, 'BBM', 'incorrecto', '2016-04-05 03:00:44', '2016-04-05 03:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('YojhanR95@gmail.com', '32b38eff9677460c0119369e320aab46a451ded21de514ab3dca7c0fd75d1a5a', '2016-03-14 21:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(10) UNSIGNED NOT NULL,
  `evaluacion_id` int(10) UNSIGNED NOT NULL,
  `pregunta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `preguntas`
--

INSERT INTO `preguntas` (`id`, `evaluacion_id`, `pregunta`, `created_at`, `updated_at`) VALUES
(1, 1, '¿Cual es la marca más popular de procesadores en celulares?', '2016-03-07 05:00:00', '2016-03-07 05:00:00'),
(42, 6, '¿Que es un celular?', '2016-03-08 03:54:09', '2016-03-08 03:54:09'),
(48, 1, '¿Cual es la memoria RAM normal de un celular?', '2016-03-09 05:07:43', '2016-03-09 05:07:43'),
(51, 7, '¿Cual es la capacidad de memoria RAM de un celular promedio?', '2016-03-26 01:40:48', '2016-03-26 01:40:48'),
(52, 1, '¿Qué sistema operativo usan los celulares iPhone?', '2016-04-05 00:01:07', '2016-04-05 00:01:07'),
(53, 1, '¿Como es posible la comunicación telefónica?', '2016-04-05 00:02:57', '2016-04-05 00:02:57'),
(54, 1, '¿Cual es el sistema operativo más común de los celulares?', '2016-04-05 03:00:24', '2016-04-05 03:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `biografia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `puntos` int(11) NOT NULL,
  `fecha_nac` date NOT NULL,
  `discapacidad` enum('none','ceguera','daltonismo','bajaVision','sordera','otra') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `type` enum('admin','member') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('activated','deactivated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activated',
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.png',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nombre`, `email`, `username`, `password`, `pais`, `biografia`, `puntos`, `fecha_nac`, `discapacidad`, `type`, `remember_token`, `status`, `imagen`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Yojhan Rodríguez', 'YojhanR95@gmail.com', 'YojhanR', '$2y$10$pf5r.pIpw.Gh6UmMbWMtwusKU5JUyWziQsLuGyNaaE4ULvnE5afie', 'CO', 'Soy estudiante de Tecnología en sistematización de la Universidad Distrital de Colombia.  Me gusta la tecnología, la programación y el idioma inglés. ', 200, '1995-09-09', 'none', 'admin', 'bAxOjuZOBpIdBhNs5GCeBbkmiJ6Qu7TosiOmlHbL301hyoXMssqMpZdvAgDt', 'activated', 'yojhanlr1457641021.jpg', 'yojhanr', '2016-02-26 11:10:36', '2016-05-03 21:24:50'),
(2, 'Jeisson Sindicue', 'JeissonSindicue@gmail.com', 'JeissonS', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'CO', '', 290, '1990-02-28', 'none', 'admin', 'ZSwkuzshIaEfc89WscIJOR81I2IDfmHURwBNEjIHEeFLbNXabbz1iSKLmY3Z', 'activated', 'jeissons1462306487.jpg', 'jeissons', '2016-02-27 19:59:08', '2016-05-03 20:15:55'),
(3, 'Maria Ordoñez', 'MariaOrd@gmail.com', 'MariaOrd', '$2y$10$AGiFJFYMOImgOe42DtFcp.88UhoD4JzGeTyuOhToyTp23yVPUepd.', 'AR', 'La biografia no es obligatorio.', 40, '1994-10-19', 'none', 'member', 'GH96X9LCREGXE95yoGnAofvjt9OS1rKvgDFs2YDM9AZpowKLLG6Lm0UE4PZr', 'activated', 'mariaord1462302469.png', 'mariaord', '2016-02-28 11:56:58', '2016-05-03 19:07:49'),
(4, 'Megan Ramirez', 'MeganRamirez@hotmail.com', 'MeganRR', '$2y$10$Nu9Rgq746GV8ThHMBANx8.MlviqluMZxU7gnrYm4b/jTHSNM9wg96', 'CR', '', 230, '1992-09-05', 'none', 'member', '0ZVosDy9sMceSF8fmyDWJYrpEcvBXVvxw6tahACf3C0jmz8nkctK1d5cj5Fb', 'activated', 'meganrr1462300608.png', 'meganrr', '2016-03-02 02:22:13', '2016-05-03 20:13:16'),
(5, 'Jaime Guzman', 'JaimeGuzman@gmail.com', 'JaimeGuz', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'BR', '', 446, '1998-10-17', 'daltonismo', 'member', 'SG3ahqskLg5B4eGZG0hDhjF7s4uKf820VEigAkJgD403R12wcRajhqcKpM4V', 'activated', 'jaimeguz1457811930.jpg', 'jaimeguz', '2016-03-02 03:11:02', '2016-04-05 03:03:47'),
(6, 'Sebastian Correa', 'SebastianCR12@hotmail.com', 'SebastianCLK', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'VE', '', 130, '1985-10-15', 'ceguera', 'member', 'HqrUTejiCKzEq5QCMG0huVCqGjZbbj0AM4sr3wKdMgpj59TiYq8KIh7xkasb', 'activated', 'sebastianclk1463757899.jpg', 'sebastianclk', '2016-03-02 03:13:05', '2016-05-20 15:24:59'),
(7, 'Carlos Torres', 'carlostower@outlook.com', 'CarlosTower', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'UY', '', 30, '1990-11-06', 'bajaVision', 'member', '5vBl3qUmLjReoyCa1sJNvg94gEXeo10m26vjFNMu27xbignLu5dPkqLurdwb', 'activated', 'carlostower1462306663.png', 'carlostower', '2016-03-02 03:24:24', '2016-05-03 20:21:53'),
(8, 'Juliana Gonzalez', 'juligonza@gmail.com', 'JuliGonzalez', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'ES', '', 0, '1999-01-17', 'none', 'member', NULL, 'deactivated', 'default.png', 'juligonzalez', '2016-03-10 22:44:00', '2016-03-16 02:08:43'),
(9, 'Miguel Angel Zabala', 'prueba@hotmail.com', 'm.zabala', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'CO', '', 0, '1994-05-12', 'none', 'member', 'SmiQcSNJ2viOLQeeVEj3fScyZNKBOKBDh1jbA9IO4qoHQZDVX7gHQW0Efy9f', 'activated', 'm.zabala1463757981.jpg', 'm-zabala', '2016-03-11 18:49:06', '2016-05-20 15:26:21'),
(10, 'Leonardo Jimenez', 'leonardo@hotmail.com', 'LeoRodri', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'CL', '', 40, '1999-03-12', 'none', 'member', 'JZS7IztmbqfP38vnyFLe31MAV80csJxsCe46LNY4aA1khqiauqswp1awYgcc', 'activated', 'leorodri1463758079.jpg', 'leorodri', '2016-03-13 04:37:44', '2016-05-20 15:27:59'),
(11, 'Lina Jimenez', 'linajimenez@hotmail.com', 'LinaJim', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'GT', '', 30, '2001-02-15', 'none', 'member', '5Jdn2DlrVTuARnRC39jCsz4Qw10qbqFfDEj6rJ3SWT0Ct859A7rZjOhRRYgk', 'activated', 'default.png', 'linajim', '2016-03-13 15:44:00', '2016-03-18 03:24:16'),
(12, 'Hector Hurtado', 'hector@gmail.com', 'hectorh', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'CO', '', 30, '1995-04-16', 'ceguera', 'member', 'QKEg3cQ6ocpKT0SSUw2ENUhS0iqcYyQbO9I51Kj8sGK8kjsN9AdBGJOTshLz', 'activated', 'default.png', 'hectorh', '2016-03-16 13:22:23', '2016-03-18 03:24:57'),
(13, 'Estiven Alvarado', 'estiven@hotmai.com', 'EstivenAlv', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'CO', '', 0, '1993-04-17', 'none', 'member', '4P4uGaeAif9UO0JdCETRzGYr1V568Z6isQxQdDfv5wYmp8dEHVOD7DIq0jQH', 'activated', 'default.png', 'estivenalv', '2016-03-18 02:45:54', '2016-03-18 03:25:13'),
(14, 'Luisa Romero', 'luisa@hotmail.com', 'LuisaRom', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'PY', '', 0, '1999-11-18', 'none', 'member', 's981VXfeSr6OAeMrt5OMr6y2g6bFFxaTktHVGf2aDNL5pD66jiJbIQo6NPba', 'activated', 'default.png', 'luisarom', '2016-03-18 03:26:23', '2016-03-18 03:30:39'),
(15, 'Juliana Gomez', 'julianagomez@hotmail.com', 'JuliGomez', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'PR', '', 40, '1995-12-10', 'none', 'member', 'wwKtKJjmmAnwLzempfSF2PcTzM48QIQXiadHarWtwxg57dTWTig5GNtBhws1', 'activated', 'default.png', 'juligomez', '2016-03-18 03:32:21', '2016-03-18 03:33:34'),
(16, 'Camila Ordoñez', 'camilaordonez@gmail.com', 'CamiOrdoñez', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'CU', '', 30, '1998-12-19', 'none', 'member', '2kxnA2JukLshaypQP6tI3wPgdYPNWyumUioefuZKUm2AxrLNFcXiXKNDk7Qn', 'activated', 'default.png', 'camiordonez', '2016-03-24 15:33:44', '2016-03-24 15:34:10'),
(17, 'Juan Castillo', 'juancastillo@hotmail.com', 'JuanCastillo', '$2y$10$qqgdrgIpJjwpthplKNNs/eLlNLquQxusCcaTgACGYMP3is7kPcR3m', 'US', 'Soy estudiante de sistemas y me gustaría ampliar mis conocimientos acerca de los celulares.', 135, '1995-03-19', 'ceguera', 'admin', 'M4JjAIw0a820NvMYHpeSvco66DE7GNVtEGXQKNl5kTGZ9ExHmwCg0wGTTKTr', 'activated', 'default.png', 'juancastillo', '2016-03-24 16:29:21', '2016-05-03 18:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_curso`
--

CREATE TABLE `user_curso` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `curso_id` int(10) UNSIGNED NOT NULL,
  `progreso` double(8,2) NOT NULL,
  `fecha_fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_curso`
--

INSERT INTO `user_curso` (`id`, `user_id`, `curso_id`, `progreso`, `fecha_fin`, `created_at`, `updated_at`) VALUES
(14, 7, 3, 13.33, '0000-00-00', '2016-03-06 03:36:00', '2016-05-20 15:26:51'),
(16, 1, 3, 86.67, '0000-00-00', '2016-03-06 03:40:36', '2016-05-12 21:14:41'),
(20, 2, 3, 66.67, '0000-00-00', '2016-03-11 03:12:26', '2016-05-20 15:23:42'),
(22, 5, 3, 73.33, '0000-00-00', '2016-03-12 16:21:51', '2016-05-20 15:26:42'),
(23, 4, 3, 66.67, '0000-00-00', '2016-03-12 20:05:39', '2016-05-20 15:26:40'),
(24, 6, 3, 26.67, '0000-00-00', '2016-03-12 20:58:08', '2016-05-20 15:28:17'),
(25, 10, 3, 6.67, '0000-00-00', '2016-03-13 04:38:26', '2016-05-20 15:27:25'),
(26, 11, 3, 1.00, '0000-00-00', '2016-03-13 15:44:32', '2016-03-13 15:44:32'),
(27, 12, 3, 0.00, '0000-00-00', '2016-03-16 13:23:51', '2016-03-16 13:24:36'),
(28, 15, 3, 6.67, '0000-00-00', '2016-03-18 03:33:15', '2016-03-18 03:33:21'),
(29, 16, 3, 1.00, '0000-00-00', '2016-03-24 15:34:03', '2016-03-24 15:34:03'),
(30, 3, 3, 6.67, '0000-00-00', '2016-03-24 16:33:00', '2016-05-20 15:26:37'),
(31, 17, 3, 20.00, '0000-00-00', '2016-03-27 17:37:10', '2016-03-27 17:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_evaluacion`
--

CREATE TABLE `user_evaluacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `evaluacion_id` int(10) UNSIGNED NOT NULL,
  `puntaje` float NOT NULL,
  `intentos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_evaluacion`
--

INSERT INTO `user_evaluacion` (`id`, `user_id`, `evaluacion_id`, `puntaje`, `intentos`, `created_at`, `updated_at`) VALUES
(2, 1, 6, 60, 5, '2016-03-10 01:25:47', '2016-03-10 02:14:17'),
(4, 1, 1, 80, 5, '2016-03-10 01:47:56', '2016-03-10 02:12:29'),
(8, 2, 1, 50, 2, '2016-03-11 03:24:59', '2016-03-11 03:25:18'),
(9, 2, 6, 100, 1, '2016-03-11 04:10:33', '2016-03-11 04:10:33'),
(10, 1, 7, 100, 2, '2016-03-11 23:15:16', '2016-03-27 17:48:23'),
(12, 5, 1, 66.6666, 2, '2016-03-12 16:25:19', '2016-03-12 16:25:39'),
(13, 5, 6, 100, 3, '2016-03-12 16:35:33', '2016-03-12 16:36:24'),
(14, 4, 1, 68.8889, 3, '2016-03-13 15:55:51', '2016-04-26 22:56:52'),
(15, 17, 1, 75, 1, '2016-03-27 17:38:55', '2016-03-27 17:38:55'),
(18, 6, 1, 60, 1, '2016-04-06 18:59:10', '2016-04-06 18:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_leccion`
--

CREATE TABLE `user_leccion` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `leccion_id` int(10) UNSIGNED NOT NULL,
  `state` enum('none','started','finished') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `fecha_fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_leccion`
--

INSERT INTO `user_leccion` (`id`, `user_id`, `leccion_id`, `state`, `fecha_fin`, `created_at`, `updated_at`) VALUES
(4, 1, 5, 'finished', '2016-03-06', '2016-03-06 07:53:43', '2016-03-06 23:19:49'),
(5, 1, 6, 'finished', '2016-03-09', '2016-03-09 05:17:27', '2016-03-09 05:19:18'),
(7, 2, 3, 'finished', '2016-03-10', '2016-03-11 03:15:18', '2016-03-11 03:16:55'),
(8, 2, 5, 'finished', '2016-03-10', '2016-03-11 04:07:53', '2016-03-11 04:09:18'),
(9, 2, 6, 'finished', '2016-03-10', '2016-03-11 04:11:57', '2016-03-11 04:15:28'),
(10, 2, 7, 'started', '0000-00-00', '2016-03-11 04:16:08', '2016-03-11 04:16:08'),
(11, 2, 8, 'started', '0000-00-00', '2016-03-11 04:16:47', '2016-03-11 04:16:47'),
(12, 1, 8, 'finished', '2016-03-27', '2016-03-11 05:13:19', '2016-03-27 17:48:03'),
(13, 1, 7, 'finished', '2016-03-12', '2016-03-11 13:24:28', '2016-03-12 16:39:32'),
(15, 1, 3, 'finished', '2016-03-11', '2016-03-11 13:43:49', '2016-03-11 19:36:16'),
(17, 5, 3, 'finished', '2016-03-12', '2016-03-12 16:22:38', '2016-03-12 16:24:51'),
(20, 5, 5, 'finished', '2016-03-12', '2016-03-12 16:31:53', '2016-03-12 16:34:58'),
(21, 6, 3, 'finished', '2016-03-12', '2016-03-12 21:18:07', '2016-03-12 21:18:30'),
(22, 10, 3, 'started', '0000-00-00', '2016-03-13 04:38:30', '2016-03-13 04:38:30'),
(23, 4, 3, 'finished', '2016-03-13', '2016-03-13 15:55:37', '2016-03-13 15:55:45'),
(24, 4, 5, 'finished', '2016-03-14', '2016-03-14 22:25:29', '2016-03-15 01:06:49'),
(25, 4, 6, 'finished', '2016-03-14', '2016-03-14 22:41:55', '2016-03-14 23:57:10'),
(26, 4, 7, 'finished', '2016-03-14', '2016-03-15 00:29:16', '2016-03-15 01:02:37'),
(27, 4, 8, 'started', '0000-00-00', '2016-03-15 01:06:12', '2016-03-15 01:06:12'),
(28, 5, 8, 'finished', '2016-03-14', '2016-03-15 01:40:40', '2016-03-15 01:40:45'),
(29, 5, 7, 'finished', '2016-03-15', '2016-03-16 02:05:58', '2016-03-16 02:06:01'),
(30, 6, 6, 'started', '0000-00-00', '2016-03-16 21:26:28', '2016-03-16 21:26:28'),
(31, 5, 6, 'started', '0000-00-00', '2016-03-17 03:19:59', '2016-03-17 03:19:59'),
(32, 15, 3, 'started', '0000-00-00', '2016-03-18 03:33:21', '2016-03-18 03:33:21'),
(33, 3, 3, 'started', '0000-00-00', '2016-03-24 16:33:06', '2016-03-24 16:33:06'),
(34, 7, 3, 'finished', '2016-03-26', '2016-03-26 23:27:00', '2016-03-26 23:27:02'),
(35, 17, 3, 'finished', '2016-03-27', '2016-03-27 17:50:04', '2016-03-27 17:50:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentarios_user_id_foreign` (`user_id`),
  ADD KEY `comentarios_leccion_id_foreign` (`leccion_id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluaciones_leccion_id_foreign` (`leccion_id`);

--
-- Indexes for table `lecciones`
--
ALTER TABLE `lecciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lecciones_curso_id_foreign` (`curso_id`);

--
-- Indexes for table `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opciones_pregunta_id_foreign` (`pregunta_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preguntas_evaluacion_id_foreign` (`evaluacion_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_curso`
--
ALTER TABLE `user_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_curso_user_id_foreign` (`user_id`),
  ADD KEY `user_curso_curso_id_foreign` (`curso_id`);

--
-- Indexes for table `user_evaluacion`
--
ALTER TABLE `user_evaluacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_evaluacion_user_id_foreign` (`user_id`),
  ADD KEY `user_evaluacion_evaluacion_id_foreign` (`evaluacion_id`);

--
-- Indexes for table `user_leccion`
--
ALTER TABLE `user_leccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_leccion_user_id_foreign` (`user_id`),
  ADD KEY `user_leccion_leccion_id_foreign` (`leccion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lecciones`
--
ALTER TABLE `lecciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user_curso`
--
ALTER TABLE `user_curso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `user_evaluacion`
--
ALTER TABLE `user_evaluacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_leccion`
--
ALTER TABLE `user_leccion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_leccion_id_foreign` FOREIGN KEY (`leccion_id`) REFERENCES `lecciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comentarios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD CONSTRAINT `evaluaciones_leccion_id_foreign` FOREIGN KEY (`leccion_id`) REFERENCES `lecciones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lecciones`
--
ALTER TABLE `lecciones`
  ADD CONSTRAINT `lecciones_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `opciones_pregunta_id_foreign` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_evaluacion_id_foreign` FOREIGN KEY (`evaluacion_id`) REFERENCES `evaluaciones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_curso`
--
ALTER TABLE `user_curso`
  ADD CONSTRAINT `user_curso_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_curso_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_evaluacion`
--
ALTER TABLE `user_evaluacion`
  ADD CONSTRAINT `user_evaluacion_evaluacion_id_foreign` FOREIGN KEY (`evaluacion_id`) REFERENCES `evaluaciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_evaluacion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_leccion`
--
ALTER TABLE `user_leccion`
  ADD CONSTRAINT `user_leccion_leccion_id_foreign` FOREIGN KEY (`leccion_id`) REFERENCES `lecciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_leccion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;