-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:8889
-- Tiempo de generación: 19-02-2016 a las 01:05:02
-- Versión del servidor: 5.5.42
-- Versión de PHP: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuelapos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo`
--

CREATE TABLE `administrativo` (
  `id_administrativo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `permiso` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrativo`
--

INSERT INTO `administrativo` (`id_administrativo`, `nombre`, `contrasena`, `permiso`, `email`, `habilitado`) VALUES
(1, 'admin', 'admin', 'A', 'crf_11@hotmail.com', 1),
(2, 'admin2', 'admin2', 'B', 'admin2@hotmail.com', 1),
(3, 'admin3', 'admin3', 'C', 'admin3@hotmail.com', 1),
(4, 'admin4', 'admin4', 'D', 'admin4@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `a_paterno` varchar(45) NOT NULL,
  `a_materno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `mail_alterno` varchar(45) NOT NULL,
  `fecha_nac` date NOT NULL,
  `cel` int(11) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `tipo_sangre` varchar(45) NOT NULL,
  `nac_localidad` varchar(45) DEFAULT NULL,
  `nac_municipio` varchar(45) NOT NULL,
  `nac_estado` varchar(45) NOT NULL,
  `nac_pais` varchar(45) NOT NULL,
  `curp` varchar(45) NOT NULL,
  `estatus` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `id_domicilio` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_alumno`, `nombre`, `a_paterno`, `a_materno`, `email`, `telefono`, `mail_alterno`, `fecha_nac`, `cel`, `sexo`, `tipo_sangre`, `nac_localidad`, `nac_municipio`, `nac_estado`, `nac_pais`, `curp`, `estatus`, `contrasena`, `id_domicilio`) VALUES
(1, 'Carlos', 'Rivera', 'Flores', 'al02626148@tecmilenio.mx', 2147483647, 'crf_11@hotmail.com', '1989-02-11', 2147483647, 'Masculino', '0+', 'Puebla', 'Puebla', 'Puebla', 'México', 'RIFC890211HPLVLR08', 'Pendiente', '123', 0),
(2, 'Gustavo Farid', 'Ramos', 'López', 'al02690728@tecmilenio.mx', 2147483647, 'gfrl@gmail.com', '1991-08-12', 2147483647, 'Masculino', '0-', 'Puebla', 'Puebla', 'Puebla', 'México', 'RIFC890211HPLVLR09', 'Inscrito', '234', 0),
(3, 'Ricardo Alfredo', 'Torres', 'Sánchez', 'al02672773@tecmilenio.mx', 2147483647, 'rats@gmail.com', '1990-02-02', 2147483647, 'Masculino', 'A+', 'Puebla', 'Puebla', 'Puebla', 'México', 'RIFC890211HPLVLR10', 'Inscrito', '345', 0),
(4, 'Andrés', 'Pérez', 'Mauricio', 'al02648122@tecmilenio.mx', 2147483647, 'apm@gmail.com', '1991-08-12', 2147483647, 'Masculino', 'A-', 'Puebla', 'Puebla', 'Puebla', 'México', 'RIFC890211HPLVLR11', 'Inscrito', '456', 0),
(5, 'Andrea', 'Gutierrez', 'Lara', 'al02626149@tecmilenio.mx', 2147483647, 'agl@gmail.com', '1990-05-04', 2147483647, 'Femenino', 'AB+', 'Puebla', 'Puebla', 'Puebla', 'México', 'RIFC890211HPLVLR12', 'Pendiente', '567', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo`
--

