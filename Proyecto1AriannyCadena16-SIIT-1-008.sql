
/*Nombre: Arianny Cadena Matricula: 16-SIIT-1-008 Seccion: 0541*/ 



USE [master]
GO
/****** Object:  Database [Tienda de Ropa Estrellitas]    Script Date: 7/4/2018 6:52:41 p. m. ******/
CREATE DATABASE [Tienda de Ropa Estrellitas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tienda de Ropa Estrellitas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tienda de Ropa Estrellitas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tienda de Ropa Estrellitas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tienda de Ropa Estrellitas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tienda de Ropa Estrellitas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET  MULTI_USER 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET QUERY_STORE = OFF
GO
USE [Tienda de Ropa Estrellitas]
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
USE [Tienda de Ropa Estrellitas]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 7/4/2018 6:52:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [varchar](13) NULL,
	[Correo] [varchar](50) NULL,
	[RNC] [varchar](20) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 7/4/2018 6:52:43 p. m. ******/
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
/****** Object:  Table [dbo].[Factura]    Script Date: 7/4/2018 6:52:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[FacturaId] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[EmpleadosId] [int] NULL,
	[ClientesId] [int] NULL,
	[MercanciaId] [int] NULL,
	[Cantidad] [varchar](50) NULL,
	[TipodePago] [varchar](20) NULL,
	[Total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[FacturaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mercancia]    Script Date: 7/4/2018 6:52:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mercancia](
	[MercanciaId] [int] NOT NULL,
	[Pieza] [varchar](50) NULL,
	[Marca] [varchar](50) NULL,
	[Color] [varchar](20) NULL,
	[Size] [varchar](3) NULL,
	[Material] [varchar](20) NULL,
	[Precio] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Mercancia] PRIMARY KEY CLUSTERED 
(
	[MercanciaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (1, N'Juan Sanchez', N'809-235-5855', N'juan_s12@gmail.com', N'001-0258669-9')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (2, N'La Grasa S,R,L', N'829-658-8921', N'parrillalagrasa@gmail.com', N'130-52105-4')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (3, N'Importadora Zoila', N'809-372-8956', N'imporzoilap-erra@hotmail.com', N'131-56324-2')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (4, N'Suplidora de Vegetales La Quinta   ', N'849-879-3624', N'laquintasuply@gmail.com', N'430-52365-3')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (5, N'Supermercado Quinta Estrellita', N'849-879-5210', N'laquintaestrella@gmail.com', N'430-85963-2')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (6, N'Benito Juarez', N'829-521-5841', N'mexico05@gmail.com', N'002-2154568-6')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (7, N'Arianny Cadena', N'829-658-6320', N'acadena@gmail.com', N'430-89654-3')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (8, N'Maricela Granadillo', N'809-331-8508', N'maGranillo@live.com', N'001-8745698-9')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (9, N'Culiquitakaty Import', N'809-654-7896', N'culiquiimport@yahoo.com', N'131-54879-0')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Correo], [RNC]) VALUES (10, N'Mario Simarrio ', N'829-789-6514', N'gatasalvaje@pasion.com', N'001-5162478-7')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (1, N'Arianny Cadena ', N'402-0035060-5', N'Gerente General', CAST(180000.00 AS Decimal(18, 2)), N'809-564-8594', N'F', N'Calle 4, apart 3, Piantini ')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (2, N'Marleny Ferreira ', N'402-6587565-8', N'Gerente de Operaciones  ', CAST(60000.00 AS Decimal(18, 2)), N'809-568-2356', N'F', N'Calle b, no.5, Praderas')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (3, N'Maria  Kock', N'402-5689532-9', N'Encargada de Cobros', CAST(60000.00 AS Decimal(18, 2)), N'829-892-5641', N'F', N'Calle 1, no.34, La Caonabo')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (4, N'Julia Checo', N'402-6395421-8', N'Contable', CAST(50000.00 AS Decimal(18, 2)), N'829-659-3210', N'F', N'Manz 43, no.4, Las Caobas')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (5, N'Santos Garcia ', N'402-8742365-9', N'Supervisor', CAST(30000.00 AS Decimal(18, 2)), N'809-786-3054', N'M', N'Manz 44, no.5, Los Cocos')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (6, N'Juan Perez Lopez', N'402-5685786-8', N'Servicio al Cliente', CAST(20000.00 AS Decimal(18, 2)), N'829-369-7895', N'M', N'Calle 31, apart 2, Pantoja')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (7, N'Andrez Guzman', N'402-7845698-8', N'Servicio al Cliente', CAST(20000.00 AS Decimal(18, 2)), N'809-632-9689', N'M', N'Calle 3ra, Herrera')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (8, N'Josefina Saltitopa', N'001-2565241-9', N'Cajera', CAST(16000.00 AS Decimal(18, 2)), N'809-568-5689', N'F', N'Calle 6, no. 7, Naco')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (9, N'Lissette Ventura', N'402-5632198-3', N'Cajera', CAST(16000.00 AS Decimal(18, 2)), N'829-564-5687', N'F', N'Manz 34, no. 5, Las Caobas ')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (10, N'Tulipano Purina ', N'001-8755568-8', N'Conserje', CAST(12000.00 AS Decimal(18, 2)), N'809-365-8978', N'M', N'Ave. 6 de noviembre, La perla')
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (1, CAST(N'2018-04-01T00:00:00.000' AS DateTime), 8, 9, 10, N'500', N'Cheque', CAST(2500000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (2, CAST(N'2018-04-01T00:00:00.000' AS DateTime), 9, 1, 6, N'2', N'Efectivo', CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (3, CAST(N'2018-04-01T00:00:00.000' AS DateTime), 8, 3, 2, N'5000', N'Tarjeta', CAST(40000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (4, CAST(N'2018-04-02T00:00:00.000' AS DateTime), 8, 8, 9, N'5', N'Transferencia', CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (5, CAST(N'2018-04-02T00:00:00.000' AS DateTime), 9, 5, 7, N'10', N'Efectivo', CAST(30000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (6, CAST(N'2018-01-02T00:00:00.000' AS DateTime), 9, 2, 2, N'2', N'Efectivo', CAST(16000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (7, CAST(N'2018-04-03T00:00:00.000' AS DateTime), 8, 7, 8, N'1', N'Tarjeta', CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (8, CAST(N'2018-04-03T00:00:00.000' AS DateTime), 9, 6, 5, N'4', N'Cheque', CAST(18000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (9, CAST(N'2018-04-03T00:00:00.000' AS DateTime), 8, 10, 4, N'6', N'Transferencia', CAST(15000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClientesId], [MercanciaId], [Cantidad], [TipodePago], [Total]) VALUES (10, CAST(N'2018-04-04T00:00:00.000' AS DateTime), 8, 4, 3, N'1', N'Efectivo', CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (1, N'Blusa', N'channel', N'Beige', N'XS', N'Algodon', CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (2, N'Pantalon', N'LV', N'Verde Moco', N'XXL', N'Piel de Serpiente', CAST(8000.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (3, N'Panties', N'Victoria S', N'Negro ', N'XL', N'Algodon', CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (4, N'Brassiel', N'Victoria S', N'Negro', N'34B', N'Algodon', CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (5, N'Zapatos', N'Calvin klein', N'Rojo', N'9', N'Piel', CAST(4500.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (6, N'Boxer', N'Clavin klein', N'Blanco', N'M', N'Algodon', CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (7, N'Camisa', N'Camila', N'Rosada', N'M', N'Lino', CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (8, N'Vestido', N'Tommy H.', N'Rojo', N'S', N'Terciopelo', CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (9, N'Zapatos', N'Versace', N'Transparente', N'6', N'Cristal', CAST(25000.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Pieza], [Marca], [Color], [Size], [Material], [Precio]) VALUES (10, N'Reloj', N'NAUTICA', N'Azul Marino', N'0', N'Piel', CAST(5000.00 AS Decimal(18, 2)))
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
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Mercancia] FOREIGN KEY([MercanciaId])
REFERENCES [dbo].[Mercancia] ([MercanciaId])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Mercancia]
GO
USE [master]
GO
ALTER DATABASE [Tienda de Ropa Estrellitas] SET  READ_WRITE 
GO
