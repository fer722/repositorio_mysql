-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_empresa
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `ID_Cargo` int NOT NULL AUTO_INCREMENT,
  `Nombre_Cargo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Gerente General'),(2,'Analista de Sistemas'),(3,'Supervisor de Operaciones'),(4,'Asistente Administrativo'),(5,'Técnico de Mantenimiento'),(6,'Jefe de Ventas'),(7,'Coordinador de Logística'),(8,'Especialista en Recursos Humanos'),(9,'Diseñador Gráfico'),(10,'Programador Full Stack');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_Cliente` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre_Cliente` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipo_Cliente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `RUC` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Telefono` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `Contacto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('C001','Ferreyros S.A.','Empresa','20123456789','Jr. Cristóbal de Peralta Norte 820, Surco, Lima','987654321','Luis Pérez'),('C002','Unimaq S.A.','Empresa','20234567890','Av. Argentina 5921, Cercado de Lima','987654322','Carlos Gómez'),('C003','MR Maquinarias','Empresa','20345678901','Av. Industrial 675, Cercado de Lima','987654323','María Torres'),('C004','Autopartes S.A.','Empresa','20456789012','Av. Los Próceres 1234, Callao','987654324','Juan Ramírez'),('C005','Nago Perú','Empresa','20567890123','Av. República de Panamá 1122, San Isidro','987654325','Elena Sánchez'),('C006','Maquinarias Gildemeister','Empresa','20678901234','Av. Javier Prado 4321, La Molina','987654326','Pedro Alva'),('C007','Fulltec Perú','Empresa','20789012345','Av. Canadá 5432, Surquillo','987654327','Carmen López'),('C008','Farmex Perú','Empresa','20890123456','Av. Angamos Este 6543, Miraflores','987654328','Ricardo Fernández'),('C009','Industrials Manufacturing Company SAC','Empresa','20901234567','Av. Arequipa 7654, Lince','987654329','Sofía Vargas'),('C010','Maquinarias Industriales Universal E.I.R.L.','Empresa','21012345678','Av. Benavides 8765, Barranco','987654330','Diego García'),('C011','Maquinarias del Sur S.A.C.','Empresa','21123456789','Av. La Marina 9876, San Miguel','987654331','Julio Rojas'),('C012','Repuestos y Servicios Industriales S.A.C.','Empresa','21234567890','Av. Universitaria 1098, Pueblo Libre','987654332','Laura Castro'),('C013','Tecnimotors Perú S.A.C.','Empresa','21345678901','Av. Túpac Amaru 2198, Comas','987654333','Daniel Herrera'),('C014','Industrias Metálicas Universal S.A.C.','Empresa','21456789012','Av. La Paz 3298, Magdalena','987654334','Adriana Díaz'),('C015','Agroindustrial del Norte S.A.C.','Empresa','21567890123','Av. Salaverry 4398, Jesús María','987654335','Victor Paredes'),('C016','Corporación Maquinarias y Equipos S.A.C.','Empresa','21678901234','Av. Primavera 5498, San Borja','987654336','Mónica Ruiz'),('C017','Servicios y Repuestos Andinos S.A.C.','Empresa','21789012345','Av. Caminos del Inca 6598, Surco','987654337','Esteban Ortiz'),('C018','Equipos y Repuestos del Pacífico S.A.C.','Empresa','21890123456','Av. Los Alisos 7698, Los Olivos','987654338','Nuria Peña'),('C019','Repuestos y Maquinarias del Perú S.A.C.','Empresa','21901234567','Av. San Felipe 8798, San Martín de Porres','987654339','Fernando Vega'),('C020','Maquinarias y Servicios del Sur S.A.C.','Empresa','22012345678','Av. Grau 9898, Barranco','987654340','Gabriela Ramos');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion` (
  `ID_Cotizacion` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Pedido` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `Fecha_Cotizacion` date NOT NULL,
  `Total_Cotizacion` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_Cotizacion`),
  KEY `ID_Pedido` (`ID_Pedido`),
  CONSTRAINT `cotizacion_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacion` VALUES ('C0001','P001','2025-04-27',10000.00),('C0002','P002','2025-04-27',3000.00),('C0003','P003','2025-04-27',8000.00),('C0004','P004','2025-04-27',4500.00),('C0005','P005','2025-04-27',1000.00),('C0006','P006','2025-04-27',15000.00),('C0007','P007','2025-04-27',5000.00),('C0008','P008','2025-04-27',3000.00),('C0009','P009','2025-04-27',6000.00),('C0010','P010','2025-04-27',2000.00),('C0011','P011','2025-04-27',5000.00),('C0012','P012','2025-04-27',12000.00),('C0013','P013','2025-04-27',2000.00),('C0014','P014','2025-04-27',3000.00),('C0015','P015','2025-04-27',3000.00),('C0016','P016','2025-04-27',10000.00),('C0017','P017','2025-04-27',15000.00),('C0018','P018','2025-04-27',4000.00),('C0019','P019','2025-04-27',4500.00),('C0020','P020','2025-04-27',1000.00);
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura` (
  `ID_Detalle_Factura` char(6) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Factura` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Pedido` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `Total_Detalle` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_Detalle_Factura`),
  KEY `ID_Factura` (`ID_Factura`),
  KEY `ID_Pedido` (`ID_Pedido`),
  CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`ID_Factura`) REFERENCES `factura` (`ID_Factura`),
  CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
