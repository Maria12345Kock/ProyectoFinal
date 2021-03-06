
/* Nombre: Maria Perez Matricula: 16-SIIT-1-054 Seccion: 0541 */


USE [master]
GO
/****** Object:  Database [Suplidora de vegetales la Quinta]    Script Date: 7/4/2018 9:27:19 p. m. ******/
CREATE DATABASE [Suplidora de vegetales la Quinta]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Suplidora de vegetales la Quinta', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Suplidora de vegetales la Quinta.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Suplidora de vegetales la Quinta_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Suplidora de vegetales la Quinta_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Suplidora de vegetales la Quinta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET ARITHABORT OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET  MULTI_USER 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Suplidora de vegetales la Quinta] SET QUERY_STORE = OFF
GO
USE [Suplidora de vegetales la Quinta]
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
USE [Suplidora de vegetales la Quinta]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 7/4/2018 9:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NOT NULL,
	[Empresa] [varchar](50) NULL,
	[RNC] [varchar](13) NULL,
	[Telefono] [varchar](13) NULL,
	[Correo] [varchar](50) NULL,
	[Direccion] [varchar](max) NULL,
	[CreditoCliente] [nchar](2) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 7/4/2018 9:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosId] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Cedula] [nvarchar](13) NULL,
	[Puesto] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Factura]    Script Date: 7/4/2018 9:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[FacturaId] [int] NOT NULL,
	[Fecha] [date] NULL,
	[EmpleadosId] [int] NULL,
	[ClienteId] [int] NULL,
	[MercanciaId] [int] NULL,
	[Cantidad] [varchar](50) NULL,
	[Tipodepago] [varchar](30) NULL,
	[Total] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[FacturaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mercancia]    Script Date: 7/4/2018 9:27:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mercancia](
	[MercanciaId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Calidad] [varchar](10) NULL,
	[Peso] [varchar](20) NULL,
	[Embasado] [nchar](2) NULL,
	[Precio] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Mercancia] PRIMARY KEY CLUSTERED 
