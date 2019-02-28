-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 28 2019 г., 21:23
-- Версия сервера: 8.0.12
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uber`
--

-- --------------------------------------------------------

--
-- Структура таблицы `poezdki`
--

CREATE TABLE `poezdki` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `t_a` text NOT NULL,
  `t_b` text NOT NULL,
  `datatime` datetime NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `poezdki`
--

INSERT INTO `poezdki` (`id`, `price`, `t_a`, `t_b`, `datatime`, `status`) VALUES
(1, 87, 'Кондратьевский проспект, 62к7', 'Полюстровский проспект', '2028-02-19 19:09:00', 'created'),
(2, 87, 'Кондратьевский проспект, 62к7', 'Полюстровский проспект', '2028-02-19 19:09:00', 'created'),
(3, 268, 'улица Уточкина', 'проспект Металлистов, 81', '2028-02-19 19:24:00', 'created'),
(4, 61800, 'Гжатская улица, 22к1', 'Сибирская улица', '2028-02-19 19:27:00', 'created'),
(5, 182, 'муниципальный округ Академическое', 'Полюстровский проспект, 53', '2028-02-19 19:28:00', 'created'),
(6, 159, 'Туполевская улица', 'улица Карбышева, 9А', '2028-02-19 19:28:00', 'created'),
(7, 196, 'муниципальный округ Академическое', 'Полюстровский парк', '2028-02-19 19:30:00', 'created'),
(8, 89, 'территория Комендантский Аэродром', 'Сабировская улица, 45В', '2028-02-19 19:32:00', 'created'),
(9, 177, 'проспект Королёва, 17', 'Кушелевка', '2028-02-19 19:34:00', 'created'),
(10, 83, 'Лабораторный проспект, 31', 'Кондратьевский проспект, 38', '2019-02-28 19:46:00', 'created'),
(11, 240, 'муниципальный округ Озеро Долгое', 'улица Верности, 17', '2019-02-28 19:51:00', 'created'),
(12, 15295, 'улица Курчатова', 'муниципальный округ Пискарёвка', '2019-02-28 19:52:00', 'created'),
(13, 10298, 'Петрозаводская улица', 'улица Воскова', '2019-02-28 20:02:00', 'created'),
(14, 161, 'Пискарёвка', 'Полюстровский проспект, 50', '2019-02-28 20:05:00', 'created'),
(15, 184, 'Политехническая улица, 29Н', 'Серебристый бульвар, 12к3', '2019-02-28 20:08:00', 'created'),
(16, 152, 'проспект Сизова, 20к1', 'Новороссийская улица, 46к2', '2019-02-28 20:11:00', 'created'),
(17, 156, 'Стародеревенская улица, 11К', 'Вербная улица, 19к1', '2019-02-28 20:14:00', 'created'),
(18, 452, 'Гагаринская улица, 77к1', 'проспект Авиаконструкторов, 28', '2019-02-28 20:18:46', 'created'),
(19, 99, 'Комендантский проспект, 20к2', 'аллея Поликарпова', '2019-02-28 20:24:06', 'created'),
(20, 8202, 'улица Графтио', 'Большая Посадская улица, 16', '2019-02-28 20:24:36', 'created'),
(21, 10642, 'Дворцовая набережная', 'Академический район', '2019-02-28 20:25:49', 'created'),
(22, 216, 'Кондратьевский проспект', 'Невский проспект, 85АД', '2019-02-28 20:54:51', 'created'),
(23, 325, 'Коломяжский проспект, 10БЕ', 'Митрофаньевское шоссе, 2к7', '2019-02-28 20:57:22', 'created'),
(24, 254, 'проспект Маршала Блюхера, 1к2', 'Измайловский проспект, 15', '2019-02-28 20:57:40', 'created');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `fio` text NOT NULL,
  `mail` text NOT NULL,
  `number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `poezdki`
--
ALTER TABLE `poezdki`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `poezdki`
--
ALTER TABLE `poezdki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;