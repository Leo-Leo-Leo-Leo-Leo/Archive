USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Sumative]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Sumative];
END;
GO

CREATE TABLE [Auckland_Park].[Sumative] (
    [SumativeID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
    [Number] INTEGER NOT NULL,
    [Mark] INTEGER NULL,
    PRIMARY KEY ([SumativeID])
);
GO

INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',93),('2',97),('3',75),('4',35),('1',91),('2',57),('3',29),('4',92),('1',65),('2',65);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',63),('4',3),('1',50),('2',3),('3',7),('4',94),('1',42),('2',92),('3',32),('4',4);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',43),('2',97),('3',98),('4',83),('1',85),('2',68),('3',90),('4',59),('1',16),('2',1);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',48),('4',57),('1',51),('2',1),('3',12),('4',7),('1',66),('2',32),('3',43),('4',95);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',49),('2',47),('3',80),('4',56),('1',85),('2',75),('3',56),('4',84),('1',52),('2',22);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',71),('4',6),('1',22),('2',79),('3',97),('4',63),('1',76),('2',22),('3',12),('4',87);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',75),('2',62),('3',4),('4',67),('1',49),('2',35),('3',61),('4',14),('1',67),('2',79);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',69),('4',13),('1',20),('2',58),('3',19),('4',65),('1',52),('2',35),('3',21),('4',22);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',46),('2',91),('3',49),('4',35),('1',94),('2',98),('3',56),('4',62),('1',97),('2',62);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',95),('4',27),('1',92),('2',34),('3',17),('4',64),('1',31),('2',8),('3',83),('4',63);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',87),('2',41),('3',83),('4',42),('1',20),('2',56),('3',17),('4',19),('1',53),('2',81);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',63),('4',50),('1',6),('2',27),('3',23),('4',55),('1',95),('2',15),('3',27),('4',96);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',75),('2',82),('3',14),('4',35),('1',60),('2',29),('3',6),('4',37),('1',7),('2',80);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',54),('4',45),('1',47),('2',52),('3',33),('4',58),('1',52),('2',49),('3',72),('4',72);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',1),('2',83),('3',13),('4',55),('1',77),('2',32),('3',45),('4',83),('1',53),('2',10);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',32),('4',13),('1',29),('2',48),('3',21),('4',18),('1',91),('2',66),('3',91),('4',10);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',91),('2',52),('3',39),('4',62),('1',7),('2',68),('3',51),('4',3),('1',47),('2',82);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',52),('4',100),('1',73),('2',41),('3',94),('4',62),('1',96),('2',46),('3',46),('4',32);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',6),('2',48),('3',52),('4',40),('1',1),('2',46),('3',19),('4',38),('1',3),('2',8);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',22),('4',74),('1',52),('2',29),('3',42),('4',53),('1',76),('2',69),('3',70),('4',75);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',66),('2',11),('3',48),('4',82),('1',87),('2',49),('3',42),('4',46),('1',28),('2',29);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',32),('4',26),('1',22),('2',89),('3',57),('4',75),('1',48),('2',91),('3',20),('4',48);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',18),('2',6),('3',59),('4',49),('1',83),('2',53),('3',49),('4',77),('1',40),('2',31);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',41),('4',80),('1',76),('2',23),('3',54),('4',76),('1',96),('2',91),('3',60),('4',61);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',19),('2',74),('3',72),('4',90),('1',68),('2',64),('3',55),('4',6),('1',80),('2',98);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',79),('4',2),('1',34),('2',85),('3',28),('4',37),('1',52),('2',49),('3',56),('4',27);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',53),('2',69),('3',97),('4',22),('1',65),('2',96),('3',9),('4',61),('1',23),('2',65);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',77),('4',44),('1',18),('2',15),('3',75),('4',60),('1',94),('2',60),('3',77),('4',63);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',8),('2',4),('3',61),('4',95),('1',89),('2',39),('3',82),('4',28),('1',7),('2',81);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',46),('4',51),('1',9),('2',66),('3',79),('4',73),('1',83),('2',33),('3',48),('4',24);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',19),('2',89),('3',45),('4',64),('1',64),('2',54),('3',93),('4',25),('1',55),('2',70);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',46),('4',73),('1',48),('2',30),('3',55),('4',45),('1',61),('2',19),('3',67),('4',16);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',45),('2',65),('3',39),('4',87),('1',95),('2',100),('3',64),('4',49),('1',79),('2',72);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',31),('4',29),('1',64),('2',84),('3',22),('4',80),('1',35),('2',88),('3',57),('4',80);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',100),('2',86),('3',58),('4',79),('1',66),('2',23),('3',11),('4',100),('1',26),('2',61);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',33),('4',39),('1',91),('2',60),('3',53),('4',2),('1',41),('2',91),('3',50),('4',48);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',43),('2',72),('3',28),('4',89),('1',16),('2',90),('3',25),('4',43),('1',26),('2',93);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',11),('4',90),('1',93),('2',75),('3',18),('4',94),('1',47),('2',17),('3',32),('4',85);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',7),('2',28),('3',51),('4',13),('1',8),('2',47),('3',12),('4',36),('1',98),('2',56);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',15),('4',61),('1',64),('2',99),('3',94),('4',78),('1',66),('2',65),('3',68),('4',8);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',64),('2',62),('3',6),('4',91),('1',65),('2',30),('3',98),('4',87),('1',76),('2',6);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',9),('4',46),('1',53),('2',48),('3',84),('4',86),('1',73),('2',86),('3',41),('4',100);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',64),('2',47),('3',39),('4',68),('1',83),('2',62),('3',22),('4',42),('1',23),('2',18);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',47),('4',29),('1',44),('2',46),('3',11),('4',71),('1',77),('2',15),('3',58),('4',9);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',40),('2',62),('3',26),('4',33),('1',57),('2',44),('3',41),('4',80),('1',58),('2',17);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',61),('4',19),('1',50),('2',45),('3',6),('4',64),('1',35),('2',100),('3',5),('4',39);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',36),('2',24),('3',26),('4',67),('1',65),('2',97),('3',1),('4',49),('1',10),('2',86);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',49),('4',1),('1',2),('2',19),('3',71),('4',31),('1',88),('2',6),('3',73),('4',50);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',39),('2',25),('3',19),('4',24),('1',98),('2',63),('3',16),('4',90),('1',23),('2',80);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',100),('4',84),('1',71),('2',41),('3',87),('4',1),('1',9),('2',27),('3',73),('4',9);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',41),('2',89),('3',85),('4',34),('1',41),('2',84),('3',8),('4',82),('1',69),('2',72);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',72),('4',91),('1',39),('2',9),('3',81),('4',5),('1',19),('2',6),('3',33),('4',18);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',99),('2',27),('3',36),('4',39),('1',45),('2',62),('3',53),('4',54),('1',99),('2',19);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',99),('4',75),('1',32),('2',13),('3',86),('4',74),('1',97),('2',67),('3',67),('4',59);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',34),('2',2),('3',57),('4',33),('1',79),('2',19),('3',6),('4',49),('1',69),('2',29);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',16),('4',9),('1',90),('2',35),('3',65),('4',39),('1',3),('2',56),('3',1),('4',30);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',68),('2',9),('3',53),('4',66),('1',18),('2',82),('3',70),('4',5),('1',78),('2',90);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',92),('4',84),('1',50),('2',86),('3',99),('4',32),('1',76),('2',10),('3',86),('4',31);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',79),('2',23),('3',96),('4',51),('1',24),('2',86),('3',3),('4',82),('1',48),('2',68);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',78),('4',47),('1',78),('2',56),('3',44),('4',93),('1',94),('2',86),('3',62),('4',4);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',62),('2',5),('3',51),('4',62),('1',27),('2',94),('3',91),('4',50),('1',96),('2',24);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',80),('4',49),('1',71),('2',74),('3',6),('4',8),('1',8),('2',46),('3',32),('4',52);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',66),('2',66),('3',54),('4',94),('1',100),('2',61),('3',6),('4',91),('1',65),('2',97);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',38),('4',99),('1',18),('2',15),('3',69),('4',92),('1',45),('2',39),('3',50),('4',72);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',36),('2',28),('3',31),('4',92),('1',37),('2',36),('3',39),('4',99),('1',82),('2',48);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',21),('4',35),('1',62),('2',5),('3',69),('4',35),('1',40),('2',91),('3',80),('4',73);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',87),('2',11),('3',93),('4',38),('1',57),('2',44),('3',39),('4',73),('1',46),('2',78);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',1),('4',97),('1',84),('2',1),('3',98),('4',54),('1',11),('2',13),('3',76),('4',86);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',13),('2',18),('3',70),('4',84),('1',28),('2',56),('3',20),('4',12),('1',55),('2',77);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',5),('4',12),('1',68),('2',69),('3',53),('4',25),('1',36),('2',49),('3',37),('4',22);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',66),('2',56),('3',49),('4',2),('1',27),('2',49),('3',13),('4',56),('1',92),('2',55);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',22),('4',24),('1',84),('2',70),('3',27),('4',77),('1',53),('2',50),('3',97),('4',4);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',57),('2',88),('3',88),('4',34),('1',76),('2',13),('3',28),('4',95),('1',37),('2',79);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',50),('4',91),('1',26),('2',16),('3',19),('4',4),('1',79),('2',33),('3',33),('4',54);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',24),('2',96),('3',9),('4',3),('1',59),('2',4),('3',15),('4',59),('1',51),('2',12);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',39),('4',31),('1',64),('2',86),('3',32),('4',79),('1',26),('2',26),('3',12),('4',4);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',100),('2',43),('3',46),('4',40),('1',42),('2',48),('3',68),('4',63),('1',56),('2',72);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',96),('4',15),('1',35),('2',41),('3',74),('4',11),('1',100),('2',69),('3',57),('4',25);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',29),('2',91),('3',40),('4',46),('1',45),('2',89),('3',47),('4',86),('1',32),('2',49);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',6),('4',48),('1',12),('2',86),('3',93),('4',98),('1',6),('2',84),('3',27),('4',32);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',32),('2',97),('3',75),('4',12),('1',3),('2',50),('3',42),('4',65),('1',79),('2',36);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',85),('4',38),('1',80),('2',57),('3',77),('4',2),('1',55),('2',79),('3',71),('4',71);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',19),('2',33),('3',46),('4',88),('1',31),('2',55),('3',69),('4',6),('1',27),('2',91);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',4),('4',57),('1',81),('2',1),('3',98),('4',69),('1',17),('2',76),('3',57),('4',49);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',99),('2',49),('3',55),('4',64),('1',44),('2',74),('3',21),('4',88),('1',92),('2',69);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',27),('4',31),('1',31),('2',9),('3',32),('4',69),('1',10),('2',12),('3',71),('4',2);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',51),('2',9),('3',77),('4',23),('1',78),('2',77),('3',5),('4',15),('1',9),('2',63);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',87),('4',33),('1',3),('2',63),('3',21),('4',65),('1',70),('2',84),('3',6),('4',44);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',18),('2',61),('3',4),('4',52),('1',43),('2',41),('3',87),('4',60),('1',11),('2',79);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',58),('4',37),('1',99),('2',13),('3',40),('4',100),('1',48),('2',8),('3',95),('4',7);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',62),('2',92),('3',96),('4',34),('1',63),('2',69),('3',89),('4',80),('1',45),('2',16);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',95),('4',3),('1',36),('2',77),('3',27),('4',15),('1',29),('2',79),('3',76),('4',18);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',52),('2',73),('3',82),('4',97),('1',4),('2',74),('3',73),('4',55),('1',70),('2',40);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',17),('4',28),('1',27),('2',31),('3',50),('4',4),('1',5),('2',36),('3',82),('4',10);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',88),('2',17),('3',46),('4',87),('1',24),('2',10),('3',54),('4',52),('1',91),('2',96);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',88),('4',7),('1',6),('2',9),('3',88),('4',50),('1',13),('2',88),('3',1),('4',75);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',87),('2',48),('3',25),('4',3),('1',8),('2',42),('3',31),('4',54),('1',26),('2',96);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',7),('4',14),('1',5),('2',64),('3',93),('4',85),('1',8),('2',98),('3',40),('4',38);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',63),('2',50),('3',28),('4',98),('1',20),('2',67),('3',81),('4',12),('1',66),('2',77);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',11),('4',94),('1',36),('2',12),('3',50),('4',90),('1',95),('2',70),('3',93),('4',90);

