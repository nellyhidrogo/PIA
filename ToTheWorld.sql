USE [master]
GO
/****** Object:  Database [ToTheWorld]    Script Date: 21/05/2022 09:21:36 p. m. ******/
CREATE DATABASE [ToTheWorld]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ToTheWorld', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\ToTheWorld.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ToTheWorld_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\ToTheWorld_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ToTheWorld] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ToTheWorld].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ToTheWorld] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ToTheWorld] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ToTheWorld] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ToTheWorld] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ToTheWorld] SET ARITHABORT OFF 
GO
ALTER DATABASE [ToTheWorld] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ToTheWorld] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ToTheWorld] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ToTheWorld] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ToTheWorld] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ToTheWorld] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ToTheWorld] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ToTheWorld] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ToTheWorld] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ToTheWorld] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ToTheWorld] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ToTheWorld] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ToTheWorld] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ToTheWorld] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ToTheWorld] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ToTheWorld] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ToTheWorld] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ToTheWorld] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ToTheWorld] SET  MULTI_USER 
GO
ALTER DATABASE [ToTheWorld] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ToTheWorld] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ToTheWorld] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ToTheWorld] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ToTheWorld] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ToTheWorld] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ToTheWorld] SET QUERY_STORE = OFF
GO
USE [ToTheWorld]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Atracciones]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atracciones](
	[IdAtraccion] [int] IDENTITY(1,1) NOT NULL,
	[NombreA] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
	[Imagen] [image] NULL,
	[Descripción] [nvarchar](max) NULL,
	[Ciudad] [int] NOT NULL,
 CONSTRAINT [PK_Atracciones] PRIMARY KEY CLUSTERED 
(
	[IdAtraccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[IdCiudad] [int] IDENTITY(1,1) NOT NULL,
	[NombreC] [nvarchar](50) NOT NULL,
	[Estado] [nvarchar](50) NOT NULL,
	[Pais] [nvarchar](50) NOT NULL,
	[Imagen] [image] NULL,
 CONSTRAINT [PK_Ciudades_1] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[IdComentario] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Contenido] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[IdComentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoteles]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoteles](
	[IdHotel] [int] IDENTITY(1,1) NOT NULL,
	[Ciudad] [int] NOT NULL,
	[logo] [image] NULL,
	[Descripción] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hoteles] PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurantes]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurantes](
	[IdRestaurante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Dirección] [nvarchar](max) NOT NULL,
	[Imagen] [image] NULL,
	[Descripción] [nvarchar](max) NULL,
	[Precio] [nvarchar](50) NULL,
	[Ciudad] [int] NOT NULL,
 CONSTRAINT [PK_Restaurantes] PRIMARY KEY CLUSTERED 
(
	[IdRestaurante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 21/05/2022 09:21:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreU] [nvarchar](50) NOT NULL,
	[Apellidos] [nvarchar](50) NOT NULL,
	[Correo] [nvarchar](max) NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Sexo] [nvarchar](50) NULL,
	[FechaNacimiento] [date] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'5.0.11')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'784d6598-4ce0-4ed2-9ae6-705525ee6718', N'nelly@gmail.com', N'NELLY@GMAIL.COM', N'nelly@gmail.com', N'NELLY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEO0Px6g3EucZ4OQpJF2wdsvwXC7iOU5yxGi9a36J9nYe0UPNYLAh8MBeGFKcwJu+7A==', N'LQPUOGV7Q4JP5AZIJVF2WX3BVBFBCKXM', N'3b608f04-52a7-469f-9617-7e7cdd7b9c49', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Atracciones] ON 
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (1, N'Cenote Calavera', N'Carr.Tulum Coba Km1.7', NULL, N'Cenote en Tulum. Lugar ecologico, tranquilo con espacios para descansar', 2)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (2, N'Parque Rotario', N'Neptuno Ote.5, Tulum Centro', NULL, N'Parque donde se pueden abordar los transportes que van hacia las playas de tulum', 2)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (3, N'Playa Las Palmas', N'Zona Hotelera Tulum', NULL, N'Playa pública, tranquila y hermosa.', 2)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (4, N'Museo de las Momias en Guanajuato', N'Explanada del Panteón Municipal, Centro', NULL, N'Famoso museo que exhibe más de 100 momias y cuenta con videos explicativos', 1)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (5, N'El centro de la Bufa', N'36237 Guanajuato, Gto.', NULL, N'Zona de senderismo, con hermosas vistas para practicar rapel y escalar.', 1)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (7, N'ZOOMAT', N'Calz.Cerro Hueco, El Zapotal', NULL, N'Zoologico fundado en 1942 que solo alberga animales nativos de la región', 3)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (8, N'Jardín botánico Faustino Miranda', N'Av, 5a. Avenida Nte. Ote, Parque Madero', NULL, N'Jardín botánico educacional que alberga plantas y flores locales, ademas de una biblioteca sobre botánica', 3)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (9, N'Parque de la Marimba', N'Av. Central Pte, Centro', NULL, N'Parque popular y espacioso con jardines, glorieta, música y baile.', 3)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (11, N'Parque Chichen Itzá', N'C. 46 LB, 92', NULL, N'Lugar arqueologico y cultural con asombrosa arquitectura maya', 4)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (12, N'Estadio Olimpico Andrés Quintana Roo', N'Av. Mayapan Mz. 4-Lt. 15,21', NULL, N'Estadio de futbol y recinto para eventos.', 4)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (13, N'Malecón Tajamar', N'Av. Rbla. Fonatur, Zona Hotelera', NULL, N'Paseo costero con palmeras y vista a la laguna nichupté, popalr para caminar, andar en la bicicleta y trotar.', 4)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (14, N'Adventureland Huasteca', N'16 Septiembre, Zona centro', NULL, N'Parque con tirolesa y grandes vistas a las cascadas', 5)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (16, N'Centro cultural de la Huasteca Potosina', N'Carr. Mexico-Laredo, Lomas de San Jose', NULL, N'Area principal en la ciudad para el desarrollo de el arte y cultura de la Zona Huasteca', 5)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (17, N'Jardín Conzatti', N'Valentín Gómez Farias, RUTA INDEPENDENCIA', NULL, N'Area verde sencilla con senderos y asientos con laureles, dedicada a un botanico reconocido.', 6)
GO
INSERT [dbo].[Atracciones] ([IdAtraccion], [NombreA], [Direccion], [Imagen], [Descripción], [Ciudad]) VALUES (18, N'Museo de la Filatelia de Oaxaca', N'C/ de la constitucion 201, RUTA INDEPENDENCIA', NULL, N'Museo con estampillas y arte surrealista, un patio tranquilo y una tienda de regalos', 6)
GO
SET IDENTITY_INSERT [dbo].[Atracciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Ciudades] ON 
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [NombreC], [Estado], [Pais], [Imagen]) VALUES (1, N'Guanajuato', N'Guanajuato', N'México', NULL)
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [NombreC], [Estado], [Pais], [Imagen]) VALUES (2, N'Tulum', N'Quintana Roo', N'México', NULL)
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [NombreC], [Estado], [Pais], [Imagen]) VALUES (3, N'Tuxtla Gutiérrez', N'Chiapas', N'México', NULL)
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [NombreC], [Estado], [Pais], [Imagen]) VALUES (4, N'Cancún', N'Yucatan', N'México', NULL)
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [NombreC], [Estado], [Pais], [Imagen]) VALUES (5, N'Ciudad Valles', N'San Luis Potosí', N'México', NULL)
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [NombreC], [Estado], [Pais], [Imagen]) VALUES (6, N'Oaxaca de Juárez', N'Oaxaca', N'México', NULL)
GO
SET IDENTITY_INSERT [dbo].[Ciudades] OFF
GO
SET IDENTITY_INSERT [dbo].[Comentarios] ON 
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (1, 1, 2, N'Muy bonita ciudad, excelente paraje turistico')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (2, 2, 3, N'Excelente paraje')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (3, 3, 4, N'Muy lindas vistas')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (4, 5, 5, N'Preciosas vistas y atracciones')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (5, 6, 6, N'Increible ciudad, comida muy rica')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (14, 7, 1, N'Ame la ciudad es increible')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (15, 8, 2, N'Quedé enamorada de la ciudad')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (16, 9, 3, N'Me encantó visitar la ciudad, sus atracciones son muy buenas')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (17, 10, 4, N'Increibles atracciones y comida tipica')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (18, 11, 5, N'Amé los restaurantes y los hoteles')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (19, 12, 6, N'Restaurantes limpios relación precio y calidad')
GO
INSERT [dbo].[Comentarios] ([IdComentario], [Usuario], [Ciudad], [Contenido]) VALUES (20, 13, 1, N'Increibles hoteles y atracciones, excelente lugar para visitar')
GO
SET IDENTITY_INSERT [dbo].[Comentarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Hoteles] ON 
GO
INSERT [dbo].[Hoteles] ([IdHotel], [Ciudad], [logo], [Descripción], [link]) VALUES (1, 1, NULL, N'Hotel 1988 Guanajuato', N'https://www.trivago.com.mx/es-MX/srl?__wr=6&tc=18&sem_keyword=&sem_creativeid=272287048691&sem_matchtype=&sem_network=g&sem_device=c&sem_placement=&sem_target=&sem_adposition=&sem_param1=&sem_param2=&sem_campaignid=327657633&sem_adgroupid=26500274673&sem_targetid=aud-571148529537%3Adsa-135876454118&sem_location=20713&cip=521131&gclid=Cj0KCQjwm6KUBhC3ARIsACIwxBg7PHvnsBolUa6GR3gIQZ4f99EOw7FukeYEgHVNWzwPpkrJiXLQdTYaArmtEALw_wcB&search=100-3484826')
GO
INSERT [dbo].[Hoteles] ([IdHotel], [Ciudad], [logo], [Descripción], [link]) VALUES (2, 2, NULL, N'KAN TULUM', N'https://www.kantulum.com/')
GO
INSERT [dbo].[Hoteles] ([IdHotel], [Ciudad], [logo], [Descripción], [link]) VALUES (3, 3, NULL, N'Fiesta Inn Tuxtla Fashin Mall', N'https://www.fiestainn.com/fiesta-inn-tuxtla-fashion-mall')
GO
INSERT [dbo].[Hoteles] ([IdHotel], [Ciudad], [logo], [Descripción], [link]) VALUES (4, 5, NULL, N'Portal de Jose', N'https://portaldejose.negocio.site/')
GO
INSERT [dbo].[Hoteles] ([IdHotel], [Ciudad], [logo], [Descripción], [link]) VALUES (5, 6, NULL, N'Flavia Luxury Hotel', N'https://hotelflavia.com/')
GO
INSERT [dbo].[Hoteles] ([IdHotel], [Ciudad], [logo], [Descripción], [link]) VALUES (6, 4, NULL, N'Alamos Inn', N'https://www.alamosinn.com/')
GO
SET IDENTITY_INSERT [dbo].[Hoteles] OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurantes] ON 
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (1, N'Estación Gelato', N'Cantaritos 29, Zona Centro', NULL, N'Local donde se realizan gelatos artesanales, naturales y sin conservadores.', N'$$', 1)
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (2, N'Santo Café', N'Campanero, Del Campanero 4, Zona Centro', NULL, N'Se sirven platos regionales, ensaladas, y pasta', N'$', 1)
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (3, N'Palma Central', N'Av.Kukulcan 6, Palma Central', NULL, N'Restaurante sencillo de pizzas clasicas y fideos , y cuenta con diferentes food trucks', N'$$', 2)
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (4, N'Kokoro Tulum', N'Av. Balam Dzakab Copal, Aldea Zama', NULL, N'Restaurante con essencia japonesa, cocina clásica de japón y calidad premium', N'$$$', 2)
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (5, N'La Patagonia Tuxtla', N'Del Brasilito 14', NULL, N'Restaurante argentino', N'$$', 3)
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (6, N'Pepe´s Pizza', N'Av. Central Ote.1736', NULL, N'Pizzeria con ambiente familiar', N'$', 3)
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (7, N'Va q´ Va!!!', N'Calle 107 Manzana 38 Lote 18 y 19', NULL, N'Marisquería con música en vivo y una enorme terraza con palmeras', N'$$', 4)
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (8, N'Guandola Cancún', N'Plaza Zona Centro', NULL, N'Restaurante Bar y Cervecería', N'$', 4)
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (9, N'Tacos Pedraza', N'El pacifico', NULL, N'Taquería calificada como el mejor restaurante de la zona', N'$$', 5)
GO
INSERT [dbo].[Restaurantes] ([IdRestaurante], [Nombre], [Dirección], [Imagen], [Descripción], [Precio], [Ciudad]) VALUES (11, N'Barbacoa estilo mixteco "El Profe"', N'Río Jordan 102A, La cascada', NULL, N'Restaurante mejor calificado, venta de barbacoa y consomé', N'$', 6)
GO
SET IDENTITY_INSERT [dbo].[Restaurantes] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (1, N'Hugo', N'Hernández', N'hugohdz@gmail.com', 1, N'H', CAST(N'2000-02-01' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (2, N'Lucía', N'Benitez', N'lucybn@gmail.com', 2, N'M', CAST(N'2001-03-15' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (3, N'Lucas', N'Castro', N'lucasdenct@gmail.com', 3, N'H', CAST(N'1999-01-25' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (5, N'Sofía', N'Contreras', N'soficontreras@gmail.com', 4, N'M', CAST(N'1999-05-26' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (6, N'Mateo', N'De León', N'matileon@outlook.com', 5, N'H', CAST(N'2002-09-12' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (7, N'Daniela', N'Diaz', N'danidiaz@outlook.com', 6, N'M', CAST(N'1998-11-23' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (8, N'Marcela', N'Martínez', N'marcem@gmail.com', 1, N'M', CAST(N'1997-10-03' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (9, N'Andres', N'Gonzalez', N'andygzz@gmail.com', 2, N'H', CAST(N'1999-08-11' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (10, N'Ana', N'Sanchez', N'anaschz@outlook.com', 3, N'M', CAST(N'2001-12-15' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (11, N'Pedro', N'Flores', N'pedroflores@outlook.com', 4, N'H', CAST(N'1995-04-27' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (12, N'Isabella', N'Sotelo', N'Isabellasot@gmail.com', 5, N'M', CAST(N'1992-06-18' AS Date))
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreU], [Apellidos], [Correo], [Ciudad], [Sexo], [FechaNacimiento]) VALUES (13, N'Charlie', N'Gomez', N'chargom@gmail.com', 6, N'H', CAST(N'2000-07-03' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 21/05/2022 09:21:38 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 21/05/2022 09:21:38 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 21/05/2022 09:21:38 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 21/05/2022 09:21:38 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 21/05/2022 09:21:38 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 21/05/2022 09:21:38 p. m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 21/05/2022 09:21:38 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Atracciones]  WITH CHECK ADD  CONSTRAINT [FK_Atracciones_Ciudades] FOREIGN KEY([Ciudad])
REFERENCES [dbo].[Ciudades] ([IdCiudad])
GO
ALTER TABLE [dbo].[Atracciones] CHECK CONSTRAINT [FK_Atracciones_Ciudades]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_Ciudades1] FOREIGN KEY([Ciudad])
REFERENCES [dbo].[Ciudades] ([IdCiudad])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Ciudades1]
GO
ALTER TABLE [dbo].[Hoteles]  WITH CHECK ADD  CONSTRAINT [FK_Detalle Hoteles_Ciudades] FOREIGN KEY([Ciudad])
REFERENCES [dbo].[Ciudades] ([IdCiudad])
GO
ALTER TABLE [dbo].[Hoteles] CHECK CONSTRAINT [FK_Detalle Hoteles_Ciudades]
GO
ALTER TABLE [dbo].[Restaurantes]  WITH CHECK ADD  CONSTRAINT [FK_Restaurantes_Ciudades] FOREIGN KEY([Ciudad])
REFERENCES [dbo].[Ciudades] ([IdCiudad])
GO
ALTER TABLE [dbo].[Restaurantes] CHECK CONSTRAINT [FK_Restaurantes_Ciudades]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Ciudades1] FOREIGN KEY([Ciudad])
REFERENCES [dbo].[Ciudades] ([IdCiudad])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Ciudades1]
GO
USE [master]
GO
ALTER DATABASE [ToTheWorld] SET  READ_WRITE 
GO
