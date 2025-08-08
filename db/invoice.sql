CREATE TABLE `invoices` (
  `id` integer PRIMARY KEY,
  `user_id` integer NOT NULL,
  `booking_id` integer NOT NULL,
  `stripe_invoice_id` varchar(255),
  `amount` integer NOT NULL,
  `currency` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `updated_at` timestamp DEFAULT (now()),
  `created_at` timestamp DEFAULT (now())
);
