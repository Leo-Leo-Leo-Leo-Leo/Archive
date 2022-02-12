CREATE DATABASE [ComicsDB]
GO

USE [ComicsDB]
GO

-------------------------------------------------------------------------------------------------------------------------------SCHEMAS

CREATE SCHEMA [Bloemfontein]
GO
CREATE SCHEMA [Boksburg]
GO
CREATE SCHEMA [Durban]
GO
CREATE SCHEMA [Port_Elizabeth]   
GO
CREATE SCHEMA [Polokwane]
GO
CREATE SCHEMA [Vereeniging]
GO
CREATE SCHEMA [Potchefstroom]
GO
CREATE SCHEMA [Cape_Town]
GO
CREATE SCHEMA [Pretoria]
GO
CREATE SCHEMA [Auckland_Park]
GO
CREATE SCHEMA [Roodepoort]
GO
CREATE SCHEMA [Nelspruit]
GO
CREATE SCHEMA [Stellenbosch]
GO

-------------------------------------------------------------------------------------------------------------------------------TABLES

CREATE TABLE [Bloemfontein].[Branch]
(
	[ID]		INT						IDENTITY(1,1) PRIMARY KEY,
	[Branch]	NVARCHAR(50)
)
GO

CREATE TABLE [Bloemfontein].[Users]
(
	[ID]				INT				IDENTITY(1,1)	PRIMARY KEY,
	[ID_Number]			NVARCHAR(13)	NOT NULL,
	[UserName]			NVARCHAR(40)	NOT NULL,
	[Email]				NVARCHAR(20)	NOT NULL,
	[FullName]			NVARCHAR(60)	NOT NULL,
	[Password]			NVARCHAR(40)	NOT NULL,
	[Date_Created]		DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Closest_Branch]	INT				NULL,
	[Active]			BIT				NOT NULL		DEFAULT 1

	CONSTRAINT FK_Users_Branch FOREIGN KEY ([Closest_Branch])	REFERENCES [Bloemfontein].[Branch]([ID]) ON DELETE CASCADE
)
GO

CREATE TABLE [Bloemfontein].[History_Users]
(
	[ID]				INT				NOT NULL	PRIMARY KEY,
	[ID_Number]			NVARCHAR(13)	NOT NULL,
	[UserName]			NVARCHAR(40)	NOT NULL,
	[Email]				NVARCHAR(20)	NOT NULL,
	[FullName]			NVARCHAR(60)	NOT NULL,
	[Password]			NVARCHAR(40)	NOT NULL,
	[Date_Created]		DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Closest_Branch]	INT				NULL,
	[Active]			BIT				NOT NULL		DEFAULT 0
)
GO

CREATE TABLE [Bloemfontein].[Staff]
(
	[ID]			INT				IDENTITY(1,1)	PRIMARY KEY,
	[EMP_No]		INT				NOT NULL,
	[FirstName]		NVARCHAR(40)	NOT NULL,
	[LastName]		NVARCHAR(40)	NOT NULL,
	[Branch]		INT				NOT NULL,
	[PhoneNo]		NVARCHAR(20)	NOT NULL,
	[Hire_Date]		DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Job_Desc]		NVARCHAR(1000)	NULL,
	[Gender]		BIT				NOT NULL		DEFAULT 0,
	[Birthday]		DATE		    NULL,
	[Salary]		MONEY			NOT NULL		DEFAULT 0.00,
	[Active]		BIT				NOT NULL		DEFAULT 1

	CONSTRAINT FK_Branch_Staff FOREIGN KEY ([Branch])	REFERENCES [Bloemfontein].[Branch]([ID]) ON DELETE CASCADE
)
GO

CREATE TABLE [Bloemfontein].[History_Staff]
(
	[ID]			INT				NOT NULL	PRIMARY KEY,
	[EMP_No]		INT				NOT NULL,
	[FirstName]		NVARCHAR(40)	NOT NULL,
	[LastName]		NVARCHAR(40)	NOT NULL,
	[Branch]		INT				NOT NULL,
	[PhoneNo]		NVARCHAR(20)	NOT NULL,
	[Hire_Date]		DATETIME		NOT NULL,
	[Job_Desc]		NVARCHAR(1000)	NULL,
	[Gender]		BIT				NOT NULL		DEFAULT 0,
	[Birthday]		DATE		    NULL,
	[Salary]		MONEY			NOT NULL		DEFAULT 0.00,
	[Active]		BIT				NOT NULL		DEFAULT 0


)
GO

