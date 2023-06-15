CREATE TABLE `destinations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(43) NOT NULL,
  `description` varchar(8644) NOT NULL,
  `category` varchar(18) NOT NULL,
  `price` int NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `image_url` varchar(305) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `maps_url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=944 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
