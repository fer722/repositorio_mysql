-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2025 a las 18:55:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `ID_Cargo` int(11) NOT NULL,
  `Nombre_Cargo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`ID_Cargo`, `Nombre_Cargo`) VALUES
(1, 'Gerente General'),
(2, 'Analista de Sistemas'),
(3, 'Supervisor de Operaciones'),
(4, 'Asistente Administrativo'),
(5, 'Técnico de Mantenimiento'),
(6, 'Jefe de Ventas'),
(7, 'Coordinador de Logística'),
(8, 'Especialista en Recursos Humanos'),
(9, 'Diseñador Gráfico'),
(10, 'Programador Full Stack');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` char(4) NOT NULL,
  `Nombre_Cliente` varchar(255) NOT NULL,
  `Tipo_Cliente` varchar(50) NOT NULL,
  `RUC` varchar(20) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Telefono` varchar(9) NOT NULL,
  `Contacto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_Cliente`, `Nombre_Cliente`, `Tipo_Cliente`, `RUC`, `Direccion`, `Telefono`, `Contacto`) VALUES
('C001', 'Ferreyros S.A.', 'Empresa', '20123456789', 'Jr. Cristóbal de Peralta Norte 820, Surco, Lima', '987654321', 'Luis Pérez'),
('C002', 'Unimaq S.A.', 'Empresa', '20234567890', 'Av. Argentina 5921, Cercado de Lima', '987654322', 'Carlos Gómez'),
('C003', 'MR Maquinarias', 'Empresa', '20345678901', 'Av. Industrial 675, Cercado de Lima', '987654323', 'María Torres'),
('C004', 'Autopartes S.A.', 'Empresa', '20456789012', 'Av. Los Próceres 1234, Callao', '987654324', 'Juan Ramírez'),
('C005', 'Nago Perú', 'Empresa', '20567890123', 'Av. República de Panamá 1122, San Isidro', '987654325', 'Elena Sánchez'),
('C006', 'Maquinarias Gildemeister', 'Empresa', '20678901234', 'Av. Javier Prado 4321, La Molina', '987654326', 'Pedro Alva'),
('C007', 'Fulltec Perú', 'Empresa', '20789012345', 'Av. Canadá 5432, Surquillo', '987654327', 'Carmen López'),
('C008', 'Farmex Perú', 'Empresa', '20890123456', 'Av. Angamos Este 6543, Miraflores', '987654328', 'Ricardo Fernández'),
('C009', 'Industrials Manufacturing Company SAC', 'Empresa', '20901234567', 'Av. Arequipa 7654, Lince', '987654329', 'Sofía Vargas'),
('C010', 'Maquinarias Industriales Universal E.I.R.L.', 'Empresa', '21012345678', 'Av. Benavides 8765, Barranco', '987654330', 'Diego García'),
('C011', 'Maquinarias del Sur S.A.C.', 'Empresa', '21123456789', 'Av. La Marina 9876, San Miguel', '987654331', 'Julio Rojas'),
('C012', 'Repuestos y Servicios Industriales S.A.C.', 'Empresa', '21234567890', 'Av. Universitaria 1098, Pueblo Libre', '987654332', 'Laura Castro'),
('C013', 'Tecnimotors Perú S.A.C.', 'Empresa', '21345678901', 'Av. Túpac Amaru 2198, Comas', '987654333', 'Daniel Herrera'),
('C014', 'Industrias Metálicas Universal S.A.C.', 'Empresa', '21456789012', 'Av. La Paz 3298, Magdalena', '987654334', 'Adriana Díaz'),
('C015', 'Agroindustrial del Norte S.A.C.', 'Empresa', '21567890123', 'Av. Salaverry 4398, Jesús María', '987654335', 'Victor Paredes'),
('C016', 'Corporación Maquinarias y Equipos S.A.C.', 'Empresa', '21678901234', 'Av. Primavera 5498, San Borja', '987654336', 'Mónica Ruiz'),
('C017', 'Servicios y Repuestos Andinos S.A.C.', 'Empresa', '21789012345', 'Av. Caminos del Inca 6598, Surco', '987654337', 'Esteban Ortiz'),
('C018', 'Equipos y Repuestos del Pacífico S.A.C.', 'Empresa', '21890123456', 'Av. Los Alisos 7698, Los Olivos', '987654338', 'Nuria Peña'),
('C019', 'Repuestos y Maquinarias del Perú S.A.C.', 'Empresa', '21901234567', 'Av. San Felipe 8798, San Martín de Porres', '987654339', 'Fernando Vega'),
('C020', 'Maquinarias y Servicios del Sur S.A.C.', 'Empresa', '22012345678', 'Av. Grau 9898, Barranco', '987654340', 'Gabriela Ramos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `ID_Cotizacion` char(5) NOT NULL,
  `ID_Pedido` char(4) NOT NULL,
  `Fecha_Cotizacion` date NOT NULL,
  `Total_Cotizacion` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cotizacion`