CREATE TABLE [Bloemfontein].[Comics]
(
	[ID]			INT				IDENTITY(1,1)	PRIMARY KEY,
	[Name]			NVARCHAR(40)	NOT NULL,
	[Author]		NVARCHAR(40)	NOT NULL,
	[Desc]			NVARCHAR(1000)  NULL,
	[Issue_No]		INT				NOT NULL,
	[Publisher]		NVARCHAR(40)	NOT NULL,
	[Cover_Page]	NVARCHAR(40)	NULL,
	[InStock]		BIT				NOT NULL		DEFAULT 1
)
GO

CREATE TABLE [Bloemfontein].[Sales]
(
	[ID]				INT				IDENTITY(1,1)	PRIMARY KEY,
	[Sale_Date]			DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Quantity]			INT				NOT NULL		DEFAULT 1,
	[Price_Before_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Price_After_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Active]			BIT				NOT NULL		DEFAULT 1


)
GO

CREATE TABLE [Bloemfontein].[History_Sales]
(
	[ID]				INT				NOT NULL	PRIMARY KEY,
	[Sale_Date]			DATETIME		NOT NULL,
	[Quantity]			INT				NOT NULL		DEFAULT 1,
	[Price_Before_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Price_After_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Active]			BIT				NOT NULL		DEFAULT 0


)
GO

-------------------------------------------------------------------------------------------------------------------------------Comp Tables

CREATE TABLE [Bloemfontein].[Comics_Sales]
(
	[ComicsID] 	INT,
	[SalesID]  	INT	
	
	PRIMARY KEY ([ComicsID],[SalesID])

	CONSTRAINT FK_Comics_Sales FOREIGN KEY ([ComicsID]) REFERENCES [Bloemfontein].[Comics]([ID]) ON DELETE CASCADE,
	CONSTRAINT FK_Sales_Comics FOREIGN KEY ([SalesID])	REFERENCES [Bloemfontein].[Sales]([ID]) ON DELETE CASCADE

)
GO
-------------------------------------------------------------------------------------------------------------------------------VIEWS

CREATE OR ALTER VIEW [Bloemfontein].[Total_Sales] AS
SELECT COUNT(*) AS [Total NUMBER Sales], SUM([Sales].[Price_Before_Tax]) AS [Total SALES Excluding Tax], SUM([Sales].[Price_After_Tax]) AS [Total SALES Including Tax]
FROM [Bloemfontein].[Sales]
UNION ALL
SELECT COUNT(*) AS [Total NUMBER Sales], SUM([History_Sales].[Price_Before_Tax]) AS [Total SALES Excluding Tax], SUM([History_Sales].[Price_After_Tax]) AS [Total SALES Including Tax]
FROM [Bloemfontein].[History_Sales]
GO

CREATE OR ALTER VIEW [Bloemfontein].[Total_Sales] AS
SELECT COUNT(*) AS [Total NUMBER Sales], SUM([Sales].[Price_Before_Tax]) AS [Total SALES Excluding Tax], SUM([Sales].[Price_After_Tax]) AS [Total SALES Including Tax]
FROM [Bloemfontein].[Sales]
GO

CREATE OR ALTER VIEW [Bloemfontein].[Total_Customers_per_Region] AS
SELECT DISTINCT [Branch].[Branch] AS [Branches], COUNT([Users].[Id]) AS [Customers]
FROM [Bloemfontein].[Users] INNER JOIN [Bloemfontein].[Branch] ON [Users].[Closest_Branch] = [Branch].[Id]
GROUP BY [Branch].[Branch]
GO
 
