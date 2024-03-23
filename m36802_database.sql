-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql.ct8.pl
-- Tiempo de generación: 19-02-2024 a las 15:15:03
-- Versión del servidor: 8.0.35
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `m36802_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE `games` (
  `gameName` text NOT NULL,
  `gameDesc` text NOT NULL,
  `gameIp` text NOT NULL,
  `port` int NOT NULL,
  `gameId` int NOT NULL,
  `owner` varchar(30) NOT NULL DEFAULT 'simple',
  `likes` int NOT NULL DEFAULT '0',
  `dislikes` int NOT NULL DEFAULT '0',
  `client` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`gameName`, `gameDesc`, `gameIp`, `port`, `gameId`, `owner`, `likes`, `dislikes`, `client`) VALUES
('meditation\'s server!!! (2015)', 'its BACKKKK!K!K!K!!!!!', 'group-join.gl.at.ply.gg', 28325, 1, 'TheGuyWhoIsIdiot', 1, -1, '2015'),
('BOMBED BY !LEAH', 'BOMBED', '127.0.0.1', 123456, 2, 'LEAH', 0, 0, 'FUCKYOUMEDITATION'),
('Official Server 2 (Offline)', 'flood escape', '37.114.41.126', 53642, 3, 'Hadi', 0, 0, '2015'),
('Official Server 3 (Offline)', 'nds', '37.114.41.126', 53643, 4, 'Hadi', 0, 0, '2015'),
('Official Server 4 (Offline)', '', '37.114.41.126', 53644, 5, 'Hadi', 0, 0, '2015'),
('Official Server 5 (Offline)', '', '37.114.41.126', 53645, 6, 'Hadi', 0, 0, '2015'),
('Official Server 6 (Offline)', '', '37.114.41.126', 53646, 7, 'Hadi', 0, 0, '2015'),
('Official Server 7 (Offline)', '', '37.114.41.126', 53647, 8, 'Hadi', 0, 0, '2015'),
('Official Server 8 (Offline)', '', '37.114.41.126', 53648, 9, 'Hadi', 0, 0, '2015'),
('Official Server 9 (Offline)', '', '37.114.41.126', 53649, 10, 'Hadi', 0, 0, '2015'),
('Official Server 10 (Offline)', '', '37.114.41.126', 53650, 11, 'Hadi', 0, 0, '2015'),
('Dxf\'s Server', '', 'release-replacement.gl.at.ply.gg', 22990, 12, 'dxf', 0, 0, '2015'),
('meditation\'s server!!! (2014)', '2014 (if am i hosting)', 'group-join.gl.at.ply.gg', 28325, 13, 'TheGuyWhoIsIdiot', 1, -1, '2014'),
('simples fandom', 'simple likes this place', '127.0.0.1', 53640, 14, 'simple', 100, 100, '2015'),
('RandomName\'s Awesome Server', 'test', 'schools-pb.gl.at.ply.gg', 35627, 15, 'RandomName', 69, -1, '2015\r\n'),
('Lookbehindyou\'s server', 'DO NOT MESS WITH LOOKBEHIND\'S SERVER OMG', 'various-belief.gl.at.ply.gg', 27643, 16, 'LookBehindYou', 0, 0, '2015'),
('epic1\'s server', ':wink:', 'wide-framework.gl.at.ply.gg', 12303, 17, 'Epic1', 0, 0, '2015');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitekeys`
--

CREATE TABLE `invitekeys` (
  `id` int NOT NULL,
  `invite_key` text NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `used_by` int NOT NULL,
  `created_on` int NOT NULL,
  `creator_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `invitekeys`
--

INSERT INTO `invitekeys` (`id`, `invite_key`, `is_used`, `used_by`, `created_on`, `creator_id`) VALUES
(1, 'testkey', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `read`
--

CREATE TABLE `read` (
  `read` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `read`
--

INSERT INTO `read` (`read`) VALUES
('simple here, this db has been wiped, you can view the full db in vmultra\'s archive server. yours truly, simple @dev.meblox');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `request_logs`
--

CREATE TABLE `request_logs` (
  `id` int NOT NULL,
  `payload` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `request_logs`
--

INSERT INTO `request_logs` (`id`, `payload`, `created_at`) VALUES
(1, 'username=UsernameHere&password=hhttttg', '2024-02-13 16:45:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cookie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `cookie`) VALUES
(1, 'ROBLOX', 'reset this cause unsecure', ''),
(2, 'Thermical', '$argon2id$v=19$m=65536,t=4,p=1$U29uME9nMUN4bDZZZi9QUA$2EX07pyN/GC2lmVMK7SYVv7uZkOZaeg6DfPemJ9x1c4', ''),
(3, 'TGWII', '$argon2id$v=19$m=65536,t=4,p=1$dGU2Z3ZZcjZaUDhPa2ZGMA$gP+2EMptbVZzem8vfVxQSznhuW8wJuLK6yVUb+pNqww', ''),
(4, 'newuser', '$argon2id$v=19$m=65536,t=4,p=1$bWFZZjZIZUxiNjRUMGZqWg$DHHyN9QU8mN5mIDkgGrctHxslYGUpoi8Weo/8a1Re8U', ''),
(5, 'hadi', '$argon2id$v=19$m=65536,t=4,p=1$YkpZMU5EVnFvVXg1NG5hTg$UaHXKUwuRjgr8Twb6e06Y9bjb/EdFuFzO7kNMtZyzVU', ''),
(6, 'TGWII1', '$argon2id$v=19$m=65536,t=4,p=1$UE40elpoa0tYdTBlTHNXMQ$7D41SAYtoCARYupXMpk9roY+dlP6mK29WwauhHSqeMU', ''),
(7, 'DoggoITA', '$2a$12$w8dew/rT9CXv6mwgwheSS.sG7l1ldKdieTpTBDyQBQ04STkHZr.zG\r\n', ''),
(8, 'RandomNameThe3rd', 'finnyfin...', 'test'),
(9, '! Leah', 'fuckyall', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameId`);

--
-- Indices de la tabla `invitekeys`
--
ALTER TABLE `invitekeys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `games`
--
ALTER TABLE `games`
  MODIFY `gameId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `invitekeys`
--
ALTER TABLE `invitekeys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
