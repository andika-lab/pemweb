SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `products` (`id`, `name`, `price`, `image`, `created_at`, `updated_at`) VALUES
(39, 'sabun', 5000, '/upload/https://1.bp.blogspot.com/--Ab8vAU3vgs/XYlr5VIvdkI/AAAAAAAAAPg/tIRk4X0dGmw2llVTsTUU3E7n2jbvCFccACLcBGAsYHQ/w1200-h630-p-k-no-nu/sabunbatang-suvenir.jpg', '2023-11-02 13:30:25', NULL),
(40, 'detergen', 5000, '/upload/https://down-id.img.susercontent.com/file/sg-11134201-23010-b80qj858mwlv1a', '2023-11-02 13:34:12', NULL),
(41, 'sunscreen', 15000, '/upload/https://i.pinimg.com/736x/e3/fe/c2/e3fec20b516f44e36def16746038cba8.jpg', '2023-11-02 13:36:06', NULL),
(42, 'bedak', 10000, '/upload/https://down-id.img.susercontent.com/file/sg-11134201-22110-9q9gg2e6yjjv4b', '2023-11-02 13:42:30', NULL);

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user',
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `photo`, `created_at`, `updated_at`) VALUES
(5, 'Muhammad Andika Putra', 'Muhammadandikaputra@gmail.com', 'user', '$2y$10$Ee8y08Qtaim0X68bHwLGJe2v1wuLcnHB.mwXOLQLiO0XA2y9bXW8S', NULL, '2023-10-28 13:45:09', NULL);

ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;


ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;


email: andika@admin.com
password: 123 