USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[IMark]'))
BEGIN;
    DROP TABLE [Auckland_Park].[IMark];
END;
GO

CREATE TABLE [Auckland_Park].[IMark] (
    [IMarkID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
    [Mark] INTEGER NULL,
    PRIMARY KEY ([IMarkID])
);
GO

INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(83),(27),(62),(9),(57),(36),(40),(71),(6),(40);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(68),(56),(5),(9),(44),(54),(70),(18),(14),(15);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(64),(89),(71),(2),(31),(5),(63),(75),(42),(34);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(56),(81),(12),(86),(48),(93),(33),(95),(27),(77);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(35),(56),(44),(14),(23),(54),(49),(50),(60),(90);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(42),(72),(16),(39),(52),(88),(74),(75),(21),(55);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(1),(96),(31),(70),(21),(79),(58),(28),(13),(69);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(68),(86),(96),(27),(58),(91),(17),(62),(77),(31);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(72),(5),(99),(19),(87),(86),(29),(16),(4),(64);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(69),(94),(17),(17),(35),(50),(32),(22),(64),(33);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(2),(16),(31),(45),(72),(75),(86),(12),(17),(55);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(76),(12),(6),(35),(56),(57),(72),(95),(77),(96);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(16),(93),(7),(66),(41),(31),(40),(26),(96),(17);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(87),(18),(56),(96),(53),(78),(18),(99),(71),(53);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(78),(33),(21),(55),(74),(93),(28),(45),(88),(87);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(35),(58),(22),(19),(53),(41),(72),(42),(81),(57);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(37),(18),(24),(7),(99),(80),(71),(100),(59),(76);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(78),(25),(6),(94),(58),(83),(75),(25),(13),(22);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(96),(93),(35),(78),(31),(76),(62),(96),(99),(73);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(32),(12),(47),(28),(15),(38),(29),(54),(28),(77);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(54),(45),(16),(28),(9),(38),(50),(54),(47),(99);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(63),(2),(59),(78),(54),(17),(43),(94),(36),(21);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(51),(71),(75),(55),(57),(70),(33),(62),(9),(15);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(26),(75),(42),(13),(87),(2),(10),(22),(32),(48);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(88),(75),(76),(32),(37),(59),(52),(93),(37),(8);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(1),(80),(73),(8),(34),(7),(55),(17),(75),(35);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(6),(73),(43),(5),(88),(97),(34),(46),(91),(37);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(82),(38),(1),(11),(68),(45),(65),(70),(10),(57);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(11),(100),(61),(72),(30),(21),(16),(6),(70),(6);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(34),(72),(25),(50),(75),(26),(80),(87),(86),(99);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(60),(73),(62),(51),(50),(21),(23),(73),(69),(3);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(67),(12),(36),(39),(14),(23),(13),(66),(56),(71);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(98),(71),(68),(61),(66),(98),(52),(65),(54),(67);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(28),(17),(5),(73),(4),(3),(4),(54),(39),(33);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(18),(70),(48),(10),(74),(8),(25),(2),(29),(38);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(99),(56),(64),(70),(81),(93),(37),(41),(60),(85);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(52),(32),(41),(33),(30),(46),(37),(17),(13),(73);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(3),(33),(15),(29),(33),(1),(3),(83),(1),(41);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(68),(70),(80),(63),(96),(44),(17),(33),(86),(89);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(15),(8),(96),(55),(79),(68),(54),(98),(43),(3);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(99),(25),(42),(69),(48),(3),(69),(25),(23),(94);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(95),(84),(21),(47),(57),(40),(68),(52),(39),(40);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(95),(92),(23),(32),(77),(98),(99),(50),(98),(24);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(27),(65),(99),(86),(73),(7),(58),(43),(9),(97);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(46),(80),(45),(26),(70),(69),(64),(26),(55),(19);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(4),(10),(60),(93),(26),(51),(16),(50),(10),(25);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(42),(33),(74),(87),(31),(96),(51),(27),(32),(42);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(16),(44),(38),(2),(49),(47),(39),(47),(45),(22);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(92),(14),(34),(23),(9),(73),(67),(7),(23),(12);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(79),(92),(31),(4),(61),(35),(17),(26),(95),(29);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(97),(17),(32),(27),(92),(18),(18),(11),(65),(76);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(22),(62),(89),(83),(76),(9),(97),(32),(55),(77);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(37),(48),(50),(35),(11),(45),(21),(42),(44),(56);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(72),(86),(3),(33),(22),(27),(84),(69),(22),(74);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(55),(13),(13),(41),(70),(10),(29),(28),(94),(48);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(99),(70),(45),(30),(10),(67),(87),(44),(49),(78);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(50),(74),(96),(46),(48),(67),(95),(18),(62),(29);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(21),(68),(31),(35),(22),(41),(45),(74),(5),(21);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(37),(42),(100),(19),(2),(27),(71),(47),(45),(60);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(58),(97),(35),(67),(2),(10),(54),(93),(49),(93);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(24),(51),(23),(21),(14),(47),(43),(91),(25),(66);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(45),(80),(44),(63),(67),(37),(100),(67),(81),(75);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(57),(56),(23),(42),(4),(24),(92),(90),(86),(24);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(27),(34),(92),(4),(100),(90),(89),(29),(37),(83);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(70),(10),(21),(36),(94),(45),(27),(65),(64),(91);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(26),(43),(35),(4),(45),(61),(56),(31),(34),(64);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(6),(71),(83),(54),(75),(5),(35),(95),(24),(64);
INSERT INTO [Auckland_Park].[IMark]([Mark]) VALUES(64),(60),(86),(13),(16);