-------------------------------------------------------------------------------------------------------------------------------INSERTS
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Bloemfontein')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Boksburg')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Durban')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Port Elizabeth')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Polokwane')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Vereeniging')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Potchefstroom')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Cape-Town ')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Pretoria ')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Auckland Park')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Roodepoort')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Nelspruit')
INSERT INTO [Bloemfontein].[Branch](Branch)
VALUES ('Stellenbosch')

-------------------------------------------------------------------------------------------------------------------------------TABLES

CREATE TABLE [Boksburg].[Branch]
(
	[ID]		INT						IDENTITY(1,1) PRIMARY KEY,
	[Branch]	NVARCHAR(50)
)
GO

CREATE TABLE [Boksburg].[Users]
(
	[ID]				INT				IDENTITY(1,1)	PRIMARY KEY,
	[ID_Number]			NVARCHAR(13)	NOT NULL,
	[UserName]			NVARCHAR(40)	NOT NULL,
	[Email]				NVARCHAR(20)	NOT NULL,
	[FullName]			NVARCHAR(60)	NOT NULL,
	[Password]			NVARCHAR(40)	NOT NULL,
	[Date_Created]		DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Closest_Branch]	INT				NULL,
	[Active]			BIT				NOT NULL		DEFAULT 1

	CONSTRAINT FK_Users_Branch FOREIGN KEY ([Closest_Branch])	REFERENCES [Boksburg].[Branch]([ID]) ON DELETE CASCADE
)
GO

CREATE TABLE [Boksburg].[History_Users]
(
	[ID]				INT				NOT NULL	PRIMARY KEY,
	[ID_Number]			NVARCHAR(13)	NOT NULL,
	[UserName]			NVARCHAR(40)	NOT NULL,
	[Email]				NVARCHAR(20)	NOT NULL,
	[FullName]			NVARCHAR(60)	NOT NULL,
	[Password]			NVARCHAR(40)	NOT NULL,
	[Date_Created]		DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Closest_Branch]	INT				NULL,
	[Active]			BIT				NOT NULL		DEFAULT 0
)
GO

CREATE TABLE [Boksburg].[Staff]
(
	[ID]			INT				IDENTITY(1,1)	PRIMARY KEY,
	[EMP_No]		INT				NOT NULL,
	[FirstName]		NVARCHAR(40)	NOT NULL,
	[LastName]		NVARCHAR(40)	NOT NULL,
	[Branch]		INT				NOT NULL,
	[PhoneNo]		NVARCHAR(20)	NOT NULL,
	[Hire_Date]		DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Job_Desc]		NVARCHAR(1000)	NULL,
	[Gender]		BIT				NOT NULL		DEFAULT 0,
	[Birthday]		DATE		    NULL,
	[Salary]		MONEY			NOT NULL		DEFAULT 0.00,
	[Active]		BIT				NOT NULL		DEFAULT 1

	CONSTRAINT FK_Branch_Staff FOREIGN KEY ([Branch])	REFERENCES [Boksburg].[Branch]([ID]) ON DELETE CASCADE
)
GO

CREATE TABLE [Boksburg].[History_Staff]
(
	[ID]			INT				NOT NULL	PRIMARY KEY,
	[EMP_No]		INT				NOT NULL,
	[FirstName]		NVARCHAR(40)	NOT NULL,
	[LastName]		NVARCHAR(40)	NOT NULL,
	[Branch]		INT				NOT NULL,
	[PhoneNo]		NVARCHAR(20)	NOT NULL,
	[Hire_Date]		DATETIME		NOT NULL,
	[Job_Desc]		NVARCHAR(1000)	NULL,
	[Gender]		BIT				NOT NULL		DEFAULT 0,
	[Birthday]		DATE		    NULL,
	[Salary]		MONEY			NOT NULL		DEFAULT 0.00,
	[Active]		BIT				NOT NULL		DEFAULT 0


)
GO

CREATE TABLE [Boksburg].[Comics]
(
	[ID]			INT				IDENTITY(1,1)	PRIMARY KEY,
	[Name]			NVARCHAR(40)	NOT NULL,
	[Author]		NVARCHAR(40)	NOT NULL,
	[Desc]			NVARCHAR(1000)  NULL,
	[Issue_No]		INT				NOT NULL,
	[Publisher]		NVARCHAR(40)	NOT NULL,
	[Cover_Page]	NVARCHAR(40)	NULL,
	[InStock]		BIT				NOT NULL		DEFAULT 1
)
GO

