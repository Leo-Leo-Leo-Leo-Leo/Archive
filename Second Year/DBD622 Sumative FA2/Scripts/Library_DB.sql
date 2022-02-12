-----------------------
-----------------------
-----------------------
-----------------------
-----------------------
CREATE DATABASE [Libary_DB]
GO
-----------------------
-----------------------
-----------------------
-----------------------
-----------------------
USE [Libary_DB]
GO
-----------------------
-----------------------
-----------------------
-----------------------
-----------------------

CREATE SCHEMA [Port_Elizabeth]
GO
CREATE SCHEMA [Cape_Town]
GO
-----------------------
-----------------------
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Person]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Person];
END;
GO

CREATE TABLE [Port_Elizabeth].[Person] (
    [PersonID] INTEGER NOT NULL IDENTITY(1, 1),
    [Name] VARCHAR(255) NULL,
    [Surname] VARCHAR(255) NULL,
	[Limit] INTEGER NOT NULL,
    PRIMARY KEY ([PersonID])
);
GO

INSERT INTO [Port_Elizabeth].[Person]([Name],[Surname], [Limit]) VALUES('Kirk','Benson','5'),('Joshua','Sexton','5'),('Fiona','Whitney','5'),('Jane','Kelly','5'),('Kaseem','Dillard','5'),('Edward','Shaffer','5'),('Edward','Marquez','5'),('Carl','Ratliff','9'),('Neil','Vincent','9'),('Richard','Lowery','9');
INSERT INTO [Port_Elizabeth].[Person]([Name],[Surname], [Limit]) VALUES('Quinn','Gardner','9'),('Veronica','Sullivan','9'),('Eagan','Good','9'),('Lee','Rosario','9'),('Ciaran','Powell','9'),('Peter','Valentine','9'),('Brock','Crosby','9'),('Buckminster','Alford','9'),('Harriet','Vargas','9'),('Clare','Frazier','9');
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Fine]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Fine];
END;
GO

CREATE TABLE [Port_Elizabeth].[Fine] (
    [FineID] INTEGER NOT NULL IDENTITY(1, 1),
	[Date] DATETIME DEFAULT GETDATE(),
    [Amount] NVARCHAR(MAX) NULL,
    PRIMARY KEY ([FineID])
);
GO

INSERT INTO [Port_Elizabeth].[Fine]([Amount]) VALUES('R38.37'),('R86.63'),('R71.23'),('R38.54'),('R55.57'),('R58.07'),('R34.21'),('R39.12'),('R35.06'),('R89.90');
INSERT INTO [Port_Elizabeth].[Fine]([Amount]) VALUES('R51.20'),('R76.39'),('R74.73'),('R59.50'),('R12.11'),('R61.12'),('R49.51'),('R36.15'),('R77.17'),('R55.56');
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[TimeSlot]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[TimeSlot];
END;
GO

CREATE TABLE [Port_Elizabeth].[TimeSlot] (
    [TimeID] INTEGER NOT NULL IDENTITY(1, 1),
	[StartDate] DATETIME DEFAULT GETDATE(),
    [ReturnDate] DATETIME,
    PRIMARY KEY ([TimeID])
);
GO

INSERT INTO [Port_Elizabeth].[TimeSlot] VALUES ( (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()));
INSERT INTO [Port_Elizabeth].[TimeSlot] VALUES ( (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()));
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Faculty]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Faculty];
END;
GO

CREATE TABLE [Port_Elizabeth].[Faculty] (
    [FacultyID] INTEGER NOT NULL IDENTITY(1, 1),
    [Faculty] NVARCHAR(200),
    PRIMARY KEY ([FacultyID])
);
GO

INSERT INTO [Port_Elizabeth].[Faculty]([Faculty]) VALUES('pharetra ut,'),('scelerisque neque. Nullam'),('id,'),('mauris id sapien.'),('cursus. Nunc mauris'),('Proin sed turpis'),('et magnis'),('Sed eu');
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Book]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Book];
END;
GO

CREATE TABLE [Port_Elizabeth].[Book] (
    [BookID] INTEGER NOT NULL IDENTITY(1,1),
    [Name] NVARCHAR(200),
	[Genre] NVARCHAR(200) NULL,
	[IsActive] BIT NOT NULL,
    PRIMARY KEY ([BookID])
);
GO

