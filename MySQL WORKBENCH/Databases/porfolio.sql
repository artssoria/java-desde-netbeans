

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `porfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `id` int(11) NOT NULL,
  `nombreEmpresa` varchar(45) DEFAULT NULL,
  `esTrabajoActual` tinyint(4) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `persona_id` int(11) NOT NULL,
  `tipo_empleo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiencia_laboral`
--

INSERT INTO `experiencia_laboral` (`id`, `nombreEmpresa`, `esTrabajoActual`, `fechaInicio`, `fechaFin`, `descripcion`, `persona_id`, `tipo_empleo_id`) VALUES
(1, 'infobae', 0, '2015-06-08', '2018-08-09', 'principal redactor de noticias', 1, 2),
(2, 'shumak motos', 0, '2007-06-08', '2015-08-09', 'mecanico oficial de motos', 2, 6),
(3, 'danzas nueva tradicion', 0, '2010-06-08', '2019-08-09', 'profesor de danzas clasicas y modernas', 3, 5),
(4, 'danza de gato', 0, '2000-12-02', '2005-09-02', 'implementacion de danzas tradicionales', 3, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `sobre_mi` varchar(200) DEFAULT NULL,
  `url_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `fechaNac`, `telefono`, `correo`, `sobre_mi`, `url_foto`) VALUES
(1, 'arturo', 'soria', '1995-03-09', '446244', 'artssoria9@gmail.com', 'tecnico en comunicacion social', 'www.foto.com/foto'),
(2, 'ruben', 'soria', '1989-03-09', '4549923', 'locosoria@gmail.com', 'mecanico de motos', 'www.foto.com/foto1'),
(3, 'carlos', 'teran', '1969-03-09', '4123351', 'carlosteran@gmail.com', 'profesor de folklore', 'www.foto.com/foto2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleo`
--

CREATE TABLE `tipo_empleo` (
  `id` int(11) NOT NULL,
  `nombre_tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_empleo`
--

INSERT INTO `tipo_empleo` (`id`, `nombre_tipo`) VALUES
(1, 'informal'),
(2, 'formal'),
(4, 'freelance/emprendimiento'),
(5, 'part time'),
(6, 'full time');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`id`,`tipo_empleo_id`),
  ADD KEY `fk_experiencia_laboral_persona` (`persona_id`),
  ADD KEY `fk_experiencia_laboral_tipo_empleo1` (`tipo_empleo_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_empleo`
--
ALTER TABLE `tipo_empleo`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD CONSTRAINT `fk_experiencia_laboral_persona` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_experiencia_laboral_tipo_empleo1` FOREIGN KEY (`tipo_empleo_id`) REFERENCES `tipo_empleo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
