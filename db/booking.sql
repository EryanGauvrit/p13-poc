CREATE TABLE `bookings` (
  `id` integer PRIMARY KEY,
  `user_id` integer NOT NULL,
  `rental_id` integer NOT NULL,
  `vehicle_id` integer NOT NULL,
  `invoice_id` integer,
  `status` varchar(255) NOT NULL,
  `updated_at` timestamp DEFAULT (now()),
  `created_at` timestamp DEFAULT (now())
);
