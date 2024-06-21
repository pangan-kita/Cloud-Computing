-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2024 pada 17.55
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pangan_kita_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `photo`) VALUES
(1, 'vegetables', 'vegetables.jpg'),
(2, 'spices', 'spices.jpg'),
(3, 'meats', 'meats.jpg'),
(4, 'fruits', 'fruits.jpg'),
(5, 'fish', 'fish.jpg'),
(6, 'grains', 'grains.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `food_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`id`, `name`, `food_id`) VALUES
(1, 'vitamin C and K', 1),
(2, 'vitamin C and A', 2),
(3, 'antioxidants and vitamin K', 3),
(4, 'vitamins C,to iron', 4),
(5, 'vitamin A, K, C', 5),
(6, 'vitamin K', 6),
(7, 'eugenol acetate', 7),
(8, 'alfaterpineol', 8),
(9, 'vitamin A, B, E.', 9),
(10, 'vitamin B and D', 10),
(11, 'protein and fat', 11),
(12, 'vitamin C', 12),
(13, 'vitamin B', 13),
(14, 'vitamin A', 14),
(15, 'vitamin B12', 15),
(16, 'vitamin B', 16),
(17, 'protein and fiber', 17),
(18, 'vitamin B12 and D', 18),
(19, 'protein and fat', 19),
(20, 'vitamin B6', 20),
(21, 'vitamin C', 21),
(22, 'vitamin A and C', 22),
(23, 'vitamin C', 23),
(24, 'calories, fat, protein and calcium', 24),
(25, 'vitamin D', 25),
(26, 'carbs', 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `whatsapp_number` varchar(15) NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `food`
--

INSERT INTO `food` (`id`, `name`, `description`, `photo`, `whatsapp_number`, `price`, `category_id`) VALUES
(1, 'kale vegetables', 'kale is one snack that is rich in nutrients, such as antioxidants, vitamin C, beta carotene, and vitamin K', 'kale.jpg', '6282122506110', 15000, 1),
(2, 'beetroot vegetable', 'beets contain fiber, folate, phosphorus, as well as vitamins C and A', 'beetrootvegetable.jpg', '6282122506110', 30000, 1),
(3, 'spinach vegetable', 'this green vegetable is high in antioxidants and vitamin K', 'spinachvegetable.jpg', '6282122506110', 10000, 1),
(4, 'broccoli vegetable', 'broccoli contains fiber, vitamin C, K, potassium, and iron', 'broccolivegetable.jpg', '6282122506110', 40000, 1),
(5, 'carrots', 'carrots contain carbohydrates, fiber, and protein. In addition, this healthy food is also high in iron, vitamins A, K, and C', 'carrots.jpg', '6282122506110', 14500, 1),
(6, 'pepper', 'pepper is often used as a spice in making soups and various stir-fries, which contains iron (Fe), vitamin K, manganese, piperine, piperidine, starch, protein, fat, piperic acid, chavisin, felanden, cariolylene and terpenes', 'pepper.jpg', '6282122506110', 28275, 2),
(7, 'cloves', 'cloves are often used as a cough medicine, especially coughing up phlegm. The eugenol content in cloves has expectorant properties', 'cloves.jpg', '6282122506110', 20000, 2),
(8, 'cinnamon', 'contains antimicrobial compounds, such as linalool, eugenol, cinnamaldehyde, and alpha-terpineol that can eradicate microorganisms that cause dental caries and oral candidiasis', 'cinnamon.jpg', '6282122506110', 36000, 2),
(9, 'candlenut', 'the chemical contents contained in candlenuts are glycerides, linolet, palmitic, stearic, myristic acids, oil acids, proteins, vitamin B1, and fatty substances ', 'candlenut.jpg', '6282122506110', 33900, 2),
(10, 'beef', 'rich in protein, which plays a role in aiding muscle growth and supporting muscle mass. Contains iron and 4 essential vitamins such as niacin, riboflavin, vitamin B6 and B12 which are great for reducing fatigue and tiredness', 'beef.jpg', '6282122506110', 125000, 3),
(11, 'mutton', 'goat meat contains more protein and iron than beef. This makes goat meat a good choice for those of you who are looking for healthy red meat and want to maintain your weight', 'mutton.jpg', '6282122506110', 67180, 3),
(12, 'apple', 'contains various essential nutrients such as fiber, vitamin C, vitamin A, and potassium. Fiber helps maintain digestive health and prevent constipation, while vitamins C and A play a role in strengthening the immune system', 'apple.jpg', '6282122506110', 20000, 4),
(13, 'grapes', 'it is high in antioxidants, so it can help the body in lowering high blood pressure and has B vitamins.', 'grapes.jpg', '6282122506110', 30000, 4),
(14, 'tilapia', 'it contains calcium, iron, protein, and vitamin A. The benefits of these nutrients include maintaining cholesterol, preventing cancer, and boosting immunity.', 'tilapia.jpg', '6282122506110', 30000, 5),
(15, 'salmon fish', 'the nutrients present in salmon are several minerals such as potassium, selenium, and vitamin B-12. Another content that is considered the most useful in salmon is omega-3 fatty acids', 'salmonfish.jpg', '6282122506110', 160000, 5),
(16, 'wheat', 'carbs', 'wheat.jpg', '6282122506110', 25000, 6),
(17, 'rice', 'carbs', 'rice.jpg', '6282122506110', 15000, 6),
(18, 'chicken meat', 'a number of nutrients such as calcium, magnesium, phosphorus, potassium, sodium, as well as some vitamin C, vitamin B1', 'chickenmeat.jpg', '6282122506110', 30000, 3),
(19, 'buffalo meat', 'has a high content of protein, fat and biochemicals', 'buffalomeat.jpg', '6282122506110', 79000, 3),
(20, 'banana', 'has the nutrients of calories, vitamins, fat and fiber', 'banana.jpg', '6282122506110', 20000, 4),
(21, 'oranges', 'contains essential nutrients such as vitamin C, calcium, and vitamin D, all of which are important for healthy bone growth', 'oranges.jpg', '6282122506110', 15000, 4),
(22, 'mango', 'mangoes also contain various essential nutrients, including vitamin C, vitamin A, dietary fiber. The natural sugar content in mangoes provides good energy for the body', 'mango.jpg', '6282122506110', 35000, 4),
(23, 'dragon fruit', 'contains vitamin C and lycopene which are proven to reduce the number of cancer cells in the body. can prevent cancer by protecting cells from free radical damage', 'dragonfruit.jpg', '6282122506110', 40000, 4),
(24, 'gourami fish', 'is rich in nutrients and has calories, fat and protein that are good for the body', 'gouramifish.jpg', '6282122506110', 45000, 5),
(25, 'tuna fish', 'containing omega3s, tuna is known to contain a variety of important nutrients that the body needs, such as vitamin D, calcium, potassium, choline, zinc, and phosphorus', 'tunafish.jpg', '6282122506110', 79500, 5),
(26, 'oats', 'it is high in fiber which also contains various important nutrients for the body and then Nutrients include protein and carbohydrates', 'oats.jpg', '6282122506110', 23000, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`) VALUES
(6, 'arya@gmail.com', 'arya', 'pbkdf2:sha256:600000$oIxY2ZDXRTgOQ32D$2bc682c8330d6ade33ac8db160a7e3c61c91c5e7d57dc48da4c74bf32b564e19'),
(7, 'Aryagunawan@example.com', 'Aryaa', 'pbkdf2:sha256:600000$Bd76CD0hH5rf6RAN$330807069764351f1220770b3ecc6a4512d62e595678ad44e50b703248b0b277'),
(8, 'Aryagunawan@example123.com', 'Aryaa123', 'pbkdf2:sha256:600000$1Pqiv0p3FjAX8zSJ$877cde28407a8ab75e6726c5166559d787867f578bb2ac304ba271fc6f00a397');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indeks untuk tabel `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`);

--
-- Ketidakleluasaan untuk tabel `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
