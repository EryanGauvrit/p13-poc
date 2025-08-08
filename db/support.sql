CREATE TABLE `support_tickets` (
  `id` integer PRIMARY KEY,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'PENDING',
  `updated_at` timestamp DEFAULT (now()),
  `created_at` timestamp DEFAULT (now())
);
