﻿USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = N'CS6232-g3')
DROP DATABASE [CS6232-g3];
GO

CREATE DATABASE [CS6232-g3];
GO

USE [CS6232-g3];
GO

-- Login Table
CREATE TABLE [dbo].[Login] (
    [LoginID] INT NOT NULL IDENTITY(1,1),
    [Username] VARCHAR(45) NOT NULL,
    [Password] VARCHAR(45) NOT NULL,
    CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED ([LoginID] ASC)
);
GO

-- Employee Table
CREATE TABLE [dbo].[Employee] (
    [EmployeeID] INT NOT NULL IDENTITY(1,1),
    [LoginID] INT NOT NULL,
    [FirstName] VARCHAR(45) NOT NULL,
    [LastName] VARCHAR(45) NOT NULL,
    [Gender] CHAR(1),
    [DateOfBirth] DATE NOT NULL,
    [Address1] VARCHAR(150) NOT NULL,
    [Address2] VARCHAR(150),
    [City] VARCHAR(45) NOT NULL,
    [State] VARCHAR(45) NOT NULL,
    [Zip] VARCHAR(10) NOT NULL,
    [ContactPhone] CHAR(10) NOT NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
    CONSTRAINT [FK_Employee_Login] FOREIGN KEY ([LoginID]) REFERENCES [dbo].[Login]([LoginID])
);
GO

-- Member Table
CREATE TABLE [dbo].[Member] (
    [MemberID] INT NOT NULL IDENTITY(1,1),
    [FirstName] VARCHAR(200) NOT NULL,
    [LastName] VARCHAR(200) NOT NULL,
    [Gender] CHAR(1),
    [DateOfBirth] DATE NOT NULL,
    [Address1] VARCHAR(150) NOT NULL,
    [Address2] VARCHAR(150),
    [City] VARCHAR(45) NOT NULL,
    [State] VARCHAR(45) NOT NULL,
    [Zip] VARCHAR(10) NOT NULL,
    [ContactPhone] CHAR(10) NOT NULL,
    CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED ([MemberID] ASC)
);
GO

-- FurnitureCategory Table
CREATE TABLE [dbo].[FurnitureCategory] (
    [CategoryName] VARCHAR(45) NOT NULL,
    CONSTRAINT [PK_FurnitureCategory] PRIMARY KEY CLUSTERED ([CategoryName] ASC)
);
GO

-- FurnitureStyle Table
CREATE TABLE [dbo].[FurnitureStyle] (
    [StyleName] VARCHAR(45) NOT NULL,
    CONSTRAINT [PK_FurnitureStyle] PRIMARY KEY CLUSTERED ([StyleName] ASC)
);
GO

-- Furniture Table
CREATE TABLE [dbo].[Furniture] (
    [FurnitureID] INT NOT NULL IDENTITY(1,1),
    [CategoryName] VARCHAR(45) NOT NULL,
    [StyleName] VARCHAR(45) NOT NULL,
    [Name] VARCHAR(200) NOT NULL,
    [Description] VARCHAR(MAX) NOT NULL,
    [RentalRatePerDay] DECIMAL(10,2) NOT NULL,
    [InStockQuantity] INT NOT NULL,
    [TotalQuantity] INT NOT NULL,
    CONSTRAINT [PK_Furniture] PRIMARY KEY CLUSTERED ([FurnitureID] ASC),
    CONSTRAINT [FK_Furniture_FurnitureCategory] FOREIGN KEY ([CategoryName]) REFERENCES [dbo].[FurnitureCategory]([CategoryName]),
    CONSTRAINT [FK_Furniture_FurnitureStyle] FOREIGN KEY ([StyleName]) REFERENCES [dbo].[FurnitureStyle]([StyleName])
);
GO

-- RentalTransaction Table
CREATE TABLE [dbo].[RentalTransaction] (
    [RentalTransactionID] INT NOT NULL IDENTITY(1,1),
    [MemberID] INT NOT NULL,
    [EmployeeID] INT NOT NULL,
    [RentalDate] DATE NOT NULL,
    [DueDate] DATE NOT NULL,
    [TotalCost] DECIMAL(10,2) NOT NULL,
    CONSTRAINT [PK_RentalTransaction] PRIMARY KEY CLUSTERED ([RentalTransactionID] ASC),
    CONSTRAINT [FK_RentalTransaction_Member] FOREIGN KEY ([MemberID]) REFERENCES [dbo].[Member]([MemberID]),
    CONSTRAINT [FK_RentalTransaction_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee]([EmployeeID])
);
GO

-- RentalItem Table
CREATE TABLE [dbo].[RentalItem] (
    [RentalItemID] INT NOT NULL IDENTITY(1,1),
    [RentalTransactionID] INT NOT NULL,
    [FurnitureID] INT NOT NULL,
    [Quantity] INT NOT NULL,
    [DailyRate] DECIMAL(10,2) NOT NULL,
    CONSTRAINT [PK_RentalItem] PRIMARY KEY CLUSTERED ([RentalItemID] ASC),
    CONSTRAINT [FK_RentalItem_RentalTransaction] FOREIGN KEY ([RentalTransactionID]) REFERENCES [dbo].[RentalTransaction]([RentalTransactionID]),
    CONSTRAINT [FK_RentalItem_Furniture] FOREIGN KEY ([FurnitureID]) REFERENCES [dbo].[Furniture]([FurnitureID])
);
GO

-- ReturnTransaction Table
CREATE TABLE [dbo].[ReturnTransaction] (
    [ReturnTransactionID] INT NOT NULL IDENTITY(1,1),
    [EmployeeID] INT NOT NULL,
    [MemberID] INT NOT NULL,
    [ReturnDate] DATE NOT NULL,
    [QuantityReturned] INT NOT NULL,
    [ReturnAmount] DECIMAL(10,2) NOT NULL,
    [FineAmount] DECIMAL(10,2) NOT NULL,
    CONSTRAINT [PK_ReturnTransaction] PRIMARY KEY CLUSTERED ([ReturnTransactionID] ASC),
    CONSTRAINT [FK_ReturnTransaction_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee]([EmployeeID]),
    CONSTRAINT [FK_ReturnTransaction_Member] FOREIGN KEY ([MemberID]) REFERENCES [dbo].[Member]([MemberID])
);
GO

-- ReturnItem Table
CREATE TABLE [dbo].[ReturnItem] (
    [ReturnItemID] INT NOT NULL,
    [ReturnTransactionID] INT NOT NULL,
    [RentalItemID] INT NOT NULL,
    [QuantityReturned] INT NOT NULL,
    CONSTRAINT [PK_ReturnItem] PRIMARY KEY CLUSTERED ([ReturnItemID] ASC),
    CONSTRAINT [FK_ReturnItem_ReturnTransaction] FOREIGN KEY ([ReturnTransactionID]) REFERENCES [dbo].[ReturnTransaction]([ReturnTransactionID]),
    CONSTRAINT [FK_ReturnItem_RentalItem] FOREIGN KEY ([RentalItemID]) REFERENCES [dbo].[RentalItem]([RentalItemID])
);
GO