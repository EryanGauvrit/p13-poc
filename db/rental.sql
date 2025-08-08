CREATE TABLE `agencies` (
  `id` integer PRIMARY KEY,
  `name` varchar(255) UNIQUE NOT NULL,
  `website` varchar(255),
  `email` varchar(255),
  `phone_number` varchar(255),
  `updated_at` timestamp DEFAULT (now()),
  `created_at` timestamp DEFAULT (now())
);

CREATE TABLE `rentals` (
  `id` integer PRIMARY KEY,
  `starting_city` varchar(255) NOT NULL,
  `finish_city` varchar(255) NOT NULL,
  `start_date` timestamp NOT NULL,
  `end_date` timestamp NOT NULL,
  `vehicle_id` integer NOT NULL,
  `agency_id` integer NOT NULL
);

CREATE TABLE `vehicles` (
  `id` integer PRIMARY KEY,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `plate_number` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `price_per_day` float NOT NULL,
  `currency` varchar(255) NOT NULL,
  `category_id` integer NOT NULL
);

CREATE TABLE `categories` (
  `id` integer PRIMARY KEY,
  `name` varchar(255) NOT NULL
);

ALTER TABLE `categories` ADD FOREIGN KEY (`id`) REFERENCES `vehicles` (`category_id`);

ALTER TABLE `vehicles` ADD FOREIGN KEY (`id`) REFERENCES `rentals` (`vehicle_id`);

ALTER TABLE `agencies` ADD FOREIGN KEY (`id`) REFERENCES `rentals` (`agency_id`);