INSERT INTO [Port_Elizabeth].[Book]([Name],[Genre],[IsActive]) VALUES('fames','Adventure','1'),('sit amet luctus vulputate,','Adventure','0'),('Duis elementum,','Horror','0'),('rutrum. Fusce dolor quam,','Romance','0'),('commodo at, libero. Morbi','Horror','0'),('odio','Thriller','0'),('vulputate, lacus. Cras','Drama','0'),('tristique senectus','Drama','0'),('Integer vitae nibh.','Comedy','1'),('velit. Aliquam nisl.','Comedy','1');
INSERT INTO [Port_Elizabeth].[Book]([Name],[Genre],[IsActive]) VALUES('elit, pharetra ut, pharetra','Horror','0'),('elementum at, egestas a,','Drama','1'),('diam.','Comedy','1'),('luctus et ultrices','Thriller','0'),('a sollicitudin','Adventure','1'),('dis parturient montes,','Romance','0'),('tellus lorem eu metus.','Comedy','1'),('nibh.','Horror','1'),('facilisis. Suspendisse commodo','Romance','1'),('porttitor tellus non','Thriller','0');
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Student]'))
BEGIN;
    DROP TABLE  [Port_Elizabeth].[Student];
END;
GO

CREATE TABLE [Port_Elizabeth].[Student] (
    [StudentID] INTEGER NOT NULL IDENTITY(1,1) UNIQUE,
    [PersonID] INTEGER NOT NULL,
    PRIMARY KEY ([StudentID], [PersonID]),

	CONSTRAINT FK_Student_Person FOREIGN KEY ([PersonID])
	REFERENCES [Port_Elizabeth].[Person] ([PersonID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Port_Elizabeth].[Student]([PersonID]) VALUES(1),(2),(3),(4),(5),(6),(7),(8);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Facilitator]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Facilitator];
END;
GO

CREATE TABLE [Port_Elizabeth].[Facilitator] (
    [FacilitatorID] INTEGER NOT NULL IDENTITY(1,1) UNIQUE,
    [PersonID] INTEGER NOT NULL,
    PRIMARY KEY ([FacilitatorID], [PersonID]),

	CONSTRAINT FK_Facilitator_Person FOREIGN KEY ([PersonID])
	REFERENCES [Port_Elizabeth].[Person] ([PersonID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Port_Elizabeth].[Facilitator]([PersonID]) VALUES(9),(10),(11),(12),(13),(14),(15),(16);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Facilitator_Faculty]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Facilitator_Faculty];
END;
GO

