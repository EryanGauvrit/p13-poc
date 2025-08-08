CREATE TABLE `accounts` (
  `id` integer PRIMARY KEY,
  `user_id` integer NOT NULL,
  `fist_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthdate` varchar(255),
  `address` varchar(255),
  `updated_at` timestamp DEFAULT (now()),
  `created_at` timestamp DEFAULT (now())
);
