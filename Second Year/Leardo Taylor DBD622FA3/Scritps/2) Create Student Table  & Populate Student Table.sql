USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Student]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Student];
END;
GO

CREATE TABLE [Auckland_Park].[Student] (
    [StudentID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
    [PersonID] INTEGER NOT NULL UNIQUE,
    PRIMARY KEY ([StudentID], [PersonID])
);
GO

INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(1),(3),(5),(7),(9),(11),(13),(15),(17),(19);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(21),(23),(25),(27),(29),(31),(33),(35),(37),(39);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(41),(43),(45),(47),(49),(51),(53),(55),(57),(59);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(61),(63),(65),(67),(69),(71),(73),(75),(77),(79);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(81),(83),(85),(87),(89),(91),(93),(95),(97),(99);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(101),(103),(105),(107),(109),(111),(113),(115),(117),(119);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(121),(123),(125),(127),(129),(131),(133),(135),(137),(139);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(141),(143),(145),(147),(149),(151),(153),(155),(157),(159);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(161),(163),(165),(167),(169),(171),(173),(175),(177),(179);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(181),(183),(185),(187),(189),(191),(193),(195),(197),(199);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(201),(203),(205),(207),(209),(211),(213),(215),(217),(219);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(221),(223),(225),(227),(229),(231),(233),(235),(237),(239);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(241),(243),(245),(247),(249),(251),(253),(255),(257),(259);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(261),(263),(265),(267),(269),(271),(273),(275),(277),(279);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(281),(283),(285),(287),(289),(291),(293),(295),(297),(299);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(301),(303),(305),(307),(309),(311),(313),(315),(317),(319);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(321),(323),(325),(327),(329),(331),(333),(335),(337),(339);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(341),(343),(345),(347),(349),(351),(353),(355),(357),(359);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(361),(363),(365),(367),(369),(371),(373),(375),(377),(379);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(381),(383),(385),(387),(389),(391),(393),(395),(397),(399);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(401),(403),(405),(407),(409),(411),(413),(415),(417),(419);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(421),(423),(425),(427),(429),(431),(433),(435),(437),(439);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(441),(443),(445),(447),(449),(451),(453),(455),(457),(459);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(461),(463),(465),(467),(469),(471),(473),(475),(477),(479);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(481),(483),(485),(487),(489),(491),(493),(495),(497),(499);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(501),(503),(505),(507),(509),(511),(513),(515),(517),(519);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(521),(523),(525),(527),(529),(531),(533),(535),(537),(539);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(541),(543),(545),(547),(549),(551),(553),(555),(557),(559);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(561),(563),(565),(567),(569),(571),(573),(575),(577),(579);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(581),(583),(585),(587),(589),(591),(593),(595),(597),(599);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(601),(603),(605),(607),(609),(611),(613),(615),(617),(619);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(621),(623),(625),(627),(629),(631),(633),(635),(637),(639);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(641),(643),(645),(647),(649),(651),(653),(655),(657),(659);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(661),(663),(665),(667),(669),(671),(673),(675),(677),(679);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(681),(683),(685),(687),(689),(691),(693),(695),(697),(699);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(701),(703),(705),(707),(709),(711),(713),(715),(717),(719);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(721),(723),(725),(727),(729),(731),(733),(735),(737),(739);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(741),(743),(745),(747),(749),(751),(753),(755),(757),(759);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(761),(763),(765),(767),(769),(771),(773),(775),(777),(779);
INSERT INTO [Auckland_Park].[Student]([PersonID]) VALUES(781),(783),(785),(787),(789),(791),(793),(795),(797),(799);