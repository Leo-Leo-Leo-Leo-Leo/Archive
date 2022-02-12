USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Stud_Course_Lu]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Stud_Course_Lu];
END;
GO

CREATE TABLE [Auckland_Park].[Stud_Course_Lu] (
    [StudentID] INTEGER NOT NULL,
    [CourseID] INTEGER NOT NULL,
    [LUID] INTEGER NOT NULL
	PRIMARY KEY ([StudentID],[CourseID],[LUID])
);
GO

INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(1,49,1),(2,36,2),(3,22,3),(4,35,4),(5,19,5),(6,3,6),(7,5,7),(8,5,8),(9,19,9),(10,40,10);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(11,11,11),(12,14,12),(13,28,13),(14,15,14),(15,18,15),(16,9,16),(17,16,17),(18,8,18),(19,47,19),(20,24,20);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(21,27,21),(22,18,22),(23,37,23),(24,48,24),(25,42,25),(26,45,26),(27,15,27),(28,18,28),(29,49,29),(30,3,30);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(31,34,31),(32,12,32),(33,49,33),(34,13,34),(35,18,35),(36,14,36),(37,27,37),(38,38,38),(39,22,39),(40,24,40);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(41,22,41),(42,26,42),(43,15,43),(44,10,44),(45,21,45),(46,35,46),(47,23,47),(48,2,48),(49,33,49),(50,42,50);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(51,35,51),(52,11,52),(53,29,53),(54,8,54),(55,16,55),(56,21,56),(57,8,57),(58,5,58),(59,33,59),(60,22,60);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(61,11,61),(62,3,62),(63,48,63),(64,49,64),(65,34,65),(66,33,66),(67,7,67),(68,15,68),(69,32,69),(70,5,70);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(71,7,71),(72,13,72),(73,13,73),(74,7,74),(75,48,75),(76,50,76),(77,25,77),(78,31,78),(79,19,79),(80,14,80);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(81,43,81),(82,34,82),(83,32,83),(84,26,84),(85,19,85),(86,26,86),(87,44,87),(88,23,88),(89,23,89),(90,41,90);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(91,7,91),(92,20,92),(93,34,93),(94,46,94),(95,34,95),(96,50,96),(97,14,97),(98,25,98),(99,4,99),(100,50,100);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(101,27,101),(102,24,102),(103,44,103),(104,23,104),(105,9,105),(106,32,106),(107,39,107),(108,26,108),(109,39,109),(110,11,110);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(111,18,111),(112,5,112),(113,20,113),(114,12,114),(115,20,115),(116,47,116),(117,23,117),(118,48,118),(119,23,119),(120,23,120);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(121,17,121),(122,44,122),(123,35,123),(124,5,124),(125,31,125),(126,20,126),(127,32,127),(128,45,128),(129,43,129),(130,2,130);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(131,49,131),(132,45,132),(133,6,133),(134,45,134),(135,35,135),(136,46,136),(137,48,137),(138,45,138),(139,29,139),(140,25,140);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(141,10,141),(142,16,142),(143,50,143),(144,46,144),(145,15,145),(146,21,146),(147,1,147),(148,32,148),(149,48,149),(150,7,150);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(151,10,151),(152,45,152),(153,42,153),(154,25,154),(155,50,155),(156,24,156),(157,7,157),(158,39,158),(159,46,159),(160,41,160);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(161,2,161),(162,26,162),(163,42,163),(164,32,164),(165,27,165),(166,31,166),(167,35,167),(168,12,168),(169,37,169),(170,2,170);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(171,39,171),(172,26,172),(173,9,173),(174,9,174),(175,21,175),(176,27,176),(177,1,177),(178,35,178),(179,41,179),(180,31,180);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(181,5,181),(182,5,182),(183,47,183),(184,26,184),(185,3,185),(186,46,186),(187,40,187),(188,15,188),(189,49,189),(190,17,190);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(191,2,191),(192,12,192),(193,24,193),(194,21,194),(195,22,195),(196,25,196),(197,8,197),(198,30,198),(199,28,199),(200,20,200);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(201,14,201),(202,2,202),(203,4,203),(204,17,204),(205,15,205),(206,43,206),(207,25,207),(208,11,208),(209,49,209),(210,25,210);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(211,12,211),(212,10,212),(213,19,213),(214,7,214),(215,49,215),(216,27,216),(217,30,217),(218,25,218),(219,1,219),(220,2,220);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(221,22,221),(222,10,222),(223,48,223),(224,47,224),(225,33,225),(226,13,226),(227,12,227),(228,49,228),(229,41,229),(230,46,230);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(231,37,231),(232,35,232),(233,9,233),(234,38,234),(235,7,235),(236,28,236),(237,12,237),(238,20,238),(239,48,239),(240,14,240);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(241,20,241),(242,14,242),(243,1,243),(244,34,244),(245,43,245),(246,23,246),(247,9,247),(248,8,248),(249,23,249),(250,38,250);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(251,50,251),(252,33,252),(253,17,253),(254,40,254),(255,28,255),(256,28,256),(257,21,257),(258,49,258),(259,19,259),(260,10,260);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(261,31,261),(262,24,262),(263,49,263),(264,28,264),(265,15,265),(266,38,266),(267,27,267),(268,13,268),(269,39,269),(270,37,270);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(271,2,271),(272,1,272),(273,6,273),(274,32,274),(275,24,275),(276,16,276),(277,13,277),(278,3,278),(279,27,279),(280,29,280);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(281,19,281),(282,11,282),(283,32,283),(284,44,284),(285,8,285),(286,28,286),(287,43,287),(288,43,288),(289,3,289),(290,7,290);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(291,25,291),(292,25,292),(293,12,293),(294,14,294),(295,4,295),(296,50,296),(297,17,297),(298,35,298),(299,14,299),(300,45,300);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(301,50,301),(302,25,302),(303,30,303),(304,50,304),(305,47,305),(306,34,306),(307,43,307),(308,36,308),(309,21,309),(310,24,310);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(311,8,311),(312,4,312),(313,36,313),(314,33,314),(315,14,315),(316,19,316),(317,47,317),(318,14,318),(319,1,319),(320,13,320);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(321,10,321),(322,14,322),(323,12,323),(324,14,324),(325,48,325),(326,41,326),(327,39,327),(328,32,328),(329,13,329),(330,8,330);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(331,19,331),(332,40,332),(333,27,333),(334,41,334),(335,49,335),(336,19,336),(337,33,337),(338,35,338),(339,12,339),(340,34,340);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(341,32,341),(342,44,342),(343,49,343),(344,35,344),(345,17,345),(346,4,346),(347,50,347),(348,44,348),(349,9,349),(350,45,350);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(351,18,351),(352,46,352),(353,4,353),(354,20,354),(355,28,355),(356,49,356),(357,8,357),(358,20,358),(359,45,359),(360,4,360);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(361,40,361),(362,47,362),(363,4,363),(364,1,364),(365,3,365),(366,16,366),(367,46,367),(368,21,368),(369,40,369),(370,49,370);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(371,34,371),(372,49,372),(373,14,373),(374,5,374),(375,16,375),(376,18,376),(377,48,377),(378,1,378),(379,43,379),(380,44,380);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(381,46,381),(382,39,382),(383,19,383),(384,19,384),(385,32,385),(386,21,386),(387,18,387),(388,16,388),(389,28,389),(390,17,390);
INSERT INTO [Auckland_Park].[Stud_Course_Lu]([StudentID],[CourseID],[LUID]) VALUES(391,25,391),(392,24,392),(393,39,393),(394,33,394),(395,41,395),(396,3,396),(397,17,397),(398,5,398),(399,22,399),(400,20,400);
