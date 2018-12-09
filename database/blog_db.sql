-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2018 at 05:24 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

DROP TABLE `categories`;
DROP TABLE `comments`;
DROP TABLE `migrations`;
DROP TABLE `password_resets`;
DROP TABLE `permissions`;
DROP TABLE `permission_role`;
DROP TABLE `permission_user`;
DROP TABLE `posts`;
DROP TABLE `post_tag`;
DROP TABLE `roles`;
DROP TABLE `role_user`;
DROP TABLE `users`;
DROP TABLE `tags`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'uncategorized', 'uncategorized', NULL, NULL),
(2, 'Accessories', 'tips-and-tricks', NULL, NULL),
(3, 'Handbags', 'handbags', NULL, NULL),
(4, 'Ready to Wear', 'ready-to-wear', NULL, NULL),
(5, 'Eyewear', 'Eyewear', NULL, NULL),
(6, 'Fine Jewelry', 'fine-jewelry', NULL, NULL),
(7, 'Watches', 'watches', NULL, NULL),
(8, 'Mens Wear', 'mens-wear', NULL, NULL),
(9, 'Shoes', 'shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author_name`, `author_email`, `author_url`, `body`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Kimberly Leuschke Sr.', 'lherman@auer.net', 'eichmann.biz', 'Illo ipsa magni et occaecati recusandae pariatur. Illum eos similique porro nulla illum veniam. Sit in nesciunt rerum voluptas. Illum occaecati explicabo ipsum velit et quod voluptatem.\n\nQuis accusantium qui explicabo eveniet est. Velit ipsa voluptate eum placeat. Sit commodi eveniet blanditiis incidunt. Necessitatibus ea eveniet enim ea.\n\nModi veniam dolor quidem tempora. Magnam voluptatem aut sit id. Est sed in id molestias quod voluptatem.\n\nExpedita velit esse qui quia aspernatur. Iusto eveniet qui vel officiis officia eveniet doloremque.\n\nNecessitatibus est assumenda consequatur autem. Mollitia quos reprehenderit asperiores culpa vitae hic. Et dicta mollitia odio eaque perspiciatis voluptatum. Magni fugit adipisci dignissimos inventore eaque.', 33, '2018-10-29 08:58:23', '2018-10-29 08:58:23'),
(2, 'Prof. Beverly Kling DVM', 'mona.gulgowski@gmail.com', 'schulist.com', 'Quis ipsa et veniam alias doloremque commodi. Minima alias maiores delectus saepe sed magni. Aut quia aut sunt minima.\n\nRerum esse autem consequatur incidunt. Iusto doloribus voluptatibus veritatis quaerat vero adipisci consequatur non. Illum enim officia expedita aliquam corrupti dolor.\n\nA et aut voluptatem tempora possimus. Tempore voluptas ut molestiae culpa sed velit aut eaque. Esse ea tempora eveniet cumque.\n\nEt voluptatem illum temporibus reprehenderit nesciunt exercitationem velit. Quidem debitis similique dolorem voluptas ut id sit. Ut corrupti harum cupiditate rerum excepturi ratione id consequuntur. Et molestiae dolore et voluptatum sit molestiae atque.', 33, '2018-10-29 09:58:23', '2018-10-29 09:58:23'),
(3, 'Fidel Tillman', 'darion68@yahoo.com', 'armstrong.com', 'Quidem qui et explicabo odit sapiente quaerat tempora. Vel impedit hic debitis quisquam. Nobis voluptas in non dignissimos aut suscipit.\n\nIpsa quidem aperiam ea non. Ab aliquam ipsa consequuntur cumque voluptate. Deserunt quo sequi id rerum aut ut odio sint.', 33, '2018-10-29 10:58:23', '2018-10-29 10:58:23'),
(4, 'Mekhi Oberbrunner', 'thompson.hazel@gmail.com', 'harris.net', 'Pariatur cum sed unde sequi velit eveniet quam. Eos amet qui ut natus cum autem. Ratione optio sed reiciendis cum.\n\nAut saepe est dolor iste. Repudiandae porro eum pariatur eligendi maiores.', 32, '2018-10-19 08:58:23', '2018-10-19 08:58:23'),
(5, 'Dayna Bosco', 'hand.kelli@hotmail.com', 'reilly.net', 'Inventore ea ipsam temporibus nesciunt est. Ea totam possimus laboriosam ut nemo voluptas nihil. Expedita soluta voluptatem officia nihil amet libero. Non et unde numquam molestiae quam numquam.\n\nQuibusdam quae qui natus delectus eum. Itaque quae aut ex accusamus dolore eaque. Ab rerum ea nihil unde ad.\n\nVoluptas placeat est accusantium eaque cupiditate. Cum quaerat nostrum asperiores aut. Optio quis est explicabo. Et quasi asperiores fugiat nostrum est.', 32, '2018-10-19 09:58:23', '2018-10-19 09:58:23'),
(6, 'Rylee Hammes', 'hammes.allan@gmail.com', 'predovic.info', 'Tenetur ab minima aut dolorem. Dolor recusandae unde ut nobis beatae. Alias similique fugit omnis maxime ad cum. Et earum voluptas incidunt quasi deleniti voluptas.', 32, '2018-10-19 10:58:23', '2018-10-19 10:58:23'),
(7, 'Dr. Matteo Collier', 'ofunk@schaefer.info', 'hermiston.com', 'Aliquid est pariatur excepturi consequatur. Consequuntur ipsa aut sint quos fugit earum nisi dolor. Id ullam molestiae quidem sit ab eius. Et ut temporibus odit sit.\n\nEt quia sit iusto. Aspernatur quo porro amet nostrum. Est minima earum aut quos corporis voluptatem.\n\nDolore expedita tempora deleniti aut mollitia. Aliquid iste veritatis sed ratione dolore est. Sed labore hic enim rerum officia pariatur voluptas. Quia accusamus quam nam voluptas.', 32, '2018-10-19 11:58:23', '2018-10-19 11:58:23'),
(8, 'Marilou Davis', 'sjohnson@russel.com', 'thompson.com', 'Nisi qui quod ipsum dolorem. Odit excepturi ex assumenda incidunt veniam ut neque. Voluptatibus laudantium repellat qui.\n\nNihil ea odio eius id unde necessitatibus blanditiis. Dolores fugiat ab ipsa fugiat non similique dignissimos. Voluptatibus et occaecati nostrum error.\n\nTemporibus assumenda beatae earum quaerat qui. Neque sed quo quia. Esse asperiores commodi ipsa adipisci sapiente eum temporibus. Quis et maiores est voluptas laudantium amet voluptas.', 30, '2018-09-29 08:58:23', '2018-09-29 08:58:23'),
(9, 'Herman Gusikowski', 'lulu.bartell@hotmail.com', 'thompson.net', 'Aut nam corrupti voluptas voluptatem excepturi aut explicabo vel. Ad sapiente sed reprehenderit iste sunt. Nesciunt rerum atque et. Quod amet inventore cupiditate enim aut modi cumque cupiditate.', 30, '2018-09-29 09:58:23', '2018-09-29 09:58:23'),
(10, 'Mrs. Hettie Moore DDS', 'qjones@zieme.com', 'lynch.org', 'Libero et soluta doloribus aut ut earum cumque magni. Quo voluptatem amet nobis. Et minima eius eum voluptas assumenda. Alias earum possimus voluptatem non. Qui fugiat fugit et.', 30, '2018-09-29 10:58:23', '2018-09-29 10:58:23'),
(11, 'Miss Wendy O\'Conner', 'kassulke.doyle@gmail.com', 'johns.com', 'Ex reiciendis autem nulla dicta. Labore laudantium occaecati quis optio. Enim nisi ab qui sed minus.\n\nMolestias est eveniet eius libero laboriosam. Debitis aspernatur architecto eos culpa tenetur atque. Temporibus et labore qui in magni non ipsum. Impedit magnam ut quia commodi provident natus nisi.\n\nCorporis nostrum totam unde. Molestias enim error ut nisi. Ab ipsum omnis cumque sint non.', 30, '2018-09-29 11:58:23', '2018-09-29 11:58:23'),
(12, 'Emma O\'Conner', 'rafael03@hotmail.com', 'hoppe.com', 'Aspernatur magnam aut nostrum et. Dignissimos possimus qui impedit consequatur odit. Sed minus aut ut architecto.', 30, '2018-09-29 12:58:23', '2018-09-29 12:58:23'),
(13, 'Prof. Caroline Gerlach Jr.', 'godfrey82@raynor.com', 'johns.com', 'Nemo fugit incidunt blanditiis sint. Dolorem qui dolores doloremque voluptatem eaque explicabo. Assumenda vel sit delectus at asperiores quisquam voluptas ut. Dignissimos qui impedit enim ex modi.\n\nQui enim iusto quia voluptas explicabo ab culpa voluptatem. Ea quibusdam soluta commodi aut enim ea. Voluptas sint dolor minima minus veritatis facere.\n\nVero eligendi fugit voluptas aspernatur facere quia tenetur aut. Recusandae dolore voluptas aut. Libero et asperiores ducimus est. Omnis sed rem animi.\n\nEt porro est voluptatibus et delectus. Cumque eaque nobis laboriosam tempore saepe. Repellat aperiam veniam quis similique debitis. Porro magnam omnis omnis facere veritatis.\n\nEsse temporibus enim aspernatur et. Dolorum ut aut iste labore et fugiat explicabo.', 29, '2018-09-15 08:58:23', '2018-09-15 08:58:23'),
(14, 'Mrs. Rhoda Streich IV', 'stokes.bessie@hamill.com', 'haley.org', 'Libero debitis molestiae accusantium et. Provident distinctio voluptatem voluptatem odio.\n\nOdio ipsa repudiandae voluptate architecto sunt aspernatur nihil. Iste porro tenetur rerum ut quis in velit. Voluptatum aspernatur dolor aut corporis laborum pariatur optio officiis. Accusantium exercitationem dolores et sit culpa. Repellat nemo ipsa illum ea tempora dolores quam sunt.', 29, '2018-09-15 09:58:23', '2018-09-15 09:58:23'),
(15, 'Mandy Kihn', 'deanna90@larkin.biz', 'wolff.com', 'Officiis tenetur nostrum non minima ut minus. Minus adipisci quasi qui voluptatum doloribus ut. Minus maiores eveniet aut fuga et qui facere.\n\nReprehenderit distinctio quaerat dolorem dignissimos earum. Explicabo mollitia qui cum quidem et nesciunt vitae. Molestiae beatae natus commodi totam et doloremque dolores. Itaque debitis veritatis ex dolore est eum adipisci voluptatem.\n\nUt sed vel eius doloremque corrupti. Illo est laudantium dolorem id qui nostrum. Enim laborum qui corrupti dolorem. Amet praesentium nesciunt aut dolore perspiciatis. Sit qui dolores aliquid maxime saepe.', 29, '2018-09-15 10:58:23', '2018-09-15 10:58:23'),
(16, 'Javon Bauch IV', 'joannie.hammes@hotmail.com', 'watsica.com', 'Ut ea dolore eum quas omnis. Dolore sed labore et. Id itaque eveniet libero blanditiis. Sit adipisci quia amet voluptatem cupiditate hic qui.', 29, '2018-09-15 11:58:23', '2018-09-15 11:58:23'),
(17, 'Prof. Anne Brakus MD', 'rowan.marvin@hotmail.com', 'herman.com', 'Labore odio sapiente consequatur alias iure. Tenetur adipisci quam consequatur veritatis non libero. Iusto sed aut et.\n\nArchitecto numquam quasi ducimus. Nulla et unde et ut in. Quidem alias nihil laborum vel molestiae.\n\nNumquam modi excepturi distinctio quas officiis ut. Et est voluptatem quas quia quis sunt ratione. Voluptatum perferendis earum id corrupti porro aut sed.\n\nAutem sed in error ad delectus et. Debitis voluptas dolore nesciunt similique eum. Placeat dolores ullam rerum cupiditate.\n\nExcepturi ea sint omnis saepe eligendi ut. Assumenda provident natus tempore molestiae suscipit sed. In et molestiae soluta libero molestiae at non. Nemo est similique voluptatem.', 28, '2018-09-05 08:58:23', '2018-09-05 08:58:23'),
(18, 'Melvina Prohaska', 'mayert.viva@graham.com', 'carter.com', 'Aut unde dolore hic tempora. Veniam dolor sed modi atque qui. Repellat et nobis molestiae ex. Vel ea modi quas quis debitis.', 28, '2018-09-05 09:58:23', '2018-09-05 09:58:23'),
(19, 'Prof. Elda Erdman', 'dwaters@crist.com', 'hamill.biz', 'Adipisci sed iusto rerum. Necessitatibus quae voluptatem dolores voluptatem qui voluptatibus. Neque repellat cupiditate neque ab. Molestiae cumque cupiditate eaque ab eos similique. Commodi consequatur eos maiores iste sit recusandae aut.\n\nIste qui amet maxime nemo ut. Consequatur nobis tempora voluptatem aut. Alias soluta ut dolore enim laudantium.', 28, '2018-09-05 10:58:23', '2018-09-05 10:58:23'),
(20, 'Dr. Carli O\'Conner', 'hbrekke@douglas.info', 'walker.com', 'Porro asperiores modi ab aperiam provident fuga. Quia quidem deserunt a iure ex delectus non nihil. Et et porro voluptate. Quia quam a odit hic reiciendis.\n\nAspernatur nisi enim eum sit a velit neque. Placeat dolor magnam quia ut. Quos voluptatum quia eum dolorem doloremque aperiam. Voluptate quis officiis vel voluptatibus praesentium quia debitis nam.\n\nIncidunt eos ratione occaecati officiis corrupti praesentium repellat dolor. Praesentium consequatur qui ut quo. Culpa quam cupiditate qui sequi. Ut vel itaque nam corporis iste.\n\nQui in temporibus dolor ipsum. Ut neque porro asperiores laborum magni. Fugit error repudiandae tempore sit laborum nesciunt dicta. Amet et at ducimus.', 28, '2018-09-05 11:58:23', '2018-09-05 11:58:23'),
(21, 'Opal Boyer PhD', 'bernhard.camilla@gmail.com', 'stark.info', 'At officiis beatae facilis ut aut. Nulla impedit nemo placeat et modi eos. Odio amet aut ab aut quod ea nihil in. Sapiente tempora voluptates commodi at eveniet sit repellat nulla.\n\nDistinctio qui laudantium omnis nostrum culpa porro. Quis dolorem voluptatum consequatur nisi dolores ea earum esse. Qui voluptas earum voluptatum sapiente libero dignissimos.\n\nPerferendis officiis sit quia quisquam qui. Saepe tempora voluptatum eum laudantium nihil ex perferendis. Similique est corporis incidunt omnis voluptatem. Consectetur enim quia qui dolorum aliquid velit autem.\n\nVoluptas dolorem fugiat recusandae sint velit eum eaque. Atque unde sit omnis distinctio eos qui nulla. Quisquam occaecati sequi sint sit aliquam sequi. Placeat quasi molestiae aliquid enim voluptates aut.\n\nAssumenda voluptas odit illum consequatur repudiandae. Commodi est maxime sequi accusamus voluptas culpa.', 28, '2018-09-05 12:58:23', '2018-09-05 12:58:23'),
(22, 'Prof. Johanna Bruen V', 'murray.adela@morissette.com', 'kunze.net', 'Minima velit voluptas voluptatibus et quis aperiam tempore ut. Et est illo quia laboriosam soluta. Similique quae fugiat itaque architecto. Enim ullam nobis officiis non sed.', 28, '2018-09-05 13:58:23', '2018-09-05 13:58:23'),
(23, 'Bremly Villasenor', 'bremlydv@gmail.com', 'dsdsd', 'Thanks po', 33, '2018-11-29 08:37:04', '2018-11-29 08:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_07_25_134316_create_posts_table', 1),
(4, '2016_07_27_042414_alter_posts_add_published_at_column', 1),
(5, '2016_07_28_093436_create_categories_table', 1),
(6, '2016_07_28_093634_alter_posts_add_category_id_column', 1),
(7, '2016_07_29_003557_alter_users_add_slug_column', 1),
(8, '2016_07_29_021600_alter_users_add_bio_column', 1),
(9, '2016_07_30_015428_alter_posts_add_view_count_column', 1),
(10, '2016_11_03_023303_add_soft_deletion_to_posts_table', 1),
(11, '2017_01_31_061501_laratrust_setup_tables', 1),
(12, '2017_04_06_043225_create_tags_table', 1),
(13, '2017_08_30_024106_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'crud-post', NULL, NULL, '2018-11-29 07:58:24', '2018-11-29 07:58:24'),
(2, 'update-others-post', NULL, NULL, '2018-11-29 07:58:24', '2018-11-29 07:58:24'),
(3, 'delete-others-post', NULL, NULL, '2018-11-29 07:58:24', '2018-11-29 07:58:24'),
(4, 'crud-category', NULL, NULL, '2018-11-29 07:58:24', '2018-11-29 07:58:24'),
(5, 'crud-user', NULL, NULL, '2018-11-29 07:58:24', '2018-11-29 07:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `excerpt`, `body`, `image`, `created_at`, `updated_at`, `published_at`, `category_id`, `view_count`, `deleted_at`) VALUES
(1, 1, 'Premiere Watch - Comeback', 'Premiere-Watch-Comeback', 'In 1987, the first CHANEL watch is created and is simply called \"Première.\" Its octagonal shape is what makes this watch original, and just like the cap on the N°5 bottle, it is a reminder of the geometrical shape of the Place Vendôme, seen from the windows of Mademoiselle Chanel\'s room at the Hotel Ritz.', 'Autem iste amet nihil fugit nihil et. Numquam modi pariatur consectetur. At eos iste laudantium ab laboriosam sunt commodi. Consequatur et autem veniam est ad.\n\nEaque tenetur saepe ut quasi porro nihil. Sed omnis laudantium rerum debitis. Porro hic consequuntur sit temporibus ea dolorum iure. Libero voluptatem porro voluptatibus et labore fuga eius.\n\nQuisquam explicabo sunt aut quibusdam. Vel voluptatibus sint deserunt ut debitis expedita quas. Enim sunt reprehenderit voluptatem voluptatem non minus.\n\nEst non natus aut dolorem. Suscipit veritatis et nihil soluta. Omnis et qui mollitia natus. Quia alias optio velit quo doloremque.\n\nVeniam qui consequatur ipsa autem voluptas aliquam. Nemo eveniet illo molestias voluptatibus ad. Expedita quia voluptatem reiciendis dolor neque dignissimos blanditiis eum. Ut enim voluptatem quia laboriosam nesciunt quo occaecati dicta.\n\nMaiores facere est ab et neque fugit saepe ut. Libero tempore quasi sed. Sed aut deleniti nemo optio ut.\n\nVel voluptatum rerum corrupti error sunt expedita. Nobis veritatis ut qui sit odit et autem. Earum adipisci provident nulla aspernatur ut.\n\nUt eum ullam occaecati expedita perspiciatis et et. Et impedit reiciendis ratione ut mollitia velit corrupti. Non non in doloremque facere. Autem nesciunt porro autem commodi earum.\n\nOptio aspernatur debitis odit commodi sapiente sequi vel aliquid. Temporibus ut nostrum atque deleniti. Nam tempora fugiat autem ipsam quas. Et eos facere rerum reiciendis fugiat. Fuga voluptatem qui minima facilis et.\n\nDeserunt iste et quidem assumenda et veritatis quas. Blanditiis necessitatibus iure fuga soluta itaque fugiat odit quo. Optio consequatur qui repudiandae ipsum.\n\nFugit consequuntur doloribus reiciendis nam. Aut et facilis dolores et molestias laborum.', 'watch_c.jpg', '2017-12-09 07:58:23', '2018-12-08 03:43:17', '2017-12-09 07:58:23', 7, 12, NULL),
(2, 3, 'Qui et et doloribus illo et qui assumenda minima dolorum.', 'labore-itaque-dicta-facere-possimus-dignissimos-iste-omnis-aperiam', 'A accusamus ut deleniti ratione tempora est. Quia eos vitae laboriosam at neque eum. Ea officia qui sunt quibusdam libero adipisci consequuntur. Molestias excepturi et qui mollitia magni non. Sed animi adipisci deserunt eum qui labore.', 'Fugit hic reiciendis illo rem. Fuga vero ducimus nostrum sint. Laborum et delectus qui esse dolores distinctio. Nemo deleniti magni ullam odio sed placeat qui.\n\nQui in voluptatem maiores porro doloremque. Officiis tempore beatae sunt quam fugiat. Quis earum officia atque officia ut maxime.\n\nEt cumque quaerat doloribus architecto labore est nam. Et explicabo consequatur nesciunt impedit. Eaque occaecati omnis et sed. Vel nostrum est tempore cupiditate. Asperiores assumenda a est enim.\n\nDolor quis amet aperiam mollitia qui laborum et. Unde voluptas nulla natus vel sit. Culpa quo est architecto maiores voluptatibus. Assumenda excepturi rerum sint officia. At quisquam eaque dolores quibusdam.\n\nExpedita doloribus voluptas nemo eius molestiae sunt. Ipsa aut aut illo laudantium cupiditate deleniti. Doloremque non a architecto alias fuga voluptatem voluptatem. Suscipit sed voluptatem velit voluptas qui eum autem.\n\nDistinctio dolorem saepe quia porro eligendi consequuntur. Blanditiis ab totam illo. Ut voluptas occaecati soluta accusamus dolorem.\n\nEt voluptatibus ut adipisci quia sed. Tenetur sit ipsum nulla voluptatem. Nulla aliquid dolor ullam earum.\n\nNemo adipisci et eaque ducimus voluptatem incidunt deleniti. Non assumenda eos corporis est quod. Aperiam iure sunt doloribus aut commodi. Dolor natus corporis sunt voluptatem ratione.\n\nSoluta qui dolorem eum qui dolorum magnam et. Sed cupiditate quis sequi eius. Sit eum fugit et laboriosam magni quasi similique. Voluptatem velit ea placeat.\n\nNesciunt sint sapiente est sit. Optio ea consequatur voluptas beatae et.\n\nEt tempora neque velit sed impedit placeat aut. Non laborum eos placeat. Est deserunt illo quia sunt dolorem. Reprehenderit amet omnis officiis aliquid corrupti.\n\nNesciunt odit error hic est voluptate consequatur. Vitae veritatis dignissimos molestias. Fugit quisquam fugit fugiat.\n\nDolorum quia iure est ducimus et soluta placeat. Assumenda et est aut tempore. Sint iusto qui velit delectus. Rerum et voluptatem numquam laboriosam culpa. Eaque delectus et non totam non et consequatur.\n\nPossimus nam esse ipsam ea inventore. Perferendis iure voluptas amet quia sit amet soluta. Sed hic velit sit vitae eos sint sapiente.\n\nSimilique blanditiis beatae similique atque. Sunt ipsum voluptatum quisquam expedita nisi. Aperiam et quae quia laboriosam excepturi officiis.', NULL, '2017-12-19 07:58:23', '2017-12-19 07:58:23', '2017-12-19 07:58:23', 2, 80, NULL),
(3, 2, 'Christian Louboutin Hits The Gym for Fall 2018 Ad Campaigns', 'Christian-Louboutin-Hits-The-Gym-for Fall-2015-Ad-Campaigns', 'Entitled \'Love Story\' a face-less man and women hit the gym for a couple\'s workout. Featuring bright colors and weights the women workouts in sexy Christian Loubotuin heels from the Fall 2018 collection.', 'Show casing the \'Electroboot\', the \'LuckyL Bag\', \'Merci Allen\', Elastagram\' and the \'Araknene\', hitting the gym never looked so hot. On a side note I love the fact that the photos show that the women is lifting weights. Looking good shouldn\'t mean starving yourself and running wild on a treadmill, it should be about being healthy and looking amazing while being strong.\r\n\r\nLaborum ut excepturi quam enim. Eaque doloremque expedita est esse dolor nobis. Excepturi tempore modi asperiores cumque aut harum quae.\r\n\r\nQuod mollitia et aliquam ut voluptate non est. Totam atque voluptatibus deleniti quos impedit. Labore omnis quidem odit delectus rerum qui minus.\r\n\r\nMolestiae et reprehenderit rerum assumenda quis. Ipsam fugit consequatur voluptatum qui ut. Consequuntur minus inventore error hic dolores.\r\n\r\nSuscipit impedit ut dolorem dignissimos. Inventore mollitia et autem exercitationem ea numquam. Vel ut quis voluptas omnis. Ea eaque omnis voluptas recusandae.\r\n\r\nSunt est nemo dolor qui cum omnis qui. Velit deserunt voluptatem labore voluptatem provident. Recusandae deserunt rem maxime eos commodi totam reprehenderit. Illum et quasi commodi est cum repellendus. Suscipit laboriosam non eius debitis dolores.\r\n\r\nSed quo ut dignissimos tenetur. Ut aspernatur dolor vel provident magni vero. Cupiditate consectetur dolore dicta voluptatem.\r\n\r\nSit et vel dolorem impedit praesentium optio nemo. Distinctio aperiam aut magnam nulla dolores. Dolores at distinctio aut et perspiciatis.\r\n\r\nIpsa consequatur est qui dolorum neque eaque impedit fuga. Voluptatem ut sapiente eos perferendis itaque. Numquam temporibus aliquam voluptatem quod expedita. Delectus consectetur tempora nam sunt voluptatum quis quis.\r\n\r\nTemporibus culpa voluptates accusamus voluptates sint aliquam aut. Eos voluptatum provident quasi. Repellendus ullam aliquid praesentium dolores cumque qui ut.', 'labo2.jpg', '2017-12-29 07:58:23', '2018-12-08 06:29:46', '2017-12-29 07:58:23', 9, 52, NULL),
(4, 1, 'Gucci 2018 Watches Available Now', 'Gucci-2018-Watches-Available-Now', 'Dolores placeat vel doloribus occaecati totam ratione. Ex quis qui veritatis ab maxime et eius. Reprehenderit sunt velit consequatur sit esse tempora. Sed corporis beatae et maiores sed sint omnis. Blanditiis aut voluptatem et debitis.', 'Et maxime et ullam aspernatur soluta. Velit voluptatem aut ullam sit reprehenderit. Cumque provident voluptatum culpa quisquam.\n\nVoluptate excepturi nihil et quos. Incidunt sit eligendi repellendus quod dignissimos. Sint consectetur voluptas enim eos sed non. Quo ab sit ut voluptate totam et et.\n\nVoluptatem quo aut eaque est velit. Natus repellendus veniam cum est. Maiores nesciunt ea quibusdam molestiae sunt labore aut architecto. Velit reiciendis eos et ipsam.\n\nConsequuntur quia quis vel neque fugit. Architecto dolores animi aut veniam debitis iste ipsum delectus. Eligendi fugiat ut omnis dolorum earum non. Necessitatibus mollitia aliquam sapiente sit id ea fugit.\n\nAd qui voluptatum exercitationem et consequatur labore sapiente. Modi est tenetur sit vel corrupti ratione sapiente nemo. Libero eaque voluptatem nihil a qui.\n\nMolestiae velit sed facere molestias officiis sit. Quisquam aut et ut officia dolores quaerat. Quo placeat molestiae necessitatibus inventore. Incidunt perferendis dolorem in sint aut.\n\nEt dicta quam qui debitis nihil. Labore dolor fuga consequuntur perspiciatis et voluptatum. Rerum quas debitis maiores voluptatum.\n\nVoluptatum qui at voluptatibus et aliquam nulla dolorem. Sed molestiae sit eaque similique eos ea.\n\nIllum laboriosam esse pariatur commodi repellat. Aliquid unde modi quia velit consequuntur totam quis. Doloremque voluptas impedit nemo assumenda ab ea beatae. Laborum facilis quisquam suscipit adipisci neque qui illum.\n\nAdipisci voluptatibus atque tenetur porro. Id nostrum minima beatae illo. Quaerat dolorum nulla sit sed et.\n\nBlanditiis non accusantium suscipit quam magni omnis amet. Et sed vel rerum autem nemo magnam inventore. Id ea assumenda ut non et aliquam sint. Ut rerum nihil libero est nesciunt.\n\nEx laboriosam repellendus facilis ut ipsam. Quos illo officia rerum doloremque quidem minus distinctio. Ipsa saepe quia ut non quod aut. Sequi vitae eaque laborum vero tenetur at.', 'gucci_w.jpg', '2018-01-08 07:58:23', '2018-12-08 01:22:50', '2018-01-08 07:58:23', 7, 104, NULL),
(5, 3, 'LOUBOUTIN Unveils Footwear 2018 Spring/Summer Lookbook', 'LOUBOUTIN-Unveils-Footwear-2018 SpringSummer-Lookbook', 'Christian Louboutin presents a new range of colorways for their growing line of men’s footwear. Highlights include studded loafers, sandals, wingtip shoes and high top sneakers.', 'Possimus reprehenderit repudiandae nam pariatur. Minus pariatur nisi natus consequatur.\n\nDoloremque cumque reiciendis in explicabo ea sint harum. Rem non nobis et incidunt. Quo voluptas libero tenetur aut aut. Necessitatibus nihil quo aut aut mollitia sit. Sed dolore esse aut pariatur eos inventore.\n\nVoluptatem possimus rerum pariatur eveniet. A dolor nisi dolores quam sapiente quibusdam sint ut. Molestiae ipsum omnis error.\n\nAt quia voluptatibus sunt aut qui voluptate qui. Molestiae necessitatibus recusandae tempora dolorem explicabo et provident. Quis quibusdam labore nostrum eius praesentium enim. Facilis velit dolorem ut non.\n\nNecessitatibus corrupti ea fugit similique. Laborum placeat labore illo ab. Asperiores dolore odit et quis nemo voluptas et labore.\n\nVoluptas illum sunt quos dolore rerum ut deleniti mollitia. Excepturi eligendi error expedita quis corporis ratione voluptates. Sunt corporis eius dolorum doloremque sit voluptas.\n\nQuia dignissimos voluptatem et voluptatibus est. Eos sit reprehenderit enim inventore odio. In debitis ducimus repellendus. Ab dolorem harum alias ipsa quia magnam veniam.\n\nLibero ut iusto quae consequatur. Deserunt veritatis officia et cumque ex est. Sed dolores voluptas reiciendis ab maxime alias et nesciunt. Magni aut quas illum nihil.\n\nUt nihil ducimus excepturi sit. Saepe sunt dicta magnam odit eos. Enim esse harum non esse laudantium. Eum et facilis eos.\n\nQuam tempora occaecati et eaque repellat quia quasi. Voluptatibus nemo voluptatem et quo. Beatae ea quia enim quo ea impedit animi. Totam nemo voluptatem soluta ut maxime sed quibusdam.\n\nDucimus unde quis aut. Est magni similique omnis delectus fugit itaque quidem. In facere pariatur distinctio magnam soluta eaque doloribus. Eaque doloribus incidunt soluta corporis.', 'labo1.jpg', '2018-01-18 07:58:23', '2018-12-08 06:26:10', '2018-01-18 07:58:23', 9, 35, NULL),
(6, 3, 'Aut quia vel quidem incidunt explicabo explicabo iste similique rem iste.', 'natus-ducimus-voluptas-quo-quia-illum', 'Quia et officia harum eius vitae est. Cupiditate eius velit mollitia rem. Dolor rem dolorem ea inventore asperiores corporis. Autem temporibus saepe aut numquam.', 'Sint qui est soluta sint quidem. Beatae praesentium nostrum molestias omnis eos. Quas adipisci et consequatur exercitationem maxime quae modi. Enim perspiciatis itaque magnam. Quo non sit ab similique voluptates.\n\nDolorem mollitia facilis et corporis. Minima laudantium qui occaecati hic. Architecto quidem architecto ad ut magni neque quia. At ipsa consequatur nemo quibusdam itaque aut distinctio.\n\nIpsam velit at sit omnis quia. Tempore animi quasi cupiditate sit voluptas quia.\n\nSapiente voluptatem est aut. Porro perspiciatis fuga laborum et laborum ut id. Eum ipsam exercitationem eos aut et accusantium inventore. Ducimus nesciunt nulla iste ipsa non doloribus.\n\nQuia dolores repudiandae aspernatur minus quis. Velit perferendis doloremque deleniti illo et. Explicabo qui eligendi sit neque dicta quaerat. Omnis at corrupti possimus rerum ea sunt.\n\nMinima ut aliquid quo ex facilis et aut. Quis qui maxime porro minus quis. Eum facilis saepe et occaecati optio. Quia dolor repellat harum voluptatem.\n\nEt ullam harum nemo perferendis nihil qui pariatur. Ea voluptatum eveniet iure harum odio. Quis ipsam magni aliquam consequatur ratione sint distinctio.\n\nAliquid sequi dolorem animi dolor iusto recusandae. Quod inventore assumenda iure rerum blanditiis dolorem molestias. Magnam quae quibusdam velit occaecati est quia cum. Similique velit porro et vero qui at qui.\n\nQui doloremque sed quis aut sequi. Nemo possimus aut ex quibusdam nisi quisquam. Perspiciatis saepe molestias numquam sit sed assumenda. Libero corporis aut quasi.\n\nEt numquam aut cumque enim odio quia. Sit sapiente magnam sunt nesciunt ipsa. Fuga consectetur voluptates delectus recusandae laudantium et quas est. Maiores natus velit pariatur.', NULL, '2018-01-28 07:58:23', '2018-01-28 07:58:23', '2018-01-28 07:58:23', 1, 10, NULL),
(7, 1, 'Prada Mens Wear Collection 2018', 'Prada-Mens-Wear-Collection-2018', 'Ab vero cum incidunt optio praesentium aut consequatur. Ad sit earum fugiat officia. Dolor laudantium autem natus aliquid reprehenderit atque.', 'Ut voluptates quibusdam quia modi fugiat commodi ea perspiciatis. At illo exercitationem quis et voluptatum. Eum voluptas libero quis id consequatur vitae illo quisquam. Et illum cumque labore vel vero. Et officiis laboriosam ut eos.\n\nSit qui quidem eos adipisci. Rerum culpa asperiores accusamus distinctio voluptas. Nisi architecto sint sapiente. Earum ut iusto dolores assumenda quia sint.\n\nAliquam officia libero doloribus reiciendis ipsa expedita aut. Sed atque delectus expedita quis rerum velit dignissimos.\n\nConsequatur quisquam dolore iure ex impedit. Doloribus qui expedita et eaque possimus et quae. Porro quos laborum dignissimos facere eveniet totam est. Enim velit ratione aut laborum et eaque.\n\nFacilis eos quos culpa. Itaque consequatur alias quaerat. Sit quo fuga tempora molestiae est libero voluptate. Necessitatibus non dolores ab beatae.\n\nSapiente itaque laudantium nihil ut commodi dicta ut. Modi iusto voluptatibus placeat quidem culpa unde. Commodi quidem tempora non optio.\n\nQui voluptas saepe iusto rerum sunt. Autem ullam esse hic omnis sunt maiores et. Consequatur quis aut natus. Sit optio in quasi vitae.\n\nQuis qui facere provident aliquid quia. Et explicabo vero non voluptatem sit beatae quis. Veniam hic aut id voluptatem exercitationem ut cumque.\n\nIste sed et dolore non veniam. Fuga suscipit consequatur ea ducimus. Sed culpa facere cum amet accusamus ut. Dolor non eligendi vitae cupiditate facilis libero.\n\nConsequatur in enim distinctio rerum ea odio ut. Dolorem adipisci qui et voluptatem ea non aut.', 'prada_man.jpg', '2018-02-07 07:58:23', '2018-12-08 05:52:22', '2018-02-07 07:58:23', 8, 23, NULL),
(8, 1, 'Laudantium adipisci nisi quisquam non modi voluptas quasi.', 'voluptates-eum-dolorem-vitae-veniam-impedit-consequuntur-voluptates', 'Molestiae iure culpa culpa expedita eum quis. Velit laudantium nihil animi. Aut enim eos recusandae ratione sint. Qui asperiores error sed impedit vel aut.', 'Placeat nulla voluptatem nihil ut. Ut eos nobis atque incidunt autem quia. Similique nesciunt et nihil in qui fugiat minima.\n\nQui voluptatem a laboriosam dolore rerum. Aliquid est praesentium corrupti est est. Aut animi sit aut consequatur velit nihil. Molestiae omnis error omnis nihil assumenda. Voluptas non distinctio explicabo enim iusto similique voluptatum.\n\nNam fuga perferendis itaque ea quisquam consequatur ipsum quo. Quia laudantium molestiae velit dolores nesciunt adipisci sunt.\n\nEnim molestiae ut et totam atque accusamus. Expedita magni quo aliquam esse. Qui adipisci nulla ut dolores aperiam sed modi. Maiores quia quia sunt velit officiis possimus est.\n\nEsse quam quasi rem. Ratione quae illum ratione officia suscipit omnis sed. Quisquam iure vitae minima ut libero vel.\n\nVelit ut in repellat repudiandae voluptas non architecto. Explicabo harum dolores praesentium quidem. Nesciunt eos cum repellat ut pariatur ducimus delectus qui. Voluptatibus error repudiandae cumque at eligendi.\n\nEt facere consequuntur dignissimos non aliquam ut. Consectetur quia possimus quia placeat laudantium in illo nemo. Fuga veniam dolorem aut et impedit.\n\nMolestias similique omnis laboriosam sint. Hic ut magnam a consectetur tenetur sunt quis. Ut quia dolores illum voluptatibus aut in ducimus. Consequuntur sed quo aut.\n\nEt iure laudantium eligendi magnam nobis voluptates nesciunt. Corrupti sit eveniet itaque eum consequatur molestias.\n\nVelit culpa beatae sed error possimus unde magnam. Praesentium laboriosam non id quaerat quis et. Dolor tempora facere voluptas deleniti.\n\nId natus eius praesentium qui. Veritatis nostrum aperiam temporibus ab est. Veritatis qui nihil qui. Pariatur eum soluta expedita sed illo.\n\nRecusandae voluptatem laudantium dolore itaque voluptatibus veritatis. Aut voluptate culpa nihil ipsa hic quam. Velit aliquid sit nihil tempora quas. Exercitationem non facere amet quae consequatur delectus.\n\nIste suscipit id sit non. Adipisci dolore earum sequi tenetur ut. Facilis amet amet architecto nostrum cumque quam. Eveniet commodi ex quos a. Velit corporis repellat distinctio autem molestias.', 'Post_Image_1.jpg', '2018-02-17 07:58:23', '2018-02-17 07:58:23', '2018-02-17 07:58:23', 1, 50, NULL),
(9, 1, 'Ut commodi similique est illo asperiores voluptatibus sunt voluptate molestiae laudantium autem cumque et.', 'doloribus-repellendus-laboriosam-ut-corrupti-assumenda-tenetur', 'Eos sit inventore qui molestiae vel quibusdam minus odit. Voluptas hic consequatur facere velit ut. Non ab perferendis sunt nobis id in error. Quas et id quis voluptates. Quibusdam a maxime accusantium enim. Quo omnis nobis nihil enim dignissimos dolores consequatur.', 'Animi architecto laudantium sint. Id qui quaerat commodi molestias consequatur nesciunt. Ut tenetur dolorem molestiae aut.\n\nUt aut maiores facere sed voluptatum. Autem quas eius et nesciunt odio accusamus ratione minima.\n\nTotam eaque porro autem et velit. Ut illum incidunt reprehenderit ducimus ipsum. Tenetur blanditiis rerum maiores a est molestias nulla. Aut non eum minus voluptatum.\n\nIpsum dolorem qui culpa ipsa aliquid non vel quis. Nostrum dolore facilis reprehenderit distinctio sed sint nihil exercitationem.\n\nNam optio et perferendis. Ad iure nam reprehenderit labore similique ut. At vel quia omnis rerum itaque rerum repellat. Dolor at saepe et perferendis.\n\nUt reprehenderit pariatur quia quae debitis accusantium. Eum nihil doloribus sint ratione rerum qui et qui. Unde voluptatem iure rerum voluptatibus.\n\nEligendi quis voluptas quos impedit vel pariatur. Soluta ea maiores in repellat quia reprehenderit perspiciatis. Aperiam voluptas vel quam. Rerum eum totam veniam odit in temporibus.\n\nRerum fugit et omnis quisquam sunt est. Iste eligendi quae nesciunt aut. Iure beatae unde quas accusantium sit. Pariatur est quod ipsam dolores dolor.\n\nLabore similique veritatis maiores autem repellat aperiam optio. Et aut numquam ratione numquam sunt ut. Tempore est animi et doloremque et ipsa. Nulla voluptas aspernatur reprehenderit et voluptatem.\n\nDolorem esse tempora ab. Fuga mollitia ea amet ea iste. Ratione sequi repellat minus sequi.', NULL, '2018-02-27 07:58:23', '2018-02-27 07:58:23', '2018-02-27 07:58:23', 3, 30, NULL),
(10, 2, 'Quis est qui corporis officia natus et similique aut sint quasi delectus.', 'dicta-ducimus-officiis-repellendus-eum', 'Incidunt qui qui odit nemo aut. Excepturi aut tempore inventore ab minus exercitationem consectetur. Voluptas vel quos debitis molestiae aut itaque nihil. Nihil nemo ea assumenda vel maxime eius qui. Eaque quas eum in cumque veniam sed.', 'Sint pariatur eum earum qui odio illo. Neque culpa rem ut. Velit omnis esse ut commodi est. Natus amet et illo dolorem autem eos.\n\nQuidem ut quos et voluptatem. Consequuntur omnis quis aut rerum. Dolore laudantium rerum repudiandae pariatur nostrum iure. Quas non fugit aut iste sit.\n\nUt et libero molestias iusto. Et dolor velit sed nemo.\n\nSunt possimus pariatur quidem non ducimus. Quia labore in excepturi natus sit. Est excepturi doloribus consequatur tempora.\n\nRerum debitis ut fugiat quo illum voluptatem laudantium. Amet quaerat ut occaecati rem tempora et tempora explicabo. Repellendus sequi veritatis et voluptas explicabo aliquid. Earum totam blanditiis alias qui voluptatum quia amet vitae.\n\nExpedita tenetur reprehenderit porro hic temporibus fugit. Et perferendis molestiae iure aut. Magnam consequatur magnam placeat ratione. Sunt aut rerum cumque distinctio. Vel est pariatur voluptas accusamus odio labore excepturi.\n\nAut est similique et sed. Earum rerum laudantium alias pariatur nihil ut. Atque temporibus quibusdam est dicta. Magni qui veniam doloremque est id voluptatem.\n\nEt ut aut molestiae eius. Et nihil delectus aperiam voluptas sapiente officiis. Possimus sapiente perferendis aut quod odit quisquam.\n\nAliquam quae harum quia ut omnis aut possimus. Sit quo deleniti excepturi suscipit earum.\n\nAd architecto reprehenderit nihil reprehenderit rem. Nostrum qui rerum animi labore quod ducimus. Et odit quo exercitationem enim voluptatem nam est. Ut voluptatum quia dolores ut.\n\nAut facilis ratione at ab et ut qui. Nobis facere enim aut autem consequatur molestiae. Illum velit quos occaecati minus non possimus labore. Temporibus laboriosam aspernatur enim et illo.', 'fall-winter-col.jpg', '2018-03-09 07:58:23', '2018-12-08 00:25:48', '2018-03-09 07:58:23', 5, 71, NULL),
(11, 2, 'Architecto necessitatibus quasi ipsam est culpa.', 'ab-suscipit-quo-laborum-aut-omnis-est', 'Nisi sed accusantium sint sint. Quam ab officia architecto qui dolor dicta recusandae. Reiciendis velit quae at sequi. Et doloremque ea maxime dolorem nemo.', 'Et incidunt qui ex et aliquam dolorem. Quas odio incidunt quis est exercitationem vel. Eos voluptas eos officia eum. Quam distinctio eius ea.\n\nCommodi odio odit atque et ex aspernatur vel incidunt. Autem et eveniet veritatis voluptas consequuntur quisquam quis. Sunt accusamus adipisci totam ut et est et. Eveniet omnis rerum aut omnis.\n\nPraesentium vitae reprehenderit provident et sequi et dolorum esse. Dolores est ipsam sed molestiae pariatur. Temporibus ducimus ut excepturi repellendus distinctio.\n\nQuas est totam aperiam non unde atque voluptatem. Voluptatem dolores iste nam. Nihil et a dolor unde inventore. Minima placeat dolorem sed non. Reiciendis aut quibusdam quo a veritatis quisquam fugit qui.\n\nPraesentium quisquam fugiat repellat optio nulla. Consequuntur aut cumque ab et. Vitae laboriosam officia id iste occaecati blanditiis perspiciatis. Architecto est velit esse qui exercitationem sunt molestiae.\n\nAspernatur aliquid aliquid laboriosam sapiente sit ducimus nisi aspernatur. Velit rem minus voluptatem nesciunt reiciendis soluta. Laudantium modi sunt consequatur molestiae illo eveniet voluptas.\n\nVoluptate esse consequatur ea voluptatum magni. Culpa modi eveniet beatae veniam necessitatibus sapiente. Eius aspernatur qui ut deleniti minima laborum.\n\nMaxime tempore aut doloremque nihil ad aut voluptatem voluptates. Est voluptatem aut eveniet dolorem et est. Est nostrum temporibus ipsam quaerat error et.\n\nIllum vel et ab ut. Voluptatem molestiae nesciunt impedit fugit. Porro ratione atque repudiandae atque ut similique dolores optio. Illo impedit saepe ut dolor laborum eius.\n\nIn cupiditate id aut quae magnam. Ratione molestiae ut molestiae sequi. Accusantium ab qui aut.\n\nPerferendis sit nihil veniam eveniet. Libero et quia non enim cupiditate a quisquam. Eligendi et incidunt consequatur aut.\n\nMaxime dolores assumenda assumenda voluptas odit est hic aut. Sit nemo deleniti eum iusto fuga aspernatur velit aut. Quos et dolorum doloremque commodi et dolores aspernatur. Qui itaque quas exercitationem minus nobis.\n\nSunt ab in et totam excepturi asperiores voluptatem et. Perspiciatis iste in iusto. Ut quis consequatur ratione aut quas tempora ut id. Sequi quia occaecati architecto.\n\nRerum consequatur velit praesentium enim velit est. Aut doloribus eveniet eligendi saepe expedita. Odio ipsam possimus numquam eveniet et tempore sed dolorem. Enim sunt sed aspernatur velit aut enim hic.\n\nQui eum ipsum aut natus. Fugit neque natus repellendus similique. In quo aut numquam ut eaque.', NULL, '2018-03-19 07:58:23', '2018-03-19 07:58:23', '2018-03-19 07:58:23', 4, 90, NULL),
(12, 2, 'Patek Philippe Calatrava Major Models', 'Patek-Philippe-Calatrava-Major-Models', 'Incredibly, its underlying design has remained largely unchanged since its introduction in 1932, some 85 years ago. While it’s true we’ve seen many variations over the years, the fundamentals have always remained the same, which is great news for vintage enthusiasts and new buyers alike.', 'Omnis optio quaerat quia fuga est fugit. Eius quas quibusdam eveniet aliquam autem qui consequatur. Ab cupiditate omnis quasi id praesentium. Eum dolorum consequatur est et.\n\nPlaceat quia adipisci consequatur rem nam qui nihil. Quos sit recusandae aliquid facere doloremque. Iste labore perferendis ipsam excepturi inventore alias perferendis illum. Earum magni ut quia id et.\n\nSunt rem non eum provident voluptatibus est rerum ut. Occaecati qui iste magnam aspernatur sint est ut vel. Iste sunt ullam est doloremque at est asperiores quo. Et fuga ipsum suscipit sed.\n\nLibero voluptas molestiae illum laborum quis doloribus. Sunt repellat voluptas eaque eligendi. Qui omnis architecto maxime qui vero velit consequatur consectetur.\n\nNon quia aspernatur aliquid vel tempora eos doloremque. Sed adipisci porro iste molestias.\n\nSunt minus voluptatem ratione. Qui ut molestias magnam deleniti sequi. Aut accusamus voluptate impedit soluta. Modi iusto dolore omnis libero soluta. Repudiandae iusto commodi fuga non voluptatem.\n\nQuia voluptas quasi vel quia laboriosam est possimus ut. Amet aspernatur ipsam facilis impedit. Quod numquam expedita et voluptatem officia sit. Ducimus explicabo omnis doloribus sed modi aut ut.\n\nTempore earum quibusdam et eum consequatur totam quo. Non asperiores consequatur veniam non suscipit quam. Ducimus ipsum et velit ut voluptas enim rerum.\n\nConsequuntur veniam culpa consequatur amet. Ducimus dolore quisquam magni molestiae doloremque et officia. Qui omnis qui fuga qui asperiores odit. Earum aut ratione sed voluptates quo facilis qui maiores.\n\nSunt error et odit voluptas. Tenetur pariatur quisquam maxime aut et. Ut qui non molestiae necessitatibus nobis. Qui porro id temporibus rem magnam.\n\nAt voluptates nostrum eos consectetur dolor vel nihil. Suscipit soluta dolores et rerum nemo in eos. Et molestiae iure ipsam explicabo dolores et. Omnis qui architecto quia sit a deserunt autem.\n\nA magnam modi qui est deleniti. Et qui commodi sit ratione adipisci sed. Nesciunt labore beatae eveniet alias debitis.\n\nOmnis sapiente ut dicta ipsum. Nobis perferendis nemo nihil nulla neque nihil iusto officia. Mollitia at aut omnis autem porro excepturi maiores.\n\nNesciunt illo molestias animi minima animi aut nihil maiores. Debitis maxime omnis magni ratione autem quo sequi. Eum earum cupiditate omnis quod.\n\nEius aut quidem corporis sint sint tempore vel. Voluptatem dolores aut quibusdam eum rerum adipisci fugiat. Consequatur dicta maxime dicta magnam.', 'patek.jpg', '2018-03-29 07:58:23', '2018-12-08 05:29:49', '2018-03-29 07:58:23', 7, 21, NULL),
(13, 2, 'Omnis ipsam voluptatibus dolor sed voluptatum.', 'odit-voluptas-facere-sequi-et', 'Architecto aliquam autem dolor illo aut doloribus. At qui voluptatibus harum repudiandae rem quod. Harum saepe perferendis necessitatibus totam odio. Impedit aliquid voluptas quas error unde.', 'Omnis repellat molestiae soluta aut itaque. Optio porro atque qui quae est aut provident. Magnam odit eius rerum et voluptatum voluptate et expedita. Voluptatem quia sunt temporibus ratione odit.\n\nCorrupti molestias fugiat distinctio aut ut adipisci omnis. Saepe quasi aut tempora molestiae. Soluta libero voluptatibus sint maxime numquam. Aspernatur voluptatem repellendus iusto ab accusamus. Rerum libero ea et in autem autem.\n\nDelectus perferendis facilis vitae vitae et non eaque. In nostrum numquam recusandae pariatur voluptatibus placeat qui et. Amet voluptate et et et. Vel omnis quo reiciendis dolorem sed rerum eum.\n\nEst esse autem tenetur accusamus ut ex. Iste voluptas id ut fugiat rerum dolor molestias est. Error quis quisquam odit consequatur.\n\nAut eligendi fugiat ut at. Praesentium nulla dolores adipisci quia repellendus est fugiat laboriosam. Non harum laudantium autem nihil beatae provident ut quisquam. Reiciendis aut delectus aspernatur voluptas rerum laudantium.\n\nTenetur consequatur qui omnis illo iste a consequatur. Sed dolorem dolore dolorem distinctio cupiditate eos magni. Delectus esse odio corrupti corrupti accusamus qui aliquid.\n\nSaepe quod illo dignissimos rerum ratione asperiores. Accusantium maiores cupiditate neque eius qui facere consequuntur. Incidunt molestiae quisquam ipsum distinctio inventore impedit eos.\n\nMaxime aspernatur qui numquam fugiat. Quas consequatur ducimus minima natus cupiditate. Tempore nostrum veritatis rerum harum amet repellendus. Delectus quod odit consectetur consequatur assumenda eveniet.\n\nUt qui consequatur ea harum. Atque error nisi officia et. Et doloribus id provident nihil doloremque itaque. Impedit harum autem debitis sint.\n\nDeserunt repellat aperiam eum cupiditate. Ipsum voluptas cumque et laudantium deleniti doloremque. Beatae pariatur voluptatem ut repudiandae illo.\n\nExplicabo aut et accusantium non autem sit. Quis quis deserunt cumque unde ipsum earum. Accusantium officiis modi voluptatem officiis enim omnis dignissimos.\n\nRepellendus consequuntur omnis aliquid aut sed totam. Laboriosam neque nihil laudantium unde.\n\nVel nihil dicta facere voluptatem enim facere perspiciatis. Asperiores et quos doloremque facere ipsa nihil ut dolores. Aliquid sit et molestias sint debitis cupiditate minima. Quia sequi qui deserunt alias enim.\n\nTempora totam recusandae quisquam aliquam dolorem quis. Est et id voluptatem molestiae praesentium accusamus voluptatum.\n\nUnde aperiam molestiae est molestiae iste earum ab. Rerum voluptas vitae alias fuga doloribus molestiae sapiente. Reprehenderit illum doloribus laborum veniam ut fugiat. Et ad voluptatum nemo aut ipsum.', NULL, '2018-04-08 07:58:23', '2018-04-08 07:58:23', '2018-04-08 07:58:23', 1, 40, NULL),
(14, 2, 'Prada 2018 Handbag Collection', 'Prada-2018-Handbag-Collection', 'Aliquam consectetur eum sunt ut. Tempora omnis dolor animi velit voluptatibus ea. Omnis ducimus sint tempore asperiores quia et.', 'Amet rerum error accusamus qui illum consequatur. Debitis sapiente culpa omnis id aut consectetur dolore. Accusantium quia optio minus dolore ipsum repellendus.\n\nModi assumenda omnis labore maiores vero et. Voluptatem consequatur iusto doloribus voluptas. Qui molestiae perspiciatis exercitationem ut consequatur nesciunt iusto.\n\nUt velit at dolorem non. Eveniet ut ratione et et dolorum autem sunt. Quisquam id voluptatem est eos. Explicabo impedit blanditiis veniam ut qui.\n\nCorporis deserunt iusto quaerat aspernatur assumenda quia magnam rerum. Et qui veritatis recusandae provident aspernatur ut qui. Est maiores quasi et enim omnis ipsam.\n\nNecessitatibus odio fugit quaerat neque sed rem. Harum ut et et vel harum maxime maxime. Est ea sunt dolorem ab est praesentium. Quo doloribus voluptates consequatur ut dolor.\n\nA possimus explicabo aliquam sed odio ut ad. Aspernatur at nihil consequatur aut. Et et sit iste esse quos. Dolor laudantium laborum quia excepturi sunt asperiores iure in.\n\nNihil neque esse et dolorem ipsam. Cupiditate earum voluptas laudantium dolorem. Minima commodi perspiciatis saepe enim ut.\n\nEst minima velit est provident in omnis commodi. Laudantium inventore id aut. Praesentium quas ut nobis ullam. Nisi quam molestias vero non sunt.\n\nAmet quis dicta dolores itaque voluptas placeat. Architecto quos totam in temporibus sequi est esse.\n\nEnim quia voluptates repellendus reprehenderit. Voluptatem velit quo repellendus ullam expedita. Blanditiis non non voluptatem veritatis eligendi odit animi.\n\nPorro quos impedit iusto necessitatibus quis optio. Aliquid nemo soluta quis quia odit quod.', 'prada.jpg', '2018-04-18 07:58:23', '2018-04-18 07:58:23', '2018-04-18 07:58:23', 3, 20, NULL),
(15, 3, 'Gucci Cruise 2018 Roman Rhapsody Campaign', 'Gucci-Cruise-2018-Roman-Rhapsody-Campaign', 'Unfolding as a series of compelling portraits of real people in real places, the Cruise 2018 campaign is shot by iconic British rock star photographer Mick Rock.', 'Ut eum provident occaecati. Odio qui exercitationem quaerat aut repellat. Quaerat ab beatae rerum est nihil excepturi quisquam.\n\nEst at sunt rerum. Consectetur culpa est occaecati et distinctio blanditiis temporibus. Vitae quia qui consequatur dolor nihil culpa rerum. Quidem rerum vero at ullam sapiente.\n\nDolorum doloremque sed atque eius eaque. Id ipsam veniam qui velit voluptas. Laboriosam rerum dolores optio voluptas quia voluptatem cupiditate.\n\nAccusantium expedita dolore accusantium nihil. Architecto facilis atque doloribus rem aut. Officia doloribus quis doloremque. Dolores ut porro fuga odio voluptatibus.\n\nReiciendis eos reprehenderit corporis voluptate. Velit ut quos corrupti deserunt maxime velit quas facere. Nemo quaerat harum quaerat quisquam. Ab mollitia tempora autem eligendi illum.\n\nEnim praesentium odit labore sed cupiditate. Quia delectus exercitationem non nulla error cupiditate rerum. Tempore laborum ducimus dignissimos ut.\n\nOmnis aperiam qui ullam at aut. Iure temporibus officia debitis ut aut quibusdam mollitia. Eveniet aut cum voluptas est. Ut consectetur reiciendis quidem beatae. Quia est quos molestiae maiores.\n\nDeserunt odio nisi id omnis officiis quia. Distinctio sit laudantium corrupti qui accusamus mollitia. Consequatur eum ut ut distinctio dolore. Velit aut id sed et sed.\n\nMolestiae veniam dolore quisquam. Animi modi debitis autem iusto explicabo distinctio autem. Corrupti fugit eaque non repellat et aut sequi ut.\n\nVoluptates pariatur cupiditate dicta facilis incidunt deserunt quasi. Eum suscipit aliquam nam. Omnis rerum possimus numquam rerum perspiciatis qui blanditiis similique.', 'roman_rhapsody.jpg', '2018-04-28 07:58:23', '2018-12-08 02:45:07', '2018-04-28 07:58:23', 8, 102, NULL),
(16, 1, 'What every collector needs to know about Hermès handbags', 'What-every-collector-needs-to-know-about Hermès-handbags', 'Handbags & Accessories specialist **Rachel Koffsky** looks at the ‘holy trinity’ of Hermès bags — the Kelly, the Constance and the Birkin — and offers an expert guide to what new and experienced collectors should look for', 'Laborum quia amet qui. Optio quis voluptatum dolor aut exercitationem blanditiis perspiciatis fuga. Beatae in dolorem et pariatur distinctio earum et. Assumenda corporis voluptas ipsum illo deleniti aut repellat.\r\n\r\nSit beatae eligendi ad facere. Laborum cumque et iste dolorum veritatis dolorum. Labore cumque id minima architecto quis ab ipsam. Magni animi quisquam id perferendis dolorem vero.\r\n\r\nDolores consequuntur hic consectetur reiciendis. Aliquid voluptatem et voluptatem praesentium voluptas quia. Exercitationem accusantium commodi illo natus. Et nisi dolores suscipit repellendus consequatur doloremque expedita.\r\n\r\nInventore mollitia quia et perspiciatis occaecati libero. Ut numquam nobis iste. Quisquam blanditiis voluptas cumque in suscipit voluptas rerum ut.\r\n\r\nMollitia qui rerum minus natus corporis aut culpa quia. Est et quam harum qui et impedit laborum. Aut esse officia velit.\r\n\r\nFacilis qui sunt fugiat quae placeat in. Sed natus nostrum amet ab rerum. Sed modi exercitationem autem perspiciatis voluptates rerum aperiam. In veniam nemo consequatur molestiae voluptatem.\r\n\r\nMagni repudiandae nihil molestiae non reprehenderit est. Natus voluptates sint voluptates. Unde perspiciatis reprehenderit ratione eos dolorem.\r\n\r\nVoluptas sed et et excepturi quas. Commodi odio officia neque qui itaque officia voluptatum qui. Voluptate unde dolor eum ullam omnis nemo. Accusantium dicta autem enim provident perspiciatis nulla.\r\n\r\nMinus veniam nemo sit pariatur adipisci earum. Blanditiis iure rem maxime illum nemo praesentium. Aut omnis sit repudiandae aut quia quis nostrum. Ipsum est fugiat animi est omnis.\r\n\r\nEa ea aut nihil dolorem. Ipsum eius eaque natus veritatis pariatur ex. Sed esse occaecati ut modi quae aliquam harum. Neque voluptatibus ratione non laudantium velit excepturi molestias. Quia sapiente cumque rerum nihil.\r\n\r\nIste numquam et eveniet sed delectus qui fugit. Rerum distinctio nostrum quasi nisi qui. Nobis et alias illum quia id voluptatem sunt. Quia sint voluptatem est aut omnis. Incidunt libero illum harum nihil soluta ratione.\r\n\r\nQuidem facilis sed voluptatem adipisci temporibus corrupti ut. Architecto qui repellendus voluptatem nemo.\r\n\r\nEos fugit eaque amet dolor maxime. Sint et perferendis cumque doloribus alias illum suscipit. Alias saepe numquam sed explicabo et odit tempore saepe.\r\n\r\nAtque enim perferendis eaque sit dicta. Perferendis qui ipsa maiores assumenda est doloremque tempore. Aut earum eum deserunt.', 'hermes.jpg', '2018-05-08 07:58:23', '2018-12-08 00:56:28', '2018-05-08 07:58:23', 3, 51, NULL),
(17, 3, 'D&G Accessories: Delicate Roses', 'D&G-Accessories-Delicate-Roses', 'Composed of a thin “belcher” chain, embellished with hand woven beads. The jewellery is embellished with Mediterranean coral rose pendants, some of which have been inserted into an elaborate frame manufactured “as filigree”, and with Mediterranean coral beads.', 'Voluptatum voluptatem aut cupiditate velit officiis adipisci dignissimos. Corporis ducimus non dolorum et. Ad voluptate quidem distinctio facilis quaerat error et. Tempore iure omnis dicta necessitatibus sapiente odit rerum nulla.\n\nQuo nobis ut quia assumenda modi rerum. Aliquam eaque voluptate dolor ducimus. Et quisquam eos voluptatem vel. Rem fugiat sunt quia dolores.\n\nEt dicta non laboriosam quo molestiae eligendi. Sint reiciendis minima eius rerum qui. Doloribus et et excepturi est dignissimos nobis est.\n\nRerum corporis molestias optio. Omnis a ullam expedita consequatur. Quia vel aliquid inventore et et vel repudiandae. Magnam est inventore expedita sed.\n\nDolores sit adipisci ipsum tempore. Delectus consequatur voluptatem repudiandae deserunt id. Voluptas explicabo consequuntur et aspernatur quaerat debitis error a.\n\nDistinctio aut sint veniam doloremque autem consequatur quasi. Cum voluptates autem ab temporibus fugit voluptatem. Nesciunt consequatur iure doloribus esse blanditiis ea.\n\nRepudiandae at voluptas deserunt dolores. Fugiat et magnam repudiandae architecto omnis accusantium vel. Quae iste ut eos neque consequatur. Libero molestias consequatur aut et natus in odio. Temporibus reiciendis porro aut ipsa.\n\nMagni debitis ex voluptates et aut. Et in ut aperiam illo illum eveniet et ut. Tempore saepe dolores ducimus molestias quisquam perferendis. Quae consequatur aut reprehenderit eaque sint asperiores.\n\nAutem reprehenderit error quae repudiandae. Rerum architecto et iste iste aliquid laborum. Quae voluptates quia et est nihil nulla.\n\nQuisquam amet et iure quae quia nobis. Aut distinctio quisquam delectus aliquam repellendus. Ratione ea ab maxime.\n\nVel et quis laboriosam est. Minima necessitatibus non non maxime est. Culpa deserunt odio rerum culpa aut et explicabo.\n\nEt ab in debitis deleniti. Quo amet velit excepturi libero quaerat recusandae tempora. Voluptas praesentium sed ut ut explicabo. Omnis consequatur iure eos nihil ad est eius. Enim nisi blanditiis sit ullam.\n\nVoluptatum quae autem dolor tenetur ab. Aut debitis voluptatem recusandae esse. Et aliquam blanditiis omnis temporibus id. Optio mollitia est ullam quaerat ad atque autem ipsam. Nemo dolores qui nihil sunt nisi nulla quaerat.', 'oflower.jpg', '2018-05-18 07:58:23', '2018-12-08 04:24:45', '2018-05-18 07:58:23', 2, 61, NULL),
(18, 2, 'Gucci Accessories: The Loved Ones', 'Gucci-Accessories-The-Loved-Ones', 'Color and eccentricity in the Spring Summer 2018 fashion accessory collection.', 'Qui quo nisi autem unde. Qui sint aut accusamus in. Est et eos eum fugit. Similique occaecati ea modi aperiam.\n\nConsequatur quod tenetur magni error rerum. Atque ut quod porro velit. Dolores ipsum saepe eveniet sit facere. Qui eum illo perferendis ea in repellat qui.\n\nRerum inventore molestiae sit vero in inventore molestias. Deserunt enim voluptate ut unde quis eaque. Cumque delectus ipsa libero voluptas aliquam qui sequi sunt.\n\nEaque ex dolore commodi molestiae. Atque dolores vitae atque expedita consequuntur deserunt iusto atque. Ducimus error sapiente assumenda voluptatem sequi eligendi.\n\nDolorum et minus alias eum. Omnis consequatur et possimus labore sit. Aut aut voluptatum voluptas illo itaque maxime. Facilis facere quisquam dolores. Aut et unde ipsam modi ut quibusdam nostrum.\n\nNeque dolorem vero voluptatum in voluptas expedita dolore. Officiis ipsa reiciendis ut. Quae animi quo at eum. Tempore qui consectetur a quo voluptatem.\n\nQui id quo numquam explicabo quia distinctio aspernatur. Suscipit velit dolor quis accusamus in perferendis. Eaque doloribus id quidem dolore numquam sed provident. Qui et sed voluptates qui error aspernatur.\n\nVitae beatae ut natus explicabo. Ea culpa asperiores sed vel. Ipsa adipisci sed animi est cum sint sed saepe.\n\nQuia dolor ducimus qui modi aut. Vitae sapiente optio ratione veritatis excepturi. Dolores quod reiciendis est illum esse aut. Dolore ipsum qui nisi est rerum omnis ipsum. Unde iusto illo commodi consequatur debitis explicabo dolorem.\n\nUt rem minus voluptatem ut. Consequatur aut porro velit eius alias porro. Atque adipisci est modi blanditiis. Non molestiae laborum et error.\n\nNon ratione suscipit eveniet commodi voluptatibus. Et aspernatur eos suscipit doloribus et iusto. Exercitationem omnis quae natus quas non consequatur esse. Quidem harum sint eligendi et.', 'loved_ones.jpg', '2018-05-28 07:58:23', '2018-12-08 03:59:12', '2018-05-28 07:58:23', 2, 51, NULL),
(19, 2, 'Gucci: Stories on Silk', 'Gucci-stories-on-Silk', 'A canvas for the Gucci’s designs since it was founded in 1921, Cruise 2018’s collection of foulards—a word of French origin meaning a square silk scarf—show a mix of eclectic motifs.', 'Laborum optio rerum tempore maiores vitae voluptatem in eaque. Doloremque optio odit enim ducimus et facere beatae neque.\n\nCumque et dolorem vel facilis dolore aut odio et. Et ratione vel expedita perferendis sunt quos perferendis corrupti. Eos fuga id rerum molestias aut quis quis.\n\nQui assumenda ut id ratione similique quos tenetur. Repellendus distinctio debitis voluptatem consequatur eos sit veritatis.\n\nFugit rerum perferendis omnis delectus sed. Velit eveniet nihil dicta cum. Alias earum eos doloribus ea debitis possimus minima. Voluptas saepe tenetur expedita mollitia aliquid et perferendis. Ab quos reiciendis voluptatem fugit ipsa dolor.\n\nTempore ipsam et ratione dolorum a. Hic et minus fuga.\n\nFuga doloremque enim quo nam magnam exercitationem corporis. Eaque maxime facilis culpa et necessitatibus. Voluptatem qui sunt officia ut assumenda sed commodi. Eveniet minima sint cumque omnis fugiat distinctio voluptas.\n\nQuis dicta assumenda excepturi ab perferendis pariatur id. Culpa harum quo deserunt impedit quia. Dolorem explicabo aut sit repudiandae maiores deserunt dolorum. Consequatur provident dolor quo minus accusantium.\n\nQuae iure quo ut eum qui eius voluptas. Et et explicabo aspernatur dolorem eum. Voluptatem soluta quaerat impedit voluptates recusandae.\n\nNesciunt quos dignissimos cupiditate ab non aliquid repellat molestiae. Dicta quis sit et ut. Quos deleniti fuga voluptas perferendis iusto.\n\nSit ratione laborum molestiae quia. Aut velit perspiciatis inventore praesentium est velit ex. Placeat ducimus quis non et ipsum.\n\nQuia molestiae ut cumque harum et et. Non consequatur dignissimos consectetur quo magnam veniam et.\n\nPorro quia et dolores et nulla. Fuga perferendis sit et cupiditate voluptates et. Quis laborum eius nihil expedita nihil neque quia sunt. Quam pariatur dolorum enim et cum excepturi quibusdam quis.\n\nQui enim doloremque quis. Consequatur quos officiis nobis asperiores. Sapiente et iusto non et aliquid sunt. Aut quaerat ducimus sed a ducimus.\n\nDignissimos voluptatem non aut dicta et recusandae. Impedit odit voluptatem ipsam fugit ipsa sit.', 'gucci_cat.jpg', '2018-06-07 07:58:23', '2018-12-07 20:38:50', '2018-06-07 07:58:23', 2, 21, NULL),
(20, 2, 'Illum quia sunt dolores iste provident magni sed repellat aut.', 'sint-quibusdam-id-ad-recusandae-dignissimos-in-dolor-et', 'Autem ut molestias commodi praesentium nihil officiis harum sapiente. Sint mollitia facilis laboriosam minima et perferendis rerum a. Ipsa et vero fugiat aut excepturi omnis cupiditate. Qui sed aut eligendi atque voluptatem.', 'Architecto veritatis magni ut ea non et ipsam. Voluptas minus alias esse et aliquam aut. Harum reprehenderit rem dolor delectus. Iste nesciunt voluptas magnam esse.\n\nEt dolorem explicabo ratione aspernatur. Enim non suscipit cumque. Consectetur nemo et aut nam doloremque praesentium qui. Eveniet est aut voluptas autem vel qui.\n\nAdipisci placeat est amet sunt aut. Quia id amet dolore voluptatibus est iure. Eos sit eum est optio. Quam excepturi consequatur qui non facere ea.\n\nExplicabo eveniet nostrum facilis voluptas libero tenetur. Dolorum sit quidem perspiciatis blanditiis. Illo pariatur ea quia doloribus qui.\n\nEa et occaecati non animi expedita dolore adipisci quae. Blanditiis at totam aut ad repellat. Tenetur officia non quia quis vitae aliquam quis sit. Maxime quia enim est ut ea aut iusto.\n\nVoluptas in provident et voluptatem quisquam. Quasi provident enim ab id aut.\n\nMagni sed totam in enim tempore hic. Eos dolore aperiam numquam in et laudantium est. Voluptatem deserunt quos saepe provident officiis.\n\nEos tenetur labore voluptatem nemo animi rem laboriosam. Eum cupiditate saepe exercitationem. Et quod assumenda nobis necessitatibus. Dolor voluptate in temporibus deleniti.\n\nDolorem velit ut adipisci dicta est porro. Occaecati est voluptatem velit aliquid aut ut quo est. Velit assumenda et nihil consectetur.\n\nOdio nihil fugiat velit. Sed et quae aut molestiae qui qui dolorem. Qui modi est ut at harum.\n\nEligendi in quis vitae architecto. Quis quisquam cumque nihil atque quas possimus nisi. Similique sed et quod.', NULL, '2018-06-17 07:58:23', '2018-06-17 07:58:23', '2018-06-17 07:58:23', 5, 60, NULL);
INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `excerpt`, `body`, `image`, `created_at`, `updated_at`, `published_at`, `category_id`, `view_count`, `deleted_at`) VALUES
(21, 3, 'Gucci 2018 Jewelry Ad Campaign', 'Gucci-2018-Jewelry-Ad-Campaign', 'Evoking Flemish still life paintings from the Dutch Golden Age, Chris Lee appears in a series of portraits rich with romance by photographer Julia Hetta.', 'Nesciunt dolore laborum consectetur ducimus consequatur qui. Commodi ea animi dolorem eius iusto temporibus repellat. Alias dicta voluptatibus et consequatur. Voluptatem illo adipisci officiis ipsa et.\n\nIusto optio qui tempora numquam. Recusandae vel iste vel dignissimos porro voluptatum. Omnis saepe laboriosam et sapiente. Molestiae accusamus eos atque beatae consequatur commodi delectus doloremque. Sed sint veniam enim voluptate vitae magnam.\n\nSit delectus nobis voluptatem cupiditate. Vero ut enim id temporibus. Neque non quia officia iure ipsam ipsam tenetur. Iure labore dolorem quaerat dolorem molestiae.\n\nRem fuga modi sint molestiae omnis dolores distinctio aperiam. Autem ut quia itaque quia eaque. Quo at doloremque quae laborum accusantium in.\n\nEt molestias sint eum aliquam totam debitis veniam qui. Perspiciatis iusto natus voluptatem dolor voluptas rerum et doloremque. Similique doloremque earum ab repudiandae quidem.\n\nFugiat perferendis vitae rerum qui. Ut harum nam recusandae et ratione qui. Aperiam ratione ratione omnis corporis. Dolores non libero fuga officia odit et distinctio.\n\nEst aperiam quis in maiores cumque provident et. Quidem iusto voluptas aut est. Iure et voluptatum eligendi et excepturi quia.\n\nLaudantium repellat earum cumque sint. Dolorem maxime iusto velit qui consequuntur itaque. Eos est corrupti fugiat iure corrupti qui neque. Eum maxime in vero.\n\nAliquid molestiae omnis sit quae cumque blanditiis ad. Doloremque sed minus eveniet cum natus minima qui. Ex soluta officiis soluta id. Qui dolor voluptas voluptas dolore ut vel.\n\nVero molestiae id qui. Omnis optio aut natus doloribus ipsam optio voluptas cupiditate. Ullam fugiat reiciendis rerum ratione. Sint enim nesciunt et quod omnis quis.\n\nSaepe voluptate quasi quis tempore tempora. Rerum tempora et quos vel ratione. Magnam ipsum quaerat architecto esse quod. Nobis ut temporibus iusto laborum est provident vel.', 'gucci_jewelry.jpg', '2018-06-27 07:58:23', '2018-12-08 03:41:28', '2018-06-27 07:58:23', 6, 103, NULL),
(22, 3, 'A Fashion Apparition: D&G Devotion Bag', 'A-Fashion-Apparition-DG-Devotion-Bag', 'The Devotion Bag came down to Earth on the wings of mechanical angels. Guided by the rotors of a cutting-edge drone, it arrived in flight before the disbelieving eyes of the spectators at the Women’s Fall Winter 2018-19 Fashion Show. It was a fashion apparition, a dream come true.', 'Accusamus quia at ducimus perspiciatis assumenda mollitia a qui. Accusamus aut officiis illum voluptatum explicabo voluptatem. Expedita rerum cum et itaque eum quasi. Vel nulla et earum natus et.\n\nTemporibus eligendi natus hic et amet. Incidunt nisi mollitia nihil autem ullam voluptatum. A nesciunt qui illo sunt.\n\nMagni non quaerat deleniti qui modi. Ut in quaerat ullam reiciendis. Sed doloribus qui quisquam eos eum qui. Repellendus aut aut at odit saepe.\n\nConsectetur et quis voluptatem quidem quia. Ad rerum tenetur veritatis qui ut ab et. Molestiae odio quasi distinctio repellat quia.\n\nEa dolorum ut atque porro quod. Porro fuga dolorum quia neque quasi. Occaecati reprehenderit nobis aut eaque velit repudiandae praesentium illo.\n\nDolor nihil voluptate laudantium earum quidem corporis. Dolore ratione distinctio ea et harum vitae maiores. Quam ducimus similique nobis quos.\n\nOdit facilis illum aliquam dolores. Iure nulla officiis veritatis aut neque nostrum qui. Culpa dolorem est sunt.\n\nIste itaque voluptates tempora praesentium architecto. Laboriosam odio nulla harum iusto.\n\nUllam commodi ea placeat. Sunt et odio fuga laboriosam. Ipsam possimus porro vitae ut quasi quidem.\n\nQuibusdam et minus necessitatibus nulla numquam. Itaque non nesciunt voluptas quibusdam. Nobis vel sed sed deserunt quaerat.\n\nUt cum consectetur unde velit quis animi aut. Occaecati labore quos officia architecto atque eum porro. Dolores aut veritatis et aliquam eum molestiae. Magnam voluptatem eos tempore architecto quia ut.\n\nRerum doloremque impedit laudantium unde eos architecto. Eum perspiciatis iste veniam provident ut assumenda enim est.', 'devotion.png', '2018-07-07 07:58:23', '2018-12-08 07:05:46', '2018-07-07 07:58:23', 3, 85, NULL),
(23, 2, 'Sous Le Signe Du Lion.', 'Sous Le Signe Du Lion.', 'Reprehenderit voluptas amet et sit nihil. Et cum quam totam vel eos saepe quasi. Doloremque et dolor quia quia eligendi magni. Consectetur illum et quod et alias et sunt. Dolorum debitis consequatur quia assumenda et fugiat.', 'Libero occaecati vel modi tenetur optio repellat corrupti. Cupiditate ut repudiandae consequatur repellendus molestiae eligendi. Ut repellendus et ducimus qui ratione. Sapiente aut temporibus aut sit est ut accusantium.\n\nEst dolorem velit porro magnam. Qui ratione incidunt rerum. Quas possimus dignissimos voluptatem corrupti occaecati velit. Et quis cupiditate quaerat ut.\n\nOdit quasi at dolorem veritatis at nobis. Adipisci perspiciatis et et repudiandae ut distinctio qui voluptas. Voluptatem pariatur dolores eum non fugiat. Temporibus libero quidem harum voluptas delectus mollitia non dolor.\n\nLibero est harum molestiae aliquid atque. Et corporis voluptate sint est qui impedit. Ipsum sunt error reiciendis vel quidem reprehenderit.\n\nVoluptatem voluptatibus est labore doloribus optio. Nulla inventore aut occaecati eum ut officiis atque sint. Et non sunt officiis in dolores pariatur. Velit fugiat explicabo blanditiis qui.\n\nCorporis maxime quia blanditiis voluptatem dolore. Commodi reprehenderit repellat amet reprehenderit neque voluptatibus. Porro sed a facilis eum laboriosam distinctio minima.\n\nPorro expedita in doloremque neque tenetur beatae illo. Dolorum maiores voluptas aut dolores. Qui amet fuga voluptates corrupti ipsum molestiae qui.\n\nDolor aliquid officiis consequatur ea odit quasi consectetur. Deleniti ullam autem placeat et a eum.\n\nAut numquam aut quibusdam laborum. Quam quia repellendus temporibus laborum necessitatibus similique ducimus. Aperiam et aperiam voluptas quo iste.\n\nVoluptates autem omnis voluptate nobis. Consectetur quo et autem eos consectetur sed quis.\n\nAlias consequatur consectetur atque hic veritatis. Et quia illo voluptas modi sapiente soluta minus. Qui consectetur sunt fuga ea animi quae dolorem voluptatem. Dolorem dolor quia expedita occaecati neque necessitatibus vero.', 'du_lion.jpg', '2018-07-17 07:58:23', '2018-12-08 01:05:21', '2018-07-17 07:58:23', 6, 14, NULL),
(24, 2, 'Matsuda optical heritage collection', 'Matsuda-optical-heritage-collection', 'The Precious Collection is a capsule collection of eyewear crafted of solid sterling silver, 18k solid gold, and other precious materials. This is luxury at it’s purest.', 'Explicabo non sit iure quia culpa in. Alias et nam voluptas officiis ipsa. Molestiae quaerat enim quibusdam.\n\nNam voluptate est ad dolorum aliquam. Enim hic praesentium aut quis. Doloribus harum quia minima.\n\nLaudantium delectus ut ea culpa sed unde. Debitis qui quos quia alias. Accusamus nihil fugiat excepturi totam.\n\nEaque et quia et sequi sit officia deserunt ipsa. In neque cumque iure dolore.\n\nDistinctio fugiat eaque suscipit eum laboriosam quae. Dignissimos facilis maiores modi facere magnam nisi eos sit. Aut sint sed nisi doloribus.\n\nUt asperiores facere quidem nostrum ipsa. Expedita deleniti laboriosam consectetur dolorem nemo neque. Aliquam fugit alias consectetur sed saepe provident aut. Beatae ab accusamus sunt reiciendis.\n\nVel incidunt consequatur consectetur vel amet quaerat. Tempora est ipsam maiores voluptas atque ipsum. Rerum unde at qui delectus cumque. Vitae quisquam numquam quia aut eligendi id. Nostrum id architecto eius incidunt ipsam non omnis et.\n\nVoluptatum fugit repellat animi ut sed. Aliquam voluptatem fugit aut accusamus excepturi tempora accusamus. Et perferendis nisi culpa accusantium aspernatur. Ut recusandae deleniti distinctio nemo porro corrupti provident.\n\nMinima ut eos asperiores alias tenetur est. Ut corporis perferendis nam accusantium quis cupiditate incidunt magnam. Est omnis iure alias sunt nulla voluptate eos.\n\nSunt totam quis ducimus dolorem labore. Dolores iste laudantium ducimus tempora. Et quia nisi repellendus aut repellat nulla rem.\n\nEa vel quia vel et. Saepe quis qui nihil voluptatem assumenda. Rerum doloribus quidem a consequatur. Adipisci voluptatem et nihil repellendus.', 'matsuda.jpg', '2018-07-27 07:58:23', '2018-12-08 06:12:27', '2018-07-27 07:58:23', 5, 23, NULL),
(25, 3, 'GUCCI 2018 Modern Tailored Suites', 'GUCCI-2018-Modern-Tailored-Suites', 'Actor Tom Hiddleston is shot by Glen Luchford for the new men’s Tailoring campaign.', 'Voluptatem nihil eos voluptate commodi numquam praesentium quos amet. Distinctio ipsum reprehenderit est nihil. Aut molestiae eum eum ut eum.\n\nNon minima possimus autem. Harum iusto consectetur numquam qui vitae. Quisquam facere ratione corporis voluptate quo. Quaerat quaerat dolores illo sequi iste et incidunt.\n\nQuia commodi laboriosam dolor. Non tenetur rerum est. Eum asperiores sit tempora qui possimus qui distinctio. Est mollitia eum sunt ut velit ut ratione.\n\nVoluptatem est voluptas dolor culpa. Occaecati ut et et. Officiis aliquam doloremque maxime blanditiis vel unde repellat suscipit.\n\nAut sint provident itaque dignissimos ad. Est pariatur accusantium sed accusamus officiis impedit. A voluptatibus explicabo omnis autem sunt. Non soluta sed rerum vel non expedita.\n\nEt fugit eos sint fuga. Dignissimos et recusandae illum provident. Dignissimos qui incidunt recusandae laboriosam voluptas.\n\nItaque magni vitae quaerat repellat eligendi odit. Qui voluptates voluptatem eaque atque excepturi. Ut et molestiae voluptates rerum rerum numquam. Ut enim animi id magnam voluptatem.\n\nSequi commodi et quisquam vitae asperiores in inventore. Beatae omnis fuga aut id ut incidunt ipsum totam. Nihil veniam culpa totam voluptas excepturi id ducimus quia.\n\nImpedit facere nisi ullam quo neque quae. Soluta delectus quasi facere architecto et repellendus dolores. Consequatur repellat aspernatur facilis.\n\nMaxime omnis quas perspiciatis ut ab. Consectetur exercitationem qui inventore neque non non. Doloribus molestiae dolore rem. Porro dolorem ex et qui corporis.', 'tom_gucci.png', '2018-08-06 07:58:23', '2018-12-08 02:38:28', '2018-08-06 07:58:23', 8, 21, NULL),
(26, 1, 'Chanel Cruise Ready to Wear 2018/19', 'Chanel-Cruise-Ready-to-Wear-201819', 'Id consequatur quod neque. Quibusdam quia laudantium iste dolores et vel dolor. Eligendi illo a nesciunt. Sed sunt velit et repudiandae. Dolorem ullam aut deserunt nihil dolore. Quas animi est accusamus veritatis officiis et.', 'Omnis quis eaque eos aspernatur iure ipsum suscipit. Qui non sint ea. Quis laboriosam inventore commodi molestias minima vero. Veritatis sapiente voluptas velit ut et.\n\nVitae officiis quia voluptatem explicabo exercitationem. Quasi itaque voluptate quis dignissimos. Omnis illum iure ut et. Sit nobis autem accusantium qui sapiente libero doloremque. Sed temporibus dicta dolorem quis.\n\nMollitia voluptates et nobis eius. Et quos occaecati iure sint sed ipsum. Voluptatem et veritatis eligendi consectetur itaque est.\n\nRerum dignissimos sunt non quod et aut. Quas qui quas quia odio natus aut velit. Earum qui sed et aut laborum repellendus. Sit soluta maiores fugit.\n\nEos et qui cum molestiae rem dolorum aperiam. Atque sed enim aliquam rerum consequatur perferendis. Porro modi exercitationem aut dolorum qui.\n\nSed blanditiis beatae sit veritatis laborum quia. Quasi quia autem ducimus dolores. Omnis sint et qui rerum. At dolorum dolore quo sint quisquam ipsam. Quo cumque aut deserunt in sit qui qui.\n\nVoluptatum ad saepe pariatur quidem ullam voluptas. Corrupti impedit aut nam laborum quam. Ipsum voluptatem sit facere ratione.\n\nVoluptate minus voluptatem quo fugiat velit architecto magni placeat. Nihil alias id explicabo molestiae rerum. Atque amet dolore consectetur magnam. Qui tempora et dolorem itaque nam accusantium quia dicta.\n\nAccusantium maiores magnam eveniet quibusdam quia aperiam qui. Delectus optio tenetur quibusdam qui. At in esse modi rerum culpa ut laudantium. Suscipit quaerat quasi itaque odit alias quis quidem.\n\nRepellendus eaque omnis numquam autem voluptatem rerum. Et nihil tempora vero repellat consequatur dolor labore. Aut esse nostrum nisi distinctio. Quo voluptates rerum quo vitae libero fugit.', 'blouse_tops.jpg', '2018-08-16 07:58:23', '2018-12-08 00:10:51', '2018-08-16 07:58:23', 4, 91, NULL),
(27, 2, 'Tom Ford: Eyewear Private Collection', 'Tom-Ford-Eyewear-Private-Collection', 'Tom Ford announces the launch of the TOM FORD Private Eyewear Collection, a special edition of sunglasses and optical frames designed for the eyewear connoisseur. The collection will be available exclusively on TOMFORD.com on April 4th.', 'The eleven styles in the Private Collection commemorate Tom Ford’s eleven years of making exceptional eyewear and are crafted using ultra-premium materials. Real buffalo horn is selected for its warm and luxurious finish and its natural pattern that gives each piece a unique quality. The highest-grade Japanese titanium is chosen for its ultra-light weight and sleek, progressive look. All sunglasses feature photochromic lenses that darken and lighten automatically, depending on the light conditions. Optical frames are lightly tinted in green, blue, or brown.\r\n\r\nThe five Private Collection Sunglass styles include the TOM N.2, a timeless style made of shiny black or shiny striped green horn and featuring the signature metal T at the temples. The new TOM N.8 is a generously rounded aviator shape with a thick bridge, offered in shiny black horn with light brown photochromic lenses. TOM N.10 follows similar lines but with a lighter and more spacious double-bar bridge. The curving, streamlined TOM N.4 and TOM N.6 reinvent the aviator from titanium in shiny rose gold, light ruthenium, and black. Their cross-front frames—a TOM FORD signature—and light brown or smoke-with-silver-mirror photochromic lenses create a head-turning look.\r\n\r\nSix Private Collection Optical frames echo several of the sunglass styles, but in slightly more subdued form. TOM N.1 is an aviator shape made of black horn with light smoke optical lenses. TOM N.3 is a double-bar square frame offered in striped dark brown horn with blue lenses, or light brown horn with light brown lenses. TOM N.5 is a classic style that was made iconic by Colin Firth in “A Single Man.” For the Private Collection, it is offered in black horn with green lenses or striped brown horn with light brown lenses. A more rounded version of this silhouette, TOM N.7, is made of strikingly pale, light brown horn.\r\n\r\nThe minimalist TOM N.11 is a horn version of the sleek and slightly geometric frame pictured in the previous TOM FORD Autumn/Winter 2015 Eyewear campaign. Metal detailing accents the bridge and temples and blue lenses enhance the striking look. The new TOM N.9 is a more subtle and ultra-wearable iteration of this style, made of striped dark brown horn with light green lenses.', 'tom_eyewear.jpg', '2018-08-26 07:58:23', '2018-12-08 06:05:05', '2018-08-26 07:58:23', 5, 71, NULL),
(28, 3, 'Prada Ready to Wear 2018: City of Women', 'Prada-Ready-to-Wear-2018', 'A City of Women portrays the Prada woman today, yet this is not woman as singular, but legion, presented in multiple incarnations to reflect the many facets of contemporary femininity. As in a city, these different walks of life, different visions of women, co-exist, intermingle, contrast and compliment.  The Prada woman is never static, nor easily defined.', 'Consequatur reprehenderit assumenda est nisi dolorum quis. Amet omnis quae molestiae et beatae. Qui dicta omnis corporis consectetur assumenda.\n\nNihil molestiae rerum ratione optio atque. Autem rerum consequatur ipsam ipsam. Vel inventore itaque et illo.\n\nIusto dolorem nam est voluptatem quo. Expedita reiciendis consequatur et deserunt id consectetur. Corrupti ducimus labore dolorum harum dolorem. Id pariatur non debitis aut consequatur quaerat.\n\nPariatur sint exercitationem laborum aut earum dolorem. Similique ducimus eum voluptatibus quis error perferendis. Ipsa nam doloribus minus aut aut voluptas pariatur.\n\nEveniet est reprehenderit atque magnam. Nobis vitae voluptas iure vel quis. Et et ut quia consequatur dolores. Qui ut vero inventore quaerat exercitationem ea unde et. Adipisci explicabo est voluptatibus minus qui totam.\n\nRepellendus optio nihil at tempora laborum quis. Eligendi ut quis quibusdam officiis tempore. Fugit commodi in non quas sint quasi.\n\nAutem deserunt non laboriosam perspiciatis facere. Non fugit non veniam. Non id nam possimus reiciendis vitae velit quasi. Harum nisi qui aut ad quas aut.\n\nEt corporis assumenda nostrum quo assumenda sunt sint. Dignissimos iusto blanditiis illo blanditiis deserunt consectetur minus. Eveniet voluptates libero quae molestiae dolores. Voluptates illo earum est ullam cum dolorem dicta.\n\nEum et accusantium dicta aperiam perspiciatis non. Sit blanditiis tempore animi cupiditate. Autem ea sint molestiae impedit omnis qui voluptas.\n\nEst saepe porro perspiciatis inventore blanditiis fugit numquam. Harum tenetur qui voluptas fugit et nam laborum. Accusamus quas odio maxime natus. Voluptatem sunt optio quo quia.\n\nVel dolores fuga perspiciatis tenetur qui quasi. Sed numquam possimus praesentium rerum sint dolores. Qui quia eum consequuntur temporibus. Qui et autem et sint ut expedita enim aspernatur.\n\nEx aspernatur possimus ut exercitationem et. Nihil iusto doloribus commodi labore ullam autem. Aspernatur placeat aut qui et dicta aut alias. Aliquam qui quaerat ut suscipit sunt ratione dolor. Unde sed sit quia totam.\n\nAlias eius suscipit est animi consectetur laudantium nisi. Non autem voluptate fuga eum dolores deleniti voluptatum.\n\nNobis vel aut officiis. Provident animi ipsam maxime facere. Praesentium ipsam dolores dicta nisi eaque maiores facere beatae. Quaerat est ipsum est dolorem.\n\nRerum et cumque porro consectetur quia eos. Rem ipsa vel aliquam quia. Aperiam non et enim error ab exercitationem aut.', 'prada_ready.png', '2018-09-05 07:58:23', '2018-12-08 05:02:18', '2018-09-05 07:58:23', 4, 12, NULL),
(29, 1, 'Tom Ford\'s 2018 Ready to Wear Campaign', 'tom-fords-2018-Ready-to-Wear-Campaign', 'Velit alias officiis excepturi numquam et fugit blanditiis. Ratione impedit et et non nulla quis et. Ab nulla iure porro repellendus. Consequuntur voluptatum nulla omnis alias fuga.', 'Distinctio et est ea natus deserunt soluta. Hic quaerat et quibusdam ea odio aut.\n\nTemporibus sit non dolore consequatur quis quia. Nisi quos et fuga qui quod. Odit aut maxime veritatis aliquam error quo.\n\nSit facere velit similique harum. Placeat laborum voluptas possimus est. Sit non rerum reprehenderit mollitia eveniet cumque. Vitae aut architecto occaecati commodi omnis natus.\n\nBlanditiis autem ratione modi modi et. Eum qui magni rem ullam aut molestiae maxime. Veniam sint similique optio at recusandae. Temporibus magni perferendis architecto aut veritatis ipsum. Iusto quidem pariatur quibusdam.\n\nLaboriosam dolores dolor quia earum. Repellat enim et aut doloribus ut accusamus iste.\n\nUt ut nobis modi et dolorum ut sint. Qui sed in repellendus illo veniam qui. Temporibus occaecati repellat tenetur ea. Aliquid ex numquam aut blanditiis provident.\n\nOdio est consectetur quam atque adipisci ut corrupti. Non qui ratione eaque quas et officia culpa facere. Recusandae quaerat quam dolor eveniet earum ut. Veritatis voluptatem accusantium porro in magni deserunt velit.\n\nSunt illo odio laudantium ut. Odio veritatis eum laboriosam debitis ut recusandae.\n\nVoluptas et laborum iusto in accusantium natus. Nisi dolore fuga blanditiis. Aspernatur et voluptas voluptatem. Aliquid consequatur et culpa eaque.\n\nOccaecati explicabo asperiores tenetur voluptatum commodi sit voluptatem. Enim quam enim natus porro rerum possimus. Est eum aut quas eum labore voluptatem minima praesentium. Ad sed laborum qui et.\n\nIn optio maxime quos quia doloribus consequatur et. Sed adipisci delectus eveniet numquam est. Hic numquam unde qui.\n\nQui laboriosam voluptas ea perferendis. Aut esse repellendus earum id quam laudantium eveniet. Exercitationem dolor optio temporibus molestiae ex enim sit. Assumenda molestiae accusantium modi temporibus qui corporis voluptatem in.\n\nIusto corrupti ipsum quas non. Vel debitis non sint excepturi id deleniti rem. Culpa beatae est et suscipit. Libero non omnis et.\n\nQui magnam modi sit ullam. Voluptas repudiandae et ullam commodi illum in. Aut voluptatem ducimus iure ullam optio adipisci non. Fuga sequi reiciendis et eos molestiae.\n\nQuia vel debitis et saepe beatae. Necessitatibus sed sunt iusto quis nihil. In dignissimos delectus est aut eius.', 'tom_ready.jpg', '2018-09-15 07:58:23', '2018-11-29 08:57:04', '2018-09-15 07:58:23', 4, 81, NULL),
(30, 1, 'Coco Crush Discover the Jewelry', 'coco-crush-discover-the-jewelry', 'Fugit commodi voluptas molestiae nostrum saepe impedit. Nostrum illo quam reprehenderit adipisci vero sunt. Tenetur eaque ipsam ea perferendis voluptatem voluptas. Quia quia nobis id non consectetur.', 'Et deserunt fugiat in vel distinctio laudantium quia. Ut mollitia aut et laborum. At error vitae neque saepe fuga. Itaque repellendus eum omnis esse qui.\n\nLibero sint voluptatibus incidunt aliquam quia commodi. Quibusdam numquam voluptas voluptatum libero consectetur.\n\nAliquid ut dignissimos iure et illo. Odit ratione voluptas fuga est. In recusandae expedita quia dolore nisi voluptatem. Nulla odio laborum repellendus odit rerum sunt incidunt.\n\nEligendi sint necessitatibus sed enim cupiditate quod. Est possimus amet rerum veniam sint quia. Impedit dolorem accusantium est ad itaque magni. Perferendis ut fugit dolorem ex quibusdam ad.\n\nUt sint impedit quidem fugiat. Rerum labore laudantium libero voluptate in.\n\nQui natus nesciunt eius voluptate sequi recusandae reiciendis. Recusandae quod excepturi aut ducimus voluptas. Iure est voluptates esse voluptas et commodi. Accusantium dolorem in sed sint ex animi inventore. Officiis qui at et non error in.\n\nSoluta esse veniam et mollitia nihil debitis provident. Architecto soluta consequuntur voluptatem corrupti rerum quos molestias. Enim nulla voluptates facere quidem modi.\n\nQuam odit non fugiat incidunt qui consequuntur. Maxime repellendus suscipit vero nesciunt. Suscipit porro culpa nostrum.\n\nEt ab et neque possimus ut error. Eligendi perspiciatis consequatur cum praesentium. Eligendi omnis nihil dolore vel. Quis consequatur quisquam consequatur labore qui est molestiae similique.\n\nSed laborum quae sed distinctio. Illum tempora vel quidem modi aperiam. Sint et ea fuga a alias ea. Dolor nostrum sit tenetur quia aut.\n\nRerum quaerat ut ex est voluptas optio voluptatem. Dicta occaecati et ut eligendi in in. Neque exercitationem aut illum eaque ea molestiae labore. Ea est ducimus eaque rerum dicta debitis.\n\nDeserunt enim tempora aut fuga impedit nemo. Doloremque quod aspernatur velit non. Consequatur autem tempore accusantium omnis. Sit consectetur rerum exercitationem magni.', 'coco_crush.jpg', '2018-09-25 07:58:23', '2018-12-08 01:01:02', '2018-09-29 07:58:23', 6, 59, NULL),
(31, 2, 'Dolor suscipit nisi vel non sint omnis sit nam corporis.', 'dolores-deserunt-hic-sit-aliquam', 'Ut illum vitae animi nihil aut vel quod possimus. Facilis odit nesciunt voluptatibus nesciunt sit et. Molestias atque rerum occaecati neque. Quo non sed porro occaecati perspiciatis delectus asperiores.', 'Animi cupiditate impedit facere velit. Qui rerum dolor dolorem perspiciatis. Dolore dolor sit quo dolore vel qui pariatur.\n\nVoluptas rem est eum omnis odio. Ad impedit magni iste. Non ut eius molestiae eveniet et aut. Commodi facere ea ut perferendis asperiores.\n\nDoloremque delectus ut dolores iste. Quam sit ut sed ipsam. Commodi autem quia illo est totam voluptatibus ut sit. Ipsum libero aut aliquid debitis qui.\n\nEa unde ut magnam expedita sed. Vitae quia laborum non eveniet quas. Soluta quam dignissimos itaque explicabo voluptatem.\n\nAd iure a nostrum assumenda corporis. Eaque eaque sit voluptatum cumque consequatur sint et. Voluptatem repellendus ipsa blanditiis nihil incidunt eum.\n\nArchitecto possimus aliquid doloribus. Nemo cumque ut quidem. Alias aut aut deleniti est quod et.\n\nEaque qui sunt eum nisi est et. Tempore nisi nostrum in esse suscipit consequatur aliquid qui. A rerum amet illum et libero repellat cupiditate. Quia reiciendis qui in ut natus voluptatem autem. Deleniti quasi nostrum qui nam est.\n\nVoluptas consectetur omnis similique minus. Blanditiis et quia voluptatem perspiciatis quia ut nostrum. Est maxime a beatae libero quam dignissimos dolor. Voluptatem id repellat vitae dignissimos saepe pariatur non.\n\nAb et sit enim dolores. Dolores et itaque ut accusamus quaerat est facere. Quos autem laboriosam quo similique qui. At qui ex quae expedita assumenda est deserunt.\n\nSit temporibus et quaerat recusandae quam. Exercitationem nostrum placeat ullam aut est vero doloremque. Inventore consequuntur et ullam molestias repellat voluptatem in iusto. Nam illo non sunt numquam est nemo. Maiores facilis nostrum quidem iure explicabo sed ut.\n\nAmet quos commodi odio. Autem voluptatum provident incidunt iure nobis. Sit laudantium ut ex vero neque. Est eos sed tempore voluptas molestiae.', NULL, '2018-10-05 07:58:23', '2018-10-05 07:58:23', NULL, 5, 40, NULL),
(32, 2, 'Prada: 2018 Fall-Autumn Campaign', 'Prada-2018-Fall-Autumn', 'Nemo eius amet eveniet temporibus hic laudantium. Dolor vel dicta rerum asperiores recusandae earum est. Et voluptatem quasi libero quaerat officiis dolor et.', 'Consectetur esse dignissimos repellat sed aut. Aut et soluta odio. Ipsam quia ea molestiae dignissimos inventore eaque consequatur.\n\nCumque in omnis deleniti ut est blanditiis. Ad reiciendis fugiat nemo consequuntur. Ducimus voluptas doloribus accusantium autem. Vel amet sunt nesciunt ratione facere.\n\nVoluptatibus accusantium dolor magni non iste autem enim. Ut modi enim quasi cum. Pariatur est rerum quas a enim. Placeat eligendi amet sit.\n\nExcepturi aut omnis distinctio culpa dicta qui id. Sint quo voluptates ipsam repudiandae et unde commodi.\n\nDucimus quos dignissimos dolorum repudiandae. Praesentium non impedit incidunt nesciunt. Earum reiciendis commodi non voluptatem numquam sapiente.\n\nConsequatur laboriosam harum pariatur impedit porro omnis. Labore minus suscipit aut. Dignissimos quia vero quia sit.\n\nMinus odio architecto optio culpa. Dolor nemo facere molestias optio sed iste officiis.\n\nRerum cupiditate consequatur nulla. Tempore accusantium ab ut. Omnis possimus dolorem ipsum rerum.\n\nEos velit distinctio rerum. Et veritatis ut quibusdam voluptate iusto.\n\nInventore aut facere eaque quibusdam voluptas. Nam molestiae odit ad qui laborum voluptates sit. Dignissimos dolorum temporibus voluptates vero dolor.\n\nNisi tenetur suscipit facere suscipit et quis aliquam. Est consequatur ex ut ipsam. Ipsum corrupti eaque corrupti aspernatur quidem magnam dolorum.\n\nDolor facilis porro voluptas laborum. Magni eum sint laudantium sit. Fugiat dolor corporis et molestias quidem. Officiis ea iste sequi quaerat a sit laborum debitis.\n\nAnimi voluptatem et dolor. Tenetur eum qui dolor repellendus fugiat optio recusandae. Magnam ut esse delectus aliquam est enim.\n\nDeserunt aperiam nemo dolor laborum enim enim. Corporis tenetur quia quis officiis molestiae nulla distinctio minus. Quos sapiente sed commodi possimus iusto. Rerum excepturi doloremque et eum veniam sed.\n\nQuas nostrum sequi inventore illum. Odio tenetur alias est.', 'mens_evening.jpg', '2018-10-15 07:58:23', '2018-12-08 05:53:44', '2018-10-19 07:58:23', 4, 55, NULL),
(33, 2, 'Chanels Classic Handbag Review', 'chanels-classic-handbag-review', 'Karl Lagerfeld reinterpreted the 2.55\r\nhandbag imagined by Gabrielle Chanel', 'Incidunt qui qui in sed. Doloribus et et non. Praesentium odio magni et est quas enim quisquam. Tenetur et voluptatibus repudiandae tempore quaerat excepturi sit.\r\n\r\nRerum pariatur autem sequi et perspiciatis ratione rerum reprehenderit. Qui maxime ut mollitia magnam aperiam. Illo sint consequatur minima sint voluptas.\r\n\r\nQuam deleniti nihil mollitia est molestiae. Eaque non eveniet harum quas. Sint voluptas commodi fugiat quaerat qui inventore.\r\n\r\nIncidunt voluptatem quo id quos qui tenetur. Ut quasi dolor ipsum sapiente laudantium molestiae. Voluptatem aut dignissimos et esse qui.\r\n\r\nSunt ex neque et accusantium. Laboriosam laboriosam doloremque non ut ex at blanditiis. Alias tenetur earum quisquam dicta. Quam est ullam voluptatum.\r\n\r\nPossimus omnis ducimus harum. Nobis quaerat nemo quam ipsam nihil assumenda possimus. Facere vel deleniti sit ut quia eos totam.\r\n\r\nVeniam minima cupiditate recusandae quia ut. Laboriosam sed quia vel optio voluptatem. Recusandae non dicta et et saepe aut temporibus necessitatibus.\r\n\r\nTempora et asperiores voluptas ut. A vero iste nisi quas. Voluptas nisi molestiae repudiandae incidunt. Qui tempore repudiandae rem aliquid.\r\n\r\nNesciunt esse mollitia a sequi. Dolorem tempora aperiam consequuntur doloremque voluptatem libero sit. Repellendus ab qui nulla. Ipsa deleniti qui assumenda dolorem quia et rerum.\r\n\r\nModi quia qui in porro necessitatibus. Totam provident nobis eveniet quos qui ut sed odio. Et voluptates nihil est id autem.\r\n\r\nFuga omnis molestias ipsa labore facilis iure. Et ut et deserunt. Reprehenderit quod amet quis voluptatum doloribus rerum deserunt quia.\r\n\r\nMinima dolor earum officiis voluptate placeat qui sint. Occaecati laborum dolor voluptatem sit dicta quisquam. Natus alias dolore aut quia.\r\n\r\nVeniam non et minima id. Enim recusandae beatae et. Quia ut deleniti distinctio.\r\n\r\nSequi quisquam quos deserunt vero est animi molestiae. Minus perspiciatis aut aut dolore quam rerum. Inventore voluptatem in et excepturi et.', 'handbag_story1.jpg', '2018-10-25 07:58:23', '2018-12-08 04:18:05', '2018-10-29 07:58:23', 3, 37, NULL),
(34, 3, 'Fugit ipsum fugiat enim sed est repellendus ab ut dolore.', 'dolores-aut-neque-nesciunt-ut-est-porro-non-ut', 'Natus harum autem ea commodi. Nobis dignissimos sequi labore voluptates iste. Expedita aut qui minima libero nulla alias corrupti.', 'Ducimus in vel hic sed in aut fuga at. Maxime perspiciatis voluptatem corporis impedit autem.\n\nConsequuntur ut ut qui placeat voluptas ut. Ducimus vel eos aut incidunt veniam aut voluptatibus.\n\nLaborum optio totam voluptatum perferendis. Iste accusantium porro quibusdam quae cum vitae corporis. Et laudantium fuga praesentium ut repudiandae minus quis. Vero illo neque laborum accusantium est labore.\n\nNisi et iste dolores illo explicabo quia quod. Soluta quidem quibusdam reprehenderit ex sed saepe minima commodi. At non nemo distinctio eum expedita.\n\nMinima cumque aut rerum deleniti est molestias in nam. Error maiores reiciendis non dicta qui reiciendis. Est veritatis qui nobis voluptatem. Est sunt debitis animi quaerat est. Dolore aut officiis aut aliquam.\n\nUt sunt est ab quas eaque ullam voluptatem rerum. Repudiandae minima qui nisi consequuntur molestiae nesciunt. Rem soluta est praesentium magnam recusandae earum.\n\nEt corrupti facilis dicta aut quaerat omnis commodi quia. Sapiente porro nostrum aut quam. Dicta quidem aspernatur a exercitationem quia quidem inventore tempora. Totam aliquid quaerat debitis illum.\n\nMaxime sed maxime minus dicta pariatur saepe animi. Provident occaecati iste quod sequi maiores omnis perferendis.\n\nSunt qui voluptates sit. Optio possimus perspiciatis molestiae rerum.\n\nAtque ipsa quo officia explicabo. Nesciunt aliquam accusantium in consectetur minima iste. Nulla excepturi harum voluptas numquam. Reprehenderit qui ducimus vero repellendus in quia delectus.\n\nSed provident eos molestias eius rem. Aut velit accusamus vel ut deserunt consequatur nihil.\n\nNon ducimus cupiditate ut. Sed quisquam aut cum et omnis voluptate. Neque voluptatem repudiandae accusantium. Cupiditate alias iure quasi iusto eum rerum aspernatur.', NULL, '2018-11-04 07:58:23', '2018-11-04 07:58:23', NULL, 1, 100, NULL),
(35, 1, 'Delectus vel vitae ratione facere quos dolorem ipsa cum placeat consequatur.', 'autem-iste-voluptate-vero-deleniti-cumque-ipsum', 'Veniam in quis voluptatum suscipit soluta eligendi cum. Harum incidunt consequatur provident ut. Sunt hic tempora eos cupiditate sint id est. Ullam esse sed quod.', 'Id repudiandae aut veritatis recusandae. Rerum temporibus nostrum ducimus dolor officia id eligendi. Aut qui nesciunt nostrum qui reprehenderit facilis dolores autem. Qui dolores a omnis laudantium similique amet.\n\nQuia sit ullam deleniti at. Nostrum dolorem unde et et voluptas. Consequatur et sit magnam aut consequatur eaque nostrum. Architecto quisquam corporis nesciunt ea facere.\n\nDeleniti rerum est aspernatur. Consequatur ea praesentium ut nihil fuga. Ut distinctio facilis non id. Qui dolores eos et quia.\n\nEt maiores illo ad molestiae possimus voluptas. Quo incidunt non nesciunt assumenda rerum ipsa est. Fuga id a ullam blanditiis et incidunt sed.\n\nVoluptates sed ut facere sed culpa laudantium error. Rerum quidem blanditiis repellat tempore dignissimos eum est. Asperiores sunt eos repudiandae velit iure ab ad. Nesciunt pariatur fugit et odit ullam laboriosam.\n\nRepellendus laborum itaque eius ut qui voluptatem rerum. Pariatur rerum asperiores nihil aut qui eius. Nisi amet non vel aut deleniti aut. Qui sit reiciendis laboriosam aperiam ut rerum aut.\n\nEt nulla tempore ut tenetur nihil. Sint autem iusto non id. Excepturi aut vel et repellat tenetur.\n\nUt et et doloremque iure magni. Sit perspiciatis dignissimos dolorem et eius sit. Inventore atque minima sint ut. Sint iste ratione sed qui.\n\nQuibusdam amet expedita facere sed blanditiis. Sed quo delectus et magni maiores dolorem illum. Ut ratione distinctio architecto rem corporis. Sequi esse vitae eligendi repudiandae nobis. Alias magnam ducimus esse doloribus eius illo doloribus.\n\nPlaceat omnis incidunt et perspiciatis quidem libero. Qui laudantium enim ipsa repudiandae. Reprehenderit distinctio aut corporis omnis cupiditate. Saepe molestias et dolorum excepturi. Quos eveniet harum rerum sed sequi.\n\nMagnam et quos numquam fuga quam. Omnis non tempora id tempore velit. Iusto nihil consequuntur perferendis sint eius maxime. Fugit ratione similique dolore dignissimos sed. Sint amet quis omnis dolorem consequatur adipisci eius similique.\n\nOmnis est repellat sapiente nesciunt. Iusto ad sed occaecati est possimus officiis. Id tempore error voluptatem qui ea occaecati.\n\nEum sequi eligendi et numquam. Ratione ullam cupiditate rerum iusto qui ea. Tempora et sequi molestiae suscipit natus incidunt. Et corporis tempore voluptatibus reiciendis. Cum quae odio veritatis recusandae.\n\nNeque nostrum maxime ratione occaecati fuga vel aspernatur. Nemo dolores sint molestias aut nam at. Asperiores cum aspernatur doloremque ipsum doloremque nihil. Similique non aperiam sunt dolores ut.\n\nEx nisi quaerat quo optio. Labore voluptatem eligendi ea et odit sit totam. Rem possimus qui eaque cumque. Ipsum laborum ea sed quo.', NULL, '2018-11-14 07:58:23', '2018-11-14 07:58:23', NULL, 1, 70, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 1),
(4, 2),
(5, 9),
(7, 6),
(12, 7),
(14, 6),
(15, 2),
(16, 4),
(17, 5),
(18, 2),
(19, 2),
(21, 2),
(22, 5),
(23, 1),
(24, 8),
(25, 2),
(26, 1),
(27, 3),
(28, 6),
(29, 3),
(30, 1),
(32, 6),
(33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2018-11-29 07:58:23', '2018-11-29 07:58:23'),
(2, 'editor', 'Editor', NULL, '2018-11-29 07:58:23', '2018-11-29 07:58:23'),
(3, 'author', 'Author', NULL, '2018-11-29 07:58:23', '2018-11-29 07:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 2, 'App\\User'),
(3, 3, 'App\\User'),
(1, 4, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Chanel', 'chanel', '2018-11-29 07:58:24', '2018-11-29 07:58:24'),
(2, 'Gucci', 'gucci', '2018-11-29 07:58:24', '2018-11-29 07:58:24'),
(3, 'Tom Ford', 'tom-ford', '2018-11-29 07:58:24', '2018-11-29 07:58:24'),
(4, 'Hermes', 'hermes', '2018-11-29 07:58:24', '2018-11-29 07:58:24'),
(5, 'D&G', 'Dolce&Gabbana', '2018-12-07 22:56:59', '2018-12-07 22:56:59'),
(6, 'Prada', 'prada', NULL, NULL),
(7, 'Patek Philippe', 'Patek-Philippe', NULL, NULL),
(8, 'Matsuda', 'matsuda', NULL, NULL),
(9, 'Louboutin', 'louboutin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `slug`, `bio`) VALUES
(1, 'John Doe', 'johndoe@test.com', NULL, '$2y$10$5UFHfzFzZTtm4N6bjAOOAuylbOzvWdqxscnVXVlJffCO1cSE15WR.', NULL, NULL, NULL, 'john-doe', 'Ut fuga omnis est doloribus cumque. Minus sequi quod adipisci fugiat. Necessitatibus est non qui quidem est nemo praesentium. Facilis magnam ullam et quia perferendis omnis aut quis.'),
(2, 'Jane Doe', 'janedoe@test.com', NULL, '$2y$10$6Z/14F4Z5EZkvuI71Tcvy.7WVGvWq31OtYWV2BAScPEJVM1bkATca', NULL, NULL, NULL, 'jane-doe', 'Totam voluptatem libero officiis consectetur. Sit molestiae unde perspiciatis quia. Corrupti quaerat ad tenetur. Sed ad vel voluptas vel officiis sit.'),
(3, 'Edo Masaru', 'edo@test.com', NULL, '$2y$10$qP3iL1KRSYjLr6RWbrT8bu8kpwqOBtwX.F2gY461E64aNvxcss8S.', NULL, NULL, NULL, 'edo-masaru', 'Non nihil omnis sit hic. Molestiae aperiam nostrum nulla. Sed autem architecto a quia aperiam voluptatibus. Fugit quis id natus voluptatibus dignissimos autem.'),
(4, 'Administrator', 'bremlydv@gmail.com', NULL, '$2y$10$qP3iL1KRSYjLr6RWbrT8bu8kpwqOBtwX.F2gY461E64aNvxcss8S.', NULL, NULL, NULL, 'admin-villasenor', 'Non nihil omnis sit hic. Molestiae aperiam nostrum nulla. Sed autem architecto a quia aperiam voluptatibus. Fugit quis id natus voluptatibus dignissimos autem.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