(
	[MercanciaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (1, N'The beatty salon ', N'430-12345-6', N'809-556-5201', N'bsalon@hotmail.com', N'calle amor, san vicente', N'No')
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (2, N'Supermercado la Quinta Estrella', N'430-78945-7', N'849-456-7894', N's5markert@live,com', N'calle odio, la pulga', N'Si')
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (3, N'ASOROJA', N'101-47895-8', N'809-789-4561', N'adomo@yahoo.com', N'calle angustia, la plaga', N'Si')
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (4, N'SuperMarkertLove', N'430-03214-0', N'829-462-0123', N'SMLOVE@hotmail.es', N'calle milagro, la salvacion', N'No')
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (5, N'CL,S,A,S', N'103-03258-5', N'809-025-9302', N'casaluna@hotmail.com', N'calle el sol, frente a la luna, parte atras', N'Si')
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (6, N'PezYmas', N'101-74102-7', N'849-741-7896', N'peceradeDios@ahogado.com', N'calle pecera, av.ahogado', N'Si')
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (7, N'Mercadito Lola', N'430-32165-7', N'809-789-4561', N'lolamento08@hotmail.com', N'lola, frente al mento', N'No')
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (8, N'La divaza recors', N'430-00278-4', N'809-988-7788', N'divalejo@mari.com', N'la venezuela, pasa hambre', N'Si')
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (9, N'La bolita', N'430-03214-7', N'849-665-0123', N'labolitaquemando@hotmail.com', N'calle la niña, esquina santa maria ', N'Si')
INSERT [dbo].[Clientes] ([ClientesId], [Empresa], [RNC], [Telefono], [Correo], [Direccion], [CreditoCliente]) VALUES (10, N'CNCO agricultura', N'101-01364-7', N'829-788-7894', N'laluz@live.com', N'calle puertorro, llegando a argentina', NULL)
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (1, N'Maria Kock', N'402-2655814-2', N'Gerente General', CAST(180000.00 AS Decimal(18, 2)), N'829-417-6565', N'F', N'Calle5ta, ensanche naco')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (2, N'Arianny Cadena', N'402-2562322-0', N'Inspectora de calidad ', CAST(80000.00 AS Decimal(18, 2)), N'849-448-5610', N'F', N'Calle la fe, bella vista')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (3, N'Marleny Ferreira', N'402-3321246-5', N'Gestion de operaciones', CAST(80000.00 AS Decimal(18, 2)), N'829-630-7945', N'F', N'calle alegria, hato nuevo')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (4, N'Carlos Lvabueno', N'001-7945611-8', N'Supervisor', CAST(30000.00 AS Decimal(18, 2)), N'809-456-2302', N'M', N'calle tristeza, herrera')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (5, N'Margarita cedeño', N'001-0321466-7', N'Agricultora', CAST(25000.00 AS Decimal(18, 2)), N'849-852-8523', N'F', N'calle, depresion, manoguayabo')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (6, N'Juliana Merran', N'402-2589447-7', N'Auxiliar de contabilidad', CAST(16000.00 AS Decimal(18, 2)), N'809-456-7892', N'F', N'calle hambre, el hipodromo')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (7, N'Juan Cascabell', N'001-4578932-1', N'Transportista', CAST(15000.00 AS Decimal(18, 2)), N'849-996-3214', N'M', N'calle no se, las caobas')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (8, N'Tutankamon', N'001-0123647-2', N'Transportista', CAST(15000.00 AS Decimal(18, 2)), N'809-456-1236', N'M', N'calle angurria, las palmas')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (9, N'Fefita La pequeña', N'001-4795032-8', N'Conserje', CAST(10000.00 AS Decimal(18, 2)), N'829-456-7894', N'F', N'calle felicidad, las parderas ')
INSERT [dbo].[Empleados] ([EmpleadosId], [Nombre], [Cedula], [Puesto], [Sueldo], [Telefono], [Sexo], [Direccion]) VALUES (10, N'Alfredo Malvavisco', N'402-1236547-6', N'Transportista', CAST(15000.00 AS Decimal(18, 2)), N'829-123-45698', N'M', N'calle hambre, colinas  del oeste')
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (1, CAST(N'2018-05-01' AS Date), 8, 1, 10, N'500', N'efectivo', CAST(50000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (2, CAST(N'2018-02-01' AS Date), 7, 2, 9, N'500', N'cheque', CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (3, CAST(N'2018-05-01' AS Date), 10, 3, 8, N'800', N'tarjeta', CAST(240000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (4, CAST(N'2018-05-01' AS Date), 10, 4, 7, N'900', N'tarjeta', CAST(90000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (5, CAST(N'2018-02-03' AS Date), 8, 5, 5, N'400', N'efectivo', CAST(60000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (6, CAST(N'2018-05-03' AS Date), 7, 6, 6, N'900', N'efectivo', CAST(45000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (7, CAST(N'2018-04-08' AS Date), 7, 7, 4, N'400', N'cheque', CAST(40000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (8, CAST(N'2018-05-04' AS Date), 8, 8, 3, N'300', N'tarjeta', CAST(24000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (9, CAST(N'2018-04-08' AS Date), 10, 9, 2, N'200', N'efectivo', CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[Factura] ([FacturaId], [Fecha], [EmpleadosId], [ClienteId], [MercanciaId], [Cantidad], [Tipodepago], [Total]) VALUES (10, CAST(N'2018-04-09' AS Date), 7, 10, 1, N'900', N'cheque', CAST(90000.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (1, N'Cebolla', N'Alta', N'1LB', N'No', CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (2, N'Zanahoria', N'Media', N'2LB', N'Si', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (3, N'Apio', N'Alta', N'3LB', N'Si', CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (4, N'Tomate', N'Media', N'4LB', N'Si', CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (5, N'Pepino', N'Alta', N'5LB', N'No', CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (6, N'Lechuga', N'Media', N'1LB', N'Si', CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (7, N'Repollo', N'Baja', N'2LB', N'No', CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (8, N'Ajo', N'Alta', N'3LB', N'Si', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (9, N'Remolacha', N'Media', N'4LB', N'No', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Mercancia] ([MercanciaId], [Nombre], [Calidad], [Peso], [Embasado], [Precio]) VALUES (10, N'Brocoli', N'Baja', N'5LB', N'No', CAST(250.00 AS Decimal(18, 2)))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Clientes] FOREIGN KEY([ClienteId])
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
ALTER DATABASE [Suplidora de vegetales la Quinta] SET  READ_WRITE 
GO