CREATE TABLE [Boksburg].[Sales]
(
	[ID]				INT				IDENTITY(1,1)	PRIMARY KEY,
	[Sale_Date]			DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Quantity]			INT				NOT NULL		DEFAULT 1,
	[Price_Before_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Price_After_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Active]			BIT				NOT NULL		DEFAULT 1


)
GO

CREATE TABLE [Boksburg].[History_Sales]
(
	[ID]				INT				NOT NULL	PRIMARY KEY,
	[Sale_Date]			DATETIME		NOT NULL,
	[Quantity]			INT				NOT NULL		DEFAULT 1,
	[Price_Before_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Price_After_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Active]			BIT				NOT NULL		DEFAULT 0


)
GO

-------------------------------------------------------------------------------------------------------------------------------Comp Tables

CREATE TABLE [Boksburg].[Comics_Sales]
(
	[ComicsID] 	INT,
	[SalesID]  	INT	
	
	PRIMARY KEY ([ComicsID],[SalesID])

	CONSTRAINT FK_Comics_Sales FOREIGN KEY ([ComicsID]) REFERENCES [Boksburg].[Comics]([ID]) ON DELETE CASCADE,
	CONSTRAINT FK_Sales_Comics FOREIGN KEY ([SalesID])	REFERENCES [Boksburg].[Sales]([ID]) ON DELETE CASCADE

)
GO
-------------------------------------------------------------------------------------------------------------------------------VIEWS

CREATE OR ALTER VIEW [Boksburg].[Total_Sales] AS
SELECT COUNT(*) AS [Total NUMBER Sales], SUM([Sales].[Price_Before_Tax]) AS [Total SALES Excluding Tax], SUM([Sales].[Price_After_Tax]) AS [Total SALES Including Tax]
FROM [Boksburg].[Sales]
UNION ALL
SELECT COUNT(*) AS [Total NUMBER Sales], SUM([History_Sales].[Price_Before_Tax]) AS [Total SALES Excluding Tax], SUM([History_Sales].[Price_After_Tax]) AS [Total SALES Including Tax]
FROM [Boksburg].[History_Sales]
GO

CREATE OR ALTER VIEW [Boksburg].[Total_Sales] AS
SELECT COUNT(*) AS [Total NUMBER Sales], SUM([Sales].[Price_Before_Tax]) AS [Total SALES Excluding Tax], SUM([Sales].[Price_After_Tax]) AS [Total SALES Including Tax]
FROM [Boksburg].[Sales]
GO

CREATE OR ALTER VIEW [Boksburg].[Total_Customers_per_Region] AS
SELECT DISTINCT [Branch].[Branch] AS [Branches], COUNT([Users].[Id]) AS [Customers]
FROM [Boksburg].[Users] INNER JOIN [Boksburg].[Branch] ON [Users].[Closest_Branch] = [Branch].[Id]
GROUP BY [Branch].[Branch]
GO
 
-------------------------------------------------------------------------------------------------------------------------------INSERTS
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Bloemfontein')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Boksburg')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Durban')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Port Elizabeth')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Polokwane')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Vereeniging')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Potchefstroom')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Cape-Town ')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Pretoria ')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Auckland Park')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Roodepoort')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Nelspruit')
INSERT INTO [Boksburg].[Branch](Branch)
VALUES ('Stellenbosch')


-------------------------------------------------------------------------------------------------------------------------------TABLES

CREATE TABLE [Durban].[Branch]
(
	[ID]		INT						IDENTITY(1,1) PRIMARY KEY,
	[Branch]	NVARCHAR(50)
)
GO