CREATE TABLE [Port_Elizabeth].[Facilitator_Faculty] (
    [FacilitatorID] INTEGER NOT NULL,
    [FacultyID] INTEGER NOT NULL,
    PRIMARY KEY ([FacilitatorID], [FacultyID]),

	CONSTRAINT FK_Faculty_Facilitator FOREIGN KEY ([FacultyID])
	REFERENCES [Port_Elizabeth].[Faculty] ([FacultyID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Facilitator_Faculty FOREIGN KEY ([FacilitatorID])
	REFERENCES [Port_Elizabeth].[Facilitator] ([FacilitatorID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Port_Elizabeth].[Facilitator_Faculty]([FacilitatorID],[FacultyID]) VALUES(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Student_Faculty]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Student_Faculty];
END;
GO

CREATE TABLE [Port_Elizabeth].[Student_Faculty] (
    [StudentID] INTEGER NOT NULL,
    [FacultyID] INTEGER NOT NULL,
    PRIMARY KEY ([StudentID], [FacultyID]),

	CONSTRAINT FK_Faculty_Student FOREIGN KEY ([FacultyID])
	REFERENCES [Port_Elizabeth].[Faculty] ([FacultyID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Student_Faculty FOREIGN KEY ([StudentID])
	REFERENCES [Port_Elizabeth].[Student] ([StudentID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Port_Elizabeth].[Student_Faculty]([StudentID],[FacultyID]) VALUES(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);

-----------------------
-----------------------
-----------------------

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Author]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Author];
END;
GO

CREATE TABLE [Port_Elizabeth].[Author] (
    [AuthorID] INTEGER NOT NULL IDENTITY(1,1) Unique,
    [PersonID] INTEGER NOT NULL,
    PRIMARY KEY ([AuthorID], [PersonID]),

	CONSTRAINT FK_Author_Person FOREIGN KEY ([PersonID])
	REFERENCES [Port_Elizabeth].[Person] ([PersonID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Port_Elizabeth].[Author]([PersonID]) VALUES(17),(18),(19),(20);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Author_Book]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Author_Book];
END;
GO

CREATE TABLE [Port_Elizabeth].[Author_Book] (
    [BookID]  INTEGER NOT NULL,
    [AuthorID] INTEGER NOT NULL,
    PRIMARY KEY ([BookID]),

	CONSTRAINT FK_Author_Book FOREIGN KEY ([AuthorID])
	REFERENCES [Port_Elizabeth].[Author] ([AuthorID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Book_Author FOREIGN KEY ([BookID])
	REFERENCES [Port_Elizabeth].[Book] ([BookID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Port_Elizabeth].[Author_Book]([AuthorID],[BookID]) VALUES(1,1),(2,2),(1,3),(4,4),(2,5),(1,6),(3,7),(2,8),(1,9),(3,10);
INSERT INTO [Port_Elizabeth].[Author_Book]([AuthorID],[BookID]) VALUES(2,11),(4,12),(4,13),(4,14),(2,15),(1,16),(1,17),(2,18),(1,19),(4,20);

-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[Booking]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[Booking];
END;
GO

CREATE TABLE [Port_Elizabeth].[Booking] (
    [PersonID] INTEGER NOT NULL,
    [BookID] INTEGER NOT NULL,
	[TimeID] INTEGER NOT NULL,
    PRIMARY KEY ([TimeID]),

	CONSTRAINT FK_Booking_Person FOREIGN KEY ([PersonID])
	REFERENCES [Port_Elizabeth].[Person] ([PersonID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Booking_Book FOREIGN KEY ([BookID])
	REFERENCES [Port_Elizabeth].[Book] ([BookID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Booking_Time FOREIGN KEY ([TimeID])
	REFERENCES [Port_Elizabeth].[TimeSlot] ([TimeID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Port_Elizabeth].[Booking]([PersonID],[BookID],[TimeID]) VALUES(2,5,1),(10,13,2),(20,12,3),(9,20,4),(5,15,5),(13,9,6),(11,13,7),(14,19,8),(5,20,9),(16,1,10);
INSERT INTO [Port_Elizabeth].[Booking]([PersonID],[BookID],[TimeID]) VALUES(14,4,11),(6,11,12),(18,6,13),(7,7,14),(7,7,15),(14,19,16),(17,19,17),(9,19,18),(15,20,19),(19,2,20);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Port_Elizabeth].[PersonFined]'))
BEGIN;
    DROP TABLE [Port_Elizabeth].[PersonFined];
END;
GO

CREATE TABLE [Port_Elizabeth].[PersonFined] (
    [PersonID] INTEGER NOT NULL,
    [FineID] INTEGER NOT NULL,
    PRIMARY KEY ([PersonID], [FineID]),

	CONSTRAINT FK_Fine_Person FOREIGN KEY ([PersonID])
	REFERENCES [Port_Elizabeth].[Person] ([PersonID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Person_Fine FOREIGN KEY ([FineID])
	REFERENCES [Port_Elizabeth].[Fine] ([FineID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Port_Elizabeth].[PersonFined]([PersonID],[FineID]) VALUES(4,1),(12,2),(8,3),(2,4),(11,5),(14,6),(4,7),(7,8),(14,9),(15,10);
INSERT INTO [Port_Elizabeth].[PersonFined]([PersonID],[FineID]) VALUES(4,11),(5,12),(4,13),(3,14),(14,15),(3,16);

-----------------------
-----------------------
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Person]'))
BEGIN;
    DROP TABLE [Cape_Town].[Person];
END;
GO

CREATE TABLE [Cape_Town].[Person] (
    [PersonID] INTEGER NOT NULL IDENTITY(1, 1),
    [Name] VARCHAR(255) NULL,
    [Surname] VARCHAR(255) NULL,
	[Limit] INTEGER NOT NULL,
    PRIMARY KEY ([PersonID])
);
GO

INSERT INTO [Cape_Town].[Person]([Name],[Surname], [Limit]) VALUES('Kirk','Benson','5'),('Joshua','Sexton','5'),('Fiona','Whitney','5'),('Jane','Kelly','5'),('Kaseem','Dillard','5'),('Edward','Shaffer','5'),('Edward','Marquez','5'),('Carl','Ratliff','9'),('Neil','Vincent','9'),('Richard','Lowery','9');
INSERT INTO [Cape_Town].[Person]([Name],[Surname], [Limit]) VALUES('Quinn','Gardner','9'),('Veronica','Sullivan','9'),('Eagan','Good','9'),('Lee','Rosario','9'),('Ciaran','Powell','9'),('Peter','Valentine','9'),('Brock','Crosby','9'),('Buckminster','Alford','9'),('Harriet','Vargas','9'),('Clare','Frazier','9');
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Fine]'))
BEGIN;
    DROP TABLE [Cape_Town].[Fine];
END;
GO

CREATE TABLE [Cape_Town].[Fine] (
    [FineID] INTEGER NOT NULL IDENTITY(1, 1),
	[Date] DATETIME DEFAULT GETDATE(),
    [Amount] NVARCHAR(MAX) NULL,
    PRIMARY KEY ([FineID])
);
GO

INSERT INTO [Cape_Town].[Fine]([Amount]) VALUES('R38.37'),('R86.63'),('R71.23'),('R38.54'),('R55.57'),('R58.07'),('R34.21'),('R39.12'),('R35.06'),('R89.90');
INSERT INTO [Cape_Town].[Fine]([Amount]) VALUES('R51.20'),('R76.39'),('R74.73'),('R59.50'),('R12.11'),('R61.12'),('R49.51'),('R36.15'),('R77.17'),('R55.56');
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[TimeSlot]'))
BEGIN;
    DROP TABLE [Cape_Town].[TimeSlot];
END;
GO

CREATE TABLE [Cape_Town].[TimeSlot] (
    [TimeID] INTEGER NOT NULL IDENTITY(1, 1),
	[StartDate] DATETIME DEFAULT GETDATE(),
    [ReturnDate] DATETIME,
    PRIMARY KEY ([TimeID])
);
GO

INSERT INTO [Cape_Town].[TimeSlot] VALUES ( (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()));
INSERT INTO [Cape_Town].[TimeSlot] VALUES ( (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()), (DAY(GETDATE()) + 7) + '/' + MONTH(GETDATE()) + '/' + YEAR(GETDATE()));
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Faculty]'))
BEGIN;
    DROP TABLE [Cape_Town].[Faculty];
END;
GO

CREATE TABLE [Cape_Town].[Faculty] (
    [FacultyID] INTEGER NOT NULL IDENTITY(1, 1),
    [Faculty] NVARCHAR(200),
    PRIMARY KEY ([FacultyID])
);
GO

INSERT INTO [Cape_Town].[Faculty]([Faculty]) VALUES('pharetra ut,'),('scelerisque neque. Nullam'),('id,'),('mauris id sapien.'),('cursus. Nunc mauris'),('Proin sed turpis'),('et magnis'),('Sed eu');
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Book]'))
BEGIN;
    DROP TABLE [Cape_Town].[Book];
END;
GO

CREATE TABLE [Cape_Town].[Book] (
    [BookID] INTEGER NOT NULL IDENTITY(1,1),
    [Name] NVARCHAR(200),
	[Genre] NVARCHAR(200) NULL,
	[IsActive] BIT NOT NULL,
    PRIMARY KEY ([BookID])
);
GO

INSERT INTO [Cape_Town].[Book]([Name],[Genre],[IsActive]) VALUES('fames','Adventure','1'),('sit amet luctus vulputate,','Adventure','0'),('Duis elementum,','Horror','0'),('rutrum. Fusce dolor quam,','Romance','0'),('commodo at, libero. Morbi','Horror','0'),('odio','Thriller','0'),('vulputate, lacus. Cras','Drama','0'),('tristique senectus','Drama','0'),('Integer vitae nibh.','Comedy','1'),('velit. Aliquam nisl.','Comedy','1');
INSERT INTO [Cape_Town].[Book]([Name],[Genre],[IsActive]) VALUES('elit, pharetra ut, pharetra','Horror','0'),('elementum at, egestas a,','Drama','1'),('diam.','Comedy','1'),('luctus et ultrices','Thriller','0'),('a sollicitudin','Adventure','1'),('dis parturient montes,','Romance','0'),('tellus lorem eu metus.','Comedy','1'),('nibh.','Horror','1'),('facilisis. Suspendisse commodo','Romance','1'),('porttitor tellus non','Thriller','0');
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Student]'))
BEGIN;
    DROP TABLE  [Cape_Town].[Student];
END;
GO

CREATE TABLE [Cape_Town].[Student] (
    [StudentID] INTEGER NOT NULL IDENTITY(1,1) UNIQUE,
    [PersonID] INTEGER NOT NULL,
    PRIMARY KEY ([StudentID], [PersonID]),

	CONSTRAINT FK_Student_Person FOREIGN KEY ([PersonID])
	REFERENCES [Cape_Town].[Person] ([PersonID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Cape_Town].[Student]([PersonID]) VALUES(1),(2),(3),(4),(5),(6),(7),(8);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Facilitator]'))
BEGIN;
    DROP TABLE [Cape_Town].[Facilitator];
END;
GO

CREATE TABLE [Cape_Town].[Facilitator] (
    [FacilitatorID] INTEGER NOT NULL IDENTITY(1,1) UNIQUE,
    [PersonID] INTEGER NOT NULL,
    PRIMARY KEY ([FacilitatorID], [PersonID]),

	CONSTRAINT FK_Facilitator_Person FOREIGN KEY ([PersonID])
	REFERENCES [Cape_Town].[Person] ([PersonID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Cape_Town].[Facilitator]([PersonID]) VALUES(9),(10),(11),(12),(13),(14),(15),(16);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Facilitator_Faculty]'))
BEGIN;
    DROP TABLE [Cape_Town].[Facilitator_Faculty];
END;
GO

CREATE TABLE [Cape_Town].[Facilitator_Faculty] (
    [FacilitatorID] INTEGER NOT NULL,
    [FacultyID] INTEGER NOT NULL,
    PRIMARY KEY ([FacilitatorID], [FacultyID]),

	CONSTRAINT FK_Faculty_Facilitator FOREIGN KEY ([FacultyID])
	REFERENCES [Cape_Town].[Faculty] ([FacultyID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Facilitator_Faculty FOREIGN KEY ([FacilitatorID])
	REFERENCES [Cape_Town].[Facilitator] ([FacilitatorID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Cape_Town].[Facilitator_Faculty]([FacilitatorID],[FacultyID]) VALUES(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Student_Faculty]'))
BEGIN;
    DROP TABLE [Cape_Town].[Student_Faculty];
END;
GO

CREATE TABLE [Cape_Town].[Student_Faculty] (
    [StudentID] INTEGER NOT NULL,
    [FacultyID] INTEGER NOT NULL,
    PRIMARY KEY ([StudentID], [FacultyID]),

	CONSTRAINT FK_Faculty_Student FOREIGN KEY ([FacultyID])
	REFERENCES [Cape_Town].[Faculty] ([FacultyID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Student_Faculty FOREIGN KEY ([StudentID])
	REFERENCES [Cape_Town].[Student] ([StudentID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Cape_Town].[Student_Faculty]([StudentID],[FacultyID]) VALUES(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);

-----------------------
-----------------------
-----------------------

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Author]'))
BEGIN;
    DROP TABLE [Cape_Town].[Author];
END;
GO

CREATE TABLE [Cape_Town].[Author] (
    [AuthorID] INTEGER NOT NULL IDENTITY(1,1) Unique,
    [PersonID] INTEGER NOT NULL,
    PRIMARY KEY ([AuthorID], [PersonID]),

	CONSTRAINT FK_Author_Person FOREIGN KEY ([PersonID])
	REFERENCES [Cape_Town].[Person] ([PersonID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Cape_Town].[Author]([PersonID]) VALUES(17),(18),(19),(20);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Author_Book]'))
BEGIN;
    DROP TABLE [Cape_Town].[Author_Book];
END;
GO

CREATE TABLE [Cape_Town].[Author_Book] (
    [BookID]  INTEGER NOT NULL,
    [AuthorID] INTEGER NOT NULL,
    PRIMARY KEY ([BookID]),

	CONSTRAINT FK_Author_Book FOREIGN KEY ([AuthorID])
	REFERENCES [Cape_Town].[Author] ([AuthorID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Book_Author FOREIGN KEY ([BookID])
	REFERENCES [Cape_Town].[Book] ([BookID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Cape_Town].[Author_Book]([AuthorID],[BookID]) VALUES(1,1),(2,2),(1,3),(4,4),(2,5),(1,6),(3,7),(2,8),(1,9),(3,10);
INSERT INTO [Cape_Town].[Author_Book]([AuthorID],[BookID]) VALUES(2,11),(4,12),(4,13),(4,14),(2,15),(1,16),(1,17),(2,18),(1,19),(4,20);

-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[Booking]'))
BEGIN;
    DROP TABLE [Cape_Town].[Booking];
END;
GO

CREATE TABLE [Cape_Town].[Booking] (
    [PersonID] INTEGER NOT NULL,
    [BookID] INTEGER NOT NULL,
	[TimeID] INTEGER NOT NULL,
    PRIMARY KEY ([TimeID]),

	CONSTRAINT FK_Booking_Person FOREIGN KEY ([PersonID])
	REFERENCES [Cape_Town].[Person] ([PersonID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Booking_Book FOREIGN KEY ([BookID])
	REFERENCES [Cape_Town].[Book] ([BookID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Booking_Time FOREIGN KEY ([TimeID])
	REFERENCES [Cape_Town].[TimeSlot] ([TimeID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Cape_Town].[Booking]([PersonID],[BookID],[TimeID]) VALUES(2,5,1),(10,13,2),(20,12,3),(9,20,4),(5,15,5),(13,9,6),(11,13,7),(14,19,8),(5,20,9),(16,1,10);
INSERT INTO [Cape_Town].[Booking]([PersonID],[BookID],[TimeID]) VALUES(14,4,11),(6,11,12),(18,6,13),(7,7,14),(7,7,15),(14,19,16),(17,19,17),(9,19,18),(15,20,19),(19,2,20);
-----------------------
-----------------------
-----------------------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Cape_Town].[PersonFined]'))
BEGIN;
    DROP TABLE [Cape_Town].[PersonFined];
END;
GO

CREATE TABLE [Cape_Town].[PersonFined] (
    [PersonID] INTEGER NOT NULL,
    [FineID] INTEGER NOT NULL,
    PRIMARY KEY ([PersonID], [FineID]),

	CONSTRAINT FK_Fine_Person FOREIGN KEY ([PersonID])
	REFERENCES [Cape_Town].[Person] ([PersonID])
	ON DELETE CASCADE,

	CONSTRAINT FK_Person_Fine FOREIGN KEY ([FineID])
	REFERENCES [Cape_Town].[Fine] ([FineID])
	ON DELETE CASCADE
);
GO

INSERT INTO [Cape_Town].[PersonFined]([PersonID],[FineID]) VALUES(4,1),(12,2),(8,3),(2,4),(11,5),(14,6),(4,7),(7,8),(14,9),(15,10);
INSERT INTO [Cape_Town].[PersonFined]([PersonID],[FineID]) VALUES(4,11),(5,12),(4,13),(3,14),(14,15),(3,16);
go

-----------------------
-----------------------
-----------------------
-----------------------
-----------------------
-----------------------


CREATE OR ALTER VIEW CTBooksInUseView
AS SELECT * 
	From [Cape_Town].[Book]
	Where IsActive=1
go

CREATE OR ALTER FUNCTION dbo.CTBooksInUseFunction()
RETURNS Table
AS 
return
	(
	Select * From CTBooksInUseView
	)
go

CREATE OR ALTER PROCEDURE dbo.CTBooksInUseProcedure
AS
	Select * From dbo.CTBooksInUseFunction()
GO

Exec dbo.CTBooksInUseProcedure
go

---------------------------------------------------2-----------------------------------------

CREATE OR ALTER VIEW PEBooksInUseView
AS SELECT * 
	From [Port_Elizabeth].Book
	Where IsActive=1
go

CREATE OR ALTER FUNCTION dbo.PEBooksInUseFunction()
RETURNS Table
AS 
return
	(
	Select * From PEBooksInUseView
	)
go

CREATE OR ALTER PROCEDURE dbo.PEBooksInUseProcedure
AS
	Select * From dbo.PEBooksInUseFunction()
GO

Exec dbo.PEBooksInUseProcedure
go

---------------------------------------------------3-----------------------------------------

CREATE OR ALTER VIEW PEPeopleView
AS SELECT * 
	From [Port_Elizabeth].Person
go

CREATE OR ALTER FUNCTION dbo.PEPeopleFunction()
RETURNS Table
AS 
return
	(
	Select * From PEPeopleView
	)
go

CREATE OR ALTER PROCEDURE dbo.PEPeopleProcedure
AS
	Select * From dbo.PEPeopleFunction()
GO

Exec dbo.PEPeopleProcedure
go

---------------------------------------------------4-----------------------------------------

CREATE OR ALTER VIEW CTPeopleView
AS SELECT * 
	From [Cape_Town].Person
go

CREATE OR ALTER FUNCTION dbo.CTPeopleFunction()
RETURNS Table
AS 
return
	(
	Select * From CTPeopleView
	)
go

CREATE OR ALTER PROCEDURE dbo.CTPeopleProcedure
AS
	Select * From dbo.CTPeopleFunction()
GO

Exec dbo.CTPeopleProcedure
go

---------------------------------------------------5-----------------------------------------

CREATE OR ALTER VIEW PEFinesView
AS 
	SELECT [Port_Elizabeth].Fine.Date, [Port_Elizabeth].Fine.Amount, [Port_Elizabeth].Person.Name, [Port_Elizabeth].Person.Surname, [Port_Elizabeth].Person.PersonID
	FROM [Port_Elizabeth].Fine INNER JOIN
         [Port_Elizabeth].PersonFined ON [Port_Elizabeth].Fine.FineID = [Port_Elizabeth].PersonFined.FineID INNER JOIN
         [Port_Elizabeth].Person ON [Port_Elizabeth].PersonFined.PersonID = [Port_Elizabeth].Person.PersonID
go

CREATE OR ALTER FUNCTION dbo.PEFinesFunction()
RETURNS Table
AS 
return
	(
	Select * From PEFinesView
	)
go

CREATE OR ALTER PROCEDURE dbo.PEFinesProcedure
AS
	Select * From dbo.PEFinesFunction()
GO

Exec dbo.PEFinesProcedure
go

-----------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------1--------------------------------------------------------------------------------------
Create Trigger ArchiveCTBook
ON [Cape_Town].Book
Instead of Delete
As
Begin
Update [Cape_Town].Book set IsActive=0 WHERE BookID in (select BookID from deleted)
END
GO

---------------------------------------------------2-----------------------------------------

Create Trigger ArchivePEBook
ON [Port_Elizabeth].Book
Instead of Delete
As
Begin
Update [Port_Elizabeth].Book set IsActive=0 WHERE BookID in (select BookID from deleted)
END
GO

---------------------------------------------------3-----------------------------------------

Create Trigger CTTableDeletedViewtrg
ON [Cape_Town].Author
for Delete
As
Begin
	SELECT [Cape_Town].Person.Name, [Cape_Town].Person.Surname, [Cape_Town].Author.AuthorID
	FROM [Cape_Town].Author INNER JOIN
         [Cape_Town].Person ON [Cape_Town].Author.PersonID = [Cape_Town].Person.PersonID
END
GO

---------------------------------------------------5-----------------------------------------

Create Trigger PETableDeletedViewtrg
ON [Port_Elizabeth].Author
for Delete
As
Begin
	SELECT [Port_Elizabeth].Author.AuthorID, [Port_Elizabeth].Person.Name, [Port_Elizabeth].Person.Surname
	FROM [Port_Elizabeth].Author INNER JOIN
         [Port_Elizabeth].Person ON [Port_Elizabeth].Author.PersonID = [Port_Elizabeth].Person.PersonID
END
GO