--

INSERT INTO `cotizacion` (`ID_Cotizacion`, `ID_Pedido`, `Fecha_Cotizacion`, `Total_Cotizacion`) VALUES
('C0001', 'P001', '2025-04-27', 10000.00),
('C0002', 'P002', '2025-04-27', 3000.00),
('C0003', 'P003', '2025-04-27', 8000.00),
('C0004', 'P004', '2025-04-27', 4500.00),
('C0005', 'P005', '2025-04-27', 1000.00),
('C0006', 'P006', '2025-04-27', 15000.00),
('C0007', 'P007', '2025-04-27', 5000.00),
('C0008', 'P008', '2025-04-27', 3000.00),
('C0009', 'P009', '2025-04-27', 6000.00),
('C0010', 'P010', '2025-04-27', 2000.00),
('C0011', 'P011', '2025-04-27', 5000.00),
('C0012', 'P012', '2025-04-27', 12000.00),
('C0013', 'P013', '2025-04-27', 2000.00),
('C0014', 'P014', '2025-04-27', 3000.00),
('C0015', 'P015', '2025-04-27', 3000.00),
('C0016', 'P016', '2025-04-27', 10000.00),
('C0017', 'P017', '2025-04-27', 15000.00),
('C0018', 'P018', '2025-04-27', 4000.00),
('C0019', 'P019', '2025-04-27', 4500.00),
('C0020', 'P020', '2025-04-27', 1000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `ID_Detalle_Factura` char(6) NOT NULL,
  `ID_Factura` char(5) NOT NULL,
  `ID_Pedido` char(4) NOT NULL,
  `Total_Detalle` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`ID_Detalle_Factura`, `ID_Factura`, `ID_Pedido`, `Total_Detalle`) VALUES
('D00001', 'F0001', 'P001', 1250.50),
('D00002', 'F0002', 'P002', 850.75),
('D00003', 'F0003', 'P003', 1450.00),
('D00004', 'F0004', 'P004', 1875.30),
('D00005', 'F0005', 'P005', 920.45),
('D00006', 'F0006', 'P006', 1560.75),
('D00007', 'F0007', 'P007', 2300.50),
('D00008', 'F0008', 'P008', 1280.00),
('D00009', 'F0009', 'P009', 1435.10),
('D00010', 'F0010', 'P010', 900.65),
('D00011', 'F0011', 'P011', 1980.25),
('D00012', 'F0012', 'P012', 1650.90),
('D00013', 'F0013', 'P013', 1100.45),
('D00014', 'F0014', 'P014', 1870.85),
('D00015', 'F0015', 'P015', 1325.60),
('D00016', 'F0016', 'P016', 2080.30),
('D00017', 'F0017', 'P017', 975.90),
('D00018', 'F0018', 'P018', 1455.20),
('D00019', 'F0019', 'P019', 2300.00),
('D00020', 'F0020', 'P020', 1950.75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `ID_Detalle_Pedido` char(7) NOT NULL,
  `ID_Pedido` char(4) NOT NULL,
  `ID_Servicio` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL,
  `Total_Detalle` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`ID_Detalle_Pedido`, `ID_Pedido`, `ID_Servicio`, `Cantidad`, `Precio_Unitario`, `Total_Detalle`) VALUES