CREATE TABLE [Durban].[Users]
(
	[ID]				INT				IDENTITY(1,1)	PRIMARY KEY,
	[ID_Number]			NVARCHAR(13)	NOT NULL,
	[UserName]			NVARCHAR(40)	NOT NULL,
	[Email]				NVARCHAR(20)	NOT NULL,
	[FullName]			NVARCHAR(60)	NOT NULL,
	[Password]			NVARCHAR(40)	NOT NULL,
	[Date_Created]		DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Closest_Branch]	INT				NULL,
	[Active]			BIT				NOT NULL		DEFAULT 1

	CONSTRAINT FK_Users_Branch FOREIGN KEY ([Closest_Branch])	REFERENCES [Durban].[Branch]([ID]) ON DELETE CASCADE
)
GO

CREATE TABLE [Durban].[History_Users]
(
	[ID]				INT				NOT NULL	PRIMARY KEY,
	[ID_Number]			NVARCHAR(13)	NOT NULL,
	[UserName]			NVARCHAR(40)	NOT NULL,
	[Email]				NVARCHAR(20)	NOT NULL,
	[FullName]			NVARCHAR(60)	NOT NULL,
	[Password]			NVARCHAR(40)	NOT NULL,
	[Date_Created]		DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Closest_Branch]	INT				NULL,
	[Active]			BIT				NOT NULL		DEFAULT 0
)
GO

CREATE TABLE [Durban].[Staff]
(
	[ID]			INT				IDENTITY(1,1)	PRIMARY KEY,
	[EMP_No]		INT				NOT NULL,
	[FirstName]		NVARCHAR(40)	NOT NULL,
	[LastName]		NVARCHAR(40)	NOT NULL,
	[Branch]		INT				NOT NULL,
	[PhoneNo]		NVARCHAR(20)	NOT NULL,
	[Hire_Date]		DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Job_Desc]		NVARCHAR(1000)	NULL,
	[Gender]		BIT				NOT NULL		DEFAULT 0,
	[Birthday]		DATE		    NULL,
	[Salary]		MONEY			NOT NULL		DEFAULT 0.00,
	[Active]		BIT				NOT NULL		DEFAULT 1

	CONSTRAINT FK_Branch_Staff FOREIGN KEY ([Branch])	REFERENCES [Durban].[Branch]([ID]) ON DELETE CASCADE
)
GO

CREATE TABLE [Durban].[History_Staff]
(
	[ID]			INT				NOT NULL	PRIMARY KEY,
	[EMP_No]		INT				NOT NULL,
	[FirstName]		NVARCHAR(40)	NOT NULL,
	[LastName]		NVARCHAR(40)	NOT NULL,
	[Branch]		INT				NOT NULL,
	[PhoneNo]		NVARCHAR(20)	NOT NULL,
	[Hire_Date]		DATETIME		NOT NULL,
	[Job_Desc]		NVARCHAR(1000)	NULL,
	[Gender]		BIT				NOT NULL		DEFAULT 0,
	[Birthday]		DATE		    NULL,
	[Salary]		MONEY			NOT NULL		DEFAULT 0.00,
	[Active]		BIT				NOT NULL		DEFAULT 0


)
GO

CREATE TABLE [Durban].[Comics]
(
	[ID]			INT				IDENTITY(1,1)	PRIMARY KEY,
	[Name]			NVARCHAR(40)	NOT NULL,
	[Author]		NVARCHAR(40)	NOT NULL,
	[Desc]			NVARCHAR(1000)  NULL,
	[Issue_No]		INT				NOT NULL,
	[Publisher]		NVARCHAR(40)	NOT NULL,
	[Cover_Page]	NVARCHAR(40)	NULL,
	[InStock]		BIT				NOT NULL		DEFAULT 1
)
GO

CREATE TABLE [Durban].[Sales]
(
	[ID]				INT				IDENTITY(1,1)	PRIMARY KEY,
	[Sale_Date]			DATETIME		NOT NULL		DEFAULT GETDATE(),
	[Quantity]			INT				NOT NULL		DEFAULT 1,
	[Price_Before_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Price_After_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Active]			BIT				NOT NULL		DEFAULT 1


)
GO

