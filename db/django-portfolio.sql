-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 11:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django-portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_category`
--

CREATE TABLE `all_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_category`
--

INSERT INTO `all_category` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Application', '#FF0F01', '2021-01-19 21:06:24.728775', '2021-01-19 22:28:00.167594'),
(2, 'Website', '#FFCA2C', '2021-01-19 21:06:50.292612', '2021-01-19 22:28:06.023459'),
(3, 'LMS', '#3A76FF', '2021-01-19 21:06:55.185014', '2021-01-19 22:28:20.536151');

-- --------------------------------------------------------

--
-- Table structure for table `all_education`
--

CREATE TABLE `all_education` (
  `id` int(11) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `institution_name` varchar(255) NOT NULL,
  `from_year` int(10) UNSIGNED NOT NULL CHECK (`from_year` >= 0),
  `to_year` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_education`
--

INSERT INTO `all_education` (`id`, `qualification`, `institution_name`, `from_year`, `to_year`, `created_at`, `updated_at`) VALUES
(1, 'Masters in Computer Science', 'University of California', 2019, NULL, '2021-01-12 02:11:25.064249', '2021-01-12 02:11:31.590953'),
(2, 'Bachelor of Science in CS/IS', 'University of the South Pacific', 2016, 2019, '2021-01-12 02:12:54.782387', '2021-01-12 02:17:25.940516'),
(3, 'PgDip in CyberSecurity', 'University of the South Pacific', 2019, 2020, '2021-01-12 02:18:06.299818', '2021-01-12 02:18:06.299818');

-- --------------------------------------------------------

--
-- Table structure for table `all_experience`
--

