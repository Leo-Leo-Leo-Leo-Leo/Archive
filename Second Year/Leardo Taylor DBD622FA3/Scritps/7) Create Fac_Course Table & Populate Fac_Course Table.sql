USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Fac_Course]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Fac_Course];
END;
GO

CREATE TABLE [Auckland_Park].[Fac_Course] (
    [FacilitatorID] INTEGER NOT NULL,
    [CourseID] INTEGER NOT NULL
	PRIMARY KEY ([FacilitatorID], [CourseID])
);
GO

INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(1,16),(2,22),(3,28),(4,16),(5,38),(6,10),(7,2),(8,32),(9,40),(10,14);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(11,19),(12,39),(13,3),(14,43),(15,46),(16,40),(17,17),(18,38),(19,41),(20,34);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(21,1),(22,17),(23,44),(24,26),(25,34),(26,39),(27,12),(28,33),(29,28),(30,37);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(31,27),(32,18),(33,36),(34,3),(35,29),(36,10),(37,26),(38,10),(39,4),(40,27);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(41,41),(42,24),(43,27),(44,32),(45,42),(46,27),(47,23),(48,34),(49,35),(50,14);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(51,23),(52,21),(53,36),(54,15),(55,32),(56,34),(57,14),(58,8),(59,46),(60,41);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(61,6),(62,37),(63,47),(64,17),(65,13),(66,38),(67,13),(68,15),(69,14),(70,27);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(71,42),(72,25),(73,37),(74,35),(75,35),(76,9),(77,16),(78,48),(79,46),(80,13);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(81,46),(82,13),(83,32),(84,17),(85,8),(86,11),(87,32),(88,1),(89,5),(90,10);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(91,42),(92,23),(93,13),(94,14),(95,47),(96,1),(97,2),(98,24),(99,46),(100,12);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(101,22),(102,18),(103,14),(104,47),(105,31),(106,13),(107,42),(108,7),(109,34),(110,8);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(111,50),(112,47),(113,12),(114,8),(115,24),(116,46),(117,42),(118,39),(119,30),(120,22);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(121,29),(122,36),(123,10),(124,48),(125,33),(126,5),(127,40),(128,43),(129,23),(130,16);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(131,34),(132,1),(133,43),(134,43),(135,5),(136,26),(137,19),(138,9),(139,14),(140,41);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(141,4),(142,18),(143,10),(144,22),(145,21),(146,34),(147,14),(148,18),(149,9),(150,32);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(151,34),(152,28),(153,42),(154,50),(155,18),(156,5),(157,7),(158,25),(159,2),(160,13);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(161,8),(162,16),(163,10),(164,38),(165,44),(166,26),(167,28),(168,43),(169,42),(170,21);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(171,36),(172,3),(173,25),(174,10),(175,7),(176,6),(177,1),(178,16),(179,33),(180,4);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(181,33),(182,2),(183,4),(184,45),(185,35),(186,22),(187,49),(188,41),(189,44),(190,25);
INSERT INTO [Auckland_Park].[Fac_Course]([FacilitatorID],[CourseID]) VALUES(191,16),(192,23),(193,48),(194,34),(195,13),(196,27),(197,18),(198,3),(199,31),(200,41);