CREATE TABLE [Durban].[History_Sales]
(
	[ID]				INT				NOT NULL	PRIMARY KEY,
	[Sale_Date]			DATETIME		NOT NULL,
	[Quantity]			INT				NOT NULL		DEFAULT 1,
	[Price_Before_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Price_After_Tax]	MONEY			NOT NULL		DEFAULT 0,
	[Active]			BIT				NOT NULL		DEFAULT 0


)
GO

-------------------------------------------------------------------------------------------------------------------------------Comp Tables

CREATE TABLE [Durban].[Comics_Sales]
(
	[ComicsID] 	INT,
	[SalesID]  	INT	
	
	PRIMARY KEY ([ComicsID],[SalesID])

	CONSTRAINT FK_Comics_Sales FOREIGN KEY ([ComicsID]) REFERENCES [Durban].[Comics]([ID]) ON DELETE CASCADE,
	CONSTRAINT FK_Sales_Comics FOREIGN KEY ([SalesID])	REFERENCES [Durban].[Sales]([ID]) ON DELETE CASCADE

)
GO
-------------------------------------------------------------------------------------------------------------------------------VIEWS

CREATE OR ALTER VIEW [Durban].[Total_Sales] AS
SELECT COUNT(*) AS [Total NUMBER Sales], SUM([Sales].[Price_Before_Tax]) AS [Total SALES Excluding Tax], SUM([Sales].[Price_After_Tax]) AS [Total SALES Including Tax]
FROM [Durban].[Sales]
UNION ALL
SELECT COUNT(*) AS [Total NUMBER Sales], SUM([History_Sales].[Price_Before_Tax]) AS [Total SALES Excluding Tax], SUM([History_Sales].[Price_After_Tax]) AS [Total SALES Including Tax]
FROM [Durban].[History_Sales]
GO

CREATE OR ALTER VIEW [Durban].[Total_Sales] AS
SELECT COUNT(*) AS [Total NUMBER Sales], SUM([Sales].[Price_Before_Tax]) AS [Total SALES Excluding Tax], SUM([Sales].[Price_After_Tax]) AS [Total SALES Including Tax]
FROM [Durban].[Sales]
GO

CREATE OR ALTER VIEW [Durban].[Total_Customers_per_Region] AS
SELECT DISTINCT [Branch].[Branch] AS [Branches], COUNT([Users].[Id]) AS [Customers]
FROM [Durban].[Users] INNER JOIN [Durban].[Branch] ON [Users].[Closest_Branch] = [Branch].[Id]
GROUP BY [Branch].[Branch]
GO
 
-------------------------------------------------------------------------------------------------------------------------------INSERTS
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Bloemfontein')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Boksburg')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Durban')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Port Elizabeth')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Polokwane')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Vereeniging')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Potchefstroom')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Cape-Town ')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Pretoria ')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Auckland Park')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Roodepoort')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Nelspruit')
INSERT INTO [Durban].[Branch](Branch)
VALUES ('Stellenbosch')



-------------------------------------------------------------------------------------------------------------------------------DML PROCEDURES
-------------------------------------------------------------------------------------------------------------------------------INSERT PROCEDURES

CREATE OR ALTER PROCEDURE [dbo].[INSERT_INTO_Branch]
 @Branch NVARCHAR(50),
 @NewBranch NVARCHAR(50)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'INSERT INTO ['+ @Branch + '].[Branch] (Branch)
			VALUES('+ @NewBranch +')';
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[INSERT_INTO_User]
 @Branch NVARCHAR(50),
 @ID_Number NVARCHAR(13),
 @UserName NVARCHAR(40),
 @Email NVARCHAR(20),
 @FullName NVARCHAR(60),
 @Password NVARCHAR(40),
 @Date_Created DATETIME,
 @Closest_Branch NVARCHAR(50)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'INSERT INTO ['+ @Branch + '].[Users] ( ID_Number, UserName, Email, FullName, Password, Date_Created, Closest_Branch )
			VALUES('+ @ID_Number +', '+ @UserName +', '+ @Email +', '+ @FullName +', '+ @Password +', '+ @Date_Created +', '+ @Closest_Branch +')';
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[INSERT_INTO_Staff]
	@Branch NVARCHAR(50),
	@EMP_No INT,
	@FirstName NVARCHAR(40),
	@LastName NVARCHAR(40),
	@Branch_No INT,
	@PhoneNo NVARCHAR(20),
	@Job_Desc NVARCHAR(1000),
	@Gender BIT,
	@Birthday DATETIME,
	@Salary MONEY
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'INSERT INTO ['+ @Branch +'].[Staff] (EMP_No,		FirstName,		LastName,		Branch_No,		PhoneNo,		Job_Desc,		 Gender,		Birthday,		 Salary ) 
			VALUES							('+ @EMP_No+', '+  @FirstName+', '+@LastName+', '+ @Branch_No+', '+@PhoneNo+', '+  @Job_Desc+', '+  @Gender+', '+  @Birthday+', '+  @Salary+')'