('DP00001', 'P001', 1, 2, 5000.00, 10000.00),
('DP00002', 'P002', 2, 1, 3000.00, 3000.00),
('DP00003', 'P003', 3, 4, 2000.00, 8000.00),
('DP00004', 'P004', 4, 3, 1500.00, 4500.00),
('DP00005', 'P005', 5, 1, 1000.00, 1000.00),
('DP00006', 'P006', 2, 5, 3000.00, 15000.00),
('DP00007', 'P007', 1, 1, 5000.00, 5000.00),
('DP00008', 'P008', 4, 2, 1500.00, 3000.00),
('DP00009', 'P009', 3, 3, 2000.00, 6000.00),
('DP00010', 'P010', 5, 2, 1000.00, 2000.00),
('DP00011', 'P011', 1, 1, 5000.00, 5000.00),
('DP00012', 'P012', 2, 4, 3000.00, 12000.00),
('DP00013', 'P013', 3, 1, 2000.00, 2000.00),
('DP00014', 'P014', 4, 2, 1500.00, 3000.00),
('DP00015', 'P015', 5, 3, 1000.00, 3000.00),
('DP00016', 'P016', 1, 2, 5000.00, 10000.00),
('DP00017', 'P017', 2, 5, 3000.00, 15000.00),
('DP00018', 'P018', 3, 2, 2000.00, 4000.00),
('DP00019', 'P019', 4, 3, 1500.00, 4500.00),
('DP00020', 'P020', 5, 1, 1000.00, 1000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID_Empleado` char(7) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `ID_Cargo` int(11) NOT NULL,
  `Salario` decimal(10,2) NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `ID_Sucursal` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ID_Empleado`, `Nombre`, `ID_Cargo`, `Salario`, `Fecha_Ingreso`, `ID_Sucursal`) VALUES
('EM00006', 'Sofía Rivera', 6, 4500.00, '2021-07-12', 'S001'),
('EM00007', 'Ricardo Vargas', 7, 3200.00, '2022-02-25', 'S001'),
('EM00008', 'Elena Castro', 8, 3700.00, '2023-08-15', 'S001'),
('EM00009', 'Jorge Torres', 9, 3300.00, '2020-11-30', 'S001'),
('EM00010', 'Diana Morales', 10, 3900.00, '2021-03-21', 'S001'),
('EM00011', 'Fernando Rojas', 3, 4100.00, '2019-05-18', 'S001'),
('EM00012', 'Valeria Peña', 4, 2600.00, '2023-09-10', 'S001'),
('EM00013', 'Adrián Quispe', 5, 3100.00, '2021-06-05', 'S001'),
('EM00014', 'Laura Ramírez', 2, 2850.00, '2022-01-14', 'S001'),
('EM00015', 'Héctor Salinas', 1, 3600.00, '2020-04-07', 'S001'),
('EM00016', 'Gabriela Silva', 8, 3650.00, '2022-12-12', 'S001'),
('EM00017', 'Julio Medina', 6, 4550.00, '2021-08-22', 'S001'),
('EM00018', 'Patricia Reyes', 7, 3350.00, '2023-03-03', 'S001'),
('EM00019', 'Daniel Álvarez', 10, 3950.00, '2020-10-25', 'S001'),
('EM00020', 'Liliana Herrera', 9, 3400.00, '2019-09-30', 'S001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `ID_Empresa` char(5) NOT NULL,
  `Nombre_Empresa` varchar(255) NOT NULL,
  `RUC` varchar(20) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Contacto` varchar(255) NOT NULL,
  `Correo_Electronico` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`ID_Empresa`, `Nombre_Empresa`, `RUC`, `Direccion`, `Contacto`, `Correo_Electronico`) VALUES
('E0001', 'Inter Hnos. Borda E.I.R.L.', '20567891234', 'Av. Jose Santos Chocano, Carmen de la Legua – Reynoso, Callao', '940630975', 'ventas@interhnos.pe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_Factura` char(5) NOT NULL,
  `ID_Cliente` char(4) NOT NULL,
  `Fecha_Factura` date NOT NULL,
  `Total_Factura` decimal(10,2) NOT NULL,
  `ID_Pedido` char(4) NOT NULL,
  `ID_Sucursal` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`ID_Factura`, `ID_Cliente`, `Fecha_Factura`, `Total_Factura`, `ID_Pedido`, `ID_Sucursal`) VALUES
