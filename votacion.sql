-- phpMyAdmin SQL Dump
-- version 2.6.4-pl4
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 13-06-2016 a las 16:33:27
-- Versión del servidor: 5.0.16
-- Versión de PHP: 5.1.1
-- 
-- Base de datos: `votacion`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `encuestas`
-- 

CREATE TABLE `encuestas` (
  `id` int(11) NOT NULL auto_increment,
  `titulo` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- 
-- Volcar la base de datos para la tabla `encuestas`
-- 

INSERT INTO `encuestas` VALUES (7, 'Elecciones', '2015-06-09');
INSERT INTO `encuestas` VALUES (8, 'ELECCIONES', '2015-06-09');
INSERT INTO `encuestas` VALUES (9, 'CECE', '2016-04-05');
INSERT INTO `encuestas` VALUES (10, '1801', '2016-06-02');
INSERT INTO `encuestas` VALUES (11, 'ezau', '2016-06-05');
INSERT INTO `encuestas` VALUES (12, '1802', '2016-06-07');
INSERT INTO `encuestas` VALUES (13, 'tesi', '2016-06-10');
INSERT INTO `encuestas` VALUES (14, 'lolo', '2016-06-10');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `opciones`
-- 

CREATE TABLE `opciones` (
  `id` int(11) NOT NULL auto_increment,
  `id_encuesta` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

-- 
-- Volcar la base de datos para la tabla `opciones`
-- 

INSERT INTO `opciones` VALUES (1, 2, '1', 1);
INSERT INTO `opciones` VALUES (2, 2, '2', 0);
INSERT INTO `opciones` VALUES (3, 2, '3', 2);
INSERT INTO `opciones` VALUES (4, 3, 'PRI', 0);
INSERT INTO `opciones` VALUES (5, 3, 'PAN', 0);
INSERT INTO `opciones` VALUES (6, 3, 'PRD', 0);
INSERT INTO `opciones` VALUES (7, 3, 'MORENA', 0);
INSERT INTO `opciones` VALUES (8, 3, 'VERDE', 1);
INSERT INTO `opciones` VALUES (9, 4, 'L', 4);
INSERT INTO `opciones` VALUES (10, 4, 'LA', 1);
INSERT INTO `opciones` VALUES (11, 4, 'LO', 1);
INSERT INTO `opciones` VALUES (12, 4, 'LO', 3);
INSERT INTO `opciones` VALUES (13, 5, 'pdr', 2);
INSERT INTO `opciones` VALUES (14, 5, 'lo', 0);
INSERT INTO `opciones` VALUES (15, 6, '98', 2);
INSERT INTO `opciones` VALUES (16, 6, '99', 2);
INSERT INTO `opciones` VALUES (17, 7, 'PRI', 1);
INSERT INTO `opciones` VALUES (18, 7, 'PRD', 1);
INSERT INTO `opciones` VALUES (19, 7, 'PAN', 5);
INSERT INTO `opciones` VALUES (20, 8, 'PLANILLA GUARDIAN', 1);
INSERT INTO `opciones` VALUES (21, 8, 'PLANILLA ASSEMBLE', 0);
INSERT INTO `opciones` VALUES (22, 8, 'PLANILLA AMARILLA', 1);
INSERT INTO `opciones` VALUES (23, 9, 'W1', 1);
INSERT INTO `opciones` VALUES (24, 9, '1W', 1);
INSERT INTO `opciones` VALUES (25, 10, '1', 0);
INSERT INTO `opciones` VALUES (26, 10, '2', 0);
INSERT INTO `opciones` VALUES (27, 10, '3', 1);
INSERT INTO `opciones` VALUES (28, 10, '4', 0);
INSERT INTO `opciones` VALUES (29, 10, '5', 1);
INSERT INTO `opciones` VALUES (30, 11, '1', 1);
INSERT INTO `opciones` VALUES (31, 11, '2', 1);
INSERT INTO `opciones` VALUES (32, 12, 'Etduin', 0);
INSERT INTO `opciones` VALUES (33, 12, 'Casiano', 1);
INSERT INTO `opciones` VALUES (34, 12, 'Emmanuel', 1);
INSERT INTO `opciones` VALUES (35, 12, 'Ezau', 1);
INSERT INTO `opciones` VALUES (36, 13, 'defcr', 0);
INSERT INTO `opciones` VALUES (37, 13, 'dsvd', 0);
INSERT INTO `opciones` VALUES (38, 14, '1', 1);
INSERT INTO `opciones` VALUES (39, 14, '2', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `usuario_id` int(4) NOT NULL auto_increment,
  `usuario_nombre` varchar(15) NOT NULL default '',
  `usuario_clave` varchar(32) NOT NULL default '',
  `usuario_email` varchar(50) NOT NULL default '',
  `usuario_freg` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`usuario_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

