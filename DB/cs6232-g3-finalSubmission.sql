USE [master]
GO
/****** Object:  Database [CS6232-g3]    Script Date: 5/3/2024 10:34:04 PM ******/
CREATE DATABASE [CS6232-g3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CS6232-g3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CS6232-g3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CS6232-g3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CS6232-g3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CS6232-g3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CS6232-g3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CS6232-g3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CS6232-g3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CS6232-g3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CS6232-g3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CS6232-g3] SET ARITHABORT OFF 
GO
ALTER DATABASE [CS6232-g3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CS6232-g3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CS6232-g3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CS6232-g3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CS6232-g3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CS6232-g3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CS6232-g3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CS6232-g3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CS6232-g3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CS6232-g3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CS6232-g3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CS6232-g3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CS6232-g3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CS6232-g3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CS6232-g3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CS6232-g3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CS6232-g3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CS6232-g3] SET RECOVERY FULL 
GO
ALTER DATABASE [CS6232-g3] SET  MULTI_USER 
GO
ALTER DATABASE [CS6232-g3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CS6232-g3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CS6232-g3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CS6232-g3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CS6232-g3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CS6232-g3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CS6232-g3', N'ON'
GO
ALTER DATABASE [CS6232-g3] SET QUERY_STORE = OFF
GO
USE [CS6232-g3]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NOT NULL,
	[FirstName] [varchar](45) NOT NULL,
	[LastName] [varchar](45) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Address1] [varchar](150) NOT NULL,
	[Address2] [varchar](150) NULL,
	[City] [varchar](45) NOT NULL,
	[State] [varchar](45) NOT NULL,
	[Zip] [varchar](10) NOT NULL,
	[ContactPhone] [char](10) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NOT NULL,
	[FirstName] [varchar](45) NOT NULL,
	[LastName] [varchar](45) NOT NULL,
	[Gender] [char](1) NULL,
	[DateOfBirth] [date] NOT NULL,
	[Address1] [varchar](150) NOT NULL,
	[Address2] [varchar](150) NULL,
	[City] [varchar](45) NOT NULL,
	[State] [varchar](45) NOT NULL,
	[Zip] [varchar](10) NOT NULL,
	[ContactPhone] [char](10) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Furniture]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Furniture](
	[FurnitureID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](45) NOT NULL,
	[StyleName] [varchar](45) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[RentalRatePerDay] [decimal](10, 2) NOT NULL,
	[InStockQuantity] [int] NOT NULL,
	[TotalQuantity] [int] NOT NULL,
 CONSTRAINT [PK_Furniture] PRIMARY KEY CLUSTERED 
(
	[FurnitureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FurnitureCategory]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FurnitureCategory](
	[CategoryName] [varchar](45) NOT NULL,
 CONSTRAINT [PK_FurnitureCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FurnitureStyle]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FurnitureStyle](
	[StyleName] [varchar](45) NOT NULL,
 CONSTRAINT [PK_FurnitureStyle] PRIMARY KEY CLUSTERED 
(
	[StyleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[LoginID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](45) NOT NULL,
	[Password] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](200) NOT NULL,
	[LastName] [varchar](200) NOT NULL,
	[Gender] [char](1) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Address1] [varchar](150) NOT NULL,
	[Address2] [varchar](150) NULL,
	[City] [varchar](45) NOT NULL,
	[State] [varchar](45) NOT NULL,
	[Zip] [varchar](10) NOT NULL,
	[ContactPhone] [char](10) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalItem]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalItem](
	[RentalItemID] [int] IDENTITY(1,1) NOT NULL,
	[RentalTransactionID] [int] NOT NULL,
	[FurnitureID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[DailyRate] [decimal](10, 2) NOT NULL,
	[QuantityReturned] [int] NOT NULL,
 CONSTRAINT [PK_RentalItem] PRIMARY KEY CLUSTERED 
(
	[RentalItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalTransaction]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalTransaction](
	[RentalTransactionID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[RentalDate] [date] NOT NULL,
	[DueDate] [date] NOT NULL,
	[TotalCost] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_RentalTransaction] PRIMARY KEY CLUSTERED 
(
	[RentalTransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnItem]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnItem](
	[ReturnItemID] [int] IDENTITY(1,1) NOT NULL,
	[ReturnTransactionID] [int] NOT NULL,
	[RentalItemID] [int] NOT NULL,
	[QuantityReturned] [int] NOT NULL,
 CONSTRAINT [PK_ReturnItem] PRIMARY KEY CLUSTERED 
(
	[ReturnItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnTransaction]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnTransaction](
	[ReturnTransactionID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[ReturnDate] [date] NOT NULL,
	[ReturnAmount] [decimal](10, 2) NOT NULL,
	[FineAmount] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_ReturnTransaction] PRIMARY KEY CLUSTERED 
(
	[ReturnTransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [LoginID], [FirstName], [LastName], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (1, 4, N'Li', N'Yang', CAST(N'1989-05-15' AS Date), N'123 Admin St', NULL, N'Adminville', N'GA', N'12345', N'1234567890')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [LoginID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (1, 1, N'Deeksha', N'Namani', N'F', CAST(N'1997-01-01' AS Date), N'123 Maple St', NULL, N'Carrollton', N'GA', N'30118', N'1234567890')
INSERT [dbo].[Employee] ([EmployeeID], [LoginID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (2, 2, N'Benjamin', N'Lively', N'M', CAST(N'1992-03-03' AS Date), N'125 Maple St', NULL, N'Temple', N'GA', N'12345', N'1234567892')
INSERT [dbo].[Employee] ([EmployeeID], [LoginID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (3, 3, N'Stan', N'Shadrix', N'M', CAST(N'1991-02-01' AS Date), N'518 Longview St', NULL, N'Carrollton', N'GA', N'30117', N'4049159023')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Furniture] ON 

INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (1, N'Chair', N'Modern', N'Modern Chair', N'A sleek, modern chair.', CAST(10.00 AS Decimal(10, 2)), 8, 10)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (2, N'Table', N'Traditional', N'Traditional Table', N'A sturdy, traditional table.', CAST(15.00 AS Decimal(10, 2)), 9, 10)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (3, N'Sofa', N'Contemporary', N'Contemporary Sofa', N'A comfortable, contemporary sofa.', CAST(20.00 AS Decimal(10, 2)), 7, 10)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (4, N'Bed', N'Rustic', N'Rustic Bed', N'A cozy, rustic bed.', CAST(25.00 AS Decimal(10, 2)), 8, 10)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (5, N'Desk', N'Industrial', N'Industrial Desk', N'A solid, industrial desk.', CAST(30.00 AS Decimal(10, 2)), 9, 10)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (6, N'Chair', N'Modern', N'Sleek Office Chair', N'A modern chair perfect for any office setting.', CAST(12.00 AS Decimal(10, 2)), 6, 6)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (7, N'Chair', N'Traditional', N'Classic Wooden Chair', N'A traditional chair with timeless design.', CAST(8.00 AS Decimal(10, 2)), 7, 8)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (8, N'Chair', N'Victorian', N'Victorian Armchair', N'An elegant and ornate chair, perfect for adding a touch of class.', CAST(15.00 AS Decimal(10, 2)), 4, 4)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (9, N'Table', N'Modern', N'Minimalist Coffee Table', N'A minimalist table that brings a modern touch to any room.', CAST(14.00 AS Decimal(10, 2)), 9, 10)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (10, N'Table', N'Rustic', N'Rustic Log Table', N'A sturdy table that brings a warm, rustic feel to your home.', CAST(16.00 AS Decimal(10, 2)), 6, 6)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (11, N'Table', N'Industrial', N'Industrial Dining Table', N'A solid and durable table with an industrial look.', CAST(18.00 AS Decimal(10, 2)), 4, 5)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (12, N'Sofa', N'Contemporary', N'Contemporary Leather Sofa', N'A stylish and comfortable sofa that fits any contemporary space.', CAST(22.00 AS Decimal(10, 2)), 4, 5)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (13, N'Sofa', N'Modern', N'Modern Sectional Sofa', N'A modern sectional sofa that offers both style and comfort.', CAST(24.00 AS Decimal(10, 2)), 6, 7)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (14, N'Sofa', N'Victorian', N'Victorian Loveseat', N'An ornately designed loveseat that exudes Victorian elegance.', CAST(26.00 AS Decimal(10, 2)), 3, 3)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (15, N'Bed', N'Modern', N'Modern Platform Bed', N'A sleek and stylish bed with a minimalist design.', CAST(28.00 AS Decimal(10, 2)), 7, 8)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (16, N'Bed', N'Traditional', N'Traditional Poster Bed', N'A classic bed with elegant posters that add a touch of tradition.', CAST(30.00 AS Decimal(10, 2)), 3, 4)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (17, N'Bed', N'Rustic', N'Rustic Log Bed', N'A cozy bed that brings the charm of rustic living into your bedroom.', CAST(32.00 AS Decimal(10, 2)), 6, 6)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (18, N'Desk', N'Modern', N'Glass Top Office Desk', N'A modern desk with a sleek glass top and minimalist frame.', CAST(35.00 AS Decimal(10, 2)), 17, 20)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (19, N'Desk', N'Traditional', N'Mahogany Executive Desk', N'An imposing mahogany desk that commands respect and authority.', CAST(40.00 AS Decimal(10, 2)), 16, 16)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (20, N'Desk', N'Industrial', N'Steel Frame Workstation', N'A sturdy and durable desk with a solid steel frame and industrial design.', CAST(33.00 AS Decimal(10, 2)), 20, 24)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (21, N'Desk', N'Contemporary', N'Compact Computer Desk', N'A contemporary compact desk perfect for small spaces and home offices.', CAST(28.00 AS Decimal(10, 2)), 30, 30)
INSERT [dbo].[Furniture] ([FurnitureID], [CategoryName], [StyleName], [Name], [Description], [RentalRatePerDay], [InStockQuantity], [TotalQuantity]) VALUES (22, N'Desk', N'Rustic', N'Reclaimed Wood Desk', N'A rustic desk made from reclaimed wood, each piece tells its own story.', CAST(37.00 AS Decimal(10, 2)), 10, 14)
SET IDENTITY_INSERT [dbo].[Furniture] OFF
GO
INSERT [dbo].[FurnitureCategory] ([CategoryName]) VALUES (N'Bed')
INSERT [dbo].[FurnitureCategory] ([CategoryName]) VALUES (N'Chair')
INSERT [dbo].[FurnitureCategory] ([CategoryName]) VALUES (N'Desk')
INSERT [dbo].[FurnitureCategory] ([CategoryName]) VALUES (N'Sofa')
INSERT [dbo].[FurnitureCategory] ([CategoryName]) VALUES (N'Table')
GO
INSERT [dbo].[FurnitureStyle] ([StyleName]) VALUES (N'Contemporary')
INSERT [dbo].[FurnitureStyle] ([StyleName]) VALUES (N'Industrial')
INSERT [dbo].[FurnitureStyle] ([StyleName]) VALUES (N'Modern')
INSERT [dbo].[FurnitureStyle] ([StyleName]) VALUES (N'Rustic')
INSERT [dbo].[FurnitureStyle] ([StyleName]) VALUES (N'Traditional')
INSERT [dbo].[FurnitureStyle] ([StyleName]) VALUES (N'Victorian')
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT INTO [dbo].[Login] ([LoginID], [Username], [Password])
VALUES 
(1, CONVERT(VARCHAR(64), HASHBYTES('MD5', CONVERT(varbinary, N'user1')), 2), 
     CONVERT(VARCHAR(64), HASHBYTES('MD5', CONVERT(varbinary, N'password1')), 2)),
(2, CONVERT(VARCHAR(64), HASHBYTES('MD5', CONVERT(varbinary, N'user2')), 2), 
     CONVERT(VARCHAR(64), HASHBYTES('MD5', CONVERT(varbinary, N'password2')), 2)),
(3, CONVERT(VARCHAR(64), HASHBYTES('MD5', CONVERT(varbinary, N'user3')), 2), 
     CONVERT(VARCHAR(64), HASHBYTES('MD5', CONVERT(varbinary, N'password3')), 2)),
(4, CONVERT(VARCHAR(64), HASHBYTES('MD5', CONVERT(varbinary, N'admin')), 2), 
     CONVERT(VARCHAR(64), HASHBYTES('MD5', CONVERT(varbinary, N'password01')), 2));

SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (1, N'Pooja', N'Shetty', N'F', CAST(N'1990-01-01' AS Date), N'128 Dueberry St', N'Apt 1', N'Atlanta', N'GA', N'12345', N'1234567895')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (2, N'Ian', N'Hallman', N'M', CAST(N'1991-02-02' AS Date), N'129 BlueRose St', N'Apt 2', N'Townsville', N'GA', N'30118', N'1234567896')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (3, N'Rob', N'Melisso', N'M', CAST(N'1992-03-03' AS Date), N'130 King St', N'Apt 3', N'Carrollton', N'GA', N'30130', N'1234567897')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (4, N'Jodarn', N'Lee', N'F', CAST(N'1993-04-04' AS Date), N'131 TimeSquare St', N'Apt 4', N'Villa Rica', N'GA', N'12345', N'1234567898')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (5, N'Felix', N'Foi', N'M', CAST(N'1994-05-05' AS Date), N'132 CitySquare St', N'Apt 5', N'Hellan', N'GA', N'12890', N'1234567899')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (6, N'Bonnie', N'Shadrix', N'F', CAST(N'2010-02-01' AS Date), N'200 Hickory Chase', NULL, N'Carrollton', N'GA', N'30117', N'4049159023')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (7, N'Stan', N'Shadrix', N'M', CAST(N'1991-02-01' AS Date), N'518 Longview st.', NULL, N'CTown', N'GA', N'30117', N'4049159023')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (8, N'Samantha', N'Rollins', N'F', CAST(N'1992-02-20' AS Date), N'Sam''s Apt', NULL, N'Newnan', N'GA', N'30601', N'0123456789')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (9, N'Samuel', N'Horsley', N'M', CAST(N'1984-11-13' AS Date), N'Rome St.', NULL, N'Carrollton', N'GA', N'30117', N'0123455555')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (10, N'Greg', N'Shadrix', N'M', CAST(N'1956-04-07' AS Date), N'200 Hickory Chase', NULL, N'Carrollton', N'GA', N'30117', N'0001112222')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (11, N'Lila', N'Shadrix', N'F', CAST(N'2020-07-04' AS Date), N'123 Dawg St.', NULL, N'Athens', N'GA', N'30601', N'1337133713')
INSERT [dbo].[Member] ([MemberID], [FirstName], [LastName], [Gender], [DateOfBirth], [Address1], [Address2], [City], [State], [Zip], [ContactPhone]) VALUES (12, N'Dawson', N'Daniel', N'M', CAST(N'2010-07-14' AS Date), N'123 Maple St.', NULL, N'Carrollton', N'GA', N'30117', N'1337133713')
SET IDENTITY_INSERT [dbo].[Member] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalItem] ON 

INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (1, 1, 4, 5, CAST(125.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (2, 2, 15, 1, CAST(28.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (3, 3, 20, 4, CAST(132.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (4, 4, 4, 4, CAST(100.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (5, 5, 1, 2, CAST(20.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (6, 6, 15, 2, CAST(56.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (7, 6, 16, 1, CAST(30.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (8, 6, 20, 4, CAST(132.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (9, 7, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (10, 8, 7, 2, CAST(16.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (11, 9, 13, 3, CAST(72.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (12, 10, 9, 1, CAST(14.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (13, 10, 1, 3, CAST(30.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (14, 11, 18, 5, CAST(175.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (15, 12, 19, 1, CAST(40.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (16, 13, 5, 1, CAST(30.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (17, 14, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (18, 15, 5, 1, CAST(30.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (19, 16, 3, 2, CAST(40.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (20, 17, 5, 1, CAST(30.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (21, 18, 2, 1, CAST(15.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (22, 19, 21, 1, CAST(28.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (23, 20, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (24, 21, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (25, 22, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (26, 23, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (27, 24, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (28, 25, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (29, 26, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (30, 27, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (31, 28, 1, 1, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (32, 29, 5, 1, CAST(30.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (33, 30, 5, 2, CAST(60.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (34, 30, 12, 1, CAST(22.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (35, 31, 3, 3, CAST(60.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[RentalItem] ([RentalItemID], [RentalTransactionID], [FurnitureID], [Quantity], [DailyRate], [QuantityReturned]) VALUES (36, 32, 3, 3, CAST(60.00 AS Decimal(10, 2)), 2)
SET IDENTITY_INSERT [dbo].[RentalItem] OFF
GO
SET IDENTITY_INSERT [dbo].[RentalTransaction] ON 

INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (1, 7, 3, CAST(N'2024-05-02' AS Date), CAST(N'2024-05-02' AS Date), CAST(133.75 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (2, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-04' AS Date), CAST(59.92 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (3, 9, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-04' AS Date), CAST(282.48 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (4, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-04' AS Date), CAST(214.00 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (5, 9, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-04' AS Date), CAST(42.80 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (6, 1, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-17' AS Date), CAST(3498.90 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (7, 1, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-09' AS Date), CAST(74.90 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (8, 2, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(51.36 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (9, 3, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-09' AS Date), CAST(539.28 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (10, 4, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-09' AS Date), CAST(329.56 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (11, 5, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-24' AS Date), CAST(4119.50 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (12, 10, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-04' AS Date), CAST(85.60 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (13, 11, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(96.30 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (14, 12, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(32.10 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (15, 12, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(96.30 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (16, 11, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(128.40 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (17, 10, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(96.30 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (18, 11, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-06' AS Date), CAST(64.20 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (19, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-06' AS Date), CAST(119.84 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (20, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(32.10 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (21, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(32.10 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (22, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(32.10 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (23, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(32.10 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (24, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(32.10 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (25, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(32.10 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (26, 5, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(32.10 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (27, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-03' AS Date), CAST(10.70 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (28, 4, 2, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(32.10 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (29, 6, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(96.30 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (30, 6, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-06' AS Date), CAST(350.96 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (31, 6, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(192.60 AS Decimal(10, 2)))
INSERT [dbo].[RentalTransaction] ([RentalTransactionID], [MemberID], [EmployeeID], [RentalDate], [DueDate], [TotalCost]) VALUES (32, 7, 3, CAST(N'2024-05-03' AS Date), CAST(N'2024-05-05' AS Date), CAST(192.60 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[RentalTransaction] OFF
GO
SET IDENTITY_INSERT [dbo].[ReturnItem] ON 

INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (1, 1, 1, 3)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (2, 2, 1, 2)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (3, 2, 2, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (4, 3, 4, 2)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (5, 4, 3, 2)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (6, 5, 5, 2)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (7, 6, 8, 2)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (8, 6, 6, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (9, 7, 9, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (10, 8, 10, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (11, 9, 11, 2)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (12, 10, 13, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (13, 11, 14, 2)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (14, 12, 15, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (15, 13, 16, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (16, 14, 17, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (17, 15, 18, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (18, 16, 19, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (19, 17, 20, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (20, 18, 22, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (21, 19, 23, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (22, 20, 24, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (23, 21, 25, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (24, 22, 26, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (25, 23, 27, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (26, 24, 28, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (27, 25, 29, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (28, 26, 30, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (29, 27, 31, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (30, 28, 32, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (31, 29, 33, 1)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (32, 30, 35, 2)
INSERT [dbo].[ReturnItem] ([ReturnItemID], [ReturnTransactionID], [RentalItemID], [QuantityReturned]) VALUES (33, 31, 36, 2)
SET IDENTITY_INSERT [dbo].[ReturnItem] OFF
GO
SET IDENTITY_INSERT [dbo].[ReturnTransaction] ON 

INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (1, 3, 7, CAST(N'2024-05-02' AS Date), CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (2, 3, 7, CAST(N'2024-05-03' AS Date), CAST(28.00 AS Decimal(10, 2)), CAST(125.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (3, 3, 7, CAST(N'2024-05-03' AS Date), CAST(100.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (4, 3, 9, CAST(N'2024-05-03' AS Date), CAST(132.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (5, 3, 9, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (6, 3, 1, CAST(N'2024-05-03' AS Date), CAST(2632.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (7, 3, 1, CAST(N'2024-05-03' AS Date), CAST(60.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (8, 3, 2, CAST(N'2024-05-03' AS Date), CAST(32.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (9, 3, 3, CAST(N'2024-05-03' AS Date), CAST(432.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (10, 3, 4, CAST(N'2024-05-03' AS Date), CAST(180.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (11, 3, 5, CAST(N'2024-05-03' AS Date), CAST(3675.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (12, 3, 10, CAST(N'2024-05-03' AS Date), CAST(40.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (13, 3, 11, CAST(N'2024-05-03' AS Date), CAST(60.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (14, 3, 12, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (15, 3, 12, CAST(N'2024-05-03' AS Date), CAST(60.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (16, 3, 11, CAST(N'2024-05-03' AS Date), CAST(80.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (17, 3, 10, CAST(N'2024-05-03' AS Date), CAST(60.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (18, 3, 7, CAST(N'2024-05-03' AS Date), CAST(84.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (19, 3, 7, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (20, 3, 7, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (21, 3, 7, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (22, 3, 7, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (23, 3, 7, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (24, 3, 7, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (25, 3, 5, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (26, 3, 7, CAST(N'2024-05-03' AS Date), CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (27, 2, 4, CAST(N'2024-05-03' AS Date), CAST(20.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (28, 3, 6, CAST(N'2024-05-03' AS Date), CAST(60.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (29, 3, 6, CAST(N'2024-05-03' AS Date), CAST(180.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (30, 3, 6, CAST(N'2024-05-03' AS Date), CAST(120.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[ReturnTransaction] ([ReturnTransactionID], [EmployeeID], [MemberID], [ReturnDate], [ReturnAmount], [FineAmount]) VALUES (31, 3, 7, CAST(N'2024-05-03' AS Date), CAST(120.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[ReturnTransaction] OFF
GO
ALTER TABLE [dbo].[RentalItem] ADD  DEFAULT ((0)) FOR [QuantityReturned]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([LoginID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Login]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_FurnitureCategory] FOREIGN KEY([CategoryName])
REFERENCES [dbo].[FurnitureCategory] ([CategoryName])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_FurnitureCategory]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_FurnitureStyle] FOREIGN KEY([StyleName])
REFERENCES [dbo].[FurnitureStyle] ([StyleName])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_FurnitureStyle]
GO
ALTER TABLE [dbo].[RentalItem]  WITH CHECK ADD  CONSTRAINT [FK_RentalItem_Furniture] FOREIGN KEY([FurnitureID])
REFERENCES [dbo].[Furniture] ([FurnitureID])
GO
ALTER TABLE [dbo].[RentalItem] CHECK CONSTRAINT [FK_RentalItem_Furniture]
GO
ALTER TABLE [dbo].[RentalItem]  WITH CHECK ADD  CONSTRAINT [FK_RentalItem_RentalTransaction] FOREIGN KEY([RentalTransactionID])
REFERENCES [dbo].[RentalTransaction] ([RentalTransactionID])
GO
ALTER TABLE [dbo].[RentalItem] CHECK CONSTRAINT [FK_RentalItem_RentalTransaction]
GO
ALTER TABLE [dbo].[RentalTransaction]  WITH CHECK ADD  CONSTRAINT [FK_RentalTransaction_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[RentalTransaction] CHECK CONSTRAINT [FK_RentalTransaction_Employee]
GO
ALTER TABLE [dbo].[RentalTransaction]  WITH CHECK ADD  CONSTRAINT [FK_RentalTransaction_Member] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[RentalTransaction] CHECK CONSTRAINT [FK_RentalTransaction_Member]
GO
ALTER TABLE [dbo].[ReturnItem]  WITH CHECK ADD  CONSTRAINT [FK_ReturnItem_RentalItem] FOREIGN KEY([RentalItemID])
REFERENCES [dbo].[RentalItem] ([RentalItemID])
GO
ALTER TABLE [dbo].[ReturnItem] CHECK CONSTRAINT [FK_ReturnItem_RentalItem]
GO
ALTER TABLE [dbo].[ReturnItem]  WITH CHECK ADD  CONSTRAINT [FK_ReturnItem_ReturnTransaction] FOREIGN KEY([ReturnTransactionID])
REFERENCES [dbo].[ReturnTransaction] ([ReturnTransactionID])
GO
ALTER TABLE [dbo].[ReturnItem] CHECK CONSTRAINT [FK_ReturnItem_ReturnTransaction]
GO
ALTER TABLE [dbo].[ReturnTransaction]  WITH CHECK ADD  CONSTRAINT [FK_ReturnTransaction_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[ReturnTransaction] CHECK CONSTRAINT [FK_ReturnTransaction_Employee]
GO
ALTER TABLE [dbo].[ReturnTransaction]  WITH CHECK ADD  CONSTRAINT [FK_ReturnTransaction_Member] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[ReturnTransaction] CHECK CONSTRAINT [FK_ReturnTransaction_Member]
GO
/****** Object:  StoredProcedure [dbo].[getMostPopularFurnitureDuringDates]    Script Date: 5/3/2024 10:34:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getMostPopularFurnitureDuringDates]
    @startDate DATE,
    @endDate DATE
AS
BEGIN
    -- Calculate the total number of rental transactions within the date range
    DECLARE @TotalRentalTransactions INT;
    SELECT @TotalRentalTransactions = COUNT(*) FROM RentalTransaction 
    WHERE RentalDate BETWEEN @startDate AND @endDate;

    SELECT 
        f.FurnitureID,
        f.CategoryName,
        f.Name,
        COUNT(DISTINCT rt.RentalTransactionID) AS RentalTransactionsCount,
        @TotalRentalTransactions AS TotalRentalTransactions,
        COUNT(DISTINCT rt.RentalTransactionID) * 100.0 / @TotalRentalTransactions AS PercentageOfRentals,
        SUM(CASE WHEN DATEDIFF(year, m.DateOfBirth, rt.RentalDate) BETWEEN 18 AND 29 THEN 1 ELSE 0 END) * 100.0 
            / COUNT(*) AS Percentage18To29,
        SUM(CASE WHEN DATEDIFF(year, m.DateOfBirth, rt.RentalDate) NOT BETWEEN 18 AND 29 THEN 1 ELSE 0 END) * 100.0 
            / COUNT(*) AS PercentageOutside18To29
    FROM 
        Furniture f
    INNER JOIN 
        RentalItem ri ON f.FurnitureID = ri.FurnitureID
    INNER JOIN 
        RentalTransaction rt ON ri.RentalTransactionID = rt.RentalTransactionID
    INNER JOIN 
        Member m ON rt.MemberID = m.MemberID
    WHERE 
        rt.RentalDate BETWEEN @startDate AND @endDate
    GROUP BY 
        f.FurnitureID, f.CategoryName, f.Name
    HAVING 
        COUNT(DISTINCT rt.RentalTransactionID) >= 2
    ORDER BY 
        RentalTransactionsCount DESC, f.FurnitureID DESC
END
GO
USE [master]
GO
ALTER DATABASE [CS6232-g3] SET  READ_WRITE 
GO
