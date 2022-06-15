-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tienda_deportiva_el_podio
DROP DATABASE IF EXISTS `tienda_deportiva_el_podio`;
CREATE DATABASE IF NOT EXISTS `tienda_deportiva_el_podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva_el_podio`;

-- Volcando estructura para tabla tienda_deportiva_el_podio.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `premium` bit(1) NOT NULL DEFAULT b'1',
  `phone_number` varchar(50) NOT NULL DEFAULT '3003003030',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='Este campo contendra los registros de ventas del producto ';

-- Volcando datos para la tabla tienda_deportiva_el_podio.customers: ~4 rows (aproximadamente)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `premium`, `phone_number`) VALUES
	(1, 'Luis Steven Torres', b'0', '3021235545'),
	(2, 'Camila Andrea Higuita Puerta', b'1', '3065535656'),
	(3, 'Manuela Estrada Cortes', b'1', '54126532115'),
	(4, 'Santiago Morales Upegüi', b'0', '3003003030');

-- Volcando estructura para tabla tienda_deportiva_el_podio.payment_forms
DROP TABLE IF EXISTS `payment_forms`;
CREATE TABLE IF NOT EXISTS `payment_forms` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `method` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='este campo contendra la forma de pago de cada compra';

-- Volcando datos para la tabla tienda_deportiva_el_podio.payment_forms: ~3 rows (aproximadamente)
DELETE FROM `payment_forms`;
INSERT INTO `payment_forms` (`id`, `method`) VALUES
	(1, 'check'),
	(2, 'effective'),
	(3, 'tdc_amex');

-- Volcando estructura para tabla tienda_deportiva_el_podio.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `imported` bit(1) NOT NULL DEFAULT b'1',
  `price` float unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='este campo contendra el producto que se a vendido';

-- Volcando datos para la tabla tienda_deportiva_el_podio.products: ~4 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `size`, `imported`, `price`) VALUES
	(1, 'basketball', '73-24', b'0', 85800),
	(2, 'judo uniform', 'A4', b'0', 115000),
	(3, 'Tennis rackets', '570-80', b'1', 348000),
	(4, 'boxing gloves', 'M', b'1', 289000);

-- Volcando estructura para tabla tienda_deportiva_el_podio.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `value` float NOT NULL,
  `product_id` smallint(5) NOT NULL,
  `payment_form_id` smallint(5) NOT NULL,
  `customer_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='Este campo contendra los datos en que se hizo la venta';

-- Volcando datos para la tabla tienda_deportiva_el_podio.sales: ~4 rows (aproximadamente)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `date`, `value`, `product_id`, `payment_form_id`, `customer_id`) VALUES
	(1, '2022-06-12', 115000, 2, 2, 1),
	(2, '2022-06-13', 85000, 1, 3, 3),
	(3, '2022-06-14', 348000, 3, 1, 2),
	(4, '2022-06-15', 289000, 4, 3, 4);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
