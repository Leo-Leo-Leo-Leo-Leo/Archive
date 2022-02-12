CREATE DATABASE CTUDW
GO

USE CTUDW
GO

CREATE SCHEMA Auckland_Park
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[dbo].[Mark]'))
BEGIN;
    DROP TABLE [dbo].[Mark];
END;
GO

CREATE TABLE [dbo].[Mark] (
    [MarkID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
	[StudentID] INTEGER NOT NULL UNIQUE,
	[CourseID] INTEGER NOT NULL,
	[LUID] INTEGER NOT NULL UNIQUE,
	[InternationalID] INTEGER NOT NULL UNIQUE,
	[FacilitatorID] INTEGER NOT NULL
	);
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Student]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Student];
END;
GO

CREATE TABLE [Auckland_Park].[Student] (
    [StudentID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
	[Fullname] NVARCHAR(MAX),
	[ID_Number] NVARCHAR(MAX),
	[Address] NVARCHAR(MAX)
);
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Facilitator]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Facilitator];
END;
GO

CREATE TABLE [Auckland_Park].[Facilitator] (
    [FacilitatorID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
	[Fullname] NVARCHAR(MAX),
	[ID_Number] NVARCHAR(MAX),
	[Address] NVARCHAR(MAX)
);
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[LearningUnit]'))
BEGIN;
    DROP TABLE [Auckland_Park].[LearningUnit];
END;
GO

CREATE TABLE [Auckland_Park].[LearningUnit] (
    [LUID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
	[MarkAve] INT
);
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[International]'))
BEGIN;
    DROP TABLE [Auckland_Park].[International];
END;
GO

CREATE TABLE [Auckland_Park].[International] (
    [InternationalID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
	[Name] NVARCHAR(MAX),
	[MarkAve] INT
);
GO  

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Course]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Course];
END;
GO

CREATE TABLE [Auckland_Park].[Course] (
    [CourseID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
	[Name] NVARCHAR(MAX),
	[Desc] NVARCHAR(MAX)
);
GO



ALTER TABLE [dbo].[Mark]
	ADD CONSTRAINT FK_Mark_Student FOREIGN KEY ([StudentID])
	REFERENCES [Auckland_Park].[Student] ([StudentID])
	ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Mark]
	ADD CONSTRAINT FK_Mark_Course FOREIGN KEY ([CourseID])
	REFERENCES [Auckland_Park].[Course] ([CourseID])
	ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Mark]
	ADD CONSTRAINT FK_Mark_Fac FOREIGN KEY ([FacilitatorID])
	REFERENCES [Auckland_Park].[Facilitator] ([FacilitatorID])
	ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Mark]
	ADD CONSTRAINT FK_Mark_Int FOREIGN KEY ([InternationalID])
	REFERENCES [Auckland_Park].[International] ([InternationalID])
	ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Mark]
	ADD CONSTRAINT FK_Mark_LU FOREIGN KEY ([LUID])
	REFERENCES [Auckland_Park].[LearningUnit] ([LUID])
	ON DELETE CASCADE
GO
