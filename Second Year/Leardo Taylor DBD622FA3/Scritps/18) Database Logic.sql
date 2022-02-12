USE CTUDB
GO

--CREATE OR ALTER TRIGGER [Auckland_Park].[CreateStudentParentView] 
--ON [Auckland_Park].[Table]
--AFTER UPDATE OR DELETE
--BEGIN 

--END
--GO

 CREATE OR ALTER VIEW [Auckland_Park].[Student_Details]
 AS
	SELECT [Stud].[ID_Number] AS [ID No],
	([Stud].[Name] +' '+ [Stud].[Surname]) AS [FullName], /*([Pare].[Name] +' '+ [Pare].[Surname]) AS [Guardian],*/
	[Course].[Name] AS [Course], ([Stud].[Street]+', '+ [Stud].[City] +', '+[Stud].[Country]) AS [Address]

	FROM [Auckland_Park].[Person] AS [Stud]
	INNER JOIN [Auckland_Park].[Student] ON [Student].[PersonID] = [Stud].[PersonID]
	INNER JOIN [Auckland_Park].[Stud_Course_Lu] ON [Stud_Course_Lu].[StudentID] = [Student].[StudentID]
	INNER JOIN [Auckland_Park].[Course] ON [Course].[CourseID] = [Stud_Course_Lu].[CourseID] 
	--INNER JOIN [Auckland_Park].[Student_Parent] ON [Student_Parent].[StudentID] = [Student].[StudentID] 
	--INNER JOIN [Auckland_Park].[Parent] ON [Parent].[ParentID] = [Student_Parent].[ParentID] 
GO

CREATE OR ALTER FUNCTION [Auckland_Park].GetViewStudDetails()
RETURNS TABLE
AS
	RETURN
	(	SELECT * 
		FROM [Auckland_Park].[Student_Details]
	)
GO

CREATE OR ALTER PROCEDURE SelectStudentView
AS
BEGIN
	SELECT * FROM [Auckland_Park].etViewStudDetails()
END
GO

 CREATE OR ALTER VIEW [Auckland_Park].[Student_Marks]
 AS
	SELECT DISTINCT ([Person].[Name] +' '+ [Person].[Surname]) AS [FullName], [Course].[Name] AS [Course],	
	AVG([Formative].[Mark]) OVER(PARTITION BY [LU_Formative].[LUID]) AS [AVE Formatives], 
	AVG([Sumative].[Mark]) OVER(PARTITION BY [LU_Sumative].[LUID]) AS [AVE Sumatives]

	FROM [Auckland_Park].[Person]
	INNER JOIN [Auckland_Park].[Student] ON [Student].[PersonID] = [Person].[PersonID]
	INNER JOIN [Auckland_Park].[Stud_Course_Lu] ON [Stud_Course_Lu].[StudentID] = [Student].[StudentID]
	INNER JOIN [Auckland_Park].[Course] ON [Course].[CourseID] = [Stud_Course_Lu].[CourseID] 
	INNER JOIN [Auckland_Park].[Learning_Unit] ON [Learning_Unit].[LUID] = [Stud_Course_Lu].[LUID] 
	INNER JOIN [Auckland_Park].[LU_Formative] ON [LU_Formative].[LUID] = [Stud_Course_Lu].[LUID] 
	INNER JOIN [Auckland_Park].[LU_Sumative] ON [LU_Sumative].[LUID] = [Stud_Course_Lu].[LUID] 
	INNER JOIN [Auckland_Park].[Formative] ON [Formative].[FormativeID] = [LU_Formative].[FormativeID] 
	INNER JOIN [Auckland_Park].[Sumative] ON [Sumative].[SumativeID] = [LU_Sumative].[SumativeID] 
GO


CREATE OR ALTER FUNCTION [Auckland_Park].GetStudent_Marks()
RETURNS TABLE
AS
	RETURN
	(	SELECT * 
		FROM [Auckland_Park].[Student_Details]
	)
GO

CREATE OR ALTER PROCEDURE [Auckland_Park].SelectStudent_Marks
AS
BEGIN
	SELECT * FROM [Auckland_Park].GetStudent_Marks()
END
GO

 CREATE OR ALTER VIEW [Auckland_Park].[Facilitator_Course]
 AS
	SELECT ([Person].[Name] +' '+ [Person].[Surname]) AS [Facilitator], [Course].[Name] AS [Course],
	[Course].[Desc] AS [Course Descripion]
	FROM [Auckland_Park].[Person]
	INNER JOIN [Auckland_Park].[Facilitator] ON [Facilitator].[PersonID] = [Person].[PersonID]
	INNER JOIN [Auckland_Park].[Fac_Course] ON [Fac_Course].[FacilitatorID] = [Facilitator].[FacilitatorID]
	INNER JOIN [Auckland_Park].[Course] ON [Course].[CourseID] = [Fac_Course].[CourseID] 
GO

CREATE OR ALTER FUNCTION [Auckland_Park].GetFacilitator_Course()
RETURNS TABLE
AS
	RETURN
	(	SELECT * 
		FROM [Auckland_Park].[Facilitator_Course]
	)
GO

CREATE OR ALTER PROCEDURE [Auckland_Park].SelectFacilitator_Course
AS
BEGIN
	SELECT * FROM [Auckland_Park].Facilitator_Course()
END
GO