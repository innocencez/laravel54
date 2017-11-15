/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : laravel54

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-09-20 22:37:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_09_17_075305_create_posts_table', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('2', 'this is title2', 'this is content2', '0', '2017-09-17 08:17:35', '2017-09-17 08:17:35');
INSERT INTO `posts` VALUES ('3', 'this is title3', 'this is content3', '0', '2017-09-17 16:19:05', '2017-09-17 16:19:05');
INSERT INTO `posts` VALUES ('4', 'Rem consequatur pariatur iure nam odio ullam.', 'Odit a eaque recusandae possimus esse sapiente. Est non quae perspiciatis consequuntur et consequuntur. Porro optio sunt molestias voluptatem. Est quia eum nemo assumenda eos illum. Cumque ipsam optio necessitatibus molestias. Eum ab qui debitis voluptates fugiat. Et placeat quisquam architecto iure.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('5', 'Quia natus sapiente reiciendis quisquam repudiandae.', 'Et inventore explicabo in. Est sint officia sunt ut magnam aliquam inventore. Ut ab sint minus quo voluptatem. Molestiae distinctio id est sit rerum delectus mollitia. Est dolores quia magnam. Autem sed voluptate est libero inventore qui. Qui natus quae dolor autem eos velit nobis. Possimus est et in odio quia doloremque molestiae. Ut sit qui dolore aut quod voluptates alias sit. Et incidunt consectetur qui. Sit et qui ipsum dolor error quibusdam qui. Omnis velit molestiae culpa et qui totam itaque qui.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('6', 'Ex aut facere sed ad.', 'Enim autem quis sunt recusandae qui nulla aut. Eum esse officiis suscipit ullam voluptate natus. Est velit consequatur accusantium eos non dolorum. Voluptatem nihil voluptates non dignissimos recusandae. Nisi illum facere inventore. Eveniet fuga corrupti aspernatur harum. Hic quas cumque at voluptatem autem et ipsum vel. Sed pariatur rem dicta error dolorum repellat.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('7', 'Iste adipisci quis cupiditate reiciendis.', 'Sit rerum voluptate itaque earum magnam ipsam magni. Accusantium consectetur ipsam quis consequuntur sed sint. Nulla culpa laboriosam enim. Voluptatibus et cumque dolore ea itaque autem unde. Sunt in aliquid est molestiae atque unde. Officiis hic alias voluptate eos assumenda. Veritatis fugiat deleniti omnis voluptas est. Consequatur molestiae repudiandae aut non sed vel delectus.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('8', 'Et excepturi nemo dolore.', 'Quasi perspiciatis nam et. Provident dolores neque earum fugit laudantium omnis. Occaecati id nesciunt similique reprehenderit dolores ipsa temporibus tenetur. Odio iure et consequatur incidunt cupiditate fuga et. Quam quae praesentium consectetur architecto et. Qui recusandae consequatur corporis voluptatem aut illum. Placeat quas totam rerum. Omnis sequi natus aspernatur placeat aut voluptatem. Cum et quisquam reprehenderit voluptatem ut sed. Perspiciatis doloremque quis architecto et commodi labore. Omnis ipsa veniam quisquam ipsa hic. Non eos in et expedita dolorem accusantium. Eum eum ratione commodi repellat id dolore natus. Sapiente rem debitis tempora aut quidem illo quas.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('9', 'Officiis eum dolores eos.', 'Libero unde dolores animi magni voluptatem voluptatem molestiae. Ex expedita porro assumenda quia sint iste perferendis. Expedita qui accusantium accusantium quam rerum corporis aut deleniti. Et error neque ratione voluptatem qui ab laboriosam. Consequatur culpa repellendus aut sequi ea dolore non. Quod ut hic libero doloribus eveniet rerum nobis dolores. Perferendis asperiores quidem sed sint. Omnis assumenda dolor rerum est. Ea officia id incidunt eaque et et ipsam. Qui animi et atque accusantium dolores quia ea repudiandae. Quod voluptatum autem enim cum provident. In fugit est ut. Asperiores eum veritatis sint asperiores.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('10', 'Delectus sit repellendus consectetur explicabo pariatur voluptatibus quam consequatur.', 'Quo voluptatibus dolorem accusantium eum dolores et sapiente. Omnis cumque voluptatum dolorum harum accusamus aliquam consequatur ea. Occaecati ab sint soluta suscipit blanditiis. Accusantium eligendi deleniti harum dolore ab. Voluptatem ut possimus ullam in commodi dolorum eaque. Ullam corporis atque et. Facilis sint quam exercitationem nihil totam repellendus. Fuga ut voluptatem et. Et architecto officiis hic eos doloremque ipsum consequatur delectus.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('11', 'Voluptas dolores optio expedita inventore.', 'Ea iure aut et sequi. Rerum numquam qui eos molestiae molestiae. Tenetur tenetur ullam ipsum dolore. Deserunt aliquid quisquam ab. Ipsa incidunt occaecati eligendi eveniet consectetur enim et. Iusto consequuntur ut culpa. Quasi laboriosam sed quaerat aut autem suscipit vel. Assumenda velit et esse sunt autem. In odio et dolorem ipsa. Distinctio culpa reiciendis voluptatem quidem rem.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('12', 'Accusantium molestias vero consequatur expedita.', 'Quas qui porro velit inventore ex qui laudantium deserunt. Tempora sed illum facilis qui expedita accusantium. Dolorem harum nesciunt doloribus eos quia. Rerum eum excepturi consequatur. Voluptas molestias voluptates sed neque accusantium. Voluptatem laborum aut possimus provident natus. Possimus neque culpa illum perferendis sapiente sapiente. Aut sit enim dolorem deleniti. Repellendus qui ipsum aliquam commodi corporis.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('13', 'Nisi aut et voluptatem sequi neque molestiae illo.', 'Tempore dolore assumenda similique quibusdam voluptatibus. Dolorum ducimus repellat qui esse. Molestiae est dolorem et voluptatibus suscipit. Commodi eos incidunt dolorem adipisci velit. Magnam facilis a in qui. Et necessitatibus et est fugit nemo est modi. Ea commodi recusandae sed omnis. Aut tempore sint et nostrum quis.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('14', 'Ullam sed eaque laudantium eius est vel.', 'Assumenda ea necessitatibus velit excepturi suscipit rem. Eum amet et aut non quia. Voluptatibus omnis sint alias ratione. Aliquid reiciendis similique ut rerum blanditiis est. Ad dolores officiis odio odit. Aut quia deleniti assumenda impedit praesentium voluptas. Maiores id accusamus nemo et. Et itaque a tempore culpa. Accusamus fugiat excepturi non fugiat. Qui adipisci modi praesentium eum.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('15', 'Vel vitae at sunt ipsam ea voluptas dolorem.', 'Voluptas eius minus quidem vel minima quae ex aut. Itaque blanditiis dolor eum quos. Amet sed eligendi consequatur. Iure qui soluta cupiditate autem aperiam. Dolorum ex est quos et. Officia consequuntur deleniti possimus neque sed quia. Non sed architecto tempora cupiditate voluptatem est. Totam laborum quo quia minus nihil. Ducimus illo aspernatur aut et molestias. Officiis ea fuga eum iure consequatur voluptas ratione. Accusamus praesentium pariatur distinctio quas qui. Quas explicabo iusto quo ullam nulla architecto. Consequatur qui et libero et et sequi.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('16', 'Enim facere sed occaecati delectus quo dignissimos enim.', 'Magni distinctio ut aut numquam. Voluptates molestias sed voluptatem nesciunt nihil. Quis harum ut nihil. Quia qui reiciendis qui id ad sit quidem temporibus. Non voluptatum architecto voluptatem numquam. Sed quia quo enim. Incidunt impedit voluptatem distinctio sit. Delectus qui omnis labore voluptas harum. Nihil omnis illo est in sapiente dolor reiciendis. Itaque nulla laborum autem expedita harum. Et incidunt dolor quia perspiciatis cum ut. Rerum aliquid et neque hic laborum dolores vitae.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('17', 'Maxime consequatur ex recusandae ab aliquam nobis.', 'Provident incidunt adipisci voluptas consequatur nihil numquam incidunt. Tenetur quae possimus provident consequatur. Nesciunt rerum nulla distinctio repudiandae quis ut. Architecto quod praesentium consectetur sint qui sed. Aspernatur error id voluptatem. Quasi et repellendus maiores sit architecto esse possimus. Id id totam qui itaque. Eos id harum dolore illo dolor nulla.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('18', 'Laboriosam nobis quis consequatur consequatur.', 'Sit porro quis sequi ipsa reiciendis voluptatibus nihil rerum. Laboriosam nobis et provident optio nesciunt deleniti amet possimus. Quos a iure illum in aut est. Sint accusantium numquam eveniet. In neque blanditiis dolores praesentium. Sed molestiae laboriosam enim quo architecto quod atque. Qui dolor officia et.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('19', 'Sequi tempora ratione sit eligendi eos ipsam.', 'Et quia omnis provident. Qui ea accusantium maiores dolores omnis itaque et. Fugiat quaerat non possimus dolorem dolorem officiis. Consequuntur nulla voluptatem asperiores deleniti dolores nostrum. Esse porro sunt facilis a vel. Ea ut vero adipisci temporibus odio non nihil est. Commodi distinctio error quis consequatur maiores tempore. Non perspiciatis deserunt ipsum laborum illo. Sed dignissimos et impedit molestiae ea qui. Minima molestiae dolorem repellat deserunt odio. Aut voluptas quia ullam porro quis ea.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('20', 'Quo repellat laboriosam cumque cum exercitationem voluptatem.', 'Inventore et est dolores quasi. Enim ipsum dolores est non dolor. Repellat laudantium soluta eum ea dolorem rerum. Earum consequatur unde dolor id reprehenderit est nulla. Voluptatem dolores harum quis doloribus ex ipsum illum. Ex cum ipsa unde illum ut. Perspiciatis quis libero rerum quasi. Quis nam qui quidem repellat repellat reprehenderit. Libero voluptatem at adipisci quidem quasi illum cum. Reiciendis distinctio optio porro aliquid veniam sit ab. Deleniti error quasi aperiam consequatur. Qui minus placeat dolor ea molestiae quaerat omnis.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('21', 'Enim voluptatem temporibus consequatur velit.', 'Eveniet et velit in. Nemo molestiae voluptate sit veniam qui. Omnis et quo ratione. Est possimus voluptatibus dolor perspiciatis. Et provident consequatur quo cupiditate. Exercitationem sint optio laborum ut voluptate. Ullam et pariatur nulla molestias ipsa repudiandae. Modi vitae natus deserunt id dolores porro quis. Sit commodi velit deleniti debitis. Autem hic et officiis unde quo. Occaecati sunt nam nisi voluptate.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('22', 'Eaque ad corrupti ut deserunt ipsum vel.', 'Ad ipsam ex at dolorem sed. Totam delectus et molestias non temporibus in. Aut vero quia ipsa facilis voluptatibus. Voluptatem fugiat quam numquam totam sit rerum. Quos vel vitae quidem distinctio voluptatum pariatur expedita perspiciatis. Ut qui sed ea et. Quidem quasi sequi voluptatem omnis eaque nisi.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('23', 'Consequatur et eos necessitatibus dolorem.', 'Deleniti architecto harum cupiditate nihil provident nobis corrupti. Qui quidem incidunt aut porro ut. Nam enim quaerat dolores consequuntur est. Necessitatibus cumque possimus soluta ut harum. Autem modi deleniti aliquid ut quia. Perspiciatis enim et est. Qui et excepturi deleniti quisquam cumque ex quo. Quasi et ea ratione unde provident adipisci et.', '0', '2017-09-17 16:55:54', '2017-09-17 16:55:54');
INSERT INTO `posts` VALUES ('24', '1111', '<p>2222<br></p>', '0', '2017-09-18 22:12:45', '2017-09-18 22:12:45');
INSERT INTO `posts` VALUES ('25', '2222', '<p>333333<br></p>', '0', '2017-09-18 22:13:50', '2017-09-18 22:13:50');
INSERT INTO `posts` VALUES ('26', 'sadas', '<p>sdsaaaaaaaaaa<br></p>', '0', '2017-09-18 22:19:15', '2017-09-18 22:19:15');
INSERT INTO `posts` VALUES ('27', '12331222222', '<p>11<br></p>', '0', '2017-09-18 22:35:47', '2017-09-18 22:35:47');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