('F0001', 'C002', '2023-01-16', 1250.50, 'P001', 'S001'),
('F0002', 'C005', '2023-03-11', 850.75, 'P002', 'S001'),
('F0003', 'C001', '2023-05-21', 1450.00, 'P003', 'S001'),
('F0004', 'C007', '2023-07-26', 1875.30, 'P004', 'S001'),
('F0005', 'C003', '2023-09-06', 920.45, 'P005', 'S001'),
('F0006', 'C006', '2023-11-13', 1560.75, 'P006', 'S001'),
('F0007', 'C010', '2024-02-19', 2300.50, 'P007', 'S001'),
('F0008', 'C004', '2024-04-23', 1280.00, 'P008', 'S001'),
('F0009', 'C009', '2024-06-08', 1435.10, 'P009', 'S001'),
('F0010', 'C008', '2024-08-15', 900.65, 'P010', 'S001'),
('F0011', 'C011', '2024-10-20', 1980.25, 'P011', 'S001'),
('F0012', 'C012', '2024-12-26', 1650.90, 'P012', 'S001'),
('F0013', 'C015', '2025-01-31', 1100.45, 'P013', 'S001'),
('F0014', 'C014', '2025-03-09', 1870.85, 'P014', 'S001'),
('F0015', 'C013', '2025-05-17', 1325.60, 'P015', 'S001'),
('F0016', 'C017', '2025-07-23', 2080.30, 'P016', 'S001'),
('F0017', 'C018', '2025-09-11', 975.90, 'P017', 'S001'),
('F0018', 'C016', '2025-11-16', 1455.20, 'P018', 'S001'),
('F0019', 'C020', '2025-12-06', 2300.00, 'P019', 'S001'),
('F0020', 'C019', '2025-12-21', 1950.75, 'P020', 'S001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `ID_Marca` int(11) NOT NULL,
  `Nombre_Marca` varchar(255) NOT NULL,
  `Descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`ID_Marca`, `Nombre_Marca`, `Descripcion`) VALUES
(1, 'Inter Hnos. Borda', 'Fabricante exclusivo de maquinaria y piezas industriales de alta calidad.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `ID_Material` char(3) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` text NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `ID_Proveedor` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`ID_Material`, `Nombre`, `Descripcion`, `Precio`, `ID_Proveedor`) VALUES
('M01', 'Acero Inoxidable', 'Resistente a la corrosión, ideal para ambientes industriales.', 150.00, 'PV00001'),
('M02', 'Plástico Reforzado', 'Material ligero y duradero para usos industriales.', 80.00, 'PV00002'),
('M03', 'Aluminio', 'Ligero y fuerte, excelente para maquinaria especializada.', 200.00, 'PV00003'),
('M04', 'Caucho Industrial', 'Material flexible y resistente a altas temperaturas.', 100.00, 'PV00004'),
('M05', 'Fibra de Vidrio', 'Material versátil utilizado para piezas mecánicas.', 120.00, 'PV00005'),
('M06', 'Acero al Carbono', 'Material robusto utilizado en estructuras mecánicas.', 140.00, 'PV00006'),
('M07', 'Polímero Técnico', 'Material de alta durabilidad y maleabilidad.', 95.00, 'PV00007'),
('M08', 'Cerámica Técnica', 'Alta resistencia a impactos y desgaste.', 180.00, 'PV00008'),
('M09', 'Aleación de Titanio', 'Muy resistente y ligero para piezas avanzadas.', 250.00, 'PV00009'),
('M10', 'Fibras Sintéticas', 'Utilizadas para componentes industriales ligeros.', 110.00, 'PV00010'),
('M11', 'Hierro Fundido', 'Material utilizado en partes de maquinaria pesada.', 130.00, 'PV00001'),
('M12', 'Plástico ABS', 'Ligero y resistente a impactos.', 75.00, 'PV00002'),
('M13', 'Latón', 'Aleación de cobre y zinc, ideal para piezas decorativas.', 155.00, 'PV00003'),
('M14', 'Silicona Industrial', 'Material flexible para sellados y juntas.', 85.00, 'PV00004'),
('M15', 'Polietileno', 'Usado en piezas plásticas de alta densidad.', 70.00, 'PV00005'),
('M16', 'Acero Galvanizado', 'Protección contra la corrosión en ambientes exteriores.', 160.00, 'PV00006'),
('M17', 'Nylon Técnico', 'Material versátil para engranajes y poleas.', 90.00, 'PV00007'),
('M18', 'Resina Epóxica', 'Utilizada para recubrimientos y adhesivos industriales.', 125.00, 'PV00008'),
('M19', 'Teflón', 'Material con alta resistencia al calor y químicos.', 200.00, 'PV00009'),
('M20', 'Kevlar', 'Material resistente a impactos para aplicaciones avanzadas.', 300.00, 'PV00010');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `ID_Pedido` char(4) NOT NULL,
  `ID_Cliente` char(4) NOT NULL,
  `Fecha_Pedido` date NOT NULL,
  `ID_Sucursal` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`ID_Pedido`, `ID_Cliente`, `Fecha_Pedido`, `ID_Sucursal`) VALUES
