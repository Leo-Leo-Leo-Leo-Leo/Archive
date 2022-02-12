-------------------------------------------------------------------------------------------------------
--Database
CREATE DATABASE CTUDB
GO

USE CTUDB
GO

-------------------------------------------------------------------------------------------------------
--Schemas
CREATE SCHEMA Auckland_Park
GO

--CREATE SCHEMA Bloemfontein
--GO

--CREATE SCHEMA Boksburg
--GO

--CREATE SCHEMA Cape_Town
--GO

--CREATE SCHEMA Durban
--GO

--CREATE SCHEMA Nelspruit
--GO

--CREATE SCHEMA Polokwane
--GO

--CREATE SCHEMA Potchefstroom
--GO

--CREATE SCHEMA Port_Elizabeth
--GO

--CREATE SCHEMA Pretoria
--GO

--CREATE SCHEMA Randburg
--GO

--CREATE SCHEMA Sandton
--GO

--CREATE SCHEMA Roodepoort
--GO

--CREATE SCHEMA Stellenbosch
--GO

--CREATE SCHEMA Vereeniging
--GO

-------------------------------------------------------------------------------------------------------
--Tables

--Person Table
CREATE TABLE Auckland_Park.Person(
	Person_ID INT IDENTITY(1,1) PRIMARY KEY,
	ID_Number INT,
	[Name] VARCHAR(10),
	Surname VARCHAR(10),
	Address_Line_1 VARCHAR(100),
	Address_Line_2 VARCHAR(100),
	Address_Line_3 VARCHAR(100)

);
GO
--Parent table
CREATE TABLE Auckland_Park.Parent(
	Person_ID INT  PRIMARY KEY

	CONSTRAINT FK_Person_Parent FOREIGN KEY (Person_ID)
	REFERENCES Auckland_Park.Person(Person_ID)
);
GO

--Student table
CREATE TABLE Auckland_Park.Student( 
	Person_ID INT  PRIMARY KEY,
	Student_Number INT

	CONSTRAINT FK_Person_Student FOREIGN KEY (Person_ID)
	REFERENCES Auckland_Park.Person(Person_ID)
);
GO

--Relationship between Student and parents
CREATE TABLE Auckland_Park.Student_Parent(
	Parent_ID INT,
	Student_ID INT

	PRIMARY KEY(Parent_ID, Student_ID)

	CONSTRAINT FK_Parent_Student FOREIGN KEY (Parent_ID)
	REFERENCES Auckland_Park.Parent(Person_ID),

	CONSTRAINT FK_Student_Parent FOREIGN KEY (Student_ID)
	REFERENCES Auckland_Park.Student(Person_ID)
);
GO

-- Facilitator table
CREATE TABLE Auckland_Park.Facilitator(
	Person_ID INT PRIMARY KEY,
	Salary MONEY

	CONSTRAINT FK_Person_Facilitator FOREIGN KEY (Person_ID)
	REFERENCES Auckland_Park.Person(Person_ID)
);
GO

--Course Table
CREATE TABLE Auckland_Park.Course(
	Course_ID INT IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(50),
	[Description] VARCHAR(1000)
);
GO

--Relationship between Facilitator and Courses
CREATE TABLE Auckland_Park.Facilitator_Course(
	Person_ID INT,
	Course_ID INT 
	
	PRIMARY KEY(Person_ID, Course_ID)

	CONSTRAINT FK_Facilitator_Course FOREIGN KEY (Person_ID)
	REFERENCES Auckland_Park.Facilitator(Person_ID),

	CONSTRAINT FK_Course_Facilitator FOREIGN KEY (Course_ID)
	REFERENCES Auckland_Park.Course(Course_ID)
);
GO

--Marks table
CREATE TABLE Auckland_Park.Learning_Unit(
	Mark_ID INT IDENTITY(1,1) PRIMARY KEY,

	Formative_Assesment_AVE INT,
	Sumative_Mark INT
);
GO

--Semester one marks making up semester one Average
CREATE TABLE Auckland_Park.Formative_Marks(
	Mark_ID INT IDENTITY(1,1) PRIMARY KEY,

	Formative_Assesment_1 INT,
	Formative_Assesment_2 INT,
	Formative_Assesment_3 INT

	CONSTRAINT FK_Semester1_Mark_ID FOREIGN KEY (Mark_ID)
	REFERENCES Auckland_Park.Learning_Unit(Mark_ID)
);
GO

--Relationship between Studnet, Course and Mark
CREATE TABLE Auckland_Park.Student_Course_Unit
(
	Person_ID INT,
	Course_ID INT,
	Mark_ID INT

	PRIMARY KEY(Person_ID, Course_ID , Mark_ID)

	CONSTRAINT FK_Student_Person_ID FOREIGN KEY (Person_ID)
	REFERENCES Auckland_Park.Person(Person_ID),

	CONSTRAINT FK_Student_Course FOREIGN KEY (Course_ID)
	REFERENCES Auckland_Park.Course(Course_ID),

	CONSTRAINT FK_Student_Mark FOREIGN KEY (Mark_ID)
	REFERENCES Auckland_Park.Learning_Unit(Mark_ID)
);
GO