EXEC sp_executesql @sql
END 
GO

CREATE OR ALTER PROCEDURE [dbo].[INSERT_INTO_Comics]
	@Branch NVARCHAR(50),
	@Name			NVARCHAR(40),
	@Author		NVARCHAR(40),
	@Desc		NVARCHAR(1000),
	@Issue_No		INT,
	@Publisher		NVARCHAR(40),
	@Cover_Page	NVARCHAR(40)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'INSERT INTO ['+ @Branch + '].[Comics] ( [Name], Author, [Desc], Issue_No, Publisher, Cover_Page )
			VALUES('+ @Name +','+ @Author +', '+ @Desc +', '+ @Issue_No +', '+ @Publisher +', '+ @Cover_Page +') ';
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[INSERT_INTO_Sales]
	@Branch NVARCHAR(50),
	@Quantity			INT,
	@Price_Before_Tax	MONEY,
	@Price_After_Tax	MONEY
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'INSERT INTO ['+ @Branch + '].[Sales] ( Quantity, Price_Before_Tax, Price_After_Tax)
			VALUES('+ @Quantity +','+ @Price_Before_Tax +', '+ @Price_Before_Tax * 0.15 +') ';
EXEC sp_executesql @sql
END 
GO 
-------------------------------------------------------------------------------------------------------------------------------UPDATE PROCEDURES
CREATE OR ALTER PROCEDURE [dbo].[UPDATE_Branch]
 @ID INT,
 @Branch NVARCHAR(50),
 @NewBranch NVARCHAR(50)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'UPDATE ['+ @Branch + '].[Branch]
			SET  (Branch = '+ @NewBranch +')
			WHERE(ID = '+ @ID +')';
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[UPDATE_User]
 @ID INT,
 @Branch NVARCHAR(50),
 @ID_Number NVARCHAR(13),
 @UserName NVARCHAR(40),
 @Email NVARCHAR(20),
 @FullName NVARCHAR(60),
 @Password NVARCHAR(40),
 @Date_Created DATETIME,
 @Closest_Branch NVARCHAR(50)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'UPDATE ['+ @Branch + '].[User]
			SET  ( ID_Number = '+ @ID_Number +', UserName = '+ @UserName +', Email = '
			+ @Email +', @FullName = '+ @FullName +', Password = '+ @Password +', Date_Created = '+ @Date_Created 
			+', Closest_Branch = '+ @Closest_Branch +')
			WHERE(ID = '+ @ID +')';
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[UPDATE_Staff]
	@ID INT,
	@EMP_No INT,
	@FirstName NVARCHAR(40),
	@LastName NVARCHAR(40),
	@Branch INT,
	@PhoneNo NVARCHAR(20),
	@Job_Desc NVARCHAR(1000),
	@Gender BIT,
	@Birthday DATETIME,
	@Salary MONEY
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'UPDATE ['+ @Branch + '].[Staff]
			SET  ( EMP_No = '+ @EMP_No +', FirstName = '+ @FirstName +', LastName = '+ @LastName +',
				   Branch = '+ @Branch +', PhoneNo = '+ @PhoneNo +', Job_Desc = '+ @Job_Desc +', 
				   Gender = '+ @Gender +', Birthday = '+ @Birthday +', Salary = '+ @Salary +')
			WHERE(ID = '+ @ID +')';
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[UPDATE_Comics]
	@ID INT,
	@Branch NVARCHAR(50),
	@Name			NVARCHAR(40),
	@Author		NVARCHAR(40),
	@Desc		NVARCHAR(1000),
	@Issue_No		INT,
	@Publisher		NVARCHAR(40),
	@Cover_Page	NVARCHAR(40)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'UPDATE ['+ @Branch + '].[Comics]
			SET  ( Name = '+ @Name +', Author = '+ @Author +', Desc = '+ @Desc +',
				   Issue_No = '+ @Issue_No +', Publisher = '+ @Publisher +', @Cover_Page = '+ @Cover_Page +')
			WHERE(ID = '+ @ID +')';
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[UPDATE_Sales]
	@ID INT,
	@Branch NVARCHAR(50),
	@Quantity			INT,
	@Price_Before_Tax	MONEY,
	@Price_After_Tax	MONEY
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql = 'UPDATE ['+ @Branch + '].[Sales]
			SET  ( @Quantity = '+ @Quantity +', @Price_Before_Tax = '+ @Price_Before_Tax +', @Price_After_Tax = '+ @Price_After_Tax +')
			WHERE(ID = '+ @ID +')';
EXEC sp_executesql @sql
END 
GO 
-------------------------------------------------------------------------------------------------------------------------------DELETE PROCEDURES
CREATE OR ALTER PROCEDURE [dbo].[DELETE_Branch]
	@ID INT,
	@Branch NVARCHAR(50)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql =	'DELETE FROM ['+ @Branch +'] .[Branch]
			WHERE ID = 0'
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[DELETE_Sales]
	@Branch NVARCHAR(50)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql =	'DELETE FROM ['+ @Branch +'] .[Sales]
			WHERE Active = 0'
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[DELETE_Sales]
	@Branch NVARCHAR(50)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql =	'DELETE FROM ['+ @Branch +'] .[Sales]
			WHERE Active = 0'
EXEC sp_executesql @sql
END 
GO 

CREATE OR ALTER PROCEDURE [dbo].[DELETE_Sales]
	@Branch NVARCHAR(50)
AS 
BEGIN
DECLARE @sql NVARCHAR(1000)

SET @sql =	'DELETE FROM ['+ @Branch +'] .[Sales]
			WHERE Active = 0'
EXEC sp_executesql @sql
END 
GO 


-------------------------------------------------------------------------------------------------------------------------------PROCEDURES



-------------------------------------------------------------------------------------------------------------------------------TRIGGERS

--CREATE OR ALTER TRIGGER [Bloemfontein].[Supplier_Deleted]
--ON [Bloemfontein].[Sales]
--INSTEAD OF DELETE 
--AS
--BEGIN

--INTO [Bloemfontein].[History_Sales]
--EXEC(
--		SELECT [Sales].[Sale_Date] AS Sale_Date, [Sales].[Quantity] AS Quantity, [Sales].[Price_Before_Tax] AS Price_Before_Tax, 
--				[Sales].[Price_After_Tax] AS Price_After_Tax, [Sales].[Active] AS Active
--		FROM [Bloemfontein].[Sales] 
--		WHERE [Sales].[Active] = 0 AND  (MONTH(GETDATE()) - MONTH([Sales].[Sale_Date]) >= '2')
--END
--GO

--CREATE OR ALTER TRIGGER [Bloemfontein].[Supplier_Deleted]
--ON [dbo].[Supplier]
--AFTER DELETE 
--AS
--BEGIN
--	UPDATE [dbo].[Product]
--	SET [IsDiscontinued] = 1
--	FROM [dbo].[Supplier]
--	WHERE [Product].[SupplierId] <> [Supplier].[Id]
--END
--GO

--CREATE OR ALTER TRIGGER [Bloemfontein].[Supplier_Deleted]
--ON [dbo].[Supplier]
--AFTER DELETE 
--AS
--BEGIN
--	UPDATE [dbo].[Product]
--	SET [IsDiscontinued] = 1
--	FROM [dbo].[Supplier]
--	WHERE [Product].[SupplierId] <> [Supplier].[Id]
--END
--GO

