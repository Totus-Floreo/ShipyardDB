USE [master]
GO

/****** Object:  Database [ShipyardDB]    Script Date: 12/5/2021 10:00:40 PM ******/
CREATE DATABASE [ShipyardDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'���.�����', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\���.�����.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'���.�����_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\���.�����_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShipyardDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ShipyardDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ShipyardDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ShipyardDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ShipyardDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ShipyardDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [ShipyardDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ShipyardDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ShipyardDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ShipyardDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ShipyardDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ShipyardDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ShipyardDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ShipyardDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ShipyardDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ShipyardDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ShipyardDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ShipyardDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ShipyardDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ShipyardDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ShipyardDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ShipyardDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ShipyardDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ShipyardDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ShipyardDB] SET  MULTI_USER 
GO

ALTER DATABASE [ShipyardDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ShipyardDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ShipyardDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ShipyardDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ShipyardDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ShipyardDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [ShipyardDB] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ShipyardDB] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [ShipyardDB]    Script Date: 12/5/2021 10:01:40 PM ******/
CREATE DATABASE [ShipyardDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'���.�����', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\���.�����.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'���.�����_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\���.�����_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShipyardDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShipyardDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShipyardDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShipyardDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShipyardDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShipyardDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShipyardDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShipyardDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShipyardDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShipyardDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShipyardDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShipyardDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShipyardDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShipyardDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShipyardDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShipyardDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShipyardDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShipyardDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShipyardDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShipyardDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShipyardDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShipyardDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShipyardDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShipyardDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShipyardDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShipyardDB] SET  MULTI_USER 
GO
ALTER DATABASE [ShipyardDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShipyardDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShipyardDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShipyardDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShipyardDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShipyardDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShipyardDB] SET QUERY_STORE = OFF
GO

USE [ShipyardDB]
GO
/****** Object:  Table [dbo].[AccessoriesToBoat]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessoriesToBoat](
	[Fit_ID] [int] NOT NULL,
	[Accessory_ID] [int] NOT NULL,
	[Boat_ID] [int] NOT NULL,
 CONSTRAINT [PK_AccessoriesToBoat] PRIMARY KEY CLUSTERED 
(
	[Fit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[Accessory_ID] [nchar](10) NOT NULL,
	[AccName] [nvarchar](max) NOT NULL,
	[DescriptionOfAccessory] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[VAT] [float] NOT NULL,
	[Inventory] [int] NOT NULL,
	[OrderLevel] [int] NOT NULL,
	[OrderBatch] [int] NOT NULL,
	[Partner_ID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[Accessory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boat]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boat](
	[boat_ID] [nchar](10) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[BoatType] [nvarchar](50) NOT NULL,
	[NumberOfRowers] [int] NOT NULL,
	[Mast] [nvarchar](50) NOT NULL,
	[Colour] [nvarchar](50) NOT NULL,
	[Wood] [nvarchar](50) NOT NULL,
	[BasePrice] [money] NOT NULL,
	[VAT] [int] NOT NULL,
 CONSTRAINT [PK_Boat] PRIMARY KEY CLUSTERED 
(
	[boat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Order_ID] [nchar](10) NOT NULL,
	[Date] [date] NOT NULL,
	[Salesperson_ID] [nchar](10) NOT NULL,
	[Customer_ID] [nchar](10) NOT NULL,
	[Boat_ID] [nchar](10) NOT NULL,
	[DeliveryAddress] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Customer_ID] [nchar](10) NOT NULL,
	[FistName] [nvarchar](max) NOT NULL,
	[FamilyName] [nvarchar](max) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[OrganisationName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[IDNumber] [nvarchar](50) NOT NULL,
	[IDDocumentName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Invoice_ID] [nchar](10) NOT NULL,
	[Contract_ID] [int] NOT NULL,
	[Settled] [nvarchar](50) NOT NULL,
	[Sum] [money] NOT NULL,
	[Sum_inclVAT] [float] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Invoice_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Contarct_ID] [nchar](10) NOT NULL,
	[Date] [date] NOT NULL,
	[DepositPayed] [nvarchar](50) NOT NULL,
	[Order_ID] [int] NOT NULL,
	[ContractTotalPrice] [nvarchar](50) NOT NULL,
	[ContracTotalPrice_inclVAT] [nvarchar](50) NOT NULL,
	[ProductionProcess] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Contarct_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order details]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order details](
	[Detail_ID] [nchar](10) NOT NULL,
	[Accessory_ID] [nchar](10) NOT NULL,
	[Order_ID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Order details] PRIMARY KEY CLUSTERED 
(
	[Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[Partner_ID] [nchar](10) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[Partner_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesPerson]    Script Date: 12/5/2021 10:01:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPerson](
	[SalesPerson_ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[FamilyName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SalesPerson] PRIMARY KEY CLUSTERED 
(
	[SalesPerson_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ShipyardDB] SET  READ_WRITE 
GO

