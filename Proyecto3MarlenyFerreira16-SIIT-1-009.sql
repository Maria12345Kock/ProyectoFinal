
/* Nombre: Marleny Ferreira Matricula: 16-SIIT-1-009 Seccion: 0541 */

USE [master]
GO
/****** Object:  Database [Supermercado La Quinta Estrella]    Script Date: 8/4/2018 1:08:26 a. m. ******/
CREATE DATABASE [Supermercado La Quinta Estrella]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Supermercado La Quinta Estrella', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Supermercado La Quinta Estrella.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Supermercado La Quinta Estrella_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Supermercado La Quinta Estrella_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Supermercado La Quinta Estrella].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET ARITHABORT OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET  MULTI_USER 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET QUERY_STORE = OFF
GO
USE [Supermercado La Quinta Estrella]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Supermercado La Quinta Estrella]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 8/4/2018 1:08:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[RNC] [varchar](13) NULL,
	[Correo] [varchar](50) NULL,
	[Telefono] [varchar](13) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 8/4/2018 1:08:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Cedula] [varchar](13) NULL,
	[Puesto] [varchar](50) NULL,
	[Sueldo] [decimal](18, 2) NULL,
	[Telefono] [varchar](13) NULL,
	[Sexo] [nchar](1) NULL,
	[Direccion] [varchar](max) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 8/4/2018 1:08:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[FacturaId] [int] NOT NULL,
	[Fecha] [date] NULL,
	[EmpleadosId] [int] NULL,
	[ClientesId] [int] NULL,
	[ProductosId] [int] NULL,
	[Cantidad] [varchar](50) NULL,
	[Tipodepago] [varchar](20) NULL,
	[Total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[FacturaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 8/4/2018 1:08:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductosId] [int] NOT NULL,
	[Derpartamento] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Caducidad] [date] NULL,
	[Proveedor] [varchar](50) NULL,
	[Precio] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (1, N'Lola Mento', N'Excento', N'elemento@hotmail.com', N'809-547-9874')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (2, N'Santo Mad', N'Excento', N'mad1234@klk.com', N'829-632-5698')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (3, N'Susana Marte', N'001-5447889-9', N'mercurio@live.com', N'849-456-1238')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (4, N'Chagi Boo', N'Excento', N'sdoopapa@bonbon.com', N'809-498-1597')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (5, N'Edi Lopez', N'001-6547893-9', N'elopez@gmail.com', N'809-789-4931')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (6, N'Koki Perez', N'Excento', N'koki9876@nine.com', N'829-369-7823')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (7, N'July Frez', N'Excento', N'thufrez99@hotmail.com', N'849-852-0147')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (8, N'Nicolesa Diaz', N'Excento', N'lanicolasa@supite.com', N'849-369-7895')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (9, N'Jeimi Duca', N'Excento', N'la buduca@fisness.com', N'809-456-7521')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [RNC], [Correo], [Telefono]) VALUES (10, N'Jaquelin Agaraza', N'Excento', N'agata0923@gmail.com', N'829-014-3574')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (1, N'Marleny Ferreira', N'402-8996563-2', N'Gerente General', CAST(180000.00 AS Decimal(18, 2)), N'809-526-2310', N'F', N'Calle 4, las fresas')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (2, N'Arianny Cadena', N'402-4585620-6', N'Encargada de Calidad ', CAST(80000.00 AS Decimal(18, 2)), N'829-563-2145', N'F', N'Calle 1, La Hache')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (3, N'Maria Kock', N'402-5806352-2', N'Encargada de Cobros', CAST(80000.00 AS Decimal(18, 2)), N'829-789-5421', N'F', N'Calle 2, La linea')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (4, N'Huge Drake', N'402-4715263-6', N'Supervisor', CAST(60000.00 AS Decimal(18, 2)), N'809-236-1479', N'M', N'Calle 3, Miranda')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (5, N'July Interprise', N'402-8810223-4', N'Servicio al cliente', CAST(30000.00 AS Decimal(18, 2)), N'849-562-3201', N'F', N'Calle 4, El sol')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (6, N'Dave Luna', N'402-8527151-5', N'Servicio al cliente', CAST(30000.00 AS Decimal(18, 2)), N'809-452-4178', N'M', N'Calle 5, Las Matas')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (7, N'Hector Bravo', N'402-1022398-9', N'Encargado de Caja', CAST(25000.00 AS Decimal(18, 2)), N'809-566-8745', N'M', N'Calle 9, Desiderio A.')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (8, N'Marshall Lama', N'402-2509882-5', N'Cajera', CAST(20000.00 AS Decimal(18, 2)), N'849-562-5624', N'F', N'Calle 7, Garcia P.')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (9, N'Americo Vespucio', N'402-5209637-4', N'Cajero', CAST(20000.00 AS Decimal(18, 2)), N'829-417-5201', N'M', N'Calle 5, Herrera')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (10, N'Cristobal Colon', N'402-7531402-2', N'Conserje', CAST(15000.00 AS Decimal(18, 2)), N'829-236-2541', N'M', N'Calle 2, Las Americas')
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (1, CAST(N'2018-04-01' AS Date), 8, 10, 9, N'30', N'tarjeta', CAST(4500.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (2, CAST(N'2018-04-02' AS Date), 9, 9, 10, N'5', N'efectivo', CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (3, CAST(N'2018-04-03' AS Date), 9, 7, 2, N'12', N'tarjeta', CAST(1800.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (4, CAST(N'2018-04-04' AS Date), 9, 8, 1, N'7', N'tarjeta', CAST(350.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (5, CAST(N'2018-04-05' AS Date), 8, 6, 3, N'6', N'tarjeta', CAST(1200.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (6, CAST(N'2018-04-06' AS Date), 8, 5, 8, N'3', N'efectivo', CAST(900.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (7, CAST(N'2018-04-07' AS Date), 8, 4, 7, N'6', N'efectivo', CAST(24000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (8, CAST(N'2018-04-08' AS Date), 9, 3, 6, N'2', N'tarjeta', CAST(7000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (9, CAST(N'2018-04-09' AS Date), 8, 2, 5, N'3', N'tarjeta', CAST(9000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [ProductosId], [Cantidad], [Tipodepago], [Total]) VALUES (10, CAST(N'2018-04-10' AS Date), 9, 1, 4, N'1', N'tarjeta', CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (1, N'Limpieza', N'Jabon', CAST(N'2018-01-12' AS Date), N'La Cuaba', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (2, N'Carnes', N'Pechuga', CAST(N'2018-01-12' AS Date), N'Finca Hatuey', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (3, N'Pescaderia', N'Camarones', CAST(N'2018-01-12' AS Date), N'Mar Adentro', CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (4, N'Refrigerios', N'Helados', CAST(N'2018-01-13' AS Date), N'Helados Bon', CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (5, N'Plasticos', N'Gavetero', CAST(N'2018-01-13' AS Date), N'Vayplastics', CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (6, N'Escolares', N'Mochila', CAST(N'2018-01-14' AS Date), N'Maped', CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (7, N'Deportes', N'Pelota', CAST(N'2018-01-14' AS Date), N'Puma', CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (8, N'Lacteos', N'Queso', CAST(N'2018-01-15' AS Date), N'Finca Hatuey', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (9, N'Legumbres', N'Habichuelas', CAST(N'2018-01-16' AS Date), N'Finca La Granera', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([ProductosId], [Derpartamento], [Nombre], [Caducidad], [Proveedor], [Precio]) VALUES (10, N'Hogar', N'Cama', CAST(N'2018-01-16' AS Date), N'Ikea', CAST(15000.00 AS Decimal(18, 2)))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Clientes] FOREIGN KEY([ClientesId])
REFERENCES [dbo].[Clientes] ([ClientesId])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Clientes]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Empleados] FOREIGN KEY([EmpleadosId])
REFERENCES [dbo].[Empleados] ([EmpleadosId])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Empleados]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Productos] FOREIGN KEY([ProductosId])
REFERENCES [dbo].[Productos] ([ProductosId])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Productos]
GO
USE [master]
GO
ALTER DATABASE [Supermercado La Quinta Estrella] SET  READ_WRITE 
GO
