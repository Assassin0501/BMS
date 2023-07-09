-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 03:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `booking_datetime` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL COMMENT '1-booked,2-booking cancelled,3-booking fullfilled',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `booking_datetime`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'Bk1', '2023-07-14', 1, 8, '2023-07-09 05:34:23', '2023-07-09 05:34:23'),
(12, 'Bk2', '2023-07-21', 2, 8, '2023-07-09 07:53:35', '2023-07-09 07:53:46'),
(13, 'Reservation1', '2023-07-22', 1, 9, '2023-07-09 07:54:48', '2023-07-09 07:54:48'),
(14, 'Reservation2', '2023-07-28', 3, 9, '2023-07-09 07:54:59', '2023-07-09 07:54:59'),
(15, '12July Booking', '2023-07-12', 1, 10, '2023-07-09 07:58:20', '2023-07-09 07:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_14_091152_create_bookings_table', 1),
(6, '2023_06_14_091620_create_webpage_table', 1),
(7, '2023_06_14_092713_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `user_type` smallint(6) DEFAULT NULL COMMENT '1-admin,2-users',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone_no`, `user_type`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Arya Madan', 'arya05012004@gmail.com', NULL, '08369714348', 1, '$2y$10$Yx6Te87nuSL/X4pmUMi7aeE2Dl5RfNRXZy4YpcEpP6GZbRR/.Jdmm', NULL, '2023-07-09 01:51:04', '2023-07-09 08:05:31'),
(9, 'Ameya Madan', 'ameya.madan@gmail.com', NULL, '7844651231', 2, '$2y$10$b3jsuuyJZSyGMSr4WMZeJejePcuGipdVAMYNZiVRuUc6l66bkEsju', NULL, '2023-07-09 07:54:21', '2023-07-09 07:54:21'),
(10, 'Avadhut Madan', 'avadhut.madan@gmail.com', NULL, '541851851', 2, '$2y$10$OJM40p01d30fX7GSkiYZp.TxWJ/XgW4eKb5DWgi5YzciUTtpEmnji', NULL, '2023-07-09 07:57:48', '2023-07-09 07:57:48'),
(11, 'Roopali Madan', 'roopali.madan@gmail.com', NULL, '7846361849', 2, '$2y$10$CqBuB.YhXeN7J1fPZZ7IxeNZdrwj2kUcCeuY/C/ahj/RJXTYVoRsi', NULL, '2023-07-09 08:04:52', '2023-07-09 08:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `webpage`
--

CREATE TABLE `webpage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `html` text DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webpage`
--

INSERT INTO `webpage` (`id`, `name`, `slug`, `html`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, 'about-us', 'about-us', '<div class=\"container\">\r\n<section class=\"container m-4\" id=\"about-us\">\r\n            <h6 class=\"display-5 text-center\">About Us</h6>\r\n            <div class=\"row\">\r\n                <div class=\"col-md-5\">\r\n                    <div class=\"container\">\r\n                        <img src=\"http://127.0.0.1:8000/assets/images/logo.png\" class=\"d-block w-100\" alt=\"about us\">\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-md-7\">\r\n                    <p style=\"text-align: justify;\">\r\n                    <h1 class=\"text-center\" style=\"font-family: Slabo 27px;\">Introducing Sunrise Hotels</h1>\r\n                    <br>\r\n                    <p style=\"text-align: justify; font-family: EB Garamond; font-size: 20px;\">Our hotel was founded by Mr. George Fernandes, a\r\n                        visionary entrepreneur with a passion for creating exceptional hospitality experiences. With his\r\n                        keen business acumen and commitment to excellence, Mr. Fernandes established our hotel as a premier\r\n                        destination for luxury and comfort.</p>\r\n                    <br>\r\n                    <p style=\"text-align: justify; font-family: EB Garamond; font-size: 20px;\"> Overseeing the day-to-day operations and ensuring the highest\r\n                        standards of service is Mr. Karan Singh, our esteemed manager. With a wealth of experience in the hospitality industry, Mr.\r\n                        Singh leads our dedicated team to provide personalized and memorable experiences for our valued\r\n                        guests. His leadership and attention to detail ensure that every aspect of your stay is\r\n                        meticulously taken care of.</p>\r\n                    <br>\r\n                    <p style=\"text-align: justify; font-family: EB Garamond; font-size: 20px;\">Under the guidance of Mr. George Fernandes and the expertise of Mr.\r\n                        Karan Singh, our hotel has\r\n                        flourished into a renowned establishment that epitomizes luxury, elegance, and exceptional\r\n                        service. We are proud to have such passionate individuals leading our team, dedicated to\r\n                        creating unforgettable moments for every guest who walks through our doors.</p>\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"row\">\r\n                <h6 class=\"display-6 text-center\" style=\"font-family: Slabo 27px;\">What Makes us Unique</h6>\r\n                <div class=\"col-md-4\">\r\n                    <div class=\"container text-center\">\r\n                        <span class=\"bi bi-gift-fill color-teal icon-lg\"></span>\r\n                        <p>Exclusive Offers and Packages</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-md-4\">\r\n                    <div class=\"container text-center\">\r\n                        <span class=\"bi bi-cup-straw color-teal icon-lg\"></span>\r\n                        <p>Dining and Culinary Experiences</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-md-4\">\r\n                    <div class=\"container text-center\">\r\n                        <span class=\"bi bi-buildings-fill color-teal icon-lg\"></span>\r\n                        <p>Accommodation Options</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>\r\n</div>', 1, 1, 1, '2023-06-26 00:37:32', '2023-06-26 08:26:16'),
(9, 'team', 'team', '<div class=\"container\">\r\n<section id=\"team\" class=\"container m-4\">\r\n            <h6 class=\"display-5 text-center\"> Our Innovative Team</h6>\r\n            <div class=\"container\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-md-4 d-flex align-center justify-content-center\">\r\n                        <div style=\"width: 300px;\">\r\n                            <img class=\"card-img-top\" src=\"http://localhost:8000/assets/images/person.png\">\r\n                            <div class=\"card-body text-center\">\r\n                                <h4 class=\"card-title\">George Fernandes</h4>\r\n                                <p class=\"card-text\">Founder of the Hotel</p>\r\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-facebook icon-sm m-2\"></i></a>\r\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-instagram icon-sm m-2\"></i></a>\r\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-linkedin icon-sm m-2\"></i></a>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"col-md-4 d-flex align-center justify-content-center\">\r\n                        <div style=\"width: 300px;\">\r\n                            <img class=\"card-img-top\" src=\"http://localhost:8000/assets/images/person.png\">\r\n                            <div class=\"card-body text-center\">\r\n                                <h4 class=\"card-title\">Karan Singh</h4>\r\n                                <p class=\"card-text\">Manager of the Hotel</p>\r\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-facebook icon-sm m-2\"></i></a>\r\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-instagram icon-sm m-2\"></i></a>\r\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-linkedin icon-sm m-2\"></i></a>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"col-md-4 d-flex align-center justify-content-center\">\r\n                        <div style=\"width: 300px;\">\r\n                            <img class=\"card-img-top\" src=\"http://localhost:8000/assets/images/person.png\">\r\n                            <div class=\"card-body text-center\">\r\n                                <h4 class=\"card-title\">Anil Mulchandani</h4>\r\n                                <p class=\"card-text\">Treasurer</p>\r\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-facebook icon-sm m-2\"></i></a>\r\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-instagram icon-sm m-2\"></i></a>\r\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-linkedin icon-sm m-2\"></i></a>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>\r\n</div>', 1, 1, 1, '2023-06-26 04:28:24', '2023-06-26 08:26:59'),
(10, 'Contact Us', 'contact-us', '<div class=\"container\">\r\n <section id=\"contact\" class=\"container m-4\">\r\n            <h6 class=\"display-5 text-center\">Contact Us</h6>\r\n            <div class=\"row\">\r\n                <div class=\"col-md-6\">\r\n                    <div class=\"container p-3\">\r\n                        <p class=\"text-muted text-center fs-3\">Here\'s our contact info</p>\r\n                        <div class=\"text-black-s text-center fs-4\">Our email</div>\r\n                        <div class=\"text-black-50 text-center fs-5\">sunrisehotels@gmail.com</div>\r\n                        <div class=\"text-black-s text-center fs-4\">Our Phone No.</div>\r\n                        <div class=\"text-black-50 text-center fs-5\">0251-220-123</div>\r\n                        <div class=\"text-black-s text-center fs-4\">Our Address</div>\r\n                        <div class=\"text-black-50 text-center fs-5\">Calanguate Beach,Goa<br>Goa 403 519</div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-md-6\">\r\n                    <div class=\"container\">\r\n                        <p class=\"text-muted text-center fs-3\">You can also Write to us</p>\r\n                        <div class=\"container p-3\">\r\n                                <div class=\"card-body\">\r\n                                    <form>\r\n                                        <div class=\"form-group\">\r\n                                            <label for=\"name\" class=\"form-label\"> Enter Your Name</label>\r\n                                            <input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\">\r\n                                        </div>\r\n                                        <div class=\"form-group\">\r\n                                            <label for=\"emailid\" class=\"form-label\"> Enter Your Email</label>\r\n                                            <input type=\"text\" class=\"form-control\" name=\"email\" id=\"emailid\">\r\n                                        </div>\r\n                                        <div class=\"form-group\">\r\n                                            <label for=\"subject\" class=\"form-label\"> Enter Your Subject</label>\r\n                                            <input type=\"text\" class=\"form-control\" name=\"subject\" id=\"subject\">\r\n                                        </div>\r\n                                        <div class=\"form-group\">\r\n                                            <label for=\"message\" class=\"form-label\"> Enter Your Message</label>\r\n                                            <textarea type=\"text\" class=\"form-control\" name=\"message\"\r\n                                                id=\"message\"></textarea>\r\n                                        </div>\r\n<br>                                        <div class=\"form-group text-center\">\r\n                                            <input type=\"submit\" class=\"btn btn-outline-dark\" value=\"Send Message\">\r\n                                        </div>\r\n                                    </form>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                </div>\r\n            </div>\r\n        </section>\r\n</div>', 1, 1, NULL, '2023-06-26 04:30:13', '2023-06-26 04:30:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webpage`
--
ALTER TABLE `webpage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `webpage`
--
ALTER TABLE `webpage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
