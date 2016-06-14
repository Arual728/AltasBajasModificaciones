-- phpMyAdmin SQL Dump
-- version 2.6.4-pl4
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 13-06-2016 a las 16:33:40
-- Versión del servidor: 5.0.16
-- Versión de PHP: 5.1.1
-- 
-- Base de datos: `db_blog`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL auto_increment,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

INSERT INTO `usuarios` VALUES (1, 'Diana', 'anaid');
INSERT INTO `usuarios` VALUES (16, 'Casi', '1234');
INSERT INTO `usuarios` VALUES (3, 'marco', '1234');
INSERT INTO `usuarios` VALUES (14, 'Mary', '9876');
INSERT INTO `usuarios` VALUES (11, 'EZAU', 'jimenez');
INSERT INTO `usuarios` VALUES (5, 'fer', '1918');
INSERT INTO `usuarios` VALUES (15, 'eduardo', '5555');
