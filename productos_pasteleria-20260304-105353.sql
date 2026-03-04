-- AdminNeo 5.0.0 MySQL 8.0.35 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `productos_pasteleria`;
CREATE TABLE `productos_pasteleria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text,
  `categoria` enum('Tartas','Pasteles','Cupcakes','Galletas','Panadería','Bebidas','Otros') NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `ingredientes` text,
  `alergenos` set('Gluten','Huevo','Leche','Frutos secos','Soja','Sésamo','Lactosa','Cacahuetes') NOT NULL,
  `disponible` tinyint(1) DEFAULT '1',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `productos_pasteleria` (`id`, `nombre`, `descripcion`, `categoria`, `precio`, `foto`, `ingredientes`, `alergenos`, `disponible`, `fecha_creacion`) VALUES
(1,	'Tarta de Chocolate Clásica',	'Bizcocho húmedo de chocolate con cobertura de ganache.',	'Tartas',	22.50,	'tarta_chocolate.jpg',	'Harina, azúcar, cacao, huevos, mantequilla, nata',	'Gluten,Huevo,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(2,	'Tarta de Queso al Horno',	'Tarta cremosa de queso con base de galleta.',	'Tartas',	24.00,	'tarta_queso.jpg',	'Queso crema, azúcar, huevos, nata, galleta',	'Gluten,Huevo,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(3,	'Red Velvet',	'Tarta esponjosa de cacao rojo con crema de queso.',	'Tartas',	26.00,	'red_velvet.jpg',	'Harina, cacao, huevos, azúcar, mantequilla, queso crema',	'Gluten,Huevo,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(4,	'Pastel de Zanahoria',	'Pastel especiado con nueces y frosting de queso.',	'Pasteles',	4.50,	'pastel_zanahoria.jpg',	'Harina, zanahoria, azúcar, huevos, nueces',	'Gluten,Huevo,Frutos secos',	1,	'2026-03-04 08:49:31'),
(5,	'Milhojas de mil Cremas',	'Capas crujientes de hojaldre con crema pastelera con arandanos',	'Pasteles',	3.80,	'milhojas.jpg',	'Harina, mantequilla, leche, azúcar, huevos',	'Gluten,Huevo,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(6,	'Napolitana de Chocolate',	'Hojaldre relleno de chocolate.',	'Panadería',	2.20,	'napolitana.jpg',	'Harina, mantequilla, chocolate',	'Gluten,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(7,	'Croissant Artesano',	'Croissant de mantequilla recién horneado.',	'Panadería',	1.80,	'croissant.jpg',	'Harina, mantequilla, azúcar, levadura',	'Gluten,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(8,	'Cupcake de Vainilla',	'Bizcocho individual con frosting de vainilla.',	'Cupcakes',	2.90,	'cupcake_vainilla.jpg',	'Harina, azúcar, huevos, mantequilla',	'Gluten,Huevo,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(9,	'Cupcake de Oreo',	'Cupcake de chocolate con topping de Oreo.',	'Cupcakes',	3.20,	'cupcake_oreo.jpg',	'Harina, cacao, huevos, galleta Oreo',	'Gluten,Huevo,Leche,Soja,Lactosa',	1,	'2026-03-04 08:49:31'),
(10,	'Galletas con Chips de Chocolate',	'Galletas crujientes con trozos de chocolate.',	'Galletas',	1.50,	'galletas_choco.jpg',	'Harina, azúcar, mantequilla, chocolate',	'Gluten,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(11,	'Galletas de Almendra',	'Galletas suaves elaboradas con almendra molida.',	'Galletas',	1.70,	'galletas_almendra.jpg',	'Almendra, azúcar, huevo',	'Huevo,Frutos secos',	1,	'2026-03-04 08:49:31'),
(12,	'Brownie de Chocolate',	'Brownie denso con nueces.',	'Pasteles',	3.50,	'brownie.jpg',	'Chocolate, mantequilla, azúcar, huevos, nueces',	'Huevo,Leche,Frutos secos,Lactosa',	1,	'2026-03-04 08:49:31'),
(13,	'Tarta Tres Leches',	'Bizcocho empapado en mezcla de tres leches.',	'Tartas',	25.00,	'tres_leches.jpg',	'Harina, leche evaporada, leche condensada, nata',	'Gluten,Huevo,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(14,	'Tarta de Limón',	'Tarta fresca con crema de limón y merengue.',	'Tartas',	23.00,	'tarta_limon.jpg',	'Harina, limón, azúcar, huevos',	'Gluten,Huevo',	1,	'2026-03-04 08:49:31'),
(15,	'Éclair de Chocolate',	'Pasta choux rellena de crema y cubierta de chocolate.',	'Pasteles',	3.90,	'eclair.jpg',	'Harina, huevos, leche, chocolate',	'Gluten,Huevo,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(16,	'Donut Glaseado',	'Donut clásico con glaseado de azúcar.',	'Panadería',	1.60,	'donut.jpg',	'Harina, azúcar, leche, levadura',	'Gluten,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(17,	'Pan de Plátano',	'Bizcocho húmedo de plátano y nueces.',	'Panadería',	2.80,	'pan_platano.jpg',	'Harina, plátano, huevos, nueces',	'Gluten,Huevo,Frutos secos',	1,	'2026-03-04 08:49:31'),
(18,	'Tarta Sacher',	'Tarta de chocolate con mermelada de albaricoque.',	'Tartas',	27.00,	'sacher.jpg',	'Chocolate, harina, huevos, mantequilla',	'Gluten,Huevo,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(19,	'Macarons Variados',	'Macarons surtidos de distintos sabores.',	'Otros',	1.90,	'macarons.jpg',	'Almendra molida, azúcar, claras de huevo',	'Huevo,Frutos secos',	1,	'2026-03-04 08:49:31'),
(20,	'Batido de Fresa',	'Batido natural de fresa con leche.',	'Bebidas',	3.00,	'batido_fresa.jpg',	'Fresa, leche, azúcar',	'Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(21,	'Café Latte',	'Café espresso con leche vaporizada.',	'Bebidas',	2.50,	'latte.jpg',	'Café, leche',	'Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(22,	'Tarta Selva Negra',	'Tarta de chocolate con cerezas y nata.',	'Tartas',	28.00,	'selva_negra.jpg',	'Harina, cacao, cerezas, nata',	'Gluten,Huevo,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(23,	'Palmera de Chocolate',	'Hojaldre crujiente cubierto de chocolate.',	'Panadería',	2.40,	'palmera.jpg',	'Harina, mantequilla, chocolate',	'Gluten,Leche,Lactosa',	1,	'2026-03-04 08:49:31'),
(24,	'Tarta Vegana de Manzana',	'Tarta de manzana sin ingredientes de origen animal.',	'Tartas',	21.00,	'tarta_manzana_vegana.jpg',	'Harina integral, manzana, azúcar moreno, aceite vegetal',	'Gluten',	1,	'2026-03-04 08:49:31'),
(26,	'Café con pastas',	'Café con pastelitos servido en bandeja de multiples pisos británica',	'Tartas',	15.00,	NULL,	NULL,	'',	1,	'2026-03-04 09:48:06');

-- 2026-03-04 10:53:53 UTC
