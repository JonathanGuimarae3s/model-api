-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2023 às 14:50
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `model_api`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameClient` varchar(255) NOT NULL,
  `responsible` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clients`
--

INSERT INTO `clients` (`id`, `nameClient`, `responsible`, `email`, `phoneNumber`, `age`, `created_at`, `updated_at`, `password`) VALUES
(1, 'eu', 'eu', 'eu@gmail.com', 'ru', '25', NULL, NULL, ''),
(2, 'jonathanff', 'jonathan', 'jsona@gmail.com', 'i121212', '12', '2023-10-24 17:01:24', '2023-10-24 17:01:24', ''),
(3, 'jonathan', 'jonathan', 'jsona@gmail.com', 'i121212', '12', '2023-10-26 06:09:57', '2023-10-26 06:09:57', ''),
(4, 'jonathan', 'jonathan', 'jsona@gmail.com', 'i121212', '12', '2023-10-26 06:17:59', '2023-10-26 06:17:59', ' 123123'),
(5, 'aa', 'aaa', 'aaa', 'aaa', '22', '2023-10-26 06:37:22', '2023-10-26 06:37:22', 'aa'),
(6, 'aa', 'aaa', 'aaa', 'aaa', '22', '2023-10-26 06:38:00', '2023-10-26 06:38:00', 'aaaaa'),
(7, 'aaaaaaa', 'aaaaaaaaaaa', 'aaaaaaaaaaa', 'aaaa', '23', '2023-10-26 06:42:07', '2023-10-26 06:42:07', 'aaaaaaaaaa'),
(8, 'Elias ', 'Vasco da gama', 'vascodagama@gmail.com', '21998989898', '33', NULL, NULL, 'elias'),
(9, 'Jonathan Guimarães', 'ggg', 'gugujonathan@gmail.com', '21982441600', '22', '2023-10-27 14:57:48', '2023-10-27 14:57:48', '2222');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
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
-- Estrutura para tabela `institutions`
--

CREATE TABLE `institutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameInstitution` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `institutions`
--

INSERT INTO `institutions` (`id`, `nameInstitution`, `address`, `phoneNumber`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Senac', ' R. Cel. Carlos Matos, 86 - Centro, Nova Iguaçu - RJ, 26210-200', '02120189041', 'senac@gmail.com', 'senac123', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `segment` varchar(255) NOT NULL,
  `nameLesson` varchar(255) NOT NULL,
  `period` varchar(255) NOT NULL,
  `startTime` varchar(255) NOT NULL,
  `endTime` varchar(255) NOT NULL,
  `professor` varchar(255) NOT NULL,
  `students` varchar(255) NOT NULL,
  `institution_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lessons`
--

INSERT INTO `lessons` (`id`, `segment`, `nameLesson`, `period`, `startTime`, `endTime`, `professor`, `students`, `institution_id`, `created_at`, `updated_at`) VALUES
(3, 'Barbearia', 'Barbearia Moderna', 'Manha', '8:00', '12:00', 'Elias da Gama', '5', 1, '2023-10-21 23:37:05', '2023-10-21 23:37:05'),
(4, '42', 'mattos', 'Tarde', '1232', '1231', 'aaaa', '2', 1, '2023-10-21 23:38:06', '2023-10-24 16:45:35'),
(5, 'AAAAA', 'AAA', 'Noite', '222', '22', 'AAA', '222', 1, '2023-10-21 23:37:05', '2023-10-21 23:37:05'),
(6, 'aaaaaaaaaaaaaaaaaaaa', 'sa', 'aaaaaaaaaa', '22', '2', 'aaaaaaaaaa', '222', 1, '2023-10-24 16:49:37', '2023-10-24 16:49:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_09_124624_create_clients_table', 1),
(6, '2023_10_09_124624_create_schedulings_table', 1),
(7, '2023_10_09_124625_create_institutions_table', 1),
(8, '2023_10_09_124625_create_lessons_table', 1),
(9, '2023_10_13_220234_add_foreign_key_to_schedulings_table', 1),
(10, '2023_10_13_220443_add_foreign_key_to_lessons_table', 1),
(12, '2023_10_27_005310_add_hour_to_scheduling', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
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
-- Estrutura para tabela `schedulings`
--

CREATE TABLE `schedulings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) NOT NULL,
  `confirmationCode` varchar(255) NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hour` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `schedulings`
--

INSERT INTO `schedulings` (`id`, `date`, `confirmationCode`, `client_id`, `lesson_id`, `created_at`, `updated_at`, `hour`) VALUES
(1, '23-9-2023', '133', 1, 4, NULL, NULL, ''),
(3, '23-9-2023', '333333333333', 1, 3, NULL, NULL, ''),
(4, '23-9-2023', '22222222', 1, 5, NULL, NULL, ''),
(8, 'mattos', '12', 1, 4, '2023-10-27 04:09:09', '2023-10-27 04:09:09', ''),
(11, 'mattos', '125', 1, 4, '2023-10-27 04:32:12', '2023-10-27 04:32:12', ''),
(13, 'mattos', '124', 1, 4, '2023-10-27 04:42:13', '2023-10-27 04:42:13', '121'),
(17, 'mattos', '1245', 1, 4, '2023-10-27 07:10:46', '2023-10-27 07:10:46', '121'),
(20, '30/05/2023', '35wm8', 8, 3, '2023-10-27 07:29:03', '2023-10-27 07:29:03', '01:29:00'),
(21, '30/05/2023', 'UN8oM', 8, 3, '2023-10-27 14:58:40', '2023-10-27 14:58:40', '09:58:00'),
(22, '30/05/2023', 'PK2uQ', 8, 3, '2023-10-27 14:59:29', '2023-10-27 14:59:29', '13:59:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_institution_id_foreign` (`institution_id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `schedulings`
--
ALTER TABLE `schedulings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedulings_confirmationcode_unique` (`confirmationCode`),
  ADD KEY `schedulings_lesson_id_foreign` (`lesson_id`),
  ADD KEY `schedulings_client_id_foreign` (`client_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `schedulings`
--
ALTER TABLE `schedulings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

--
-- Restrições para tabelas `schedulings`
--
ALTER TABLE `schedulings`
  ADD CONSTRAINT `schedulings_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `schedulings_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