PRINT 'Row 1000 inserted';
GO
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',17),('2',31),('3',78),('4',74),('1',84),('2',44),('3',50),('4',79),('1',7),('2',84);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',98),('4',66),('1',63),('2',28),('3',4),('4',45),('1',66),('2',86),('3',72),('4',23);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',13),('2',66),('3',39),('4',58),('1',66),('2',39),('3',90),('4',4),('1',25),('2',5);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',96),('4',67),('1',7),('2',57),('3',78),('4',78),('1',85),('2',62),('3',82),('4',91);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',52),('2',14),('3',52),('4',13),('1',48),('2',85),('3',18),('4',74),('1',97),('2',92);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',12),('4',41),('1',53),('2',67),('3',84),('4',94),('1',70),('2',4),('3',55),('4',45);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',93),('2',99),('3',89),('4',96),('1',80),('2',65),('3',5),('4',52),('1',100),('2',82);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',61),('4',42),('1',65),('2',100),('3',73),('4',85),('1',63),('2',41),('3',79),('4',41);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',40),('2',28),('3',10),('4',11),('1',96),('2',22),('3',96),('4',19),('1',26),('2',8);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',75),('4',54),('1',98),('2',25),('3',71),('4',30),('1',18),('2',100),('3',12),('4',95);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',28),('2',15),('3',22),('4',38),('1',97),('2',2),('3',66),('4',63),('1',13),('2',93);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',99),('4',70),('1',69),('2',34),('3',88),('4',25),('1',42),('2',81),('3',81),('4',42);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',50),('2',69),('3',29),('4',92),('1',55),('2',6),('3',26),('4',82),('1',65),('2',16);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',31),('4',66),('1',25),('2',78),('3',61),('4',4),('1',61),('2',84),('3',13),('4',54);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',76),('2',79),('3',66),('4',83),('1',7),('2',97),('3',12),('4',43),('1',26),('2',81);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',90),('4',7),('1',22),('2',93),('3',27),('4',10),('1',74),('2',34),('3',56),('4',34);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',31),('2',24),('3',74),('4',14),('1',1),('2',76),('3',10),('4',5),('1',33),('2',13);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',77),('4',42),('1',64),('2',70),('3',32),('4',65),('1',64),('2',36),('3',72),('4',29);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',1),('2',4),('3',12),('4',8),('1',41),('2',48),('3',44),('4',88),('1',77),('2',41);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',62),('4',53),('1',58),('2',23),('3',7),('4',89),('1',50),('2',71),('3',7),('4',71);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',51),('2',66),('3',54),('4',84),('1',15),('2',13),('3',4),('4',30),('1',8),('2',80);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',33),('4',65),('1',36),('2',87),('3',58),('4',1),('1',99),('2',47),('3',11),('4',23);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',46),('2',46),('3',59),('4',27),('1',26),('2',92),('3',86),('4',77),('1',14),('2',82);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',4),('4',90),('1',51),('2',67),('3',70),('4',75),('1',3),('2',66),('3',83),('4',44);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',28),('2',87),('3',36),('4',51),('1',94),('2',53),('3',5),('4',51),('1',75),('2',43);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',3),('4',39),('1',15),('2',89),('3',84),('4',12),('1',94),('2',35),('3',62),('4',80);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',40),('2',49),('3',1),('4',96),('1',2),('2',59),('3',5),('4',73),('1',1),('2',94);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',51),('4',98),('1',21),('2',93),('3',64),('4',59),('1',58),('2',43),('3',5),('4',39);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',24),('2',77),('3',35),('4',21),('1',42),('2',23),('3',63),('4',91),('1',45),('2',96);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',2),('4',12),('1',49),('2',2),('3',58),('4',94),('1',54),('2',94),('3',15),('4',13);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',61),('2',45),('3',97),('4',38),('1',40),('2',7),('3',51),('4',62),('1',99),('2',6);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',29),('4',55),('1',50),('2',57),('3',76),('4',88),('1',64),('2',47),('3',70),('4',66);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',89),('2',30),('3',19),('4',13),('1',90),('2',95),('3',43),('4',86),('1',63),('2',32);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',50),('4',17),('1',50),('2',99),('3',95),('4',7),('1',53),('2',77),('3',1),('4',78);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',89),('2',82),('3',4),('4',16),('1',61),('2',7),('3',42),('4',36),('1',40),('2',48);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',29),('4',51),('1',88),('2',34),('3',45),('4',30),('1',46),('2',58),('3',81),('4',65);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',26),('2',19),('3',32),('4',21),('1',20),('2',21),('3',60),('4',4),('1',59),('2',19);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',31),('4',42),('1',50),('2',72),('3',14),('4',75),('1',80),('2',86),('3',11),('4',80);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',23),('2',74),('3',76),('4',63),('1',36),('2',12),('3',31),('4',89),('1',7),('2',57);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',77),('4',30),('1',57),('2',76),('3',65),('4',16),('1',90),('2',52),('3',58),('4',80);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',24),('2',30),('3',39),('4',87),('1',96),('2',77),('3',9),('4',54),('1',13),('2',63);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',20),('4',5),('1',72),('2',7),('3',44),('4',80),('1',18),('2',44),('3',58),('4',21);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',57),('2',37),('3',20),('4',75),('1',83),('2',28),('3',35),('4',66),('1',40),('2',83);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',15),('4',54),('1',42),('2',64),('3',77),('4',44),('1',71),('2',42),('3',45),('4',82);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',30),('2',99),('3',98),('4',16),('1',10),('2',36),('3',74),('4',11),('1',56),('2',21);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',95),('4',89),('1',84),('2',82),('3',44),('4',3),('1',54),('2',31),('3',90),('4',22);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',74),('2',81),('3',12),('4',6),('1',51),('2',35),('3',69),('4',29),('1',19),('2',69);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',7),('4',66),('1',64),('2',62),('3',27),('4',96),('1',81),('2',34),('3',34),('4',57);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',55),('2',4),('3',79),('4',91),('1',50),('2',49),('3',87),('4',99),('1',12),('2',54);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',78),('4',68),('1',57),('2',39),('3',16),('4',71),('1',33),('2',33),('3',43),('4',74);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',25),('2',84),('3',14),('4',25),('1',57),('2',80),('3',18),('4',63),('1',14),('2',13);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',74),('4',71),('1',33),('2',55),('3',88),('4',95),('1',3),('2',87),('3',57),('4',15);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',93),('2',27),('3',80),('4',1),('1',85),('2',44),('3',92),('4',96),('1',50),('2',25);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',85),('4',6),('1',49),('2',67),('3',33),('4',11),('1',38),('2',97),('3',64),('4',69);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',48),('2',42),('3',26),('4',1),('1',52),('2',9),('3',26),('4',33),('1',62),('2',26);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',6),('4',65),('1',1),('2',88),('3',23),('4',56),('1',25),('2',4),('3',97),('4',27);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',10),('2',5),('3',95),('4',94),('1',72),('2',93),('3',81),('4',63),('1',17),('2',9);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',22),('4',30),('1',70),('2',8),('3',42),('4',42),('1',8),('2',37),('3',22),('4',28);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('1',47),('2',39),('3',27),('4',83),('1',39),('2',2),('3',7),('4',60),('1',41),('2',73);
INSERT INTO [Auckland_Park].[Sumative]([Number],[Mark]) VALUES('3',16),('4',45),('1',7),('2',47),('3',44),('4',10),('1',32),('2',82),('3',82),('4',76);