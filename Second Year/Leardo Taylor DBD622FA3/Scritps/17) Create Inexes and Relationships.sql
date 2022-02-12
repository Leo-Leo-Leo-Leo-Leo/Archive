USE CTUDB
GO

CREATE NONCLUSTERED INDEX IX_ID_Number
ON [Auckland_Park].[Person] ([ID_Number] ASC)
GO

CREATE NONCLUSTERED INDEX IX_Formative_Number
ON [Auckland_Park].[Formative] ([Number] ASC)
GO

CREATE NONCLUSTERED INDEX IX_Sumative_Number
ON [Auckland_Park].[Sumative] ([Number] ASC)
GO

ALTER TABLE [Auckland_Park].[Student]
	ADD CONSTRAINT FK_Student_Person FOREIGN KEY ([PersonID])
	REFERENCES [Auckland_Park].[Person] ([PersonID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Parent]
	ADD CONSTRAINT FK_Parent_Person FOREIGN KEY ([PersonID])
	REFERENCES [Auckland_Park].[Person] ([PersonID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Facilitator]
	ADD CONSTRAINT FK_Facilitator_Person FOREIGN KEY ([PersonID])
	REFERENCES [Auckland_Park].[Person] ([PersonID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Student_Parent]
	ADD CONSTRAINT FK_StudentP_Student FOREIGN KEY ([StudentID])
	REFERENCES [Auckland_Park].[Student] ([StudentID])
GO

ALTER TABLE [Auckland_Park].[Student_Parent]
	ADD CONSTRAINT FK_SParent_Parent FOREIGN KEY ([ParentID])
	REFERENCES [Auckland_Park].[Parent] ([ParentID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Fac_Course]
	ADD CONSTRAINT FK_FacilitatorC_Facilitator FOREIGN KEY ([FacilitatorID])
	REFERENCES [Auckland_Park].[Facilitator] ([FacilitatorID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Fac_Course]
	ADD CONSTRAINT FK_FCourse_Course FOREIGN KEY ([CourseID])
	REFERENCES [Auckland_Park].[Course] ([CourseID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Stud_Course_Lu]
	ADD CONSTRAINT FK_StudentCLU_Student FOREIGN KEY ([StudentID])
	REFERENCES [Auckland_Park].[Student] ([StudentID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Stud_Course_Lu]
	ADD CONSTRAINT FK_SCourseLU_Course FOREIGN KEY ([CourseID])
	REFERENCES [Auckland_Park].[Course] ([CourseID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Stud_Course_Lu]
	ADD CONSTRAINT FK_SCLearning_Unit_Learning_Unit FOREIGN KEY ([LUID])
	REFERENCES [Auckland_Park].[Learning_Unit] ([LUID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Stud_Int_IMark]
	ADD CONSTRAINT FK_StudentIIM_Student FOREIGN KEY ([StudentID])
	REFERENCES [Auckland_Park].[Student] ([StudentID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Stud_Int_IMark]
	ADD CONSTRAINT FK_SIntIM_Int FOREIGN KEY ([InternationalID])
	REFERENCES [Auckland_Park].[International] ([InternationalID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[Stud_Int_IMark]
	ADD CONSTRAINT FK_SIIMark_IMark FOREIGN KEY ([IMarkID])
	REFERENCES [Auckland_Park].[IMark] ([IMarkID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[LU_Formative]
	ADD CONSTRAINT FK_LU_Formative_Learning_Unit FOREIGN KEY ([LUID])
	REFERENCES [Auckland_Park].[Learning_Unit] ([LUID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[LU_Sumative]
	ADD CONSTRAINT FK_LU_Sumative_Learning_Unit FOREIGN KEY ([LUID])
	REFERENCES [Auckland_Park].[Learning_Unit] ([LUID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[LU_Formative]
	ADD CONSTRAINT FK_LU_Formative_Formative FOREIGN KEY ([FormativeID])
	REFERENCES [Auckland_Park].[Formative] ([FormativeID])
	ON DELETE CASCADE
GO

ALTER TABLE [Auckland_Park].[LU_Sumative]
	ADD CONSTRAINT FK_LU_Sumative_Sumative FOREIGN KEY ([SumativeID])
	REFERENCES [Auckland_Park].[Sumative] ([SumativeID])
	ON DELETE CASCADE
GO