('P001', 'C002', '2023-01-15', 'S001'),
('P002', 'C005', '2023-03-10', 'S001'),
('P003', 'C001', '2023-05-20', 'S001'),
('P004', 'C007', '2023-07-25', 'S001'),
('P005', 'C003', '2023-09-05', 'S001'),
('P006', 'C006', '2023-11-12', 'S001'),
('P007', 'C010', '2024-02-18', 'S001'),
('P008', 'C004', '2024-04-22', 'S001'),
('P009', 'C009', '2024-06-07', 'S001'),
('P010', 'C008', '2024-08-14', 'S001'),
('P011', 'C011', '2024-10-19', 'S001'),
('P012', 'C012', '2024-12-25', 'S001'),
('P013', 'C015', '2025-01-30', 'S001'),
('P014', 'C014', '2025-03-08', 'S001'),
('P015', 'C013', '2025-05-16', 'S001'),
('P016', 'C017', '2025-07-22', 'S001'),
('P017', 'C018', '2025-09-10', 'S001'),
('P018', 'C016', '2025-11-15', 'S001'),
('P019', 'C020', '2025-12-05', 'S001'),
('P020', 'C019', '2025-12-20', 'S001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza`
--

CREATE TABLE `pieza` (
  `ID_Pieza` char(7) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Descripcion` text NOT NULL,
  `Tipo_Pieza` varchar(50) NOT NULL,
  `ID_Material` char(3) NOT NULL,
  `ID_Marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pieza`
--

INSERT INTO `pieza` (`ID_Pieza`, `Nombre`, `Descripcion`, `Tipo_Pieza`, `ID_Material`, `ID_Marca`) VALUES
('PZ00001', 'Engranaje', 'Pieza mecánica utilizada en sistemas de transmisión.', 'Mecánica', 'M01', 1),
('PZ00002', 'Carcasa', 'Estructura que protege componentes internos.', 'Estructura', 'M02', 1),
('PZ00003', 'Rodamiento', 'Permite el movimiento giratorio de piezas.', 'Movimiento', 'M03', 1),
('PZ00004', 'Válvula', 'Controla el flujo de líquidos o gases.', 'Hidráulica', 'M04', 1),
('PZ00005', 'Tornillo', 'Elemento de fijación mecánica.', 'Fijación', 'M05', 1),
('PZ00006', 'Polea', 'Usada en sistemas de transmisión por correa.', 'Mecánica', 'M06', 1),
('PZ00007', 'Retén', 'Sella y evita fugas en sistemas mecánicos.', 'Sello', 'M07', 1),
('PZ00008', 'Faja', 'Transmite fuerza entre poleas.', 'Transmisión', 'M08', 1),
('PZ00009', 'Junta', 'Elemento flexible para sellado de maquinaria.', 'Sello', 'M09', 1),
('PZ00010', 'Manguera', 'Conduce líquidos o gases en sistemas industriales.', 'Conducción', 'M10', 1),
('PZ00011', 'Pistón', 'Componente móvil en cilindros hidráulicos.', 'Hidráulica', 'M11', 1),
('PZ00012', 'Caja de Engranajes', 'Sistema cerrado que contiene engranajes.', 'Mecánica', 'M12', 1),
('PZ00013', 'Disco', 'Componente utilizado en sistemas de frenado.', 'Frenado', 'M13', 1),
('PZ00014', 'Arandela', 'Se coloca entre piezas para distribuir cargas.', 'Fijación', 'M14', 1),
('PZ00015', 'Soporte', 'Proporciona estabilidad a maquinaria.', 'Estructura', 'M15', 1),
('PZ00016', 'Cilindro', 'Actúa como contenedor en sistemas neumáticos.', 'Neumática', 'M16', 1),
('PZ00017', 'Base', 'Soporte estructural para maquinaria.', 'Estructura', 'M17', 1),
('PZ00018', 'Guía Lineal', 'Permite movimiento preciso en maquinaria.', 'Movimiento', 'M18', 1),
('PZ00019', 'Eje', 'Transmite fuerza y movimiento rotacional.', 'Mecánica', 'M19', 1),
('PZ00020', 'Filtro', 'Purifica líquidos o gases en sistemas mecánicos.', 'Filtración', 'M20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `ID_Proveedor` char(7) NOT NULL,
  `ID_Empresa` char(5) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Tipo_Proveedor` varchar(50) NOT NULL,
  `RUC` varchar(20) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Contacto` varchar(255) NOT NULL,
  `Correo_Electronico` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`ID_Proveedor`, `ID_Empresa`, `Nombre`, `Tipo_Proveedor`, `RUC`, `Direccion`, `Contacto`, `Correo_Electronico`) VALUES
('PV00001', 'E0001', 'Suministros Industriales S.A.', 'Material Industrial', '20198765432', 'Av. Las Torres 123, Lima', '987654321', 'contacto@suministrosindustriales.com'),
('PV00002', 'E0001', 'Metalúrgicos del Sur S.A.C.', 'Material Industrial', '20287654321', 'Jr. Los Aceros 456, Arequipa', '987654322', 'info@metalurgicosdelsur.com'),
('PV00003', 'E0001', 'Plásticos Industriales E.I.R.L.', 'Material Industrial', '20376543210', 'Av. Los Plásticos 789, Trujillo', '987654323', 'ventas@plasticosindustriales.com'),
('PV00004', 'E0001', 'Fábrica de Materiales Andinos', 'Material Industrial', '20465432109', 'Calle Las Industrias 112, Cusco', '987654324', 'contacto@materialesandinos.com'),
('PV00005', 'E0001', 'Proveedora de Aleaciones S.A.C.', 'Material Industrial', '20554321098', 'Jr. Las Aleaciones 345, Chiclayo', '987654325', 'ventas@aleacionessac.com'),
('PV00006', 'E0001', 'Cauchos Técnicos del Norte', 'Material Industrial', '20643210987', 'Av. Del Caucho 678, Piura', '987654326', 'info@cauchotecnico.com'),
('PV00007', 'E0001', 'Fibra de Vidrio Perú S.A.', 'Material Industrial', '20732109876', 'Av. Fibras 910, Iquitos', '987654327', 'ventas@fibradevidrio.com'),
('PV00008', 'E0001', 'Cerámicos Industriales S.A.C.', 'Material Industrial', '20821098765', 'Calle Cerámicos 654, Tacna', '987654328', 'contacto@ceramicosindustriales.com'),
('PV00009', 'E0001', 'Polímeros Avanzados E.I.R.L.', 'Material Industrial', '20910987654', 'Av. Polímeros 321, Huancayo', '987654329', 'info@polimerosavanzados.com'),
('PV00010', 'E0001', 'Metales Especiales S.A.C.', 'Material Industrial', '21009876543', 'Jr. Los Metales 987, Callao', '987654330', 'ventas@metalesespeciales.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `ID_Servicio` int(11) NOT NULL,
  `Tipo_Servicio` varchar(255) NOT NULL,
  `Descripcion` text NOT NULL,
  `Precio_Servicio` decimal(10,2) NOT NULL,
  `Tiempo_Estimado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`ID_Servicio`, `Tipo_Servicio`, `Descripcion`, `Precio_Servicio`, `Tiempo_Estimado`) VALUES
(1, 'Diseño de Equipos', 'Diseño de equipos para la industria metalmecánica y afines.', 5000.00, '15 días'),
(2, 'Fabricación de Piezas', 'Fabricación y recuperación de piezas especiales para la industria.', 3000.00, '15 días'),
(3, 'Suministro de Repuestos', 'Suministro de repuestos para la industria metalmecánica.', 2000.00, '20 días'),
(4, 'Mantenimiento Preventivo', 'Mantenimiento y ajuste de equipos industriales.', 1500.00, '9 días'),
(5, 'Análisis Técnico', 'Evaluación técnica detallada de maquinarias y piezas.', 1000.00, '3 días');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `ID_Sucursal` char(4) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `ID_Empresa` char(5) NOT NULL,
  `Contacto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`ID_Sucursal`, `Nombre`, `Direccion`, `ID_Empresa`, `Contacto`) VALUES
('S001', 'Sucursal Principal', 'Av. Jose Santos Chocano, Carmen de la Legua – Reynoso, Callao', 'E0001', '940630975');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `Usuario` varchar(100) NOT NULL,
  `Contraseña` varchar(255) NOT NULL,
  `ID_Empleado` char(7) NOT NULL,
  `ID_Cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Usuario`, `Usuario`, `Contraseña`, `ID_Empleado`, `ID_Cargo`) VALUES
(1, 'sofia.rivera', 'password123', 'EM00006', 6),
(2, 'ricardo.vargas', 'password456', 'EM00007', 7),
(3, 'elena.castro', 'password789', 'EM00008', 8),
(4, 'jorge.torres', 'password321', 'EM00009', 9),
(5, 'diana.morales', 'password654', 'EM00010', 10),
(6, 'fernando.rojas', 'password987', 'EM00011', 3),
(7, 'valeria.peña', 'password112', 'EM00012', 4),
(8, 'adrian.quispe', 'password334', 'EM00013', 5),
(9, 'laura.ramirez', 'password998', 'EM00014', 2),
(10, 'hector.salinas', 'password555', 'EM00015', 1),
(11, 'gabriela.silva', 'password667', 'EM00016', 8),
(12, 'julio.medina', 'password778', 'EM00017', 6),
(13, 'patricia.reyes', 'password889', 'EM00018', 7),
(14, 'daniel.alvarez', 'password990', 'EM00019', 10),
(15, 'liliana.herrera', 'password111', 'EM00020', 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`ID_Cargo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`ID_Cotizacion`),
  ADD KEY `ID_Pedido` (`ID_Pedido`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`ID_Detalle_Factura`),
  ADD KEY `ID_Factura` (`ID_Factura`),
  ADD KEY `ID_Pedido` (`ID_Pedido`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`ID_Detalle_Pedido`),
  ADD KEY `ID_Pedido` (`ID_Pedido`),
  ADD KEY `ID_Servicio` (`ID_Servicio`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID_Empleado`),
  ADD KEY `ID_Sucursal` (`ID_Sucursal`),
  ADD KEY `ID_Cargo` (`ID_Cargo`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`ID_Empresa`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_Factura`),
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Pedido` (`ID_Pedido`),
  ADD KEY `ID_Sucursal` (`ID_Sucursal`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`ID_Marca`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ID_Material`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_Pedido`),
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Sucursal` (`ID_Sucursal`);