INSERT INTO `detalle_factura` VALUES ('D00001','F0001','P001',1250.50),('D00002','F0002','P002',850.75),('D00003','F0003','P003',1450.00),('D00004','F0004','P004',1875.30),('D00005','F0005','P005',920.45),('D00006','F0006','P006',1560.75),('D00007','F0007','P007',2300.50),('D00008','F0008','P008',1280.00),('D00009','F0009','P009',1435.10),('D00010','F0010','P010',900.65),('D00011','F0011','P011',1980.25),('D00012','F0012','P012',1650.90),('D00013','F0013','P013',1100.45),('D00014','F0014','P014',1870.85),('D00015','F0015','P015',1325.60),('D00016','F0016','P016',2080.30),('D00017','F0017','P017',975.90),('D00018','F0018','P018',1455.20),('D00019','F0019','P019',2300.00),('D00020','F0020','P020',1950.75);
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `ID_Detalle_Pedido` char(7) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Pedido` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Servicio` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL,
  `Total_Detalle` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_Detalle_Pedido`),
  KEY `ID_Pedido` (`ID_Pedido`),
  KEY `ID_Servicio` (`ID_Servicio`),
  CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`),
  CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`ID_Servicio`) REFERENCES `servicio` (`ID_Servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES ('DP00001','P001',1,2,5000.00,10000.00),('DP00002','P002',2,1,3000.00,3000.00),('DP00003','P003',3,4,2000.00,8000.00),('DP00004','P004',4,3,1500.00,4500.00),('DP00005','P005',5,1,1000.00,1000.00),('DP00006','P006',2,5,3000.00,15000.00),('DP00007','P007',1,1,5000.00,5000.00),('DP00008','P008',4,2,1500.00,3000.00),('DP00009','P009',3,3,2000.00,6000.00),('DP00010','P010',5,2,1000.00,2000.00),('DP00011','P011',1,1,5000.00,5000.00),('DP00012','P012',2,4,3000.00,12000.00),('DP00013','P013',3,1,2000.00,2000.00),('DP00014','P014',4,2,1500.00,3000.00),('DP00015','P015',5,3,1000.00,3000.00),('DP00016','P016',1,2,5000.00,10000.00),('DP00017','P017',2,5,3000.00,15000.00),('DP00018','P018',3,2,2000.00,4000.00),('DP00019','P019',4,3,1500.00,4500.00),('DP00020','P020',5,1,1000.00,1000.00);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `ID_Empleado` char(7) COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Cargo` int NOT NULL,
  `Salario` decimal(10,2) NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `ID_Sucursal` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Empleado`),
  KEY `ID_Sucursal` (`ID_Sucursal`),
  KEY `ID_Cargo` (`ID_Cargo`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`ID_Cargo`) REFERENCES `cargo` (`ID_Cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('EM00006','Sofía Rivera',6,4500.00,'2021-07-12','S001'),('EM00007','Ricardo Vargas',7,3200.00,'2022-02-25','S001'),('EM00008','Elena Castro',8,3700.00,'2023-08-15','S001'),('EM00009','Jorge Torres',9,3300.00,'2020-11-30','S001'),('EM00010','Diana Morales',10,3900.00,'2021-03-21','S001'),('EM00011','Fernando Rojas',3,4100.00,'2019-05-18','S001'),('EM00012','Valeria Peña',4,2600.00,'2023-09-10','S001'),('EM00013','Adrián Quispe',5,3100.00,'2021-06-05','S001'),('EM00014','Laura Ramírez',2,2850.00,'2022-01-14','S001'),('EM00015','Héctor Salinas',1,3600.00,'2020-04-07','S001'),('EM00016','Gabriela Silva',8,3650.00,'2022-12-12','S001'),('EM00017','Julio Medina',6,4550.00,'2021-08-22','S001'),('EM00018','Patricia Reyes',7,3350.00,'2023-03-03','S001'),('EM00019','Daniel Álvarez',10,3950.00,'2020-10-25','S001'),('EM00020','Liliana Herrera',9,3400.00,'2019-09-30','S001');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `ID_Empresa` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre_Empresa` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `RUC` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Contacto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Correo_Electronico` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('E0001','Inter Hnos. Borda E.I.R.L.','20567891234','Av. Jose Santos Chocano, Carmen de la Legua – Reynoso, Callao','940630975','ventas@interhnos.pe');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `ID_Factura` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Cliente` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `Fecha_Factura` date NOT NULL,
  `Total_Factura` decimal(10,2) NOT NULL,
  `ID_Pedido` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Sucursal` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Factura`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Pedido` (`ID_Pedido`),
  KEY `ID_Sucursal` (`ID_Sucursal`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedido` (`ID_Pedido`),
  CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES ('F0001','C002','2023-01-16',1250.50,'P001','S001'),('F0002','C005','2023-03-11',850.75,'P002','S001'),('F0003','C001','2023-05-21',1450.00,'P003','S001'),('F0004','C007','2023-07-26',1875.30,'P004','S001'),('F0005','C003','2023-09-06',920.45,'P005','S001'),('F0006','C006','2023-11-13',1560.75,'P006','S001'),('F0007','C010','2024-02-19',2300.50,'P007','S001'),('F0008','C004','2024-04-23',1280.00,'P008','S001'),('F0009','C009','2024-06-08',1435.10,'P009','S001'),('F0010','C008','2024-08-15',900.65,'P010','S001'),('F0011','C011','2024-10-20',1980.25,'P011','S001'),('F0012','C012','2024-12-26',1650.90,'P012','S001'),('F0013','C015','2025-01-31',1100.45,'P013','S001'),('F0014','C014','2025-03-09',1870.85,'P014','S001'),('F0015','C013','2025-05-17',1325.60,'P015','S001'),('F0016','C017','2025-07-23',2080.30,'P016','S001'),('F0017','C018','2025-09-11',975.90,'P017','S001'),('F0018','C016','2025-11-16',1455.20,'P018','S001'),('F0019','C020','2025-12-06',2300.00,'P019','S001'),('F0020','C019','2025-12-21',1950.75,'P020','S001');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `ID_Marca` int NOT NULL AUTO_INCREMENT,
  `Nombre_Marca` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Descripcion` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Marca`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Inter Hnos. Borda','Fabricante exclusivo de maquinaria y piezas industriales de alta calidad.');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `ID_Material` char(3) COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Descripcion` text COLLATE utf8mb4_general_ci NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `ID_Proveedor` char(7) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Material`),
  KEY `ID_Proveedor` (`ID_Proveedor`),
  CONSTRAINT `material_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedor` (`ID_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES ('M01','Acero Inoxidable','Resistente a la corrosión, ideal para ambientes industriales.',150.00,'PV00001'),('M02','Plástico Reforzado','Material ligero y duradero para usos industriales.',80.00,'PV00002'),('M03','Aluminio','Ligero y fuerte, excelente para maquinaria especializada.',200.00,'PV00003'),('M04','Caucho Industrial','Material flexible y resistente a altas temperaturas.',100.00,'PV00004'),('M05','Fibra de Vidrio','Material versátil utilizado para piezas mecánicas.',120.00,'PV00005'),('M06','Acero al Carbono','Material robusto utilizado en estructuras mecánicas.',140.00,'PV00006'),('M07','Polímero Técnico','Material de alta durabilidad y maleabilidad.',95.00,'PV00007'),('M08','Cerámica Técnica','Alta resistencia a impactos y desgaste.',180.00,'PV00008'),('M09','Aleación de Titanio','Muy resistente y ligero para piezas avanzadas.',250.00,'PV00009'),('M10','Fibras Sintéticas','Utilizadas para componentes industriales ligeros.',110.00,'PV00010'),('M11','Hierro Fundido','Material utilizado en partes de maquinaria pesada.',130.00,'PV00001'),('M12','Plástico ABS','Ligero y resistente a impactos.',75.00,'PV00002'),('M13','Latón','Aleación de cobre y zinc, ideal para piezas decorativas.',155.00,'PV00003'),('M14','Silicona Industrial','Material flexible para sellados y juntas.',85.00,'PV00004'),('M15','Polietileno','Usado en piezas plásticas de alta densidad.',70.00,'PV00005'),('M16','Acero Galvanizado','Protección contra la corrosión en ambientes exteriores.',160.00,'PV00006'),('M17','Nylon Técnico','Material versátil para engranajes y poleas.',90.00,'PV00007'),('M18','Resina Epóxica','Utilizada para recubrimientos y adhesivos industriales.',125.00,'PV00008'),('M19','Teflón','Material con alta resistencia al calor y químicos.',200.00,'PV00009'),('M20','Kevlar','Material resistente a impactos para aplicaciones avanzadas.',300.00,'PV00010');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `ID_Pedido` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Cliente` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `Fecha_Pedido` date NOT NULL,
  `ID_Sucursal` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Pedido`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Sucursal` (`ID_Sucursal`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES ('P001','C002','2023-01-15','S001'),('P002','C005','2023-03-10','S001'),('P003','C001','2023-05-20','S001'),('P004','C007','2023-07-25','S001'),('P005','C003','2023-09-05','S001'),('P006','C006','2023-11-12','S001'),('P007','C010','2024-02-18','S001'),('P008','C004','2024-04-22','S001'),('P009','C009','2024-06-07','S001'),('P010','C008','2024-08-14','S001'),('P011','C011','2024-10-19','S001'),('P012','C012','2024-12-25','S001'),('P013','C015','2025-01-30','S001'),('P014','C014','2025-03-08','S001'),('P015','C013','2025-05-16','S001'),('P016','C017','2025-07-22','S001'),('P017','C018','2025-09-10','S001'),('P018','C016','2025-11-15','S001'),('P019','C020','2025-12-05','S001'),('P020','C019','2025-12-20','S001');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pieza`
--

DROP TABLE IF EXISTS `pieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pieza` (
  `ID_Pieza` char(7) COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Descripcion` text COLLATE utf8mb4_general_ci NOT NULL,
  `Tipo_Pieza` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Material` char(3) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Marca` int NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID_Pieza`),
  KEY `ID_Material` (`ID_Material`),
  KEY `ID_Marca` (`ID_Marca`),
  CONSTRAINT `pieza_ibfk_1` FOREIGN KEY (`ID_Material`) REFERENCES `material` (`ID_Material`),
  CONSTRAINT `pieza_ibfk_2` FOREIGN KEY (`ID_Marca`) REFERENCES `marca` (`ID_Marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieza`
--

LOCK TABLES `pieza` WRITE;
/*!40000 ALTER TABLE `pieza` DISABLE KEYS */;
INSERT INTO `pieza` VALUES ('PZ00001','Engranaje','Pieza mecánica utilizada en sistemas de transmisión.','Mecánica','M01',1,200.00),('PZ00002','Carcasa','Estructura que protege componentes internos.','Estructura','M02',1,150.00),('PZ00003','Rodamiento','Permite el movimiento giratorio de piezas.','Movimiento','M03',1,100.00),('PZ00004','Válvula','Controla el flujo de líquidos o gases.','Hidráulica','M04',1,250.00),('PZ00005','Tornillo','Elemento de fijación mecánica.','Fijación','M05',1,50.00),('PZ00006','Polea','Usada en sistemas de transmisión por correa.','Mecánica','M06',1,300.00),('PZ00007','Retén','Sella y evita fugas en sistemas mecánicos.','Sello','M07',1,75.00),('PZ00008','Faja','Transmite fuerza entre poleas.','Transmisión','M08',1,120.00),('PZ00009','Junta','Elemento flexible para sellado de maquinaria.','Sello','M09',1,80.00),('PZ00010','Manguera','Conduce líquidos o gases en sistemas industriales.','Conducción','M10',1,90.00),('PZ00011','Pistón','Componente móvil en cilindros hidráulicos.','Hidráulica','M11',1,400.00),('PZ00012','Caja de Engranajes','Sistema cerrado que contiene engranajes.','Mecánica','M12',1,350.00),('PZ00013','Disco','Componente utilizado en sistemas de frenado.','Frenado','M13',1,180.00),('PZ00014','Arandela','Se coloca entre piezas para distribuir cargas.','Fijación','M14',1,20.00),('PZ00015','Soporte','Proporciona estabilidad a maquinaria.','Estructura','M15',1,200.00),('PZ00016','Cilindro','Actúa como contenedor en sistemas neumáticos.','Neumática','M16',1,270.00),('PZ00017','Base','Soporte estructural para maquinaria.','Estructura','M17',1,150.00),('PZ00018','Guía Lineal','Permite movimiento preciso en maquinaria.','Movimiento','M18',1,500.00),('PZ00019','Eje','Transmite fuerza y movimiento rotacional.','Mecánica','M19',1,300.00),('PZ00020','Filtro','Purifica líquidos o gases en sistemas mecánicos.','Filtración','M20',1,100.00);
/*!40000 ALTER TABLE `pieza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `ID_Proveedor` char(7) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Empresa` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipo_Proveedor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `RUC` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Contacto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Correo_Electronico` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Proveedor`),
  KEY `ID_Empresa` (`ID_Empresa`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`ID_Empresa`) REFERENCES `empresa` (`ID_Empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES ('PV00001','E0001','Suministros Industriales S.A.','Material Industrial','20198765432','Av. Las Torres 123, Lima','987654321','contacto@suministrosindustriales.com'),('PV00002','E0001','Metalúrgicos del Sur S.A.C.','Material Industrial','20287654321','Jr. Los Aceros 456, Arequipa','987654322','info@metalurgicosdelsur.com'),('PV00003','E0001','Plásticos Industriales E.I.R.L.','Material Industrial','20376543210','Av. Los Plásticos 789, Trujillo','987654323','ventas@plasticosindustriales.com'),('PV00004','E0001','Fábrica de Materiales Andinos','Material Industrial','20465432109','Calle Las Industrias 112, Cusco','987654324','contacto@materialesandinos.com'),('PV00005','E0001','Proveedora de Aleaciones S.A.C.','Material Industrial','20554321098','Jr. Las Aleaciones 345, Chiclayo','987654325','ventas@aleacionessac.com'),('PV00006','E0001','Cauchos Técnicos del Norte','Material Industrial','20643210987','Av. Del Caucho 678, Piura','987654326','info@cauchotecnico.com'),('PV00007','E0001','Fibra de Vidrio Perú S.A.','Material Industrial','20732109876','Av. Fibras 910, Iquitos','987654327','ventas@fibradevidrio.com'),('PV00008','E0001','Cerámicos Industriales S.A.C.','Material Industrial','20821098765','Calle Cerámicos 654, Tacna','987654328','contacto@ceramicosindustriales.com'),('PV00009','E0001','Polímeros Avanzados E.I.R.L.','Material Industrial','20910987654','Av. Polímeros 321, Huancayo','987654329','info@polimerosavanzados.com'),('PV00010','E0001','Metales Especiales S.A.C.','Material Industrial','21009876543','Jr. Los Metales 987, Callao','987654330','ventas@metalesespeciales.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `ID_Servicio` int NOT NULL AUTO_INCREMENT,
  `Tipo_Servicio` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Descripcion` text COLLATE utf8mb4_general_ci NOT NULL,
  `Precio_Servicio` decimal(10,2) NOT NULL,
  `Tiempo_Estimado` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Diseño de Equipos','Diseño de equipos para la industria metalmecánica y afines.',5000.00,'15 días'),(2,'Fabricación de Piezas','Fabricación y recuperación de piezas especiales para la industria.',3000.00,'15 días'),(3,'Suministro de Repuestos','Suministro de repuestos para la industria metalmecánica.',2000.00,'20 días'),(4,'Mantenimiento Preventivo','Mantenimiento y ajuste de equipos industriales.',1500.00,'9 días'),(5,'Análisis Técnico','Evaluación técnica detallada de maquinarias y piezas.',1000.00,'3 días');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursal` (
  `ID_Sucursal` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Empresa` char(5) COLLATE utf8mb4_general_ci NOT NULL,
  `Contacto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_Sucursal`),
  KEY `ID_Empresa` (`ID_Empresa`),
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`ID_Empresa`) REFERENCES `empresa` (`ID_Empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES ('S001','Sucursal Principal','Av. Jose Santos Chocano, Carmen de la Legua – Reynoso, Callao','E0001','940630975');
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `ID_Usuario` int NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Contraseña` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Empleado` char(7) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Cargo` int NOT NULL,
  PRIMARY KEY (`ID_Usuario`),
  UNIQUE KEY `Usuario` (`Usuario`),
  KEY `ID_Empleado` (`ID_Empleado`),
  KEY `ID_Cargo` (`ID_Cargo`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ID_Empleado`) REFERENCES `empleado` (`ID_Empleado`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`ID_Cargo`) REFERENCES `cargo` (`ID_Cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'sofia.rivera','password123','EM00006',6),(2,'ricardo.vargas','password456','EM00007',7),(3,'elena.castro','password789','EM00008',8),(4,'jorge.torres','password321','EM00009',9),(5,'diana.morales','password654','EM00010',10),(6,'fernando.rojas','password987','EM00011',3),(7,'valeria.peña','password112','EM00012',4),(8,'adrian.quispe','password334','EM00013',5),(9,'laura.ramirez','password998','EM00014',2),(10,'hector.salinas','password555','EM00015',1),(11,'gabriela.silva','password667','EM00016',8),(12,'julio.medina','password778','EM00017',6),(13,'patricia.reyes','password889','EM00018',7),(14,'daniel.alvarez','password990','EM00019',10),(15,'liliana.herrera','password111','EM00020',9);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_empresa'
--

--
-- Dumping routines for database 'db_empresa'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29 12:50:26
