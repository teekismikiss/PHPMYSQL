-- AdminNeo 5.0.0 MySQL 8.0.35 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `tipos_comic`;
CREATE TABLE `tipos_comic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `tipos_comic` (`id`, `nombre`, `descripcion`) VALUES
(1,	'Serie Regular',	'Publicacion continua sin limite definido de numeros.'),
(2,	'Serie Limitada',	'Historia con numero definido de entregas.'),
(3,	'One-Shot',	'Historia autoconclusiva publicada en un solo numero.'),
(4,	'Anual',	'Edicion especial publicada una vez al ano.'),
(5,	'Novela Grafica',	'Historia larga publicada en formato libro.'),
(6,	'Crossover',	'Historia que conecta multiples series o personajes.'),
(7,	'Evento',	'Gran historia que afecta a gran parte del universo Marvel.'),
(8,	'Reimpresion',	'Edicion que recopila numeros publicados anteriormente.');

-- 2026-02-27 09:01:41 UTC
