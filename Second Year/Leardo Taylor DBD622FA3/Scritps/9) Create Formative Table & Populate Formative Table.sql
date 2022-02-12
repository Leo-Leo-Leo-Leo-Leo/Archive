USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Formative]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Formative];
END;
GO

CREATE TABLE [Auckland_Park].[Formative] (
    [FormativeID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
    [Number] INTEGER NOT NULL,
    [Mark] INTEGER NULL,
    PRIMARY KEY ([FormativeID])
);
GO

INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',69),('2',99),('3',7),('4',71),('1',98),('2',71),('3',51),('4',39),('1',86),('2',17);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',32),('4',79),('1',25),('2',53),('3',95),('4',62),('1',75),('2',55),('3',60),('4',61);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',4),('2',67),('3',31),('4',49),('1',90),('2',10),('3',92),('4',53),('1',35),('2',95);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',78),('4',18),('1',62),('2',1),('3',2),('4',90),('1',20),('2',91),('3',68),('4',2);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',39),('2',91),('3',9),('4',13),('1',39),('2',63),('3',99),('4',88),('1',95),('2',90);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',65),('4',98),('1',85),('2',18),('3',100),('4',44),('1',75),('2',62),('3',32),('4',33);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',62),('2',15),('3',45),('4',53),('1',84),('2',31),('3',94),('4',23),('1',42),('2',37);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',96),('4',63),('1',42),('2',2),('3',95),('4',93),('1',12),('2',78),('3',20),('4',81);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',62),('2',23),('3',22),('4',67),('1',58),('2',90),('3',59),('4',46),('1',64),('2',16);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',2),('4',10),('1',91),('2',4),('3',30),('4',51),('1',13),('2',30),('3',35),('4',4);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',43),('2',58),('3',42),('4',89),('1',68),('2',63),('3',5),('4',54),('1',100),('2',26);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',59),('4',85),('1',51),('2',27),('3',34),('4',83),('1',40),('2',48),('3',50),('4',50);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',65),('2',42),('3',77),('4',3),('1',56),('2',19),('3',87),('4',45),('1',61),('2',87);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',16),('4',58),('1',25),('2',86),('3',13),('4',38),('1',63),('2',87),('3',75),('4',68);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',99),('2',94),('3',92),('4',58),('1',59),('2',30),('3',56),('4',6),('1',10),('2',39);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',34),('4',82),('1',23),('2',8),('3',39),('4',39),('1',46),('2',76),('3',8),('4',17);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',24),('2',28),('3',35),('4',67),('1',34),('2',96),('3',32),('4',47),('1',12),('2',26);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',64),('4',84),('1',25),('2',47),('3',40),('4',41),('1',24),('2',66),('3',28),('4',73);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',28),('2',59),('3',1),('4',74),('1',8),('2',10),('3',42),('4',50),('1',48),('2',20);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',88),('4',44),('1',34),('2',73),('3',100),('4',62),('1',15),('2',3),('3',1),('4',6);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',25),('2',24),('3',65),('4',50),('1',42),('2',42),('3',38),('4',84),('1',21),('2',72);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',74),('4',72),('1',69),('2',68),('3',99),('4',22),('1',25),('2',27),('3',95),('4',84);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',9),('2',15),('3',94),('4',55),('1',13),('2',2),('3',92),('4',42),('1',4),('2',85);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',33),('4',42),('1',50),('2',81),('3',78),('4',4),('1',81),('2',1),('3',16),('4',99);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',96),('2',18),('3',40),('4',42),('1',53),('2',26),('3',45),('4',47),('1',45),('2',17);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',29),('4',80),('1',12),('2',41),('3',79),('4',79),('1',15),('2',94),('3',12),('4',99);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',23),('2',36),('3',31),('4',21),('1',74),('2',46),('3',10),('4',81),('1',90),('2',68);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',23),('4',20),('1',37),('2',5),('3',93),('4',62),('1',61),('2',29),('3',69),('4',23);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',2),('2',24),('3',67),('4',88),('1',88),('2',69),('3',67),('4',78),('1',6),('2',55);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',69),('4',62),('1',49),('2',46),('3',65),('4',22),('1',67),('2',47),('3',60),('4',11);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',1),('2',25),('3',14),('4',32),('1',85),('2',65),('3',20),('4',98),('1',19),('2',88);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',28),('4',43),('1',71),('2',76),('3',1),('4',19),('1',95),('2',74),('3',75),('4',98);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',36),('2',65),('3',76),('4',33),('1',69),('2',88),('3',88),('4',14),('1',19),('2',17);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',97),('4',79),('1',4),('2',67),('3',88),('4',84),('1',81),('2',79),('3',71),('4',79);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',36),('2',31),('3',13),('4',46),('1',60),('2',24),('3',21),('4',32),('1',47),('2',66);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',74),('4',95),('1',18),('2',64),('3',58),('4',73),('1',11),('2',76),('3',94),('4',21);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',67),('2',84),('3',74),('4',97),('1',34),('2',98),('3',96),('4',56),('1',39),('2',88);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',30),('4',41),('1',34),('2',76),('3',15),('4',53),('1',31),('2',40),('3',90),('4',56);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',58),('2',66),('3',75),('4',41),('1',94),('2',70),('3',45),('4',42),('1',18),('2',22);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',94),('4',19),('1',58),('2',85),('3',84),('4',60),('1',12),('2',23),('3',62),('4',90);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',68),('2',95),('3',99),('4',54),('1',35),('2',13),('3',39),('4',29),('1',5),('2',93);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',68),('4',58),('1',15),('2',96),('3',61),('4',93),('1',12),('2',59),('3',40),('4',53);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',62),('2',38),('3',19),('4',1),('1',7),('2',63),('3',28),('4',83),('1',87),('2',21);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',55),('4',1),('1',60),('2',13),('3',57),('4',35),('1',43),('2',100),('3',85),('4',14);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',47),('2',5),('3',37),('4',93),('1',92),('2',22),('3',16),('4',88),('1',1),('2',70);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',44),('4',23),('1',58),('2',48),('3',70),('4',68),('1',33),('2',26),('3',92),('4',77);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',93),('2',21),('3',85),('4',83),('1',38),('2',18),('3',22),('4',9),('1',94),('2',20);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',90),('4',72),('1',9),('2',42),('3',87),('4',37),('1',26),('2',36),('3',52),('4',76);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',73),('2',96),('3',5),('4',57),('1',14),('2',2),('3',87),('4',20),('1',45),('2',14);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',95),('4',24),('1',93),('2',8),('3',80),('4',90),('1',77),('2',47),('3',20),('4',75);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',2),('2',68),('3',86),('4',25),('1',77),('2',32),('3',56),('4',1),('1',19),('2',32);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',5),('4',65),('1',15),('2',65),('3',59),('4',83),('1',43),('2',20),('3',27),('4',26);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',64),('2',14),('3',71),('4',17),('1',93),('2',7),('3',71),('4',23),('1',90),('2',83);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',1),('4',52),('1',34),('2',32),('3',34),('4',84),('1',29),('2',8),('3',1),('4',68);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',37),('2',84),('3',58),('4',48),('1',82),('2',85),('3',88),('4',27),('1',75),('2',25);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',39),('4',64),('1',10),('2',89),('3',99),('4',33),('1',77),('2',97),('3',30),('4',87);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',88),('2',45),('3',82),('4',27),('1',99),('2',88),('3',12),('4',21),('1',46),('2',22);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',99),('4',73),('1',53),('2',80),('3',21),('4',41),('1',21),('2',24),('3',32),('4',20);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',28),('2',30),('3',80),('4',25),('1',8),('2',61),('3',47),('4',83),('1',65),('2',29);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',77),('4',10),('1',20),('2',63),('3',82),('4',34),('1',10),('2',58),('3',90),('4',35);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',58),('2',74),('3',36),('4',44),('1',39),('2',76),('3',60),('4',2),('1',88),('2',5);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',13),('4',76),('1',35),('2',6),('3',44),('4',93),('1',78),('2',55),('3',32),('4',70);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',46),('2',85),('3',7),('4',40),('1',13),('2',85),('3',20),('4',15),('1',54),('2',40);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',33),('4',72),('1',49),('2',69),('3',29),('4',95),('1',20),('2',56),('3',9),('4',42);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',81),('2',47),('3',56),('4',96),('1',26),('2',6),('3',50),('4',48),('1',61),('2',85);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',53),('4',38),('1',17),('2',25),('3',79),('4',88),('1',22),('2',100),('3',43),('4',95);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',82),('2',39),('3',20),('4',67),('1',14),('2',64),('3',43),('4',55),('1',55),('2',89);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',62),('4',96),('1',94),('2',79),('3',65),('4',25),('1',35),('2',30),('3',96),('4',44);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',43),('2',23),('3',94),('4',2),('1',76),('2',26),('3',53),('4',81),('1',45),('2',26);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',56),('4',87),('1',65),('2',15),('3',41),('4',38),('1',94),('2',15),('3',40),('4',13);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',98),('2',74),('3',31),('4',43),('1',74),('2',67),('3',7),('4',100),('1',36),('2',42);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',97),('4',71),('1',20),('2',98),('3',53),('4',54),('1',41),('2',57),('3',89),('4',28);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',2),('2',36),('3',17),('4',54),('1',14),('2',53),('3',100),('4',66),('1',79),('2',69);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',68),('4',11),('1',75),('2',61),('3',7),('4',33),('1',6),('2',28),('3',53),('4',79);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',6),('2',36),('3',24),('4',64),('1',36),('2',23),('3',4),('4',95),('1',48),('2',10);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',8),('4',3),('1',55),('2',30),('3',69),('4',71),('1',4),('2',100),('3',27),('4',1);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',88),('2',57),('3',39),('4',47),('1',38),('2',39),('3',70),('4',83),('1',13),('2',79);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',26),('4',70),('1',52),('2',19),('3',5),('4',89),('1',100),('2',58),('3',62),('4',3);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',71),('2',54),('3',66),('4',23),('1',29),('2',71),('3',87),('4',13),('1',98),('2',80);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',67),('4',82),('1',47),('2',78),('3',4),('4',61),('1',58),('2',41),('3',33),('4',45);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',60),('2',18),('3',13),('4',96),('1',74),('2',69),('3',33),('4',81),('1',34),('2',53);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',81),('4',89),('1',74),('2',89),('3',88),('4',50),('1',70),('2',51),('3',10),('4',53);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',9),('2',97),('3',14),('4',35),('1',77),('2',49),('3',96),('4',61),('1',12),('2',43);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',78),('4',19),('1',23),('2',27),('3',83),('4',6),('1',34),('2',32),('3',100),('4',96);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',95),('2',86),('3',53),('4',68),('1',61),('2',26),('3',86),('4',96),('1',55),('2',11);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',8),('4',53),('1',4),('2',98),('3',20),('4',39),('1',86),('2',88),('3',7),('4',49);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',29),('2',88),('3',49),('4',89),('1',61),('2',67),('3',24),('4',34),('1',51),('2',80);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',52),('4',8),('1',50),('2',100),('3',80),('4',51),('1',31),('2',38),('3',86),('4',44);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',53),('2',46),('3',56),('4',80),('1',21),('2',24),('3',22),('4',88),('1',58),('2',59);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',53),('4',65),('1',42),('2',48),('3',80),('4',63),('1',87),('2',14),('3',29),('4',26);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',17),('2',87),('3',8),('4',56),('1',9),('2',45),('3',34),('4',94),('1',75),('2',81);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',78),('4',20),('1',66),('2',8),('3',26),('4',93),('1',9),('2',39),('3',47),('4',52);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',55),('2',56),('3',39),('4',72),('1',31),('2',7),('3',52),('4',52),('1',61),('2',27);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',79),('4',98),('1',24),('2',75),('3',10),('4',42),('1',46),('2',14),('3',31),('4',47);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',100),('2',80),('3',96),('4',37),('1',58),('2',18),('3',7),('4',89),('1',12),('2',50);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',12),('4',94),('1',18),('2',30),('3',82),('4',44),('1',52),('2',36),('3',95),('4',61);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',37),('2',75),('3',55),('4',4),('1',30),('2',37),('3',99),('4',12),('1',52),('2',90);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',57),('4',3),('1',94),('2',54),('3',49),('4',69),('1',80),('2',38),('3',67),('4',84);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',35),('2',63),('3',52),('4',57),('1',12),('2',60),('3',24),('4',9),('1',32),('2',75);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',33),('4',26),('1',71),('2',3),('3',43),('4',54),('1',23),('2',87),('3',75),('4',40);