-------------------------------------------------------------------------------------------------------
--Populate Tables Here
--------------------------------------------------------------------
--1
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000000',  'Bob','Furggensen','87 Yellow Street, Andigo')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000001', 'Tom','Katt','77 Doon Road, Balkoons')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000002', 'Greg','Mendal','42 Siegword Drive, Wellfaringlington')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000003', 'Tommon', 'Topsun','9 Oxe Street, Bradaring')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000004', 'Erik','Erikson','32 Egg Road, Tokyo Town')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000005', 'Robbert','Furggensen','87 Yellow Street, Andigo')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000006', 'Olga','Katt','77 Doon Road, Balkoons')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000007','Lucy','Mendal','42 Siegword Drive, Wellfaringlington')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000008','Rigard','Topsun','9 Oxe Street, Bradaring')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000009','Popper','Erikson','32 Egg Road, Tokyo Town')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000010','Glen','Derpen','23 Red Road, Wentington')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000011','Sweeny','Todd','54 Easy Drive, Suburbia')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000012','Avagardo','Constant','11 Malabar Street, Progardo')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000013','Queeny','Bell','9 Zebra Road, Yagrdo')
--GO
--INSERT INTO Auckland_Park.Person( ID_Number, [Name], Surname, [Address])
--VALUES ( '0000000000014','Blyn','Suka','21 Egg Drive, Largard')

----------------------------------------------------------------------
----2
--INSERT INTO Auckland_Park.Parent(Person_ID)
--VALUES ('6')
--GO
--INSERT INTO Auckland_Park.Parent(Person_ID)
--VALUES ('7')
--GO
--INSERT INTO Auckland_Park.Parent(Person_ID)
--VALUES ('8')
--GO
--INSERT INTO Auckland_Park.Parent(Person_ID)
--VALUES ('9')
--GO
--INSERT INTO Auckland_Park.Parent(Person_ID)
--VALUES ('10')
--GO

----------------------------------------------------------------------
----3
--INSERT INTO Auckland_Park.Student(Person_ID, Student_Number)
--VALUES ('1', '1')
--GO
--INSERT INTO Auckland_Park.Student(Person_ID, Student_Number)
--VALUES ('2', '2')
--GO
--INSERT INTO Auckland_Park.Student(Person_ID, Student_Number)
--VALUES ('3', '3')
--GO
--INSERT INTO Auckland_Park.Student(Person_ID, Student_Number)
--VALUES ('4', '4')
--GO
--INSERT INTO Auckland_Park.Student(Person_ID, Student_Number)
--VALUES ('5', '5')
--GO

----------------------------------------------------------------------
----4
--INSERT INTO Auckland_Park.Student_Parent( Parent_ID, Student_ID)
--VALUES ('6', '1')
--GO
--INSERT INTO Auckland_Park.Student_Parent( Parent_ID, Student_ID)
--VALUES ('7', '2')
--GO
--INSERT INTO Auckland_Park.Student_Parent( Parent_ID, Student_ID)
--VALUES ('8', '3')
--GO
--INSERT INTO Auckland_Park.Student_Parent( Parent_ID, Student_ID)
--VALUES ('9', '4')
--GO
--INSERT INTO Auckland_Park.Student_Parent( Parent_ID, Student_ID)
--VALUES ('10', '5')

----------------------------------------------------------------------
----5
--INSERT INTO Auckland_Park.Facilitator(Person_ID, Salary)
--VALUES ('11', '30000')
--GO
--INSERT INTO Auckland_Park.Facilitator(Person_ID, Salary)
--VALUES ('12', '23000')
--GO
--INSERT INTO Auckland_Park.Facilitator(Person_ID, Salary)
--VALUES ('13', '10000')
--GO
--INSERT INTO Auckland_Park.Facilitator(Person_ID, Salary)
--VALUES ('14', '14000')
--GO
--INSERT INTO Auckland_Park.Facilitator(Person_ID, Salary)
--VALUES ('15', '50000')
--GO

