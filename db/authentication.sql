CREATE TABLE `users` (
  `id` integer PRIMARY KEY,
  `email` varchar(255) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` timestamp,
  `updated_at` timestamp DEFAULT (now()),
  `created_at` timestamp DEFAULT (now()),
  `role_id` integer
);

CREATE TABLE `roles` (
  `id` integer PRIMARY KEY,
  `name` varchar(255) UNIQUE NOT NULL,
  `updated_at` timestamp DEFAULT (now()),
  `created_at` timestamp DEFAULT (now())
);

ALTER TABLE `roles` ADD FOREIGN KEY (`id`) REFERENCES `users` (`role_id`);