CREATE TABLE `archivo` (
  `id_archivo` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `asistencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase_pago`
--

CREATE TABLE `clase_pago` (
  `id_clase_pago` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clase_pago`
--

INSERT INTO `clase_pago` (`id_clase_pago`, `nombre`, `habilitado`) VALUES
(1, 'efectivo', 1),
(2, 'cheque', 1),
(3, 'tarjeta', 1),
(4, 'deposito', 1),
(5, 'transferencia', 1),
(6, 'beca', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `id_domicilio` int(11) NOT NULL,
  `calle` varchar(45) NOT NULL,
  `numero` int(11) NOT NULL,
  `localidad_colonia` varchar(45) NOT NULL,
  `municipio` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `cp` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `domicilio`
--

INSERT INTO `domicilio` (`id_domicilio`, `calle`, `numero`, `localidad_colonia`, `municipio`, `estado`, `cp`) VALUES
(1, 'Monte Alban', 10, 'La loma Zavaleta', 'Puebla', 'Puebla', 72150),
(2, 'Falsa', 11, 'Falsedad', 'Puebla', 'Puebla', 72100),
(3, 'Benito Juarez', 12, 'La paz', 'Puebla', 'Puebla', 72140),
(4, 'Venustiano Carranza', 13, 'Collarin', 'Puebla', 'Puebla', 72120),
(5, 'No existe', 14, 'Margaritas', 'Puebla', 'Puebla', 72110),
(6, 'agua', 15, 'Potrero', 'Puebla', 'Puebla', 72120),
(7, 'Pan', 16, 'La paz', 'Puebla', 'Puebla', 72140);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacio_fisico`
--

CREATE TABLE `espacio_fisico` (
  `id_espacio` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `capacidad` varchar(45) NOT NULL,
  `estatus` varchar(45) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `equipo` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `espacio_fisico`
--

INSERT INTO `espacio_fisico` (`id_espacio`, `nombre`, `habilitado`, `capacidad`, `estatus`, `descripcion`, `equipo`) VALUES
(1, 'Sala de computo', 1, '30', 'Ocupado', 'Sala de computo con 30 computadoras', 'Computadoras'),
(2, 'Aula 101', 1, '40', 'Disponible', 'Aula para 40 alumnos', 'proyector'),
(3, 'Aula 102', 1, '30', 'Disponible', 'Aula para 30 alumnos', 'Proyector'),
(4, 'Aula 103', 1, '20', 'Ocupado', 'Aula para 30 alumnos', 'Poryector'),
(5, 'Aula 104', 1, '30', 'Disponible', 'Aula para 30 alumnos', 'Proyector');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `id_eval` int(11) NOT NULL,
  `oct` varchar(45) NOT NULL,
  `calif` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `fecha` date NOT NULL,
  `id_alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion`
--

CREATE TABLE `formacion` (
  `nombre` int(11) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `id_niveled` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `id_espacio` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `dias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `creditos` int(11) NOT NULL,
  `abreviatura` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre`, `habilitado`, `creditos`, `abreviatura`, `descripcion`) VALUES
(1, 'Español', 1, 6, 'ESP', 'Clase de español'),
(2, 'Matemáticas', 1, 6, 'MATE', 'Clase de matemáticas'),
(3, 'Educación Física', 1, 6, 'EF', 'Clase de eduación física'),
(4, 'Educación para la salud', 1, 6, 'ESALUD', 'Clase de educación para la salud'),
(5, 'Historia', 1, 6, 'HIST', 'Clase de historia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_plan_estudios`
--

CREATE TABLE `materia_plan_estudios` (
  `id_plan` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materia_plan_estudios`
--

INSERT INTO `materia_plan_estudios` (`id_plan`, `id_materia`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 4),
(2, 5),
(3, 2),
(3, 3),
(3, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveled`
--

CREATE TABLE `niveled` (
  `id_niveled` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `aprobatorio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_tipo_pago` int(11) NOT NULL,
  `id_administrativo` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_clase_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_has_archivo`
--

CREATE TABLE `pago_has_archivo` (
  `id_pago` int(11) NOT NULL,
  `id_archivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `id_periodo` int(11) NOT NULL,
  `abreviatura` varchar(45) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`id_periodo`, `abreviatura`, `habilitado`, `fechaInicio`, `fechaFin`) VALUES
(1, 'Ago-Dic', 1, '2015-08-17', '2015-12-11'),
(2, 'Ene-May', 1, '2016-02-08', '2016-05-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_estudios`
--

CREATE TABLE `plan_estudios` (
  `id_plan` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `abreviatura` varchar(45) NOT NULL,
  `fecha_alta` date NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `plan_estudios`
--

INSERT INTO `plan_estudios` (`id_plan`, `nombre`, `abreviatura`, `fecha_alta`, `habilitado`) VALUES
(1, 'Ingeniería en desarrollo de software', 'IDS', '2010-01-01', 1),
(2, 'Ingeniería industrial', 'IIN', '2010-01-01', 1),
(3, 'Licenciatura en administración de empresas', 'LAE', '2010-01-01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_estudios_alumno`
--

CREATE TABLE `plan_estudios_alumno` (
  `id_plan` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `estatus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `plan_estudios_alumno`
--

INSERT INTO `plan_estudios_alumno` (`id_plan`, `id_alumno`, `inicio`, `fin`, `estatus`) VALUES
(1, 1, '2012-07-17', '2016-05-11', 'Inscrito'),
(2, 2, '2012-07-17', '2016-05-11', 'Inscrito'),
(2, 3, '2012-07-17', '2016-05-11', 'Inscrito'),
(3, 4, '2012-07-17', '2016-05-11', 'Inscrito'),
(3, 5, '2012-07-17', '2016-05-11', 'Inscrito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `fecha_nac` date NOT NULL,
  `telefono` int(11) NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `id_domicilio` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `nombre`, `apellido`, `email`, `contrasena`, `fecha_nac`, `telefono`, `habilitado`, `id_domicilio`) VALUES
(1, 'Francisco Manuel', 'Mendez Rosales', 'fmmr@gmail.com', '12345', '1980-01-20', 2147483647, 1, 0),
(2, 'Oscar Adrian', 'Ibarra Palacios', 'oaip@gmail.com', '23456', '1980-01-21', 2147483647, 1, 0),
(3, 'Paola', 'Davila Mora', 'pdm@gmail.com', '34567', '1980-01-22', 2147483647, 1, 0),
(4, 'Mariana', 'Martinez Lopez', 'mml@gmail.com', '45678', '1980-01-23', 2147483647, 1, 0),
(5, 'Farid', 'Zamudio Moreno', 'fzm@gmail.com', '56789', '1980-01-24', 2147483647, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `id_tipo_pago` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` int(11) NOT NULL,
  `habilitado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajo`
--

CREATE TABLE `trabajo` (
  `id_alumno` int(11) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL,
  `puesto` varchar(45) NOT NULL,
  `detalles` varchar(45) NOT NULL,
  `antiguedad` varchar(45) NOT NULL,
  `nombre_trabajo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajo`
--

INSERT INTO `trabajo` (`id_alumno`, `domicilio`, `telefono`, `puesto`, `detalles`, `antiguedad`, `nombre_trabajo`) VALUES
(1, 'Blvrd. Vía Atlixcayotl 3250', 2147483647, 'Desarrollador', 'Encargado de desarrollar nuevoa proyectos', '2 años', 'VW Puebla'),
(2, 'Manuel Espinosa Yglesias 2314', 2147483647, 'Ventas', 'Equipo de ventas', '1 año', 'Origin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  ADD PRIMARY KEY (`id_administrativo`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_alumno`,`id_domicilio`),
  ADD KEY `fk_alumno_domicilio1_idx` (`id_domicilio`);

--
-- Indices de la tabla `archivo`
--
ALTER TABLE `archivo`
  ADD PRIMARY KEY (`id_archivo`,`id_alumno`,`id_categoria`),
  ADD KEY `fk_archivo_alumno1_idx` (`id_alumno`),
  ADD KEY `fk_archivo_categoria1_idx` (`id_categoria`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`asistencia`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`calificacion`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clase_pago`
--
ALTER TABLE `clase_pago`
  ADD PRIMARY KEY (`id_clase_pago`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`,`id_materia`,`id_profesor`,`id_periodo`),
  ADD KEY `fk_curso_materia1_idx` (`id_materia`),
  ADD KEY `fk_curso_profesor1_idx` (`id_profesor`),
  ADD KEY `fk_curso_periodo1_idx` (`id_periodo`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`id_domicilio`);

--
-- Indices de la tabla `espacio_fisico`
--
ALTER TABLE `espacio_fisico`
  ADD PRIMARY KEY (`id_espacio`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`id_eval`,`id_alumno`),
  ADD KEY `fk_evaluacion_alumno1_idx` (`id_alumno`);

--
-- Indices de la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD PRIMARY KEY (`id_niveled`,`id_alumno`),
  ADD KEY `fk_formacion_niveled1_idx` (`id_niveled`),
  ADD KEY `fk_formacion_alumno1_idx` (`id_alumno`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`,`id_espacio`,`id_curso`),
  ADD KEY `fk_horario_espacio_fisico1_idx` (`id_espacio`),
  ADD KEY `fk_horario_curso1_idx` (`id_curso`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `materia_plan_estudios`
--
ALTER TABLE `materia_plan_estudios`
  ADD PRIMARY KEY (`id_plan`,`id_materia`),
  ADD KEY `fk_materia_has_plan_estudios_plan_estudios1_idx` (`id_plan`),
  ADD KEY `fk_materia_has_plan_estudios_materia1_idx` (`id_materia`);

--
-- Indices de la tabla `niveled`
--
ALTER TABLE `niveled`
  ADD PRIMARY KEY (`id_niveled`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id_pago`,`id_tipo_pago`,`id_administrativo`,`id_alumno`,`id_clase_pago`),
  ADD KEY `fk_pago_tipo_pago1_idx` (`id_tipo_pago`),
  ADD KEY `fk_pago_administrativo1_idx` (`id_administrativo`),
  ADD KEY `fk_pago_alumno1_idx` (`id_alumno`),
  ADD KEY `fk_pago_clase_pago1_idx` (`id_clase_pago`);

--
-- Indices de la tabla `pago_has_archivo`
--
ALTER TABLE `pago_has_archivo`
  ADD PRIMARY KEY (`id_pago`,`id_archivo`),
  ADD KEY `fk_pago_has_archivo_archivo1_idx` (`id_archivo`),
  ADD KEY `fk_pago_has_archivo_pago1_idx` (`id_pago`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`id_periodo`);

--
-- Indices de la tabla `plan_estudios`
--
ALTER TABLE `plan_estudios`
  ADD PRIMARY KEY (`id_plan`);

--
-- Indices de la tabla `plan_estudios_alumno`
--
ALTER TABLE `plan_estudios_alumno`
  ADD PRIMARY KEY (`id_plan`,`id_alumno`),
  ADD KEY `fk_plan_estudios_has_alumno_alumno1_idx` (`id_alumno`),
  ADD KEY `fk_plan_estudios_has_alumno_plan_estudios1_idx` (`id_plan`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`,`id_domicilio`),
  ADD KEY `fk_profesor_domicilio1_idx` (`id_domicilio`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipo_pago`);

--
-- Indices de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  ADD PRIMARY KEY (`id_alumno`),
  ADD KEY `fk_trabajo_alumno1_idx` (`id_alumno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  MODIFY `id_administrativo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `archivo`
--
ALTER TABLE `archivo`
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clase_pago`
--
ALTER TABLE `clase_pago`
  MODIFY `id_clase_pago` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `id_domicilio` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `espacio_fisico`
--
ALTER TABLE `espacio_fisico`
  MODIFY `id_espacio` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `id_eval` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `niveled`
--
ALTER TABLE `niveled`
  MODIFY `id_niveled` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `id_periodo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `plan_estudios`
--
ALTER TABLE `plan_estudios`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materia_plan_estudios`
--
ALTER TABLE `materia_plan_estudios`
  ADD CONSTRAINT `fk_materia_has_plan_estudios_materia1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materia_has_plan_estudios_plan_estudios1` FOREIGN KEY (`id_plan`) REFERENCES `plan_estudios` (`id_plan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plan_estudios_alumno`
--
ALTER TABLE `plan_estudios_alumno`
  ADD CONSTRAINT `fk_plan_estudios_has_alumno_plan_estudios1` FOREIGN KEY (`id_plan`) REFERENCES `plan_estudios` (`id_plan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_plan_estudios_has_alumno_alumno1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