----------------------------------------------------------------------
----6
--INSERT INTO Auckland_Park.Course( [Name], [Description])
--VALUES ( 'MCSD','A Microsoft Certified Solutions Developer is a well equiped
-- software developer that finds solutions to modern problems using microsoft tools
--  and development platforms.')
--GO
--INSERT INTO Auckland_Park.Course( [Name], [Description])
--VALUES ( 'MCSE DA','A Microsoft Certified Solutions Expert Data Analyst is a well equiped
-- database developer and project manager that finds solutions to modern problems using microsoft tools
--  and development platforms.')
--GO
--INSERT INTO Auckland_Park.Course( [Name], [Description])
--VALUES ( 'Web','A Microsoft Certified Website Developer is a well equiped
-- Website developer that finds solutions to modern problems using microsoft tools
--  and development platforms.')
--GO
--INSERT INTO Auckland_Park.Course( [Name], [Description])
--VALUES ( 'MCSA','A Microsoft Certified Systems Administrator is a well equiped
-- Systems Administrator that finds solutions to modern problems using microsoft tools
--  and development platforms.')
--GO
--INSERT INTO Auckland_Park.Course( [Name], [Description])
--VALUES ( 'Graphics Design','A Microsoft Certified Solutions Developer is a well equiped
-- software developer that finds solutions to modern problems using microsoft tools
--  and development platforms.')
--GO

----------------------------------------------------------------------
----7
--INSERT INTO Auckland_Park.Facilitator_Course(Person_ID, Course_ID)
--VALUES ('11', '1')
--GO
--INSERT INTO Auckland_Park.Facilitator_Course(Person_ID, Course_ID)
--VALUES ('12', '2')
--GO
--INSERT INTO Auckland_Park.Facilitator_Course(Person_ID, Course_ID)
--VALUES ('13', '3')
--GO
--INSERT INTO Auckland_Park.Facilitator_Course(Person_ID, Course_ID)
--VALUES ('14', '4')
--GO
--INSERT INTO Auckland_Park.Facilitator_Course(Person_ID, Course_ID)
--VALUES ('15', '5')
--GO

----------------------------------------------------------------------
----8
--INSERT INTO Auckland_Park.Class_Marks( Semester1_AVE, Semester1_Test_Mark, Semester2_AVE, Semester2_Test_Mark)
--VALUES ( '10','60','50','45')
--GO
--INSERT INTO Auckland_Park.Class_Marks( Semester1_AVE, Semester1_Test_Mark, Semester2_AVE, Semester2_Test_Mark)
--VALUES ( '20','45','40','54')
--GO
--INSERT INTO Auckland_Park.Class_Marks( Semester1_AVE, Semester1_Test_Mark, Semester2_AVE, Semester2_Test_Mark)
--VALUES ( '42','57','60','27')
--GO
--INSERT INTO Auckland_Park.Class_Marks( Semester1_AVE, Semester1_Test_Mark, Semester2_AVE, Semester2_Test_Mark)
--VALUES ( '45','85','70','100')
--GO
--INSERT INTO Auckland_Park.Class_Marks( Semester1_AVE, Semester1_Test_Mark, Semester2_AVE, Semester2_Test_Mark)
--VALUES ( '54','64','80','22')
--GO

----------------------------------------------------------------------
----9
--INSERT INTO Auckland_Park.Semester1_Marks( Semester1_Mark1, Semester1_Mark2, Semester1_Mark3)
--VALUES ( '10','10','10')
--GO
--INSERT INTO Auckland_Park.Semester1_Marks( Semester1_Mark1, Semester1_Mark2, Semester1_Mark3)
--VALUES ( '20','20','20')
--GO
--INSERT INTO Auckland_Park.Semester1_Marks( Semester1_Mark1, Semester1_Mark2, Semester1_Mark3)
--VALUES ( '42','42','42')
--GO
--INSERT INTO Auckland_Park.Semester1_Marks( Semester1_Mark1, Semester1_Mark2, Semester1_Mark3)
--VALUES ( '45','45','45')
--GO
--INSERT INTO Auckland_Park.Semester1_Marks( Semester1_Mark1, Semester1_Mark2, Semester1_Mark3)
--VALUES ( '54','54','54')
--GO

----------------------------------------------------------------------
----10
--INSERT INTO Auckland_Park.Semester2_Marks( Semester2_Mark1, Semester2_Mark2, Semester2_Mark3)
--VALUES ( '50','50','50')
--GO
--INSERT INTO Auckland_Park.Semester2_Marks( Semester2_Mark1, Semester2_Mark2, Semester2_Mark3)
--VALUES ( '40','40','40')
--GO
--INSERT INTO Auckland_Park.Semester2_Marks( Semester2_Mark1, Semester2_Mark2, Semester2_Mark3)
--VALUES ( '60','60','60')
--GO
--INSERT INTO Auckland_Park.Semester2_Marks( Semester2_Mark1, Semester2_Mark2, Semester2_Mark3)
--VALUES ( '70','70','70')
--GO
--INSERT INTO Auckland_Park.Semester2_Marks( Semester2_Mark1, Semester2_Mark2, Semester2_Mark3)
--VALUES ( '80','80','80')
--GO

----------------------------------------------------------------------
----11
--INSERT INTO Auckland_Park.Student_Course_Mark( Person_ID, Course_ID, Mark_ID)
--VALUES ('1', '1', '1')
--GO
--INSERT INTO Auckland_Park.Student_Course_Mark( Person_ID, Course_ID, Mark_ID)
--VALUES ('2', '2', '2')
--GO
--INSERT INTO Auckland_Park.Student_Course_Mark( Person_ID, Course_ID, Mark_ID)
--VALUES ('3', '3', '3')
--GO
--INSERT INTO Auckland_Park.Student_Course_Mark( Person_ID, Course_ID, Mark_ID)
--VALUES ('4', '4', '4')
--GO
--INSERT INTO Auckland_Park.Student_Course_Mark( Person_ID, Course_ID, Mark_ID)
--VALUES ('5', '5', '5')
--GO

-------------------------------------------------------------------------------------------------------
--InsertUSP

--CREATE PROCEDURE Auckland_Park.uspInsertStudent

--@ID_Number INT,
--@Student_Number INT,

--@Name NVARCHAR(25),
--@Surname NVARCHAR(25),
--@Address NVARCHAR(100),
--@Course NVARCHAR(50)

--AS
--BEGIN
--	DECLARE @Person_ID INT

--	Insert INTO Auckland_Park.Person( ID_Number,[Name], [Surname], [Address])
--	Values(@ID_Number, @Name, @Surname, @Address)

--	SELECT @Person_ID = Person.Person_ID
--	FROM Auckland_Park.Person
--	WHERE ID_Number = @ID_Number

--	Insert INTO Auckland_Park.Student( Person_ID, Student_Number)
--	Values( @Person_ID, @Student_Number)

--	Insert INTO Auckland_Park.Class_Marks(Semester1_AVE,Semester1_Test_Mark,Semester2_AVE,Semester2_Test_Mark)
--	Values (null,null,null,null)
--	Insert INTO Auckland_Park.Semester1_Marks(Semester1_Mark1,Semester1_Mark2,Semester1_Mark3)
--	Values (null,null,null)
--	Insert INTO Auckland_Park.Semester2_Marks(Semester2_Mark1,Semester2_Mark2,Semester2_Mark3)
--	Values (null,null,null)


--END
--GO

--CREATE PROCEDURE Auckland_Park.uspInsertParent

--@ID_Number INT,

--@Name NVARCHAR(25),
--@Surname NVARCHAR(25),
--@Address NVARCHAR(100)

--AS
--BEGIN
--	DECLARE @Person_ID INT

--	Insert INTO Auckland_Park.Person( ID_Number,[Name], [Surname], [Address])
--	Values(@ID_Number, @Name, @Surname, @Address)

--	SELECT @Person_ID = Person.Person_ID
--	FROM Auckland_Park.Person
--	WHERE ID_Number = @ID_Number

--	Insert INTO Auckland_Park.Parent( Person_ID)
--	Values( @Person_ID)

--END
--GO

--CREATE PROCEDURE Auckland_Park.uspInsertFacilitator
--@ID_Number INT,
--@Salary MONEY,

--@Name NVARCHAR(25),
--@Surname NVARCHAR(25),
--@Address NVARCHAR(100)

--AS
--BEGIN
--	DECLARE @Person_ID INT

--	Insert INTO Auckland_Park.Person( ID_Number,[Name], [Surname], [Address])
--	Values(@ID_Number, @Name, @Surname, @Address)

--	SELECT @Person_ID = Person.Person_ID
--	FROM Auckland_Park.Person
--	WHERE ID_Number = @ID_Number

--	Insert INTO Auckland_Park.Facilitator( Person_ID, Salary)
--	Values( @Person_ID, @Salary)
--END
--GO

--CREATE PROCEDURE Auckland_Park.uspInsertCourse
--@Facilitator NVARCHAR(25),
--@Course_Name NVARCHAR(50),
--@Description NVARCHAR(1000)

--AS
--BEGIN
--    DECLARE @Person_ID INT,
--	@Course_ID INT

--	Insert INTO Auckland_Park.Course( [Name], [Description])
--	Values(@Course_Name, @Description)

--	SELECT @Person_ID = Person.Person_ID
--	FROM Auckland_Park.Person
--	WHERE (Person.[Name] + ' ' + Person.Surname) = @Facilitator

--	SELECT @Course_ID = Course.Course_ID
--	FROM Auckland_Park.Course
--	WHERE Course.[Name] = @Course_Name

--	Insert INTO Auckland_Park.Facilitator_Course( Person_ID, Course_ID)
--	Values( @Person_ID, @Course_ID)
--END
--GO


---------------------------------------------------------------------------------------------------------
----UpdateUSP

---------------------------------------------------------------------------------------------------------
----DeleteUSP
--CREATE PROCEDURE Auckland_Park.uspDeleteCourse

--@Course_Name NVARCHAR(50)

--AS
--BEGIN
--	DECLARE @Person_ID INT,
--	@Course_ID INT

--	SELECT @Course_ID = Course.Course_ID
--	FROM Auckland_Park.Course
--	WHERE Course.[Name] = @Course_Name
											
--	DELETE FROM Auckland_Park.Facilitator_Course
--	WHERE Facilitator_Course.Course_ID = @Course_ID
																		
--	DELETE FROM Auckland_Park.Course
--	WHERE Course.Course_ID = @Course_ID
--END
--GO
-----------------------------------------------------------------------------------------------------------
-----uspDGVSelects
--CREATE PROCEDURE Auckland_Park.SelectStudents
--AS
--BEGIN
--	SELECT Person.ID_Number AS [ID No], Student.Student_Number AS [Student No], (Person.[Name] +' '+ Person.Surname) AS FullName, [Address] AS [Residence], Course.[Name] AS Course
--	FROM Auckland_Park.Person, Auckland_Park.Student, Auckland_Park.Course, Auckland_Park.Student_Course_Mark
--	WHERE Person.Person_ID = Student.Person_ID AND Student.Person_ID = Student_Course_Mark.Person_ID AND Course.Course_ID = Student_Course_Mark.Course_ID  
--	ORDER BY Student.Student_Number ASC
--END
--GO

--CREATE PROCEDURE Auckland_Park.SelectParents
--AS
--BEGIN
--	SELECT aParent.ID_Number AS [ID no], (aParent.[Name] +' '+ aParent.Surname) AS FullName, aParent.[Address] AS [Residence], (aStudent.[Name] +' '+ aStudent.Surname) AS [Student FullName]
--	FROM Auckland_Park.Parent, Auckland_Park.Person AS aParent, Auckland_Park.Student, Auckland_Park.Person AS aStudent, Auckland_Park.Student_Parent
--	WHERE aParent.Person_ID = Parent.Person_ID AND aStudent.Person_ID = Student.Person_ID AND aParent.Person_ID = Student_Parent.Parent_ID AND aStudent.Person_ID = Student_Parent.Student_ID
--	ORDER BY aParent.ID_Number ASC
--END
--GO

--CREATE PROCEDURE Auckland_Park.SelectFacilitators
--AS
--BEGIN
--	SELECT Person.ID_Number AS [ID no], (Person.[Name] +' '+ Person.Surname) AS FullName, [Address] AS [Residence], Facilitator.Salary AS [Monthly Salary]
--	FROM Auckland_Park.Person, Auckland_Park.Facilitator
--	WHERE Person.Person_ID = Facilitator.Person_ID
--	ORDER BY Person.ID_Number ASC
--END
--GO

--CREATE PROCEDURE Auckland_Park.SelectCourses
--AS
--BEGIN
--	SELECT Course.[Name] AS [Course], Course.[Description] AS [Details], (Person.[Name] +' '+ Person.Surname) AS [Facilitator]
--	FROM Auckland_Park.Course, Auckland_Park.Facilitator, Auckland_Park.Facilitator_Course, Auckland_Park.Person
--	WHERE	Facilitator.Person_ID = Facilitator_Course.Person_ID AND 
--			Course.Course_ID = Facilitator_Course.Course_ID AND
--			Person.Person_ID = Facilitator.Person_ID
--	ORDER BY Facilitator_Course.Person_ID ASC
--END
--GO

--CREATE PROCEDURE Auckland_Park.SelectMarks
--AS
--BEGIN
--	SELECT Student.Student_Number AS [Student No], Course.[Name] AS [Course] ,(Person.[Name] + ' ' + Person.Surname) AS Student, 
--	Class_Marks.Semester1_Test_Mark AS [Semester 1 Test Mark], Class_Marks.Semester1_AVE AS [Semester 1 Average], Semester1_Marks.Semester1_Mark1 AS [Semester 1 Mark 1], Semester1_Marks.Semester1_Mark2 AS [Semester 1 Mark 2], Semester1_Marks.Semester1_Mark3 AS [Semester 1 Mark 3],
--	Class_Marks.Semester2_Test_Mark AS [Semester 2 Test Mark], Class_Marks.Semester2_AVE AS [Semester 2 Average], Semester2_Marks.Semester2_Mark1 AS [Semester 2 Mark 1], Semester2_Marks.Semester2_Mark2 AS [Semester 2 Mark 2], Semester2_Marks.Semester2_Mark3 AS [Semester 2 Mark 3]
--	FROM Auckland_Park.Person, Auckland_Park.Student, Auckland_Park.Course,
--	Auckland_Park.Class_Marks, Auckland_Park.Semester1_Marks, Auckland_Park.Semester2_Marks, 
--	Auckland_Park.Student_Course_Mark
--	WHERE Person.Person_ID = Student.Person_ID AND Student.Person_ID = Student_Course_Mark.Person_ID AND
--	Course.Course_ID = Student_Course_Mark.Course_ID AND Class_Marks.Mark_ID = Student_Course_Mark.Mark_ID AND
--	Class_Marks.Mark_ID = Semester1_Marks.Mark_ID AND Class_Marks.Mark_ID = Semester2_Marks.Mark_ID
--	ORDER BY Student.Student_Number ASC
--END
--GO
---------------------------------------------------------------------------------------------------------
----Functions

CREATE or ALTER FUNCTION Auckland_Park.GetAveMark(@Mark1 INT, @Mark2 INT, @Mark3 INT)
RETURNS INT
AS
BEGIN
	DECLARE @Ave INT, @sql NVARCHAR(1000)
	
	SET @sql = 'SET ' +@Ave + ' = ('+@Mark1 + ' + ' + @Mark2  + ' + ' + @Mark3 + ')/3'

	RETURN @Ave
END
GO

---------------------------------------------------------------------------------------------------------
----Triggers
--CREATE TRIGGER Polokwane.trgInsertPerson
--ON Polokwane.Person
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have created an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Polokwane.trgDeletePerson
--ON Polokwane.Person
--FOR DELETE
--AS 
--BEGIN 
--	DECLARE @DeletedIndex INT
--	PRINT 'You have deleted an entry in the Person Table'

--	SELECT @DeletedIndex = Polokwane.Parent.Person_ID
--	FROM Polokwane.Parent, Polokwane.Person
--	WHERE Polokwane.Parent.Person_ID <> Polokwane.Person.Person_ID

--	DELETE Polokwane.Parent
--	WHERE Polokwane.Parent.Person_ID = @DeletedIndex

--	SELECT @DeletedIndex = Polokwane.Student.Person_ID
--	FROM Polokwane.Student, Polokwane.Person
--	WHERE Polokwane.Student.Person_ID <> Polokwane.Person.Person_ID 

--	DELETE Polokwane.Student
--	WHERE Polokwane.Student.Person_ID = @DeletedIndex 

--	SELECT @DeletedIndex = Polokwane.Facilitator.Person_ID
--	FROM Polokwane.Facilitator, Polokwane.Person
--	WHERE Polokwane.Facilitator.Person_ID <> Polokwane.Person.Person_ID

--	DELETE Polokwane.Facilitator
--	WHERE Polokwane.Facilitator.Person_ID = @DeletedIndex
--END 
--GO

--CREATE TRIGGER Polokwane.trgUpdatePerson
--ON Polokwane.Person
--FOR UPDATE
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Polokwane.trgInsertClass_Marks
--ON Polokwane.Class_Marks
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Class_Marks Table'

--SELECT *
--FROM Polokwane.Class_Marks

--END 
--GO

--CREATE TRIGGER Polokwane.trgInsertCourse
--ON Polokwane.Course
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Course Table'

--SELECT *
--FROM Polokwane.Course

--END 
--GO

---------------------------------------------------------------------------------------------------------
----Triggers
--CREATE TRIGGER Potchefstroom.trgInsertPerson
--ON Potchefstroom.Person
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have created an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Potchefstroom.trgDeletePerson
--ON Potchefstroom.Person
--FOR DELETE
--AS 
--BEGIN 
--	DECLARE @DeletedIndex INT
--	PRINT 'You have deleted an entry in the Person Table'

--	SELECT @DeletedIndex = Potchefstroom.Parent.Person_ID
--	FROM Potchefstroom.Parent, Potchefstroom.Person
--	WHERE Potchefstroom.Parent.Person_ID <> Potchefstroom.Person.Person_ID

--	DELETE Potchefstroom.Parent
--	WHERE Potchefstroom.Parent.Person_ID = @DeletedIndex

--	SELECT @DeletedIndex = Potchefstroom.Student.Person_ID
--	FROM Potchefstroom.Student, Potchefstroom.Person
--	WHERE Potchefstroom.Student.Person_ID <> Potchefstroom.Person.Person_ID 

--	DELETE Potchefstroom.Student
--	WHERE Potchefstroom.Student.Person_ID = @DeletedIndex 

--	SELECT @DeletedIndex = Potchefstroom.Facilitator.Person_ID
--	FROM Potchefstroom.Facilitator, Potchefstroom.Person
--	WHERE Potchefstroom.Facilitator.Person_ID <> Potchefstroom.Person.Person_ID

--	DELETE Potchefstroom.Facilitator
--	WHERE Potchefstroom.Facilitator.Person_ID = @DeletedIndex
--END 
--GO

--CREATE TRIGGER Potchefstroom.trgUpdatePerson
--ON Potchefstroom.Person
--FOR UPDATE
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Potchefstroom.trgInsertClass_Marks
--ON Potchefstroom.Class_Marks
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Class_Marks Table'

--SELECT *
--FROM Potchefstroom.Class_Marks

--END 
--GO

--CREATE TRIGGER Potchefstroom.trgInsertCourse
--ON Potchefstroom.Course
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Course Table'

--SELECT *
--FROM Potchefstroom.Course

--END 
--GO

---------------------------------------------------------------------------------------------------------
----Triggers
--CREATE TRIGGER Port_Elizabeth.trgInsertPerson
--ON Port_Elizabeth.Person
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have created an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Port_Elizabeth.trgDeletePerson
--ON Port_Elizabeth.Person
--FOR DELETE
--AS 
--BEGIN 
--	DECLARE @DeletedIndex INT
--	PRINT 'You have deleted an entry in the Person Table'

--	SELECT @DeletedIndex = Port_Elizabeth.Parent.Person_ID
--	FROM Port_Elizabeth.Parent, Port_Elizabeth.Person
--	WHERE Port_Elizabeth.Parent.Person_ID <> Port_Elizabeth.Person.Person_ID

--	DELETE Port_Elizabeth.Parent
--	WHERE Port_Elizabeth.Parent.Person_ID = @DeletedIndex

--	SELECT @DeletedIndex = Port_Elizabeth.Student.Person_ID
--	FROM Port_Elizabeth.Student, Port_Elizabeth.Person
--	WHERE Port_Elizabeth.Student.Person_ID <> Port_Elizabeth.Person.Person_ID 

--	DELETE Port_Elizabeth.Student
--	WHERE Port_Elizabeth.Student.Person_ID = @DeletedIndex 

--	SELECT @DeletedIndex = Port_Elizabeth.Facilitator.Person_ID
--	FROM Port_Elizabeth.Facilitator, Port_Elizabeth.Person
--	WHERE Port_Elizabeth.Facilitator.Person_ID <> Port_Elizabeth.Person.Person_ID

--	DELETE Port_Elizabeth.Facilitator
--	WHERE Port_Elizabeth.Facilitator.Person_ID = @DeletedIndex
--END 
--GO

--CREATE TRIGGER Port_Elizabeth.trgUpdatePerson
--ON Port_Elizabeth.Person
--FOR UPDATE
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Port_Elizabeth.trgInsertClass_Marks
--ON Port_Elizabeth.Class_Marks
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Class_Marks Table'

--SELECT *
--FROM Port_Elizabeth.Class_Marks

--END 
--GO

--CREATE TRIGGER Port_Elizabeth.trgInsertCourse
--ON Port_Elizabeth.Course
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Course Table'

--SELECT *
--FROM Port_Elizabeth.Course

--END 
--GO

---------------------------------------------------------------------------------------------------------
----Triggers
--CREATE TRIGGER Pretoria.trgInsertPerson
--ON Pretoria.Person
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have created an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Pretoria.trgDeletePerson
--ON Pretoria.Person
--FOR DELETE
--AS 
--BEGIN 
--	DECLARE @DeletedIndex INT
--	PRINT 'You have deleted an entry in the Person Table'

--	SELECT @DeletedIndex = Pretoria.Parent.Person_ID
--	FROM Pretoria.Parent, Pretoria.Person
--	WHERE Pretoria.Parent.Person_ID <> Pretoria.Person.Person_ID

--	DELETE Pretoria.Parent
--	WHERE Pretoria.Parent.Person_ID = @DeletedIndex

--	SELECT @DeletedIndex = Pretoria.Student.Person_ID
--	FROM Pretoria.Student, Pretoria.Person
--	WHERE Pretoria.Student.Person_ID <> Pretoria.Person.Person_ID 

--	DELETE Pretoria.Student
--	WHERE Pretoria.Student.Person_ID = @DeletedIndex 

--	SELECT @DeletedIndex = Pretoria.Facilitator.Person_ID
--	FROM Pretoria.Facilitator, Pretoria.Person
--	WHERE Pretoria.Facilitator.Person_ID <> Pretoria.Person.Person_ID

--	DELETE Pretoria.Facilitator
--	WHERE Pretoria.Facilitator.Person_ID = @DeletedIndex
--END 
--GO

--CREATE TRIGGER Pretoria.trgUpdatePerson
--ON Pretoria.Person
--FOR UPDATE
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Pretoria.trgInsertClass_Marks
--ON Pretoria.Class_Marks
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Class_Marks Table'

--SELECT *
--FROM Pretoria.Class_Marks

--END 
--GO

--CREATE TRIGGER Pretoria.trgInsertCourse
--ON Pretoria.Course
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Course Table'

--SELECT *
--FROM Pretoria.Course

--END 
--GO

---------------------------------------------------------------------------------------------------------
----Triggers
--CREATE TRIGGER Randburg.trgInsertPerson
--ON Randburg.Person
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have created an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Randburg.trgDeletePerson
--ON Randburg.Person
--FOR DELETE
--AS 
--BEGIN 
--	DECLARE @DeletedIndex INT
--	PRINT 'You have deleted an entry in the Person Table'

--	SELECT @DeletedIndex = Randburg.Parent.Person_ID
--	FROM Randburg.Parent, Randburg.Person
--	WHERE Randburg.Parent.Person_ID <> Randburg.Person.Person_ID

--	DELETE Randburg.Parent
--	WHERE Randburg.Parent.Person_ID = @DeletedIndex

--	SELECT @DeletedIndex = Randburg.Student.Person_ID
--	FROM Randburg.Student, Randburg.Person
--	WHERE Randburg.Student.Person_ID <> Randburg.Person.Person_ID 

--	DELETE Randburg.Student
--	WHERE Randburg.Student.Person_ID = @DeletedIndex 

--	SELECT @DeletedIndex = Randburg.Facilitator.Person_ID
--	FROM Randburg.Facilitator, Randburg.Person
--	WHERE Randburg.Facilitator.Person_ID <> Randburg.Person.Person_ID

--	DELETE Randburg.Facilitator
--	WHERE Randburg.Facilitator.Person_ID = @DeletedIndex
--END 
--GO

--CREATE TRIGGER Randburg.trgUpdatePerson
--ON Randburg.Person
--FOR UPDATE
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Randburg.trgInsertClass_Marks
--ON Randburg.Class_Marks
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Class_Marks Table'

--SELECT *
--FROM Randburg.Class_Marks

--END 
--GO

--CREATE TRIGGER Randburg.trgInsertCourse
--ON Randburg.Course
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Course Table'

--SELECT *
--FROM Randburg.Course

--END 
--GO

---------------------------------------------------------------------------------------------------------
----Triggers
--CREATE TRIGGER Sandton.trgInsertPerson
--ON Sandton.Person
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have created an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Sandton.trgDeletePerson
--ON Sandton.Person
--FOR DELETE
--AS 
--BEGIN 
--	DECLARE @DeletedIndex INT
--	PRINT 'You have deleted an entry in the Person Table'

--	SELECT @DeletedIndex = Sandton.Parent.Person_ID
--	FROM Sandton.Parent, Sandton.Person
--	WHERE Sandton.Parent.Person_ID <> Sandton.Person.Person_ID

--	DELETE Sandton.Parent
--	WHERE Sandton.Parent.Person_ID = @DeletedIndex

--	SELECT @DeletedIndex = Sandton.Student.Person_ID
--	FROM Sandton.Student, Sandton.Person
--	WHERE Sandton.Student.Person_ID <> Sandton.Person.Person_ID 

--	DELETE Sandton.Student
--	WHERE Sandton.Student.Person_ID = @DeletedIndex 

--	SELECT @DeletedIndex = Sandton.Facilitator.Person_ID
--	FROM Sandton.Facilitator, Sandton.Person
--	WHERE Sandton.Facilitator.Person_ID <> Sandton.Person.Person_ID

--	DELETE Sandton.Facilitator
--	WHERE Sandton.Facilitator.Person_ID = @DeletedIndex
--END 
--GO

--CREATE TRIGGER Sandton.trgUpdatePerson
--ON Sandton.Person
--FOR UPDATE
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Sandton.trgInsertClass_Marks
--ON Sandton.Class_Marks
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Class_Marks Table'

--SELECT *
--FROM Sandton.Class_Marks

--END 
--GO

--CREATE TRIGGER Sandton.trgInsertCourse
--ON Sandton.Course
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Course Table'

--SELECT *
--FROM Sandton.Course

--END 
--GO

---------------------------------------------------------------------------------------------------------
----Triggers
--CREATE TRIGGER Roodepoort.trgInsertPerson
--ON Roodepoort.Person
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have created an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Roodepoort.trgDeletePerson
--ON Roodepoort.Person
--FOR DELETE
--AS 
--BEGIN 
--	DECLARE @DeletedIndex INT
--	PRINT 'You have deleted an entry in the Person Table'

--	SELECT @DeletedIndex = Roodepoort.Parent.Person_ID
--	FROM Roodepoort.Parent, Roodepoort.Person
--	WHERE Roodepoort.Parent.Person_ID <> Roodepoort.Person.Person_ID

--	DELETE Roodepoort.Parent
--	WHERE Roodepoort.Parent.Person_ID = @DeletedIndex

--	SELECT @DeletedIndex = Roodepoort.Student.Person_ID
--	FROM Roodepoort.Student, Roodepoort.Person
--	WHERE Roodepoort.Student.Person_ID <> Roodepoort.Person.Person_ID 

--	DELETE Roodepoort.Student
--	WHERE Roodepoort.Student.Person_ID = @DeletedIndex 

--	SELECT @DeletedIndex = Roodepoort.Facilitator.Person_ID
--	FROM Roodepoort.Facilitator, Roodepoort.Person
--	WHERE Roodepoort.Facilitator.Person_ID <> Roodepoort.Person.Person_ID

--	DELETE Roodepoort.Facilitator
--	WHERE Roodepoort.Facilitator.Person_ID = @DeletedIndex
--END 
--GO

--CREATE TRIGGER Roodepoort.trgUpdatePerson
--ON Roodepoort.Person
--FOR UPDATE
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Roodepoort.trgInsertClass_Marks
--ON Roodepoort.Class_Marks
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Class_Marks Table'

--SELECT *
--FROM Roodepoort.Class_Marks

--END 
--GO

--CREATE TRIGGER Roodepoort.trgInsertCourse
--ON Roodepoort.Course
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Course Table'

--SELECT *
--FROM Roodepoort.Course

--END 
--GO

---------------------------------------------------------------------------------------------------------
----Triggers
--CREATE TRIGGER Stellenbosch.trgInsertPerson
--ON Stellenbosch.Person
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have created an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Stellenbosch.trgDeletePerson
--ON Stellenbosch.Person
--FOR DELETE
--AS 
--BEGIN 
--	DECLARE @DeletedIndex INT
--	PRINT 'You have deleted an entry in the Person Table'

--	SELECT @DeletedIndex = Stellenbosch.Parent.Person_ID
--	FROM Stellenbosch.Parent, Stellenbosch.Person
--	WHERE Stellenbosch.Parent.Person_ID <> Stellenbosch.Person.Person_ID

--	DELETE Stellenbosch.Parent
--	WHERE Stellenbosch.Parent.Person_ID = @DeletedIndex

--	SELECT @DeletedIndex = Stellenbosch.Student.Person_ID
--	FROM Stellenbosch.Student, Stellenbosch.Person
--	WHERE Stellenbosch.Student.Person_ID <> Stellenbosch.Person.Person_ID 

--	DELETE Stellenbosch.Student
--	WHERE Stellenbosch.Student.Person_ID = @DeletedIndex 

--	SELECT @DeletedIndex = Stellenbosch.Facilitator.Person_ID
--	FROM Stellenbosch.Facilitator, Stellenbosch.Person
--	WHERE Stellenbosch.Facilitator.Person_ID <> Stellenbosch.Person.Person_ID

--	DELETE Stellenbosch.Facilitator
--	WHERE Stellenbosch.Facilitator.Person_ID = @DeletedIndex
--END 
--GO

--CREATE TRIGGER Stellenbosch.trgUpdatePerson
--ON Stellenbosch.Person
--FOR UPDATE
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Stellenbosch.trgInsertClass_Marks
--ON Stellenbosch.Class_Marks
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Class_Marks Table'

--SELECT *
--FROM Stellenbosch.Class_Marks

--END 
--GO

--CREATE TRIGGER Stellenbosch.trgInsertCourse
--ON Stellenbosch.Course
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Course Table'

--SELECT *
--FROM Stellenbosch.Course

--END 
--GO

---------------------------------------------------------------------------------------------------------
----Triggers
--CREATE TRIGGER Vereeniging.trgInsertPerson
--ON Vereeniging.Person
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have created an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Vereeniging.trgDeletePerson
--ON Vereeniging.Person
--FOR DELETE
--AS 
--BEGIN 
--	DECLARE @DeletedIndex INT
--	PRINT 'You have deleted an entry in the Person Table'

--	SELECT @DeletedIndex = Vereeniging.Parent.Person_ID
--	FROM Vereeniging.Parent, Vereeniging.Person
--	WHERE Vereeniging.Parent.Person_ID <> Vereeniging.Person.Person_ID

--	DELETE Vereeniging.Parent
--	WHERE Vereeniging.Parent.Person_ID = @DeletedIndex

--	SELECT @DeletedIndex = Vereeniging.Student.Person_ID
--	FROM Vereeniging.Student, Vereeniging.Person
--	WHERE Vereeniging.Student.Person_ID <> Vereeniging.Person.Person_ID 

--	DELETE Vereeniging.Student
--	WHERE Vereeniging.Student.Person_ID = @DeletedIndex 

--	SELECT @DeletedIndex = Vereeniging.Facilitator.Person_ID
--	FROM Vereeniging.Facilitator, Vereeniging.Person
--	WHERE Vereeniging.Facilitator.Person_ID <> Vereeniging.Person.Person_ID

--	DELETE Vereeniging.Facilitator
--	WHERE Vereeniging.Facilitator.Person_ID = @DeletedIndex
--END 
--GO

--CREATE TRIGGER Vereeniging.trgUpdatePerson
--ON Vereeniging.Person
--FOR UPDATE
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Person Table'
--END 
--GO

--CREATE TRIGGER Vereeniging.trgInsertClass_Marks
--ON Vereeniging.Class_Marks
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Class_Marks Table'

--SELECT *
--FROM Vereeniging.Class_Marks

--END 
--GO

--CREATE TRIGGER Vereeniging.trgInsertCourse
--ON Vereeniging.Course
--FOR INSERT
--AS 
--BEGIN 
--PRINT 'You have updated an entry in the Course Table'

--SELECT *
--FROM Vereeniging.Course

--END 
--GO
