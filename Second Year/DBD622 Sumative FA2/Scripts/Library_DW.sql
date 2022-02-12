CREATE DATABASE  [Library_DW]
GO

USE [Library_DW]
GO 

CREATE SCHEMA [Port_Elizabeth]
GO

CREATE SCHEMA [Cape_Town]
GO

CREATE TABLE [Port_Elizabeth].[Author] (
    [Author_ID] INTEGER NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [Name] VARCHAR(50) NOT NULL,
	[Surname] VARCHAR(50) NOT NULL
);
GO

CREATE TABLE [Port_Elizabeth].[Book] (
    [Book_ID] INTEGER NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [ISBN] NVARCHAR(13) NOT NULL UNIQUE,
	[Title] NVARCHAR(100) NOT NULL,
	[Genre] NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE [Cape_Town].[Author] (
    [Author_ID] INTEGER NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [Name] VARCHAR(50) NOT NULL,
	[Surname] VARCHAR(50) NOT NULL
);
GO

CREATE TABLE [Cape_Town].[Book] (
    [Book_ID] INTEGER NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [ISBN] NVARCHAR(13) NOT NULL UNIQUE,
	[Title] NVARCHAR(100) NOT NULL,
	[Genre] NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE [dbo].[Catalog] (

    [Book_ID] INTEGER NOT NULL,
    [Author_ID] INTEGER NOT NULL,

	PRIMARY KEY ([Book_ID], [Author_ID]),

	CONSTRAINT FK_Catalog_Author_PE FOREIGN KEY ([Author_ID])
	REFERENCES [Port_Elizabeth].[Author] ([Author_ID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Catalog_Book_PE FOREIGN KEY ([Book_ID])
	REFERENCES [Port_Elizabeth].[Book] ([Book_ID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Catalog_Author_CT FOREIGN KEY ([Author_ID])
	REFERENCES [Cape_Town].[Author] ([Author_ID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Catalog_Book_CT FOREIGN KEY ([Book_ID])
	REFERENCES [Cape_Town].[Book] ([Book_ID])
	ON DELETE CASCADE
);
GO