-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-12-2024 a las 21:15:24
-- Versión del servidor: 11.5.2-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bermellona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
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
(25, 'Can add Token', 7, 'add_token'),
(26, 'Can change Token', 7, 'change_token'),
(27, 'Can delete Token', 7, 'delete_token'),
(28, 'Can view Token', 7, 'view_token'),
(29, 'Can add Token', 8, 'add_tokenproxy'),
(30, 'Can change Token', 8, 'change_tokenproxy'),
(31, 'Can delete Token', 8, 'delete_tokenproxy'),
(32, 'Can view Token', 8, 'view_tokenproxy'),
(33, 'Can add terminos y condiciones', 9, 'add_terminosycondiciones'),
(34, 'Can change terminos y condiciones', 9, 'change_terminosycondiciones'),
(35, 'Can delete terminos y condiciones', 9, 'delete_terminosycondiciones'),
(36, 'Can view terminos y condiciones', 9, 'view_terminosycondiciones'),
(37, 'Can add Producto', 10, 'add_productos'),
(38, 'Can change Producto', 10, 'change_productos'),
(39, 'Can delete Producto', 10, 'delete_productos'),
(40, 'Can view Producto', 10, 'view_productos'),
(41, 'Can add Venta', 11, 'add_venta'),
(42, 'Can change Venta', 11, 'change_venta'),
(43, 'Can delete Venta', 11, 'delete_venta'),
(44, 'Can view Venta', 11, 'view_venta'),
(45, 'Can add Transacción Webpay', 12, 'add_transaccionwebpay'),
(46, 'Can change Transacción Webpay', 12, 'change_transaccionwebpay'),
(47, 'Can delete Transacción Webpay', 12, 'delete_transaccionwebpay'),
(48, 'Can view Transacción Webpay', 12, 'view_transaccionwebpay'),
(49, 'Can add Producto en Venta', 13, 'add_productoventa'),
(50, 'Can change Producto en Venta', 13, 'change_productoventa'),
(51, 'Can delete Producto en Venta', 13, 'delete_productoventa'),
(52, 'Can view Producto en Venta', 13, 'view_productoventa'),
(53, 'Can add user profile', 14, 'add_userprofile'),
(54, 'Can change user profile', 14, 'change_userprofile'),
(55, 'Can delete user profile', 14, 'delete_userprofile'),
(56, 'Can view user profile', 14, 'view_userprofile'),
(57, 'Can add soporte', 15, 'add_soporte'),
(58, 'Can change soporte', 15, 'change_soporte'),
(59, 'Can delete soporte', 15, 'delete_soporte'),
(60, 'Can view soporte', 15, 'view_soporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$XZJCJUxyu5kRazUQiXIAlH$s+EB+MvuVyRuwH6bofLbJ1d8sSfpl+HIEm/g3pEj4Ro=', NULL, 1, 'cri.jimenez24@gmail.com', 'Cristian', 'Jimenez', 'cri.jimenez24@gmail.com', 0, 1, '2024-12-01 12:27:36.839952'),
(2, 'pbkdf2_sha256$870000$1kncwEnSPrkNgyuaNxEYh3$wBqcfiVju4a8mom7ccLICBq7MxuIot5fdAcIyJtMKy4=', NULL, 0, 'cri.jimenez21@gmail.com', 'Cristian', 'Jimenez', 'cri.jimenez21@gmail.com', 0, 1, '2024-12-01 13:23:59.808101'),
(3, '', NULL, 0, 'tomi.latin.99', 'TomiCh', 'Latin', 'tomi.latin.99@gmail.com', 0, 1, '2024-12-01 15:48:16.038600'),
(5, '', NULL, 0, 'games.store.cl', 'Store', 'Games', 'games.store.cl@gmail.com', 0, 1, '2024-12-01 15:50:34.314869'),
(6, 'pbkdf2_sha256$870000$EG43rL42WsJOeuZ0DpA6mW$Sq/Cq+vzKxJ63U1UTjf9NTja62WZVLpsOF3G4s3CRJI=', NULL, 0, 'cri.jimenezc@duocuc.cl', 'Cristian', 'Manuel Jimenez Cerda', 'cri.jimenezc@duocuc.cl', 0, 1, '2024-12-01 17:14:49.889856'),
(7, '', NULL, 0, 'cristian.99.tomi@gmail.com', 'Cristian', 'Jimenez', 'cristian.99.tomi@gmail.com', 0, 1, '2024-12-01 17:15:18.495356'),
(8, 'pbkdf2_sha256$870000$3p9FYh6K5uGz6ZiiXvl23u$rZwYQQT1unMPgkrn1GMxrQ5f5iF2hD9NbsvsLRyX30s=', NULL, 0, 'cristian.jimenez@alsglobal.com', 'Gerardo', 'Ramirez', 'cristian.jimenez@alsglobal.com', 0, 1, '2024-12-10 18:11:36.892560');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'authtoken', 'token'),
(8, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'usuarios', 'productos'),
(13, 'usuarios', 'productoventa'),
(15, 'usuarios', 'soporte'),
(9, 'usuarios', 'terminosycondiciones'),
(12, 'usuarios', 'transaccionwebpay'),
(14, 'usuarios', 'userprofile'),
(11, 'usuarios', 'venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-12-01 12:24:59.350290'),
(2, 'auth', '0001_initial', '2024-12-01 12:24:59.554884'),
(3, 'admin', '0001_initial', '2024-12-01 12:24:59.597954'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-12-01 12:24:59.604063'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-12-01 12:24:59.610521'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-12-01 12:24:59.641759'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-12-01 12:24:59.677496'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-12-01 12:24:59.691082'),
(9, 'auth', '0004_alter_user_username_opts', '2024-12-01 12:24:59.697296'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-12-01 12:24:59.716255'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-12-01 12:24:59.718259'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-12-01 12:24:59.723875'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-12-01 12:24:59.738127'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-12-01 12:24:59.752435'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-12-01 12:24:59.766103'),
(16, 'auth', '0011_update_proxy_permissions', '2024-12-01 12:24:59.772124'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-12-01 12:24:59.787099'),
(18, 'authtoken', '0001_initial', '2024-12-01 12:24:59.820929'),
(19, 'authtoken', '0002_auto_20160226_1747', '2024-12-01 12:24:59.840107'),
(20, 'authtoken', '0003_tokenproxy', '2024-12-01 12:24:59.843111'),
(21, 'authtoken', '0004_alter_tokenproxy_options', '2024-12-01 12:24:59.848638'),
(22, 'sessions', '0001_initial', '2024-12-01 12:24:59.868378'),
(23, 'usuarios', '0001_initial', '2024-12-01 12:24:59.878279'),
(24, 'usuarios', '0002_alter_terminosycondiciones_id_usuario', '2024-12-01 12:24:59.895712'),
(25, 'usuarios', '0003_productos', '2024-12-01 12:24:59.905350'),
(26, 'usuarios', '0004_alter_productos_nombre', '2024-12-01 12:25:00.851646'),
(27, 'usuarios', '0005_alter_productos_precio', '2024-12-01 12:25:00.868824'),
(28, 'usuarios', '0006_alter_productos_imagen', '2024-12-01 12:25:00.871854'),
(29, 'usuarios', '0007_productos_destacado', '2024-12-01 12:25:00.890558'),
(30, 'usuarios', '0008_alter_productos_imagen_venta_transaccionwebpay_and_more', '2024-12-01 12:25:00.994939'),
(31, 'usuarios', '0009_venta_estado', '2024-12-01 12:25:01.019705'),
(32, 'usuarios', '0010_userprofile', '2024-12-01 13:06:23.667966'),
(33, 'usuarios', '0011_alter_userprofile_table', '2024-12-01 13:07:08.023927'),
(34, 'usuarios', '0012_soporte', '2024-12-01 19:07:10.560235'),
(35, 'usuarios', '0013_soporte_codigo_userprofile_rut', '2024-12-07 04:05:06.886113'),
(36, 'usuarios', '0014_venta_calle_venta_celular_venta_comuna_and_more', '2024-12-09 14:00:38.098642'),
(37, 'usuarios', '0015_remove_productoventa_cantidad_and_more', '2024-12-09 21:02:47.719384'),
(38, 'usuarios', '0016_productoventa_cantidad', '2024-12-09 22:54:04.636617'),
(39, 'usuarios', '0017_venta_metodo_pago', '2024-12-10 12:39:51.010839'),
(40, 'usuarios', '0018_venta_despachador_venta_numero_envio', '2024-12-10 14:11:22.282331');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `id` bigint(20) NOT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `region` longtext DEFAULT NULL,
  `comuna` longtext DEFAULT NULL,
  `calle` longtext DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  `rut` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`id`, `celular`, `region`, `comuna`, `calle`, `usuario_id`, `rut`) VALUES
(1, '+56986580695', 'Valparaiso', 'Villa Alemana', 'San Carlos 233', 1, '19665559k');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `precio` int(11) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `destacado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `imagen`, `descripcion`, `cantidad`, `precio`, `fecha_creacion`, `fecha_actualizacion`, `destacado`) VALUES
(1, 'Aros', 'productos/image5_T3hgkzX.jpg', 'Hermosos aros', 0, 9990, '2024-12-01 12:29:10.044331', '2024-12-10 00:05:37.238201', 1),
(2, 'Collar', 'productos/image7_7oJ96Wb.jpg', '', 0, 15990, '2024-12-07 15:58:39.481050', '2024-12-10 16:40:55.516722', 1),
(3, 'Collar Rojo', 'productos/image3_hSP1HEY.jpg', '', 0, 15990, '2024-12-08 20:25:43.450993', '2024-12-09 22:33:59.474191', 1),
(4, 'Collar Blanco', 'productos/image10.jpg', '', 0, 7990, '2024-12-08 20:26:13.887390', '2024-12-09 23:06:05.381756', 0),
(5, 'Collar Blanco', 'productos/image2_auQoIJ1.jpg', '', 0, 20990, '2024-12-08 20:26:35.825048', '2024-12-09 22:58:59.884917', 1),
(6, 'Brazalete blanco', 'productos/image4.jpg', '', 0, 5990, '2024-12-08 20:27:03.477001', '2024-12-09 22:54:59.395109', 0),
(7, 'Aros', 'productos/image6_9ipReyz.jpg', '', 0, 8990, '2024-12-08 20:27:23.946370', '2024-12-09 22:56:56.909581', 0),
(8, 'Aros de corazones', 'productos/image8.jpg', '', 10, 14990, '2024-12-08 20:27:42.058578', '2024-12-10 18:51:16.307381', 0),
(9, 'Aros Sol', 'productos/image9.jpg', '', 8, 8990, '2024-12-08 20:28:18.002739', '2024-12-10 18:51:16.303380', 0),
(10, 'Collar de cristal', 'productos/image11.jpg', '', 94, 25990, '2024-12-08 20:28:38.664822', '2024-12-10 18:51:16.298295', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_venta`
--

CREATE TABLE `productos_venta` (
  `id` bigint(20) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  `venta_id` bigint(20) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_venta`
--

INSERT INTO `productos_venta` (`id`, `producto_id`, `venta_id`, `cantidad`) VALUES
(1, 8, 2, 1),
(14, 3, 21, 1),
(15, 10, 26, 1),
(16, 9, 28, 1),
(19, 6, 31, 1),
(20, 7, 35, 1),
(21, 5, 37, 1),
(22, 4, 41, 1),
(23, 1, 42, 1),
(24, 10, 43, 2),
(25, 10, 44, 1),
(26, 10, 45, 1),
(27, 10, 46, 1),
(28, 10, 47, 11),
(29, 10, 48, 11),
(30, 10, 49, 11),
(31, 10, 50, 11),
(32, 10, 51, 11),
(33, 10, 52, 11),
(34, 10, 53, 11),
(35, 2, 54, 1),
(36, 10, 55, 1),
(37, 10, 56, 1),
(38, 10, 57, 1),
(39, 10, 58, 1),
(40, 10, 59, 1),
(53, 10, 64, 1),
(54, 9, 64, 1),
(55, 2, 64, 1),
(56, 10, 65, 1),
(59, 10, 68, 1),
(60, 10, 69, 1),
(61, 2, 70, 3),
(62, 10, 71, 1),
(63, 10, 72, 1),
(67, 10, 76, 1),
(68, 10, 77, 1),
(69, 10, 78, 1),
(70, 10, 79, 1),
(71, 10, 80, 1),
(72, 10, 81, 1),
(73, 10, 82, 1),
(74, 10, 83, 1),
(77, 10, 86, 1),
(78, 10, 87, 1),
(79, 10, 88, 3),
(80, 9, 88, 2),
(81, 8, 88, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soporte`
--

CREATE TABLE `soporte` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo_electronico` varchar(254) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `mensaje` longtext NOT NULL,
  `estado` varchar(50) NOT NULL,
  `codigo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `soporte`
--

INSERT INTO `soporte` (`id`, `nombre`, `correo_electronico`, `motivo`, `mensaje`, `estado`, `codigo`) VALUES
(1, 'Cristian', 'cri.jimenez21@gmail.com', 'felicitaciones', 'sdasd', 'pendiente', '0'),
(2, 'Jose', 'cri.jimenez21@gmail.com', 'producto', 'hola', 'pendiente', 'YmvvTV-Dbm68q8sBVMRLy'),
(3, 'Cristian', 'cri.jimenez21@gmail.com', 'quejas', 'Este es un mensaje de prueba que tiene por decencia eliminar toda bermellona por corrupta', 'pendiente', 'bS0gwNsBDLzH9It_66NyY'),
(4, 'Cristian', 'cri.jimenez21@gmail.com', 'producto', 'jkhjhjkl', 'pendiente', '2T010ML9czW6LdbbwDqbB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terminos_condiciones`
--

CREATE TABLE `terminos_condiciones` (
  `id` bigint(20) NOT NULL,
  `acepto_terminos` tinyint(1) NOT NULL,
  `fecha_aceptacion` datetime(6) NOT NULL,
  `id_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `terminos_condiciones`
--

INSERT INTO `terminos_condiciones` (`id`, `acepto_terminos`, `fecha_aceptacion`, `id_usuario`) VALUES
(1, 1, '2024-12-01 12:27:37.198732', 'cri.jimenez24@gmail.com'),
(2, 1, '2024-12-01 13:24:00.188627', 'cri.jimenez21@gmail.com'),
(3, 1, '2024-12-10 18:11:37.253682', 'cristian.jimenez@alsglobal.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones_webpay`
--

CREATE TABLE `transacciones_webpay` (
  `id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `fecha_transaccion` datetime(6) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `monto` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transacciones_webpay`
--

INSERT INTO `transacciones_webpay` (`id`, `token`, `fecha_transaccion`, `estado`, `monto`) VALUES
(1, '01abec3c62f84424d6a891492867b7718738c56a8df70bdc483f528190eff095', '2024-12-09 21:13:56.179714', 'rechazada', 29980.00),
(2, '01abec3c62f84424d6a891492867b7718738c56a8df70bdc483f528190eff095', '2024-12-09 21:15:57.932890', 'rechazada', 29980.00),
(3, '01abec3c62f84424d6a891492867b7718738c56a8df70bdc483f528190eff095', '2024-12-09 21:17:07.801851', 'rechazada', 29980.00),
(4, '01abec3c62f84424d6a891492867b7718738c56a8df70bdc483f528190eff095', '2024-12-09 21:17:09.286977', 'rechazada', 29980.00),
(5, '01abec3c62f84424d6a891492867b7718738c56a8df70bdc483f528190eff095', '2024-12-09 21:19:16.669113', 'rechazada', 29980.00),
(6, '01abec3c62f84424d6a891492867b7718738c56a8df70bdc483f528190eff095', '2024-12-09 21:20:41.668561', 'rechazada', 29980.00),
(7, '01abec3c62f84424d6a891492867b7718738c56a8df70bdc483f528190eff095', '2024-12-09 21:20:49.612048', 'rechazada', 29980.00),
(8, '01ab665830546c11da800db839ff9153dc02e534009665919a733b143e97efe1', '2024-12-09 21:34:11.147046', 'rechazada', 8990.00),
(9, '01ab665830546c11da800db839ff9153dc02e534009665919a733b143e97efe1', '2024-12-09 21:34:42.930413', 'rechazada', 8990.00),
(10, '01ab665830546c11da800db839ff9153dc02e534009665919a733b143e97efe1', '2024-12-09 21:35:06.997143', 'rechazada', 8990.00),
(11, '01ab665830546c11da800db839ff9153dc02e534009665919a733b143e97efe1', '2024-12-09 21:38:09.542359', 'rechazada', 8990.00),
(12, '01ab665830546c11da800db839ff9153dc02e534009665919a733b143e97efe1', '2024-12-09 21:40:17.938209', 'rechazada', 8990.00),
(13, '01ab665830546c11da800db839ff9153dc02e534009665919a733b143e97efe1', '2024-12-09 21:41:44.857049', 'rechazada', 8990.00),
(14, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 21:45:06.800906', 'rechazada', 15990.00),
(15, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 21:45:21.400356', 'rechazada', 15990.00),
(16, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 22:12:51.928287', 'rechazada', 15990.00),
(17, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 22:22:00.968820', 'rechazada', 15990.00),
(18, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 22:22:12.757270', 'rechazada', 15990.00),
(19, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 22:22:18.766893', 'rechazada', 15990.00),
(20, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 22:22:28.829558', 'rechazada', 15990.00),
(21, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 22:22:29.837290', 'rechazada', 15990.00),
(22, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 22:22:45.585184', 'rechazada', 15990.00),
(23, '01abe0f844bac58dbc08f14f3d2ffd898ca2218aecb7011a1e21e084d66577df', '2024-12-09 22:22:56.714646', 'rechazada', 15990.00),
(24, '01abf2d2e1d0cbac70ffe4835c242d77ac2bd4b6f546cf32efbb2ee7c6da84cb', '2024-12-09 22:24:57.995496', 'rechazada', 8990.00),
(25, '01abf2d2e1d0cbac70ffe4835c242d77ac2bd4b6f546cf32efbb2ee7c6da84cb', '2024-12-09 22:25:04.331497', 'rechazada', 8990.00),
(26, '01abf2d2e1d0cbac70ffe4835c242d77ac2bd4b6f546cf32efbb2ee7c6da84cb', '2024-12-09 22:25:50.764029', 'rechazada', 8990.00),
(27, '01abf2d2e1d0cbac70ffe4835c242d77ac2bd4b6f546cf32efbb2ee7c6da84cb', '2024-12-09 22:26:00.198684', 'rechazada', 8990.00),
(28, '01ab3def70c5dbad78985f9b2353782cc03fb0e90f92709530f235f88be158fb', '2024-12-09 22:30:52.343091', 'rechazada', 15990.00),
(29, '01ab3def70c5dbad78985f9b2353782cc03fb0e90f92709530f235f88be158fb', '2024-12-09 22:30:57.700811', 'rechazada', 15990.00),
(30, '01ab3def70c5dbad78985f9b2353782cc03fb0e90f92709530f235f88be158fb', '2024-12-09 22:38:45.721557', 'rechazada', 15990.00),
(31, '01ab3def70c5dbad78985f9b2353782cc03fb0e90f92709530f235f88be158fb', '2024-12-09 22:38:50.164064', 'rechazada', 15990.00),
(32, '01ab3def70c5dbad78985f9b2353782cc03fb0e90f92709530f235f88be158fb', '2024-12-09 22:39:08.426207', 'rechazada', 15990.00),
(33, '01ab3def70c5dbad78985f9b2353782cc03fb0e90f92709530f235f88be158fb', '2024-12-09 22:39:21.665530', 'rechazada', 15990.00),
(34, '01ab5bf02fed3e20d460ac8d39781af925c8f45ffe1d5ae5f246b386f5e8dea8', '2024-12-09 22:42:57.605002', 'rechazada', 25990.00),
(35, '01ab73f6fe43693c5106fe0c693b1e774c341cb5246261c59244b1457fff0f98', '2024-12-09 22:48:33.262893', 'rechazada', 7990.00),
(36, '01ab1a642e1316085fc157a139c3623fdcfd20c3d70a5aff34c28486a94e61e6', '2024-12-09 22:52:21.085654', 'rechazada', 8990.00),
(37, '01ab3ffa0992237117d2ae3576173539d66a13458bb6cc004b60788bc23cfa62', '2024-12-09 22:55:42.823574', 'rechazada', 5990.00),
(38, '01ab3ffa0992237117d2ae3576173539d66a13458bb6cc004b60788bc23cfa62', '2024-12-09 22:55:44.599723', 'rechazada', 5990.00),
(39, '01ab3ffa0992237117d2ae3576173539d66a13458bb6cc004b60788bc23cfa62', '2024-12-09 22:56:12.839849', 'rechazada', 5990.00),
(40, '01ab81c2eb00ebf0e157ebc4f1aa4703fc83186d75d8f84997ea81b913724979', '2024-12-09 22:57:32.630922', 'rechazada', 8990.00),
(41, '01ab63850de3bb35aecdcceb7b7b26fd569bf8ceb26f7bb28e9e20da2351272c', '2024-12-09 23:01:13.174466', 'rechazada', 20990.00),
(42, '01ab63850de3bb35aecdcceb7b7b26fd569bf8ceb26f7bb28e9e20da2351272c', '2024-12-09 23:01:27.077393', 'rechazada', 20990.00),
(43, '01ab63850de3bb35aecdcceb7b7b26fd569bf8ceb26f7bb28e9e20da2351272c', '2024-12-09 23:01:30.071861', 'rechazada', 20990.00),
(44, '01ab3a38d39a55d360f88cc9cc5d1e4cf1f10ae7e8c4bdd4f4261916c4fc3908', '2024-12-10 01:38:22.837974', 'aprobada', 15990.00),
(45, '01abc72eb7db1ee79136292ca9f5ed8bf74e1e9748bb8dee7374ce5e1022326e', '2024-12-10 01:40:37.784302', 'aprobada', 25990.00),
(46, '01ab1f6336e98e33fe5fdf849a28caa1ada2964a7f25ab3a09e5834874b88dbf', '2024-12-10 01:42:56.576350', 'aprobada', 25990.00),
(47, '01abd810affe2f36b88388b7345aba860adaec42f5e20cf92140fc0770ef7689', '2024-12-10 01:44:06.423270', 'aprobada', 25990.00),
(48, '01ab36d0e8e1327b8c480b9b818fdf76651e6afeaf4b32e2fec0cc67a447dd70', '2024-12-10 01:48:31.355027', 'aprobada', 25990.00),
(49, '01ab0343839e00e9c8683f694414880d845152decc6e834f4b1d31f90467cbf5', '2024-12-10 01:50:27.888895', 'aprobada', 25990.00),
(50, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 01:58:33.693814', 'rechazada', 25990.00),
(51, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:01:02.850718', 'rechazada', 25990.00),
(52, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:01:48.964030', 'rechazada', 25990.00),
(53, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:02:02.855809', 'rechazada', 25990.00),
(54, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:03:16.888654', 'rechazada', 25990.00),
(55, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:03:30.946603', 'rechazada', 25990.00),
(56, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:03:37.059569', 'rechazada', 25990.00),
(57, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:04:02.683274', 'rechazada', 25990.00),
(58, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:04:23.262471', 'rechazada', 25990.00),
(59, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:05:54.927688', 'rechazada', 25990.00),
(60, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:06:10.974879', 'rechazada', 25990.00),
(61, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:06:11.646627', 'rechazada', 25990.00),
(62, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:06:26.720658', 'rechazada', 25990.00),
(63, '01abb004054814f528afbae9f575d328269d7f1fd44086c623ea1fb73360d67a', '2024-12-10 02:06:42.776284', 'rechazada', 25990.00),
(64, '01abf29fe3e04287d096f6007bdf285b0ff172475b98c7e4b4b7a7a379daec7f', '2024-12-10 02:07:48.960202', 'rechazada', 8990.00),
(65, '01ab3c4e15c10cb0542ae048cfb674c80ee36734db420dd6fcfacc843691e2f3', '2024-12-10 02:36:10.195852', 'rechazada', 50970.00),
(66, '01ab3c4e15c10cb0542ae048cfb674c80ee36734db420dd6fcfacc843691e2f3', '2024-12-10 02:37:43.860468', 'rechazada', 50970.00),
(67, '01abab4d6b29766687056df98567066b1da0ccbe138ad7a0a6b3f7186dc729c0', '2024-12-10 02:43:32.655493', 'rechazada', 50970.00),
(68, '01abab4d6b29766687056df98567066b1da0ccbe138ad7a0a6b3f7186dc729c0', '2024-12-10 02:44:48.519425', 'rechazada', 50970.00),
(69, '01abab4d6b29766687056df98567066b1da0ccbe138ad7a0a6b3f7186dc729c0', '2024-12-10 02:50:07.941024', 'aprobada', 50970.00),
(70, '01ab1db83e3ad8f23d35969333dd384a002a42facfa2336a7f630418cfc806c3', '2024-12-10 12:17:20.012277', 'aprobada', 25990.00),
(71, '01abfd927a7fb1f8702f3857093cdb76d37f7266f9a5cc9ab0a7947cb0226108', '2024-12-10 12:21:37.689840', 'rechazada', 25990.00),
(72, '01ab95b95ec0eec480b69c3a97f72daad68c1a830921a3b4361179c4b014f238', '2024-12-10 12:52:23.345344', 'rechazada', 25990.00),
(73, '01ab95b95ec0eec480b69c3a97f72daad68c1a830921a3b4361179c4b014f238', '2024-12-10 12:53:20.800894', 'rechazada', 25990.00),
(74, '01ab95b95ec0eec480b69c3a97f72daad68c1a830921a3b4361179c4b014f238', '2024-12-10 12:54:48.250356', 'aprobada', 25990.00),
(75, '01ab9404275bb7ca272b3c881bf958e49c2ae0b0ac568580fa9fa59a00a852f9', '2024-12-10 16:27:02.706188', 'aprobada', 25990.00),
(76, '01ab55a69bcc6fdd082eed522987761afb4363afa969effc4d6bc55b0863d87d', '2024-12-10 16:31:56.398068', 'rechazada', 15990.00),
(77, '01ab53d6034b365c16705cbe4c0aa397559ea738145ca67c41fb20194a28574a', '2024-12-10 16:40:58.250416', 'aprobada', 47970.00),
(78, '01ab520c4e10089f0d81e67604827f4baa85c1d2a38abe89e8c187dea882c230', '2024-12-10 17:35:13.282284', 'aprobada', 25990.00),
(79, '01ab71a03bbc47760fd05a97e7fefa4e4895a0fedd2aecf5ef9adf86b16a4999', '2024-12-10 18:51:18.890027', 'aprobada', 110940.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `apellido_cliente` varchar(255) NOT NULL,
  `rut_cliente` varchar(25) NOT NULL,
  `email_cliente` varchar(255) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `valor_total` decimal(10,2) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `estado` varchar(255) NOT NULL,
  `calle` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `comuna` varchar(255) NOT NULL,
  `opcion_entrega` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `tokenWebpay` longtext DEFAULT NULL,
  `metodo_pago` varchar(255) NOT NULL,
  `despachador` varchar(255) DEFAULT NULL,
  `numero_envio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `fecha`, `nombre_cliente`, `apellido_cliente`, `rut_cliente`, `email_cliente`, `descuento`, `valor_total`, `usuario_id`, `estado`, `calle`, `celular`, `comuna`, `opcion_entrega`, `region`, `tokenWebpay`, `metodo_pago`, `despachador`, `numero_envio`) VALUES
(2, 'VENTA-202412091966', '2024-12-09 21:20:02.721824', 'Cristian', 'Jimenez', '19665559k', 'cristian.jimenez@alsglobal.com', 0.00, 29980.00, NULL, 'En despacho', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', NULL, '', 'Starken', '22342345'),
(21, 'VENTA-9F7A77E0', '2024-12-09 22:33:59.468343', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 15990.00, NULL, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', NULL, '', NULL, NULL),
(26, 'VENTA-98DFA55A', '2024-12-09 22:42:44.039102', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, NULL, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab5bf02fed3e20d460ac8d39781af925c8f45ffe1d5ae5f246b386f5e8dea8', '', NULL, NULL),
(28, 'VENTA-8C67032E', '2024-12-09 22:43:48.948523', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 8990.00, NULL, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01abe1d9a9925c9848591b96c8bab0c220bd7aee495acbdf89c1e8672da7aeeb', '', NULL, NULL),
(31, 'VENTA-2CFBA7A4', '2024-12-09 22:54:59.390017', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 5990.00, NULL, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab3ffa0992237117d2ae3576173539d66a13458bb6cc004b60788bc23cfa62', '', NULL, NULL),
(35, 'VENTA-10F55C21', '2024-12-09 22:56:56.904581', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 8990.00, NULL, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab81c2eb00ebf0e157ebc4f1aa4703fc83186d75d8f84997ea81b913724979', '', NULL, NULL),
(37, 'VENTA-AF8899BD', '2024-12-09 22:58:59.878698', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 20990.00, NULL, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab63850de3bb35aecdcceb7b7b26fd569bf8ceb26f7bb28e9e20da2351272c', '', NULL, NULL),
(41, 'VENTA-E920D99B', '2024-12-09 23:06:05.377221', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 7990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01abe9e6414f819be9fd4712c89885c0e2f7e4c8b5dea99e6cd73a27bb5b1ce4', '', NULL, NULL),
(42, 'VENTA-ACC61F07', '2024-12-10 00:05:37.233868', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 9990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab9768abc11e96ae4661f64ab9770f125d64e521f9c4d7f93fcf2b66f01ded', '', NULL, NULL),
(43, 'VENTA-94D3DD55', '2024-12-10 00:32:55.175690', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 51980.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Papudo', 'despacho', 'Valparaiso', '01ab9bd8d12852f40c605cc99a4eb3cd0db1530a032b1c8bf24db881b925d22e', '', NULL, NULL),
(44, 'VENTA-1CFD3513', '2024-12-10 01:24:32.740106', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'La Ligua', 'despacho', 'Valparaiso', '01ab47a911cdd3e4d63d334ab67c4a2a4bf3c6d14e3c6ee4393ab2116a32a337', '', NULL, NULL),
(45, 'VENTA-90F99D46', '2024-12-10 01:26:41.047386', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'La Ligua', 'despacho', 'Valparaiso', '01ab47a911cdd3e4d63d334ab67c4a2a4bf3c6d14e3c6ee4393ab2116a32a337', '', NULL, NULL),
(46, 'VENTA-5547E75A', '2024-12-10 01:27:50.849139', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'La Ligua', 'despacho', 'Valparaiso', '01ab47a911cdd3e4d63d334ab67c4a2a4bf3c6d14e3c6ee4393ab2116a32a337', '', NULL, NULL),
(47, 'VENTA-B111CE1B', '2024-12-10 01:30:32.230483', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 285890.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab114971724e9ce2b9e6ca817b14c19a029a479a2ada64dcc43bd85387ed74', '', NULL, NULL),
(48, 'VENTA-2F802E9D', '2024-12-10 01:31:35.785645', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 285890.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab114971724e9ce2b9e6ca817b14c19a029a479a2ada64dcc43bd85387ed74', '', NULL, NULL),
(49, 'VENTA-977D9EEB', '2024-12-10 01:33:12.350388', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 285890.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab114971724e9ce2b9e6ca817b14c19a029a479a2ada64dcc43bd85387ed74', '', NULL, NULL),
(50, 'VENTA-6FF0CA27', '2024-12-10 01:33:25.290713', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 285890.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab114971724e9ce2b9e6ca817b14c19a029a479a2ada64dcc43bd85387ed74', '', NULL, NULL),
(51, 'VENTA-D8F2046A', '2024-12-10 01:34:34.641197', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 285890.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab114971724e9ce2b9e6ca817b14c19a029a479a2ada64dcc43bd85387ed74', '', NULL, NULL),
(52, 'VENTA-4339330F', '2024-12-10 01:35:06.021511', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 285890.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab114971724e9ce2b9e6ca817b14c19a029a479a2ada64dcc43bd85387ed74', '', NULL, NULL),
(53, 'VENTA-F13C235D', '2024-12-10 01:35:56.944404', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 285890.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab114971724e9ce2b9e6ca817b14c19a029a479a2ada64dcc43bd85387ed74', '', NULL, NULL),
(54, 'VENTA-790D5154', '2024-12-10 01:38:19.507017', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 15990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab3a38d39a55d360f88cc9cc5d1e4cf1f10ae7e8c4bdd4f4261916c4fc3908', '', NULL, NULL),
(55, 'VENTA-BA0F7C20', '2024-12-10 01:40:35.217524', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Papudo', 'despacho', 'Valparaiso', '01abc72eb7db1ee79136292ca9f5ed8bf74e1e9748bb8dee7374ce5e1022326e', '', NULL, NULL),
(56, 'VENTA-B2753930', '2024-12-10 01:42:53.944929', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab1f6336e98e33fe5fdf849a28caa1ada2964a7f25ab3a09e5834874b88dbf', '', NULL, NULL),
(57, 'VENTA-A0C094A2', '2024-12-10 01:44:03.850760', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01abd810affe2f36b88388b7345aba860adaec42f5e20cf92140fc0770ef7689', '', NULL, NULL),
(58, 'VENTA-7C016A70', '2024-12-10 01:48:28.815824', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'La Ligua', 'despacho', 'Valparaiso', '01ab36d0e8e1327b8c480b9b818fdf76651e6afeaf4b32e2fec0cc67a447dd70', '', NULL, NULL),
(59, 'VENTA-3D1138E2', '2024-12-10 01:50:24.712785', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab0343839e00e9c8683f694414880d845152decc6e834f4b1d31f90467cbf5', '', NULL, NULL),
(64, 'VENTA-E969BFD8', '2024-12-10 02:50:03.516945', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 50970.00, 1, 'En despacho', 'San Carlos 233', '+56986580695', 'San Esteban', 'despacho', 'Valparaiso', '01abab4d6b29766687056df98567066b1da0ccbe138ad7a0a6b3f7186dc729c0', '', NULL, NULL),
(65, 'VENTA-3DD2E8CC', '2024-12-10 12:17:17.336318', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, NULL, 'Entregado', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab1db83e3ad8f23d35969333dd384a002a42facfa2336a7f630418cfc806c3', '', NULL, NULL),
(68, 'VENTA-4908B39E', '2024-12-10 12:54:45.629541', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'En despacho', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab95b95ec0eec480b69c3a97f72daad68c1a830921a3b4361179c4b014f238', 'tarjeta', 'Starken', '22342345'),
(69, 'VENTA-8761845C', '2024-12-10 16:27:00.092029', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, NULL, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab9404275bb7ca272b3c881bf958e49c2ae0b0ac568580fa9fa59a00a852f9', 'tarjeta', NULL, NULL),
(70, 'VENTA-2D5CC4DE', '2024-12-10 16:40:55.511412', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 47970.00, NULL, 'Aprobado', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '01ab53d6034b365c16705cbe4c0aa397559ea738145ca67c41fb20194a28574a', 'tarjeta', NULL, NULL),
(71, 'VENTA-A57D1826', '2024-12-10 17:09:19.923217', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez21@gmail.com', 0.00, 25990.00, 2, 'pendiente', '', '+56986580695', '', 'retiro', '', '', 'transferencia', NULL, NULL),
(72, 'VENTA-E04513E7', '2024-12-10 17:16:43.886800', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez21@gmail.com', 0.00, 25990.00, 2, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '', 'transferencia', NULL, NULL),
(76, 'VENTA-0AFF4840', '2024-12-10 17:22:05.169898', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez21@gmail.com', 0.00, 25990.00, 2, 'pendiente', 'San Carlos 233', '+56986580695', 'Lo Prado', 'despacho', 'Santiago', '', 'transferencia', NULL, NULL),
(77, 'VENTA-21D61B92', '2024-12-10 17:24:03.350040', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez21@gmail.com', 0.00, 25990.00, 2, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'despacho', 'Valparaiso', '', 'transferencia', NULL, NULL),
(78, 'VENTA-A4BC5429', '2024-12-10 17:35:10.671427', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'Disponible para retiro', '', '+56986580695', 'Villa Alemana', 'retiro', '', '01ab520c4e10089f0d81e67604827f4baa85c1d2a38abe89e8c187dea882c230', 'tarjeta', NULL, NULL),
(79, 'VENTA-4EB3B0FE', '2024-12-10 17:37:15.303282', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 25990.00, 1, 'pendiente', 'San Carlos 233', '+56986580695', 'Villa Alemana', 'retiro', 'Valparaiso', '', 'transferencia', NULL, NULL),
(80, 'VENTA-51293FE1', '2024-12-10 18:13:53.152741', 'Gerardo', 'Ramirez', '19665559k', 'cristian.jimenez@alsglobal.com', 0.00, 25990.00, 8, 'pendiente', 'San Carlos 233', '+56986580695', 'Juan Fernández', 'despacho', 'Valparaiso', '', 'transferencia', NULL, NULL),
(81, 'VENTA-53E3F2DB', '2024-12-10 18:17:20.601282', 'Gerardo', 'Ramirez', '18.754.754-k', 'cristian.jimenez@alsglobal.com', 0.00, 25990.00, 8, 'pendiente', '', '+56986580695', '', 'retiro', '', '', 'transferencia', NULL, NULL),
(82, 'VENTA-685E4AAA', '2024-12-10 18:18:20.897249', 'Gerardo', 'Ramirez', '19665559k', 'cristian.jimenez@alsglobal.com', 0.00, 25990.00, 8, 'pendiente', '', '+56986580695', '', 'retiro', '', '', 'transferencia', NULL, NULL),
(83, 'VENTA-9DB6568F', '2024-12-10 18:19:56.900802', 'Gerardo', 'Ramirez', '19665559k', 'cristian.jimenez@alsglobal.com', 0.00, 25990.00, 8, 'pendiente', '', '+56986580695', '', 'retiro', '', '', 'transferencia', NULL, NULL),
(86, 'VENTA-4D43F8A3', '2024-12-10 18:27:33.820219', 'Gerardo', 'Ramirez', '19665559k', 'cristian.jimenez@alsglobal.com', 0.00, 25990.00, 8, 'pendiente', '', '+56986580695', '', 'retiro', '', '', 'transferencia', NULL, NULL),
(87, 'VENTA-80D07EE8', '2024-12-10 18:30:27.507367', 'Gerardo', 'Ramirez', '19665559k', 'cristian.jimenez@alsglobal.com', 0.00, 25990.00, 8, 'Entregado', '', '+56986580695', '', 'retiro', '', '', 'transferencia', NULL, NULL),
(88, 'VENTA-47258B64', '2024-12-10 18:51:16.293295', 'Cristian', 'Jimenez', '19665559k', 'cri.jimenez24@gmail.com', 0.00, 110940.00, 1, 'pendiente', '', '+56986580695', '', 'retiro', '', '01ab71a03bbc47760fd05a97e7fefa4e4895a0fedd2aecf5ef9adf86b16a4999', 'tarjeta', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_venta_producto_id_9ede77f7_fk_productos_id` (`producto_id`),
  ADD KEY `productos_venta_venta_id_adfd9e27_fk_ventas_id` (`venta_id`);

--
-- Indices de la tabla `soporte`
--
ALTER TABLE `soporte`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `terminos_condiciones`
--
ALTER TABLE `terminos_condiciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transacciones_webpay`
--
ALTER TABLE `transacciones_webpay`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `ventas_usuario_id_4d1bd33b_fk_auth_user_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `soporte`
--
ALTER TABLE `soporte`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `terminos_condiciones`
--
ALTER TABLE `terminos_condiciones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transacciones_webpay`
--
ALTER TABLE `transacciones_webpay`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD CONSTRAINT `usuarios_userprofile_usuario_id_1218c4f2_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  ADD CONSTRAINT `productos_venta_producto_id_9ede77f7_fk_productos_id` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `productos_venta_venta_id_adfd9e27_fk_ventas_id` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_usuario_id_4d1bd33b_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
