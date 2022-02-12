USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Parent]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Parent];
END;
GO

CREATE TABLE [Auckland_Park].[Parent] (
    [ParentID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
    [PersonID] INTEGER NOT NULL UNIQUE,
    PRIMARY KEY ([ParentID], [PersonID])
);
GO

INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(2),(4),(6),(8),(10),(12),(14),(16),(18),(20);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(22),(24),(26),(28),(30),(32),(34),(36),(38),(40);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(42),(44),(46),(48),(50),(52),(54),(56),(58),(60);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(62),(64),(66),(68),(70),(72),(74),(76),(78),(80);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(82),(84),(86),(88),(90),(92),(94),(96),(98),(100);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(102),(104),(106),(108),(110),(112),(114),(116),(118),(120);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(122),(124),(126),(128),(130),(132),(134),(136),(138),(140);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(142),(144),(146),(148),(150),(152),(154),(156),(158),(160);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(162),(164),(166),(168),(170),(172),(174),(176),(178),(180);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(182),(184),(186),(188),(190),(192),(194),(196),(198),(200);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(202),(204),(206),(208),(210),(212),(214),(216),(218),(220);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(222),(224),(226),(228),(230),(232),(234),(236),(238),(240);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(242),(244),(246),(248),(250),(252),(254),(256),(258),(260);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(262),(264),(266),(268),(270),(272),(274),(276),(278),(280);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(282),(284),(286),(288),(290),(292),(294),(296),(298),(300);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(302),(304),(306),(308),(310),(312),(314),(316),(318),(320);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(322),(324),(326),(328),(330),(332),(334),(336),(338),(340);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(342),(344),(346),(348),(350),(352),(354),(356),(358),(360);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(362),(364),(366),(368),(370),(372),(374),(376),(378),(380);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(382),(384),(386),(388),(390),(392),(394),(396),(398),(400);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(402),(404),(406),(408),(410),(412),(414),(416),(418),(420);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(422),(424),(426),(428),(430),(432),(434),(436),(438),(440);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(442),(444),(446),(448),(450),(452),(454),(456),(458),(460);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(462),(464),(466),(468),(470),(472),(474),(476),(478),(480);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(482),(484),(486),(488),(490),(492),(494),(496),(498),(500);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(502),(504),(506),(508),(510),(512),(514),(516),(518),(520);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(522),(524),(526),(528),(530),(532),(534),(536),(538),(540);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(542),(544),(546),(548),(550),(552),(554),(556),(558),(560);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(562),(564),(566),(568),(570),(572),(574),(576),(578),(580);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(582),(584),(586),(588),(590),(592),(594),(596),(598),(600);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(602),(604),(606),(608),(610),(612),(614),(616),(618),(620);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(622),(624),(626),(628),(630),(632),(634),(636),(638),(640);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(642),(644),(646),(648),(650),(652),(654),(656),(658),(660);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(662),(664),(666),(668),(670),(672),(674),(676),(678),(680);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(682),(684),(686),(688),(690),(692),(694),(696),(698),(700);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(702),(704),(706),(708),(710),(712),(714),(716),(718),(720);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(722),(724),(726),(728),(730),(732),(734),(736),(738),(740);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(742),(744),(746),(748),(750),(752),(754),(756),(758),(760);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(762),(764),(766),(768),(770),(772),(774),(776),(778),(780);
INSERT INTO [Auckland_Park].[Parent]([PersonID]) VALUES(782),(784),(786),(788),(790),(792),(794),(796),(798),(800);