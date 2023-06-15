CREATE TABLE `bookmarks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destination_id` varchar(18) NOT NULL,
  `user_id` varchar(18) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