PRINT 'Row 1000 inserted';
GO

INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',98),('2',61),('3',98),('4',42),('1',72),('2',61),('3',37),('4',42),('1',22),('2',27);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',84),('4',92),('1',70),('2',8),('3',94),('4',36),('1',33),('2',48),('3',15),('4',51);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',63),('2',83),('3',68),('4',29),('1',70),('2',55),('3',93),('4',100),('1',87),('2',71);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',78),('4',94),('1',64),('2',11),('3',80),('4',64),('1',16),('2',88),('3',36),('4',62);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',56),('2',52),('3',32),('4',95),('1',32),('2',35),('3',46),('4',81),('1',66),('2',68);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',74),('4',68),('1',44),('2',40),('3',14),('4',38),('1',13),('2',10),('3',39),('4',59);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',81),('2',20),('3',14),('4',67),('1',69),('2',52),('3',77),('4',65),('1',16),('2',38);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',75),('4',28),('1',35),('2',58),('3',82),('4',40),('1',85),('2',63),('3',49),('4',34);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',66),('2',73),('3',14),('4',23),('1',14),('2',21),('3',60),('4',19),('1',58),('2',52);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',45),('4',39),('1',50),('2',93),('3',72),('4',68),('1',14),('2',63),('3',38),('4',16);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',39),('2',34),('3',76),('4',35),('1',49),('2',94),('3',24),('4',8),('1',99),('2',36);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',55),('4',14),('1',14),('2',83),('3',46),('4',32),('1',57),('2',29),('3',52),('4',92);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',22),('2',90),('3',99),('4',86),('1',67),('2',10),('3',82),('4',10),('1',70),('2',81);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',3),('4',80),('1',35),('2',68),('3',76),('4',72),('1',76),('2',72),('3',82),('4',49);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',38),('2',28),('3',35),('4',79),('1',62),('2',91),('3',12),('4',1),('1',8),('2',28);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',64),('4',5),('1',93),('2',77),('3',42),('4',66),('1',28),('2',4),('3',23),('4',75);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',52),('2',59),('3',82),('4',11),('1',62),('2',41),('3',94),('4',22),('1',8),('2',70);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',84),('4',85),('1',54),('2',92),('3',95),('4',89),('1',53),('2',19),('3',40),('4',99);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',45),('2',8),('3',41),('4',76),('1',29),('2',44),('3',48),('4',21),('1',69),('2',89);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',63),('4',15),('1',100),('2',18),('3',72),('4',94),('1',64),('2',61),('3',69),('4',64);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',57),('2',79),('3',59),('4',95),('1',47),('2',29),('3',36),('4',44),('1',1),('2',63);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',4),('4',81),('1',84),('2',11),('3',88),('4',44),('1',24),('2',60),('3',31),('4',66);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',17),('2',33),('3',83),('4',78),('1',90),('2',39),('3',57),('4',33),('1',71),('2',96);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',43),('4',56),('1',29),('2',31),('3',15),('4',59),('1',21),('2',59),('3',48),('4',82);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',9),('2',88),('3',44),('4',52),('1',78),('2',30),('3',68),('4',92),('1',38),('2',56);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',15),('4',92),('1',96),('2',44),('3',29),('4',50),('1',49),('2',28),('3',37),('4',25);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',33),('2',35),('3',40),('4',79),('1',78),('2',27),('3',32),('4',34),('1',85),('2',70);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',14),('4',28),('1',39),('2',10),('3',47),('4',83),('1',86),('2',68),('3',33),('4',45);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',50),('2',46),('3',26),('4',49),('1',34),('2',60),('3',37),('4',74),('1',51),('2',86);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',54),('4',28),('1',8),('2',50),('3',46),('4',26),('1',48),('2',11),('3',59),('4',89);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',92),('2',33),('3',77),('4',57),('1',95),('2',37),('3',87),('4',91),('1',77),('2',95);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',27),('4',18),('1',28),('2',9),('3',68),('4',50),('1',51),('2',3),('3',10),('4',10);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',11),('2',74),('3',86),('4',56),('1',18),('2',11),('3',72),('4',85),('1',84),('2',64);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',26),('4',42),('1',83),('2',98),('3',7),('4',17),('1',36),('2',25),('3',47),('4',67);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',89),('2',62),('3',93),('4',77),('1',95),('2',91),('3',31),('4',18),('1',95),('2',39);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',65),('4',8),('1',73),('2',38),('3',55),('4',85),('1',21),('2',71),('3',17),('4',19);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',23),('2',22),('3',6),('4',78),('1',29),('2',77),('3',51),('4',93),('1',50),('2',34);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',97),('4',83),('1',39),('2',28),('3',47),('4',52),('1',22),('2',8),('3',89),('4',55);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',80),('2',98),('3',97),('4',48),('1',21),('2',98),('3',1),('4',76),('1',34),('2',49);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',7),('4',53),('1',71),('2',43),('3',99),('4',39),('1',34),('2',90),('3',21),('4',6);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',43),('2',11),('3',40),('4',9),('1',11),('2',83),('3',80),('4',31),('1',80),('2',58);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',46),('4',46),('1',92),('2',1),('3',55),('4',25),('1',97),('2',28),('3',94),('4',59);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',42),('2',26),('3',9),('4',18),('1',29),('2',19),('3',3),('4',2),('1',96),('2',99);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',64),('4',83),('1',80),('2',14),('3',98),('4',6),('1',14),('2',93),('3',1),('4',74);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',98),('2',80),('3',40),('4',22),('1',73),('2',31),('3',45),('4',26),('1',67),('2',63);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',10),('4',80),('1',10),('2',64),('3',52),('4',8),('1',59),('2',60),('3',93),('4',73);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',69),('2',18),('3',91),('4',26),('1',17),('2',1),('3',35),('4',78),('1',13),('2',45);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',85),('4',66),('1',21),('2',70),('3',46),('4',39),('1',77),('2',32),('3',13),('4',86);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',86),('2',16),('3',99),('4',41),('1',79),('2',47),('3',96),('4',58),('1',14),('2',7);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',68),('4',50),('1',86),('2',48),('3',56),('4',42),('1',83),('2',75),('3',60),('4',7);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',29),('2',40),('3',51),('4',45),('1',38),('2',11),('3',4),('4',8),('1',19),('2',99);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',70),('4',75),('1',13),('2',80),('3',73),('4',65),('1',54),('2',38),('3',40),('4',96);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',86),('2',25),('3',5),('4',26),('1',44),('2',42),('3',17),('4',36),('1',60),('2',24);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',75),('4',7),('1',7),('2',85),('3',52),('4',50),('1',48),('2',95),('3',56),('4',38);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',15),('2',69),('3',51),('4',10),('1',97),('2',88),('3',25),('4',62),('1',28),('2',90);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',6),('4',50),('1',8),('2',42),('3',36),('4',96),('1',42),('2',29),('3',60),('4',13);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',17),('2',51),('3',57),('4',50),('1',26),('2',53),('3',3),('4',43),('1',43),('2',38);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',33),('4',62),('1',44),('2',47),('3',78),('4',97),('1',73),('2',52),('3',73),('4',54);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('1',75),('2',79),('3',76),('4',58),('1',41),('2',54),('3',65),('4',47),('1',15),('2',15);
INSERT INTO [Auckland_Park].[Formative]([Number],[Mark]) VALUES('3',67),('4',14),('1',68),('2',99),('3',30),('4',5),('1',60),('2',92),('3',100),('4',4);