CREATE TABLE `all_experience` (
  `id` int(11) NOT NULL,
  `position` varchar(500) NOT NULL,
  `organization` varchar(500) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_experience`
--

INSERT INTO `all_experience` (`id`, `position`, `organization`, `from_date`, `to_date`, `created_at`, `updated_at`) VALUES
(1, 'Senior Applications Developer', 'Ministry of Foreign Affairs', '2019-11-06', '2020-07-16', '2021-01-19 03:40:20.220023', '2021-01-19 20:11:47.841702'),
(2, 'Tutor', 'University of California', '2020-08-04', NULL, '2021-01-19 20:10:09.090427', '2021-01-19 20:11:08.207984');

-- --------------------------------------------------------

--
-- Table structure for table `all_list`
--

CREATE TABLE `all_list` (
  `id` int(11) NOT NULL,
  `exp_id_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_list`
--

INSERT INTO `all_list` (`id`, `exp_id_id`, `description`) VALUES
(1, 1, 'Plan, design and develop new applications and add enhancements to existing applications'),
(2, 1, 'Perform cost-benefit and return on investment analyses for proposed systems'),
(3, 1, 'Migrating and upgrading websites and applications to protect from security vulnerabilities'),
(4, 1, 'Conduct research on softwares to justify recommendations and to support purchasing efforts'),
(5, 2, 'Reviewing classroom or curricula topics and assignments.'),
(6, 2, 'Assisting students with homework, projects, test preparation, papers, research and other academic tasks.'),
(7, 2, 'Working with students to help them understand key concepts, especially those learned in the classroom.');

-- --------------------------------------------------------

--
-- Table structure for table `all_personal`
--

CREATE TABLE `all_personal` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `summary` longtext NOT NULL,
  `location` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_personal`
--

INSERT INTO `all_personal` (`id`, `name`, `position`, `organization`, `email`, `phone`, `summary`, `location`, `photo`, `created_at`, `updated_at`) VALUES
(5, 'John Doe', 'Senior Developer', 'Google', 'john.doe@gmail.com', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'United States', '51f6fb256629fc755b8870c801092942.png', '2021-01-11 23:41:47.769231', '2021-01-12 02:26:55.715557');

-- --------------------------------------------------------

--
-- Table structure for table `all_project`
--

CREATE TABLE `all_project` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `types_id` int(11) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_project`
--

INSERT INTO `all_project` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `category_id`, `types_id`, `link`) VALUES
(2, 'Project One', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'harli-marten-n7a2OJDSZns-unsplash.jpg', '2021-01-19 21:24:56.158326', '2021-01-19 22:26:13.553246', 1, 3, 'https://www.google.com/'),
(3, 'Project Two', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'gabrielle-mustapich-7mAP1Ri_KqQ-unsplash.jpg', '2021-01-19 21:57:19.084996', '2021-01-19 22:26:25.878781', 2, 3, 'https://www.facebook.com/'),
(4, 'Project Three', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin', 'ryan-stone-U3cctUBucn0-unsplash.jpg', '2021-01-19 22:09:41.829965', '2021-01-19 22:26:44.450183', 2, 3, 'https://www.instagram.com/'),
(5, 'Project Four', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', 'revolt-164_6wVEHfI-unsplash.jpg', '2021-01-19 22:14:38.300697', '2021-01-19 22:30:53.108411', 3, 4, ''),
(6, 'Project Five', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'flavio-gasperini-GjKPTkhni6Y-unsplash.jpg', '2021-01-19 22:27:36.871700', '2021-01-19 22:27:36.871700', 1, 4, ''),
(7, 'Project Six', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be', 'kaze-0421-XW5BbnQ1I5w-unsplash.jpg', '2021-01-19 22:28:59.149667', '2021-01-19 22:31:06.314727', 2, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `all_skill`
--

CREATE TABLE `all_skill` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_skill`
--

INSERT INTO `all_skill` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'HTML5', 'devicon-html5-plain colored', '2021-01-10 10:21:01.409203', '2021-01-11 23:48:43.922994'),
(2, 'CSS3', 'devicon-css3-plain colored', '2021-01-11 23:49:03.614483', '2021-01-11 23:49:03.614483'),
(3, 'Javascript', 'devicon-javascript-plain colored', '2021-01-11 23:50:44.282189', '2021-01-11 23:50:44.282189'),
(4, 'Django', 'devicon-django-plain colored', '2021-01-11 23:50:56.548512', '2021-01-11 23:50:56.548512'),
(5, 'Java', 'devicon-java-plain colored', '2021-01-11 23:51:08.561906', '2021-01-11 23:51:08.561906'),
(6, 'Python', 'devicon-python-plain colored', '2021-01-11 23:51:31.195623', '2021-01-11 23:51:31.195623'),
(7, 'Ruby', 'devicon-ruby-plain colored', '2021-01-11 23:51:52.950035', '2021-01-11 23:51:52.950035'),
(8, 'Laravel', 'devicon-laravel-plain colored', '2021-01-11 23:52:16.247932', '2021-01-11 23:52:16.247932'),
(9, 'Express', 'devicon-express-original colored', '2021-01-11 23:52:31.472904', '2021-01-11 23:52:31.472904');

-- --------------------------------------------------------

--
-- Table structure for table `all_socialmedia`
--

