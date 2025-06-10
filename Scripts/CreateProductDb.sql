USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ProductManagementDB')
BEGIN
    ALTER DATABASE [ProductManagementDB] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [ProductManagementDB];
END
GO

CREATE DATABASE [ProductManagementDB];
GO

USE [ProductManagementDB];
GO

CREATE TABLE [Products] (
    [Id] INT PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(100) NOT NULL,
    [Quantity] INT NOT NULL,
    [Price] DECIMAL(18,2) NOT NULL
);
GO

INSERT INTO [Products] ([Name], [Quantity], [Price]) VALUES
('Laptop', 10, 999.99),
('Smartphone', 20, 699.99),
('Tablet', 15, 399.99);
GO