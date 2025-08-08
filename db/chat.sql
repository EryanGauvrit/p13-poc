CREATE TABLE `messages` (
  `id` integer PRIMARY KEY,
  `chat_id` integer NOT NULL,
  `user_id` integer NOT NULL,
  `content` varchar(255) NOT NULL,
  `updated_at` timestamp DEFAULT (now()),
  `created_at` timestamp DEFAULT (now())
);

CREATE TABLE `chats` (
  `id` integer PRIMARY KEY,
  `user1_id` integer NOT NULL,
  `user2_id` integer NOT NULL,
  `updated_at` timestamp DEFAULT (now()),
  `created_at` timestamp DEFAULT (now())
);

ALTER TABLE `chats` ADD FOREIGN KEY (`id`) REFERENCES `messages` (`chat_id`);