CREATE TABLE `all_socialmedia` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_socialmedia`
--

INSERT INTO `all_socialmedia` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(2, 'https://www.facebook.com/', 'fab fa-facebook', '2021-01-12 01:34:54.334415', '2021-01-12 01:41:17.722409'),
(3, 'https://www.instagram.com/', 'fab fa-instagram', '2021-01-12 01:41:01.751109', '2021-01-12 01:41:01.751109'),
(4, 'https://www.linkedin.com/', 'fab fa-linkedin', '2021-01-12 01:41:43.325796', '2021-01-12 01:41:43.325796'),
(5, 'http://www.github.com/', 'fab fa-github', '2021-01-12 01:42:05.172204', '2021-01-12 01:42:15.054200');

-- --------------------------------------------------------

--
-- Table structure for table `all_type`
--

CREATE TABLE `all_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_type`
--

INSERT INTO `all_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Upcoming', '2021-01-19 21:18:13.170531', '2021-01-19 21:18:13.170531'),
(4, 'Featured', '2021-01-19 21:21:40.924783', '2021-01-19 21:21:40.924783'),
(5, 'Others', '2021-01-19 21:21:48.599008', '2021-01-19 21:21:48.599008');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add social media', 7, 'add_socialmedia'),
(26, 'Can change social media', 7, 'change_socialmedia'),
(27, 'Can delete social media', 7, 'delete_socialmedia'),
(28, 'Can view social media', 7, 'view_socialmedia'),
(29, 'Can add personal', 8, 'add_personal'),
(30, 'Can change personal', 8, 'change_personal'),
(31, 'Can delete personal', 8, 'delete_personal'),
(32, 'Can view personal', 8, 'view_personal'),
(33, 'Can add type', 9, 'add_type'),
(34, 'Can change type', 9, 'change_type'),
(35, 'Can delete type', 9, 'delete_type'),
(36, 'Can view type', 9, 'view_type'),
(37, 'Can add skill', 10, 'add_skill'),
(38, 'Can change skill', 10, 'change_skill'),
(39, 'Can delete skill', 10, 'delete_skill'),
(40, 'Can view skill', 10, 'view_skill'),
(41, 'Can add category', 11, 'add_category'),
(42, 'Can change category', 11, 'change_category'),
(43, 'Can delete category', 11, 'delete_category'),
(44, 'Can view category', 11, 'view_category'),
(45, 'Can add education', 12, 'add_education'),
(46, 'Can change education', 12, 'change_education'),
(47, 'Can delete education', 12, 'delete_education'),
(48, 'Can view education', 12, 'view_education'),
(49, 'Can add experience', 13, 'add_experience'),
(50, 'Can change experience', 13, 'change_experience'),
(51, 'Can delete experience', 13, 'delete_experience'),
(52, 'Can view experience', 13, 'view_experience'),
(53, 'Can add list', 14, 'add_list'),
(54, 'Can change list', 14, 'change_list'),
(55, 'Can delete list', 14, 'delete_list'),
(56, 'Can view list', 14, 'view_list'),
(57, 'Can add project', 15, 'add_project'),
(58, 'Can change project', 15, 'change_project'),
(59, 'Can delete project', 15, 'delete_project'),
(60, 'Can view project', 15, 'view_project');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$9gyn5SMkqpdd$w6ThpB4RWPNyzt04oyNtAZobx01U1t3atuRaFmTFYsQ=', '2021-01-09 01:53:32.247233', 1, 'francis.gomas', '', '', 'francisgomes721@gmail.com', 1, 1, '2021-01-09 01:52:46.877994');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-01-09 02:33:07.920167', '1', 'SocialMedia object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-01-10 09:02:51.236384', '1', 'Personal object (1)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-01-10 09:22:48.648898', '1', 'Personal object (1)', 3, '', 8, 1),
(4, '2021-01-10 09:24:20.373220', '2', 'Personal object (2)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2021-01-10 09:24:33.215469', '2', 'Personal object (2)', 3, '', 8, 1),
(6, '2021-01-10 10:09:13.601854', '1', 'SocialMedia object (1)', 3, '', 7, 1),
(7, '2021-01-10 10:16:15.727928', '1', 'Type object (1)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2021-01-10 10:16:30.258195', '2', 'Type object (2)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2021-01-10 10:16:41.733036', '3', 'Type object (3)', 1, '[{\"added\": {}}]', 9, 1),
(10, '2021-01-10 10:16:58.655037', '1', 'Type object (1)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(11, '2021-01-10 10:21:01.413191', '1', 'Skill object (1)', 1, '[{\"added\": {}}]', 10, 1),
(12, '2021-01-11 07:50:25.970548', '3', 'Personal object (3)', 1, '[{\"added\": {}}]', 8, 1),
(13, '2021-01-11 07:51:45.284341', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(14, '2021-01-11 07:51:52.500885', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(15, '2021-01-11 07:52:23.499924', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(16, '2021-01-11 07:53:46.324027', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(17, '2021-01-11 07:54:34.936185', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(18, '2021-01-11 08:19:36.346866', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(19, '2021-01-11 08:33:20.200246', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(20, '2021-01-11 08:33:34.411830', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(21, '2021-01-11 08:35:06.368499', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(22, '2021-01-11 08:35:16.349468', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(23, '2021-01-11 08:41:12.532424', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(24, '2021-01-11 08:41:19.910862', '3', 'Personal object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(25, '2021-01-11 08:49:53.281695', '3', 'Personal object (3)', 2, '[]', 8, 1),
(26, '2021-01-11 08:53:43.181156', '3', 'Personal object (3)', 3, '', 8, 1),
(27, '2021-01-11 08:55:20.918877', '4', 'Personal object (4)', 1, '[{\"added\": {}}]', 8, 1),
(28, '2021-01-11 09:00:10.541950', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 8, 1),
(29, '2021-01-11 09:00:21.229140', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Position\"]}}]', 8, 1),
(30, '2021-01-11 09:10:22.244492', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 8, 1),
(31, '2021-01-11 09:11:50.061487', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Phone\", \"Location\"]}}]', 8, 1),
(32, '2021-01-11 09:18:30.569890', '4', 'Personal object (4)', 2, '[]', 8, 1),
(33, '2021-01-11 22:27:03.889322', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(34, '2021-01-11 22:55:52.947348', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(35, '2021-01-11 22:58:27.931710', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(36, '2021-01-11 23:01:05.443901', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(37, '2021-01-11 23:09:06.201112', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(38, '2021-01-11 23:09:40.883173', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(39, '2021-01-11 23:21:37.999904', '4', 'Personal object (4)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(40, '2021-01-11 23:24:25.757796', '4', 'Personal object (4)', 3, '', 8, 1),
(41, '2021-01-11 23:30:27.834444', 'None', 'Personal object (None)', 1, '[{\"added\": {}}]', 8, 1),
(42, '2021-01-11 23:31:27.962581', 'None', 'Personal object (None)', 1, '[{\"added\": {}}]', 8, 1),
(43, '2021-01-11 23:41:47.770230', '5', 'Personal object (5)', 1, '[{\"added\": {}}]', 8, 1),
(44, '2021-01-11 23:41:56.205579', '5', 'Personal object (5)', 2, '[]', 8, 1),
(45, '2021-01-11 23:47:47.842121', '1', 'Skill object (1)', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 10, 1),
(46, '2021-01-11 23:48:43.923991', '1', 'Skill object (1)', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 10, 1),
(47, '2021-01-11 23:49:03.615700', '2', 'Skill object (2)', 1, '[{\"added\": {}}]', 10, 1),
(48, '2021-01-11 23:50:44.283187', '3', 'Skill object (3)', 1, '[{\"added\": {}}]', 10, 1),
(49, '2021-01-11 23:50:56.549307', '4', 'Skill object (4)', 1, '[{\"added\": {}}]', 10, 1),
(50, '2021-01-11 23:51:08.563151', '5', 'Skill object (5)', 1, '[{\"added\": {}}]', 10, 1),
(51, '2021-01-11 23:51:31.196671', '6', 'Skill object (6)', 1, '[{\"added\": {}}]', 10, 1),
(52, '2021-01-11 23:51:52.951380', '7', 'Skill object (7)', 1, '[{\"added\": {}}]', 10, 1),
(53, '2021-01-11 23:52:16.249247', '8', 'Skill object (8)', 1, '[{\"added\": {}}]', 10, 1),
(54, '2021-01-11 23:52:31.473985', '9', 'Skill object (9)', 1, '[{\"added\": {}}]', 10, 1),
(55, '2021-01-11 23:53:38.862117', '2', 'Type object (2)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(56, '2021-01-11 23:53:43.398442', '1', 'Type object (1)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(57, '2021-01-11 23:53:48.034540', '3', 'Type object (3)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(58, '2021-01-11 23:54:18.953932', '3', 'Type object (3)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(59, '2021-01-12 01:14:17.255799', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 11, 1),
(60, '2021-01-12 01:14:21.415890', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 11, 1),
(61, '2021-01-12 01:21:41.548481', '2', 'Category object (2)', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 11, 1),
(62, '2021-01-12 01:21:50.037855', '1', 'Category object (1)', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 11, 1),
(63, '2021-01-12 01:22:01.054224', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 11, 1),
(64, '2021-01-12 01:22:09.194589', '3', 'Category object (3)', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 11, 1),
(65, '2021-01-12 01:27:44.409224', '5', 'Personal object (5)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(66, '2021-01-12 01:34:14.232133', '5', 'Personal object (5)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(67, '2021-01-12 01:34:54.335412', '2', 'SocialMedia object (2)', 1, '[{\"added\": {}}]', 7, 1),
(68, '2021-01-12 01:38:33.284130', '2', 'SocialMedia object (2)', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 7, 1),
(69, '2021-01-12 01:38:54.956017', '2', 'SocialMedia object (2)', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 7, 1),
(70, '2021-01-12 01:41:01.752108', '3', 'SocialMedia object (3)', 1, '[{\"added\": {}}]', 7, 1),
(71, '2021-01-12 01:41:11.222681', '2', 'SocialMedia object (2)', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 7, 1),
(72, '2021-01-12 01:41:17.723409', '2', 'SocialMedia object (2)', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 7, 1),
(73, '2021-01-12 01:41:43.327169', '4', 'SocialMedia object (4)', 1, '[{\"added\": {}}]', 7, 1),
(74, '2021-01-12 01:42:05.173221', '5', 'SocialMedia object (5)', 1, '[{\"added\": {}}]', 7, 1),
(75, '2021-01-12 01:42:15.055227', '5', 'SocialMedia object (5)', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 7, 1),
(76, '2021-01-12 02:11:25.065282', '1', 'Education object (1)', 1, '[{\"added\": {}}]', 12, 1),
(77, '2021-01-12 02:11:31.594945', '1', 'Education object (1)', 2, '[{\"changed\": {\"fields\": [\"From year\"]}}]', 12, 1),
(78, '2021-01-12 02:12:54.783341', '2', 'Education object (2)', 1, '[{\"added\": {}}]', 12, 1),
(79, '2021-01-12 02:17:07.222762', '2', 'Education object (2)', 2, '[{\"changed\": {\"fields\": [\"Qualification\"]}}]', 12, 1),
(80, '2021-01-12 02:17:25.941514', '2', 'Education object (2)', 2, '[{\"changed\": {\"fields\": [\"Qualification\"]}}]', 12, 1),
(81, '2021-01-12 02:18:06.301158', '3', 'Education object (3)', 1, '[{\"added\": {}}]', 12, 1),
(82, '2021-01-12 02:21:57.945283', '3', 'Type object (3)', 3, '', 9, 1),
(83, '2021-01-12 02:22:19.754185', '2', 'Type object (2)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1),
(84, '2021-01-12 02:26:06.262762', '5', 'Personal object (5)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(85, '2021-01-12 02:26:31.278824', '5', 'Personal object (5)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(86, '2021-01-12 02:26:55.718270', '5', 'Personal object (5)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 8, 1),
(87, '2021-01-19 03:40:20.241229', '1', 'Experience object (1)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"list\", \"object\": \"List object (1)\"}}, {\"added\": {\"name\": \"list\", \"object\": \"List object (2)\"}}, {\"added\": {\"name\": \"list\", \"object\": \"List object (3)\"}}, {\"added\": {\"name\": \"list\", \"object\": \"List object (4)\"}}]', 13, 1),
(88, '2021-01-19 20:10:09.093421', '2', 'Experience object (2)', 1, '[{\"added\": {}}]', 13, 1),
(89, '2021-01-19 20:11:08.214966', '2', 'Experience object (2)', 2, '[{\"changed\": {\"fields\": [\"From date\", \"To date\"]}}, {\"added\": {\"name\": \"list\", \"object\": \"List object (5)\"}}, {\"added\": {\"name\": \"list\", \"object\": \"List object (6)\"}}, {\"added\": {\"name\": \"list\", \"object\": \"List object (7)\"}}]', 13, 1),
(90, '2021-01-19 20:11:47.842699', '1', 'Experience object (1)', 2, '[{\"changed\": {\"fields\": [\"From date\", \"To date\"]}}]', 13, 1),
(91, '2021-01-19 20:34:55.133561', '4', 'Type object (4)', 1, '[{\"added\": {}}]', 9, 1),
(92, '2021-01-19 21:06:24.729744', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 11, 1),
(93, '2021-01-19 21:06:50.293576', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 11, 1),
(94, '2021-01-19 21:06:55.185980', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 11, 1),
(95, '2021-01-19 21:07:06.437560', '3', 'Category object (3)', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 11, 1),
(96, '2021-01-19 21:07:13.544423', '2', 'Category object (2)', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 11, 1),
(97, '2021-01-19 21:18:13.172528', '3', 'Type object (3)', 1, '[{\"added\": {}}]', 9, 1),
(98, '2021-01-19 21:21:40.926776', '4', 'Featured', 1, '[{\"added\": {}}]', 9, 1),
(99, '2021-01-19 21:21:48.599008', '5', 'Others', 1, '[{\"added\": {}}]', 9, 1),
(100, '2021-01-19 21:21:53.464541', '1', 'Project One', 1, '[{\"added\": {}}]', 15, 1),
(101, '2021-01-19 21:24:56.160378', '2', 'Project One', 1, '[{\"added\": {}}]', 15, 1),
(102, '2021-01-19 21:25:03.984452', '1', 'Project One', 3, '', 15, 1),
(103, '2021-01-19 21:56:21.445912', '2', 'Project One', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 15, 1),
(104, '2021-01-19 21:57:19.086954', '3', 'Project Two', 1, '[{\"added\": {}}]', 15, 1),
(105, '2021-01-19 22:06:21.881033', '3', 'Project Two', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 15, 1),
(106, '2021-01-19 22:09:41.831993', '4', 'Project Three', 1, '[{\"added\": {}}]', 15, 1),
(107, '2021-01-19 22:11:13.671215', '4', 'Project Three', 2, '[]', 15, 1),
(108, '2021-01-19 22:14:38.301733', '5', 'Project Four', 1, '[{\"added\": {}}]', 15, 1),
(109, '2021-01-19 22:16:08.248486', '5', 'Project Four', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(110, '2021-01-19 22:17:22.025159', '5', 'Project Four', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(111, '2021-01-19 22:19:28.094260', '5', 'Project Four', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(112, '2021-01-19 22:26:13.556237', '2', 'Project One', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(113, '2021-01-19 22:26:25.879779', '3', 'Project Two', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(114, '2021-01-19 22:26:38.670781', '4', 'Project Three', 2, '[{\"changed\": {\"fields\": [\"Types\"]}}]', 15, 1),
(115, '2021-01-19 22:26:44.455136', '4', 'Project Three', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(116, '2021-01-19 22:27:08.861475', '5', 'Project Four', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(117, '2021-01-19 22:27:36.872727', '6', 'Project Five', 1, '[{\"added\": {}}]', 15, 1),
(118, '2021-01-19 22:28:00.168629', '1', 'Application', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 11, 1),
(119, '2021-01-19 22:28:06.026461', '2', 'Website', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 11, 1),
(120, '2021-01-19 22:28:20.539119', '3', 'LMS', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 11, 1),
(121, '2021-01-19 22:28:59.150665', '7', 'Project Six', 1, '[{\"added\": {}}]', 15, 1),
(122, '2021-01-19 22:30:53.110405', '5', 'Project Four', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 15, 1),
(123, '2021-01-19 22:31:06.315727', '7', 'Project Six', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(11, 'all', 'category'),
(12, 'all', 'education'),
(13, 'all', 'experience'),
(14, 'all', 'list'),
(8, 'all', 'personal'),
(15, 'all', 'project'),
(10, 'all', 'skill'),
(7, 'all', 'socialmedia'),
(9, 'all', 'type'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-01-09 01:30:37.935905'),
(2, 'auth', '0001_initial', '2021-01-09 01:30:38.122439'),
(3, 'admin', '0001_initial', '2021-01-09 01:30:38.551796'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-01-09 01:30:38.645196'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-09 01:30:38.663148'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-01-09 01:30:38.713044'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-01-09 01:30:38.758891'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-01-09 01:30:38.772854'),
(9, 'auth', '0004_alter_user_username_opts', '2021-01-09 01:30:38.781861'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-01-09 01:30:38.821883'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-01-09 01:30:38.825873'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-09 01:30:38.833850'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-01-09 01:30:38.852799'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-09 01:30:38.868757'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-01-09 01:30:38.886709'),
(16, 'auth', '0011_update_proxy_permissions', '2021-01-09 01:30:38.896682'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-09 01:30:38.910645'),
(18, 'sessions', '0001_initial', '2021-01-09 01:30:38.935614'),
(19, 'all', '0001_initial', '2021-01-09 02:26:54.187491'),
(20, 'all', '0002_personal', '2021-01-09 02:38:54.338469'),
(21, 'all', '0003_auto_20210110_2315', '2021-01-10 10:15:15.958097'),
(22, 'all', '0004_skill', '2021-01-10 10:20:42.637724'),
(23, 'all', '0005_auto_20210111_2048', '2021-01-11 07:49:28.820717'),
(24, 'all', '0006_auto_20210111_2209', '2021-01-11 09:10:04.586420'),
(25, 'all', '0007_category', '2021-01-12 01:13:02.381952'),
(26, 'all', '0008_category_color', '2021-01-12 01:21:22.070963'),
(27, 'all', '0009_education', '2021-01-12 02:08:06.423373'),
(28, 'all', '0010_auto_20210112_1509', '2021-01-12 02:09:54.774215'),
(29, 'all', '0011_auto_20210112_1605', '2021-01-12 03:05:34.194894'),
(30, 'all', '0012_auto_20210112_1613', '2021-01-12 03:13:09.892439'),
(31, 'all', '0013_auto_20210119_1222', '2021-01-19 03:18:28.291294'),
(32, 'all', '0014_auto_20210119_1537', '2021-01-19 03:38:06.859849'),
(33, 'all', '0015_auto_20210120_0825', '2021-01-19 20:25:51.577312'),
(34, 'all', '0016_auto_20210120_0836', '2021-01-19 20:36:08.774688'),
(35, 'all', '0017_delete_project', '2021-01-19 20:46:45.319316'),
(36, 'all', '0018_project', '2021-01-19 20:47:29.136269'),
(37, 'all', '0019_project_category_id', '2021-01-19 21:10:08.176605'),
(38, 'all', '0020_auto_20210120_0914', '2021-01-19 21:14:54.965292'),
(39, 'all', '0021_project_types', '2021-01-19 21:18:03.808484'),
(40, 'all', '0022_project_link', '2021-01-19 21:55:35.449899'),
(41, 'all', '0023_auto_20210120_1018', '2021-01-19 22:18:57.056557'),
(42, 'all', '0024_auto_20210120_1019', '2021-01-19 22:19:19.475869');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_category`
--
ALTER TABLE `all_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_education`
--
ALTER TABLE `all_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_experience`
--
ALTER TABLE `all_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_list`
--
ALTER TABLE `all_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `all_list_exp_id_id_b1906c3d_fk_all_experience_id` (`exp_id_id`);

--
-- Indexes for table `all_personal`
--
ALTER TABLE `all_personal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `all_personal_email_eb3b55de_uniq` (`email`),
  ADD UNIQUE KEY `all_personal_phone_becfb510_uniq` (`phone`);

--
-- Indexes for table `all_project`
--
ALTER TABLE `all_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `all_project_category_id_ea249c8f_fk_all_category_id` (`category_id`),
  ADD KEY `all_project_types_id_ba6815d6_fk_all_type_id` (`types_id`);

--
-- Indexes for table `all_skill`
--
ALTER TABLE `all_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_socialmedia`
--
ALTER TABLE `all_socialmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_type`
--
ALTER TABLE `all_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_category`
--
ALTER TABLE `all_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `all_education`
--
ALTER TABLE `all_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `all_experience`
--
ALTER TABLE `all_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `all_list`
--
ALTER TABLE `all_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `all_personal`
--
ALTER TABLE `all_personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `all_project`
--
ALTER TABLE `all_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `all_skill`
--
ALTER TABLE `all_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `all_socialmedia`
--
ALTER TABLE `all_socialmedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `all_type`
--
ALTER TABLE `all_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `all_list`
--
ALTER TABLE `all_list`
  ADD CONSTRAINT `all_list_exp_id_id_b1906c3d_fk_all_experience_id` FOREIGN KEY (`exp_id_id`) REFERENCES `all_experience` (`id`);

--
-- Constraints for table `all_project`
--
ALTER TABLE `all_project`
  ADD CONSTRAINT `all_project_category_id_ea249c8f_fk_all_category_id` FOREIGN KEY (`category_id`) REFERENCES `all_category` (`id`),
  ADD CONSTRAINT `all_project_types_id_ba6815d6_fk_all_type_id` FOREIGN KEY (`types_id`) REFERENCES `all_type` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
