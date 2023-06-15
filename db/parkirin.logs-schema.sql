CREATE TABLE `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(43) NOT NULL,
  `user_name` varchar(8644) NOT NULL,
  `destination_id` varchar(18) NOT NULL,
  `destination_name` varchar(200) NOT NULL,
  `destination_rating` varchar(305) NOT NULL,
  `destination_category` varchar(305) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