--
-- Indices de la tabla `pieza`
--
ALTER TABLE `pieza`
  ADD PRIMARY KEY (`ID_Pieza`),
  ADD KEY `ID_Material` (`ID_Material`),
  ADD KEY `ID_Marca` (`ID_Marca`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`ID_Proveedor`),
  ADD KEY `ID_Empresa` (`ID_Empresa`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`ID_Servicio`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`ID_Sucursal`),
  ADD KEY `ID_Empresa` (`ID_Empresa`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD UNIQUE KEY `Usuario` (`Usuario`),
  ADD KEY `ID_Empleado` (`ID_Empleado`),
  ADD KEY `ID_Cargo` (`ID_Cargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `ID_Cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `ID_Marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `ID_Servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD CONSTRAINT `cotizacion_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`);

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`ID_Factura`) REFERENCES `factura` (`ID_Factura`),
  ADD CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`ID_Servicio`) REFERENCES `servicio` (`ID_Servicio`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`ID_Cargo`) REFERENCES `cargo` (`ID_Cargo`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`),
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`);

--
-- Filtros para la tabla `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedor` (`ID_Proveedor`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`);

--
-- Filtros para la tabla `pieza`
--
ALTER TABLE `pieza`
  ADD CONSTRAINT `pieza_ibfk_1` FOREIGN KEY (`ID_Material`) REFERENCES `material` (`ID_Material`),
  ADD CONSTRAINT `pieza_ibfk_2` FOREIGN KEY (`ID_Marca`) REFERENCES `marca` (`ID_Marca`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`ID_Empresa`) REFERENCES `empresa` (`ID_Empresa`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`ID_Empresa`) REFERENCES `empresa` (`ID_Empresa`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleado` (`ID_Empleado`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`ID_Cargo`) REFERENCES `cargo` (`ID_Cargo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
