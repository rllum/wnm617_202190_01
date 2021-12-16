-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 16, 2021 at 04:19 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rachel_wnm608`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_dogs`
--

CREATE TABLE `track_dogs` (
  `id` int(13) NOT NULL,
  `user_id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `breed` varchar(64) NOT NULL,
  `temperament` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_dogs`
--

INSERT INTO `track_dogs` (`id`, `user_id`, `name`, `breed`, `temperament`, `description`, `img`, `date_create`) VALUES
(1, 7, 'Xanide', 'pitbull', 'happy', 'Dolore ipsum veniam elit consectetur reprehenderit ullamco incididunt aliqua consequat in. Excepteur nulla qui ea elit officia magna voluptate. Dolor amet dolor elit aliqua.', 'https://via.placeholder.com/400/825fff?text=Xanide', '2021-02-20 01:52:03'),
(2, 6, 'Digitalus', 'husky', 'happy', 'Reprehenderit anim ipsum duis occaecat deserunt amet sint incididunt anim do dolore. Ea laboris quis aliqua do ea proident duis labore duis. Officia esse nulla excepteur nulla deserunt consectetur officia in velit.', 'https://via.placeholder.com/400/978fff?text=Digitalus', '2020-06-27 05:31:29'),
(3, 10, 'Gogol', 'pitbull', 'happy', 'Duis duis esse minim cillum sunt deserunt laboris elit consectetur commodo enim dolor. Occaecat ut deserunt dolor dolore deserunt. Est officia fugiat veniam dolor ea non duis.', 'https://via.placeholder.com/400/981fff?text=Gogol', '2020-08-08 12:25:25'),
(4, 5, 'Micronaut', 'labrador', 'sad', 'Irure nisi nostrud eu elit veniam occaecat. Amet cillum quis qui ullamco laborum ipsum ea magna minim anim laboris. Minim officia id magna nostrud est aliqua deserunt in eiusmod exercitation velit esse.', 'https://via.placeholder.com/400/854fff?text=Micronaut', '2020-10-25 01:11:49'),
(5, 10, 'Centree', 'pitbull', 'anxious', 'Qui fugiat dolor anim irure ut velit cupidatat ex consequat nostrud excepteur. Aute fugiat qui adipisicing deserunt cupidatat in id cillum. Laboris consectetur et deserunt ad voluptate ut elit Lorem occaecat consequat aliquip.', 'https://via.placeholder.com/400/852fff?text=Centree', '2021-08-28 08:27:44'),
(6, 10, 'Bovis', 'husky', 'sad', 'Est quis in laborum aute mollit. Occaecat aute eiusmod elit enim non duis culpa anim aliqua officia tempor occaecat dolor nulla. Ullamco mollit pariatur veniam quis.', 'https://via.placeholder.com/400/985fff?text=Bovis', '2021-02-21 04:26:23'),
(7, 6, 'Scentric', 'pitbull', 'anxious', 'Laboris duis deserunt fugiat laboris. Irure officia incididunt ut excepteur. Mollit ex occaecat sit nostrud quis sit anim commodo fugiat deserunt.', 'https://via.placeholder.com/400/859fff?text=Scentric', '2020-11-21 09:06:23'),
(8, 1, 'Boilcat', 'labrador', 'sad', 'Qui do excepteur proident voluptate enim incididunt exercitation culpa eiusmod qui cupidatat. Duis voluptate officia elit laboris et ad laborum Lorem commodo. Voluptate fugiat elit ipsum reprehenderit consectetur ullamco.', 'https://via.placeholder.com/400/825fff?text=Boilcat', '2021-09-03 01:54:56'),
(9, 1, 'Gushkool', 'pitbull', 'sad', 'Sint ad deserunt qui sit veniam elit officia sint incididunt ut. Aliquip in cupidatat cillum enim sunt laborum ad sint. Cillum velit magna adipisicing mollit nisi commodo duis veniam sunt elit officia duis eiusmod.', 'https://via.placeholder.com/400/931fff?text=Gushkool', '2020-01-14 05:49:37'),
(10, 2, 'Ozean', 'labrador', 'sad', 'Pariatur culpa ullamco officia voluptate aliqua minim eu anim laborum elit non fugiat do quis. Aliquip Lorem ad pariatur reprehenderit cillum nisi nostrud voluptate qui enim. Labore aliquip cillum elit ipsum.', 'https://via.placeholder.com/400/700fff?text=Ozean', '2020-08-30 05:46:05'),
(11, 10, 'Confrenzy', 'pitbull', 'anxious', 'Laborum incididunt aliquip laboris irure consectetur adipisicing. Exercitation exercitation dolore pariatur ut reprehenderit. Veniam incididunt consectetur aliquip eiusmod mollit enim minim dolore.', 'https://via.placeholder.com/400/764fff?text=Confrenzy', '2021-07-25 10:46:16'),
(12, 6, 'Zeam', 'husky', 'happy', 'Ea occaecat ut sint esse Lorem esse cupidatat Lorem. Do id ut ut ipsum non consectetur sint pariatur id nulla ipsum deserunt. Sit excepteur laboris ullamco in.', 'https://via.placeholder.com/400/848fff?text=Zeam', '2021-07-26 12:51:10'),
(13, 4, 'Nikuda', 'husky', 'happy', 'Occaecat eu mollit minim nostrud amet velit. Laborum sunt velit quis deserunt cillum. Ad ex consectetur officia sint esse sint laborum minim proident.', 'https://via.placeholder.com/400/821fff?text=Nikuda', '2021-11-01 12:54:29'),
(14, 1, 'Stucco', 'labrador', 'sad', 'Adipisicing ex est Lorem veniam velit ad aliqua cupidatat. Exercitation tempor deserunt in aute laboris exercitation mollit. Ea deserunt ut in anim consequat ad cupidatat ea ad aliqua.', 'https://via.placeholder.com/400/932fff?text=Stucco', '2021-06-13 02:24:42'),
(15, 5, 'Izzby', 'pitbull', 'anxious', 'Dolor esse deserunt fugiat nulla laborum quis ullamco eu occaecat minim ipsum aliquip. Do velit in veniam sit consequat esse anim. Sunt eiusmod nostrud ex amet esse culpa anim occaecat qui.', 'uploads/1639469913.1317_742e9c1e35e0e1cd25dd61fc08c93b24.jpg', '2020-07-13 12:05:26'),
(16, 3, 'Quailcom', 'husky', 'happy', 'Et deserunt fugiat id irure ullamco consectetur. Laborum labore quis sit Lorem ullamco tempor fugiat non deserunt est. Enim et anim qui voluptate ea.', 'https://via.placeholder.com/400/704fff?text=Quailcom', '2020-04-01 11:04:39'),
(17, 7, 'Mobildata', 'labrador', 'anxious', 'Aliqua dolor ex culpa elit. Lorem duis tempor ipsum amet labore amet proident non ad laboris. Qui tempor consectetur ex laboris laborum veniam pariatur culpa et eiusmod incididunt et cillum.', 'https://via.placeholder.com/400/844fff?text=Mobildata', '2020-12-20 03:58:26'),
(18, 7, 'Kaggle', 'husky', 'sad', 'Elit magna amet labore labore. Dolor culpa do aute eiusmod. Ullamco pariatur esse enim commodo exercitation id dolor exercitation ullamco.', 'https://via.placeholder.com/400/823fff?text=Kaggle', '2021-06-10 02:06:12'),
(19, 9, 'Zentility', 'husky', 'sad', 'Aute est dolore in et magna id ad. Proident Lorem officia consequat minim deserunt et aute enim minim minim amet amet. In culpa esse ad enim non aliquip fugiat dolore.', 'https://via.placeholder.com/400/855fff?text=Zentility', '2020-02-08 10:46:56'),
(20, 1, 'Oulu', 'labrador', 'anxious', 'Nostrud qui nulla enim minim aliquip eu deserunt eiusmod ex sunt aliquip nisi do. Voluptate Lorem qui ex proident excepteur proident velit. Labore consequat magna excepteur excepteur laboris exercitation exercitation.', 'https://via.placeholder.com/400/723fff?text=Oulu', '2021-07-06 10:33:37'),
(21, 7, 'Menbrain', 'pitbull', 'happy', 'Veniam Lorem Lorem minim sint officia occaecat excepteur ad culpa do Lorem ut. Ad commodo pariatur elit sunt cupidatat eiusmod id reprehenderit mollit ipsum commodo mollit irure. Deserunt qui ad occaecat do aliqua veniam exercitation proident non dolore ipsum consequat excepteur.', 'https://via.placeholder.com/400/982fff?text=Menbrain', '2020-09-28 09:28:26'),
(22, 4, 'Opticall', 'husky', 'sad', 'Lorem exercitation nulla culpa irure id adipisicing id velit ea irure eu. Adipisicing do nisi dolor est elit elit est ullamco officia Lorem magna. Quis ut ex velit dolore amet exercitation sint.', 'https://via.placeholder.com/400/974fff?text=Opticall', '2020-03-20 07:10:32'),
(23, 8, 'Accusage', 'pitbull', 'anxious', 'Ut fugiat eu Lorem reprehenderit id non amet in est elit magna cillum eu. Consequat quis laborum incididunt voluptate officia non sunt ea occaecat exercitation. Non exercitation fugiat deserunt aliqua esse qui voluptate incididunt magna laborum culpa tempor ullamco do.', 'https://via.placeholder.com/400/719fff?text=Accusage', '2021-04-03 02:59:07'),
(24, 6, 'Plexia', 'pitbull', 'sad', 'Occaecat ex duis consectetur sunt. Esse amet do excepteur sunt deserunt ut adipisicing anim irure commodo aute excepteur. Tempor in exercitation culpa id laboris deserunt nulla.', 'https://via.placeholder.com/400/705fff?text=Plexia', '2020-10-02 03:30:47'),
(25, 8, 'Quantasis', 'pitbull', 'anxious', 'Quis enim magna Lorem elit mollit officia laboris minim exercitation consequat. Voluptate officia nulla cillum mollit ut proident ullamco et. Fugiat Lorem sunt consectetur id in.', 'https://via.placeholder.com/400/968fff?text=Quantasis', '2020-05-17 02:47:03'),
(26, 7, 'Malathion', 'labrador', 'happy', 'Duis nulla officia mollit deserunt amet consequat est esse aute irure ex ex enim. Pariatur labore Lorem dolore est adipisicing consequat exercitation qui esse aliqua est velit nostrud deserunt. Officia culpa voluptate fugiat mollit ea.', 'https://via.placeholder.com/400/746fff?text=Malathion', '2021-08-29 02:56:16'),
(27, 9, 'Uberlux', 'labrador', 'sad', 'Consequat reprehenderit nulla minim id sit mollit irure. Veniam veniam quis nisi est sint eu laboris aliqua. Tempor adipisicing aliqua laboris excepteur ea cillum elit anim nulla duis non.', 'https://via.placeholder.com/400/723fff?text=Uberlux', '2020-12-15 05:25:49'),
(28, 2, 'Glasstep', 'pitbull', 'happy', 'Nostrud irure ipsum esse sunt. Quis occaecat est minim excepteur ea dolor ea pariatur reprehenderit amet exercitation pariatur irure quis. Do quis aliqua in fugiat nulla commodo.', 'https://via.placeholder.com/400/789fff?text=Glasstep', '2020-04-06 03:46:51'),
(29, 3, 'Zuvy', 'pitbull', 'anxious', 'Lorem quis eiusmod sunt et commodo pariatur. Consectetur consectetur ullamco ullamco ex aute. Sunt veniam labore laboris voluptate Lorem dolore ea cillum nulla minim id ipsum eu ullamco.', 'https://via.placeholder.com/400/754fff?text=Zuvy', '2020-04-24 04:51:02'),
(30, 1, 'Assitia', 'labrador', 'sad', 'Non consequat Lorem irure pariatur minim occaecat commodo eiusmod elit ea labore voluptate. Consectetur sint sunt reprehenderit elit culpa est Lorem non magna magna aliquip. Culpa quis ullamco dolor eu culpa id ut do duis fugiat dolor.', 'https://via.placeholder.com/400/987fff?text=Assitia', '2021-01-14 09:54:39'),
(31, 7, 'Zogak', 'husky', 'anxious', 'Aliqua esse nulla magna dolore sint minim nostrud. Occaecat ea fugiat in ullamco aliquip Lorem tempor aliquip do voluptate sit. Sit duis quis pariatur qui enim in officia do minim sint anim.', 'https://via.placeholder.com/400/748fff?text=Zogak', '2020-09-26 01:31:45'),
(32, 6, 'Satiance', 'husky', 'sad', 'Occaecat dolore laborum et tempor reprehenderit consectetur aute ex. Consectetur anim mollit aliquip aliquip mollit. Ipsum minim laborum eiusmod cupidatat.', 'https://via.placeholder.com/400/759fff?text=Satiance', '2020-06-02 04:23:18'),
(33, 2, 'Maxemia', 'labrador', 'anxious', 'Incididunt aliqua reprehenderit exercitation officia. Non do sint ullamco ipsum do laborum est eu. Cillum sit labore ipsum qui nulla.', 'https://via.placeholder.com/400/919fff?text=Maxemia', '2020-02-03 05:12:18'),
(34, 1, 'Liquicom', 'labrador', 'anxious', 'Aliquip non veniam magna non exercitation tempor sunt excepteur ea proident amet cupidatat veniam deserunt. Qui excepteur officia veniam id culpa aliquip ea. Dolor id pariatur ad tempor Lorem aliquip velit mollit adipisicing pariatur non nisi cillum.', 'https://via.placeholder.com/400/868fff?text=Liquicom', '2020-02-02 06:38:12'),
(35, 8, 'Assistia', 'labrador', 'happy', 'Fugiat ut laborum deserunt aliquip. Magna qui mollit pariatur pariatur est. Ullamco culpa ipsum do deserunt mollit irure.', 'https://via.placeholder.com/400/884fff?text=Assistia', '2020-07-13 09:42:03'),
(36, 2, 'Bizmatic', 'husky', 'anxious', 'Aliqua elit esse consectetur Lorem incididunt laborum ullamco culpa pariatur excepteur minim. Lorem est et occaecat id. Consectetur fugiat occaecat in velit sunt cupidatat esse cillum ullamco culpa elit quis labore.', 'https://via.placeholder.com/400/879fff?text=Bizmatic', '2020-04-08 02:25:53'),
(37, 7, 'Manufact', 'husky', 'anxious', 'Reprehenderit eu et sit irure amet. Cupidatat proident ullamco Lorem ex. Esse mollit id aliquip ipsum cupidatat deserunt dolore officia id esse dolor.', 'https://via.placeholder.com/400/712fff?text=Manufact', '2020-10-27 10:15:08'),
(38, 8, 'Circum', 'labrador', 'happy', 'Amet adipisicing ut velit consequat culpa et irure Lorem aliqua aliqua. Anim pariatur anim laboris laboris ut anim sit. Eu exercitation quis occaecat laboris dolore aliquip nulla exercitation Lorem commodo cillum exercitation in exercitation.', 'https://via.placeholder.com/400/956fff?text=Circum', '2020-10-16 09:57:42'),
(39, 8, 'Orbalix', 'husky', 'anxious', 'Reprehenderit fugiat culpa et in ullamco tempor labore eiusmod laboris aliquip Lorem. Dolore id cupidatat quis proident aute nostrud culpa quis laboris nisi adipisicing eiusmod. Adipisicing in adipisicing pariatur et adipisicing sunt nulla voluptate occaecat do eu consequat cillum.', 'https://via.placeholder.com/400/978fff?text=Orbalix', '2021-10-26 06:38:22'),
(40, 4, 'Orbin', 'husky', 'sad', 'Tempor pariatur consectetur proident velit anim ea amet ullamco pariatur ex ad. Non sint enim in pariatur fugiat aliquip magna nulla magna aliquip velit reprehenderit deserunt minim. Consequat et ipsum dolor commodo.', 'https://via.placeholder.com/400/947fff?text=Orbin', '2021-09-14 05:05:07'),
(41, 5, 'Extro', 'pitbull', 'happy', 'Sunt exercitation sunt ut eiusmod ipsum velit amet ex nisi. Aliqua ipsum anim adipisicing ex ut. Veniam enim aliqua quis nisi eu labore sit amet Lorem.', 'https://via.placeholder.com/400/843fff?text=Extro', '2020-04-08 07:44:36'),
(42, 10, 'Xinware', 'husky', 'sad', 'Nostrud ipsum culpa do quis dolor id exercitation minim dolore aliquip adipisicing culpa. Ut duis enim do cillum aliqua qui sunt aute laborum pariatur. Tempor voluptate esse sint laboris mollit aute voluptate duis irure laborum Lorem cillum id.', 'https://via.placeholder.com/400/805fff?text=Xinware', '2020-12-14 06:09:00'),
(43, 2, 'Maximind', 'husky', 'anxious', 'Pariatur sint deserunt aliqua labore ad do minim commodo. Quis nostrud dolor commodo excepteur dolor sunt. Nisi magna esse qui nisi dolore reprehenderit non.', 'https://via.placeholder.com/400/927fff?text=Maximind', '2020-10-02 10:29:00'),
(44, 4, 'Exerta', 'husky', 'anxious', 'Deserunt veniam laborum ut do. Labore Lorem sit pariatur tempor dolor laborum Lorem aliquip qui eu. Ullamco proident cupidatat eu labore.', 'https://via.placeholder.com/400/975fff?text=Exerta', '2021-04-05 03:26:32'),
(45, 5, 'Surelogic', 'pitbull', 'sad', 'Tempor anim aliquip qui fugiat. Pariatur fugiat consequat fugiat duis non voluptate excepteur eu aliquip anim. Quis nostrud laborum nisi fugiat proident adipisicing commodo aliquip aliquip et reprehenderit dolor aute anim.', 'https://via.placeholder.com/400/908fff?text=Surelogic', '2021-01-06 02:02:56'),
(46, 1, 'Enquility', 'labrador', 'happy', 'Enim aute id sint est quis eu aute sint. Ad eiusmod ipsum dolor proident magna consectetur ea. Excepteur ea est occaecat ad sit dolore velit proident cupidatat nisi ut proident anim laborum.', 'https://via.placeholder.com/400/974fff?text=Enquility', '2020-11-04 09:34:34'),
(47, 5, 'Techtrix', 'husky', 'happy', 'Dolor et occaecat anim commodo Lorem veniam sint laborum aliquip anim et pariatur labore deserunt. Minim ut magna ad occaecat consectetur ipsum. Minim minim proident excepteur voluptate dolor deserunt proident dolor ex sit ea proident nisi enim.', 'https://via.placeholder.com/400/838fff?text=Techtrix', '2021-05-03 07:28:20'),
(48, 2, 'Obones', 'labrador', 'anxious', 'Exercitation in sit irure culpa amet duis esse mollit duis dolor sit pariatur voluptate. Amet nostrud duis proident sunt quis est. Id laboris tempor quis cupidatat nisi labore ut ullamco sunt nostrud enim mollit duis.', 'https://via.placeholder.com/400/772fff?text=Obones', '2020-09-27 06:43:32'),
(49, 10, 'Cinaster', 'labrador', 'sad', 'Amet eu mollit velit fugiat excepteur aliquip et. Sunt quis excepteur deserunt esse. Consectetur labore veniam incididunt anim labore sunt ut.', 'https://via.placeholder.com/400/910fff?text=Cinaster', '2020-07-03 07:19:27'),
(50, 7, 'Daisu', 'husky', 'anxious', 'Minim Lorem id labore do culpa mollit ea sit magna tempor officia. Dolore laborum aliquip laborum enim sunt ut. Reprehenderit est sint irure qui quis.', 'https://via.placeholder.com/400/997fff?text=Daisu', '2020-06-07 02:19:06'),
(51, 5, 'e72', '2', '2', '2', 'http://via.placeholder.com/400/?text=DOG', '2021-11-30 16:57:31'),
(53, 5, 'ryan', '99', '3', 'fje', 'http://via.placeholder.com/400/?text=DOG', '2021-12-09 07:23:21'),
(54, 1, 'Sherbsw8', 'Pitbull', 'Sad', 'Fun', 'http://via.placeholder.com/400/?text=DOG', '2021-12-14 06:23:22'),
(56, 5, 'Test g dog', 'kowre', 'rpw', 'rrlmwm', 'uploads/1639522157.3122_0181-03_linda_dong.jpg', '2021-12-14 22:47:59'),
(57, 11, 'Stella', 'Pitbull', 'Happy', 'Stella is a super cute black and white pitbull. Today she was very happy wagging her tail!', 'uploads/1639549889.7607_stella.jpg', '2021-12-14 23:55:59'),
(58, 11, 'Shaka', 'Huskey', 'Hyper', 'Shaka is such a hyper dog!', 'uploads/1639526613.8333_Shaka.jpg', '2021-12-15 00:03:12'),
(64, 11, 'Bentley', 'German Shepard', 'Calm', 'Bentley is a puppy training to be a police dog!', 'uploads/1639545889.4778_bentley.jpg', '2021-12-15 00:16:34'),
(65, 11, 'Buddy', 'Beagle', 'Curious', 'Buddy is such a cute dog! He is always searching for sticks and people to play with him.', 'uploads/1639527472.0241_buddy.jpg', '2021-12-15 00:17:43'),
(68, 11, 'Axel', 'Huskey', 'Cranky', 'Axel is a fluffy playful huskey who gets hangry when he does not get his treats.', 'uploads/1639553992.638_axel.jpg', '2021-12-15 07:39:29'),
(69, 11, 'Blaze', 'Pitbull', 'Sad', 'Blaze is a light brown and white pitbull who is so calm he seems almost sad at times.', 'uploads/1639554114.7232_blaze.jpg', '2021-12-15 07:41:45'),
(70, 11, 'Boomer', 'lab', 'happy', 'Boomer is an old but good boy!', 'uploads/1639554225.1945_boomer.jpg', '2021-12-15 07:43:36'),
(71, 0, 'ee', 'e2', '', 'e2', 'uploads/1639624817.5421_SABC-News-lady-gaga-Reuters.jpg', '2021-12-16 03:19:15'),
(72, 14, '', '', '', '', 'http://via.placeholder.com/400/?text=DOG', '2021-12-16 03:27:11'),
(73, 15, 'Doggy', 'lab', 'nervous', 'cute', 'uploads/1639627967.7702_new-dog.jpg', '2021-12-16 04:12:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_dogs`
--
ALTER TABLE `track_dogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_dogs`
--
ALTER TABLE `track_dogs`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
