USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Stud_Int_IMark]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Stud_Int_IMark];
END;
GO

CREATE TABLE [Auckland_Park].[Stud_Int_IMark] (
    [StudentID] INTEGER NOT NULL,
    [InternationalID] INTEGER NOT NULL,
    [IMarkID] INTEGER NOT NULL
	PRIMARY KEY ([StudentID], [InternationalID], [IMarkID])
);
GO

INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(210,10,1),(395,32,2),(65,7,3),(122,3,4),(220,24,5),(135,29,6),(130,24,7),(370,32,8),(290,19,9),(349,26,10);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(166,4,11),(283,12,12),(140,14,13),(105,34,14),(40,15,15),(129,6,16),(366,12,17),(56,14,18),(82,32,19),(257,8,20);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(81,10,21),(214,3,22),(156,12,23),(253,4,24),(95,26,25),(384,32,26),(391,19,27),(22,27,28),(296,27,29),(374,35,30);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(240,22,31),(363,16,32),(310,28,33),(327,7,34),(193,26,35),(326,13,36),(307,2,37),(242,8,38),(79,28,39),(167,6,40);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(37,11,41),(219,13,42),(139,33,43),(7,6,44),(392,37,45),(334,30,46),(34,19,47),(295,30,48),(199,23,49),(348,35,50);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(123,37,51),(220,8,52),(272,14,53),(232,25,54),(351,16,55),(22,27,56),(324,24,57),(293,35,58),(288,21,59),(213,1,60);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(205,9,61),(362,6,62),(94,33,63),(384,37,64),(306,24,65),(308,26,66),(47,24,67),(135,15,68),(66,13,69),(398,10,70);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(71,6,71),(294,3,72),(103,33,73),(264,9,74),(130,6,75),(30,25,76),(225,3,77),(87,29,78),(181,15,79),(121,34,80);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(98,37,81),(78,15,82),(235,13,83),(71,15,84),(85,32,85),(268,33,86),(213,11,87),(60,32,88),(311,15,89),(63,21,90);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(157,31,91),(330,28,92),(23,25,93),(319,27,94),(192,4,95),(2,20,96),(121,27,97),(235,8,98),(150,15,99),(179,7,100);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(16,17,101),(64,10,102),(315,19,103),(71,30,104),(154,18,105),(18,9,106),(281,6,107),(181,32,108),(336,16,109),(38,4,110);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(127,18,111),(211,36,112),(19,25,113),(297,15,114),(384,21,115),(49,32,116),(190,33,117),(90,8,118),(197,21,119),(78,35,120);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(361,16,121),(234,27,122),(216,12,123),(69,7,124),(51,21,125),(255,12,126),(394,28,127),(101,37,128),(355,6,129),(287,15,130);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(155,30,131),(238,33,132),(392,15,133),(398,31,134),(36,17,135),(272,9,136),(314,24,137),(211,28,138),(65,5,139),(231,17,140);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(374,3,141),(37,36,142),(15,29,143),(171,12,144),(105,25,145),(134,33,146),(394,11,147),(360,26,148),(151,6,149),(110,33,150);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(223,7,151),(329,15,152),(361,8,153),(24,18,154),(366,36,155),(22,13,156),(133,16,157),(128,31,158),(394,31,159),(275,8,160);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(374,15,161),(383,37,162),(24,9,163),(84,17,164),(96,30,165),(106,24,166),(317,34,167),(66,17,168),(395,8,169),(285,30,170);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(22,35,171),(24,22,172),(112,20,173),(108,22,174),(336,28,175),(249,10,176),(58,7,177),(62,35,178),(59,27,179),(133,26,180);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(375,14,181),(308,20,182),(104,23,183),(2,7,184),(262,10,185),(134,36,186),(249,34,187),(393,31,188),(249,23,189),(232,28,190);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(174,25,191),(17,23,192),(113,3,193),(120,30,194),(152,37,195),(190,33,196),(296,13,197),(49,2,198),(104,29,199),(15,35,200);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(213,18,201),(284,33,202),(348,24,203),(282,30,204),(263,23,205),(207,19,206),(230,34,207),(384,14,208),(281,13,209),(302,22,210);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(30,32,211),(17,8,212),(236,15,213),(266,31,214),(75,33,215),(242,7,216),(37,7,217),(88,29,218),(218,2,219),(307,32,220);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(38,15,221),(290,27,222),(84,5,223),(107,26,224),(211,27,225),(369,10,226),(17,34,227),(202,30,228),(141,19,229),(259,26,230);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(181,2,231),(61,8,232),(80,16,233),(271,18,234),(386,36,235),(146,35,236),(386,23,237),(47,11,238),(249,2,239),(394,7,240);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(311,18,241),(14,22,242),(175,10,243),(219,20,244),(185,9,245),(181,28,246),(257,3,247),(313,22,248),(320,35,249),(271,20,250);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(233,9,251),(354,26,252),(39,2,253),(160,14,254),(168,7,255),(197,13,256),(18,37,257),(162,37,258),(18,33,259),(74,17,260);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(203,29,261),(8,15,262),(162,15,263),(125,29,264),(339,20,265),(94,17,266),(392,28,267),(330,30,268),(53,28,269),(347,18,270);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(214,12,271),(229,21,272),(160,25,273),(105,13,274),(310,27,275),(13,36,276),(358,27,277),(61,8,278),(286,16,279),(332,11,280);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(82,18,281),(350,31,282),(169,22,283),(271,6,284),(65,30,285),(67,21,286),(378,13,287),(178,12,288),(346,5,289),(350,19,290);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(206,12,291),(179,24,292),(269,27,293),(72,15,294),(167,9,295),(61,12,296),(75,30,297),(366,28,298),(204,35,299),(42,5,300);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(191,26,301),(185,5,302),(376,6,303),(36,26,304),(322,37,305),(255,23,306),(71,8,307),(292,7,308),(375,17,309),(353,14,310);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(41,24,311),(222,26,312),(18,6,313),(360,35,314),(72,36,315),(77,37,316),(238,5,317),(323,22,318),(132,1,319),(175,29,320);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(358,27,321),(214,16,322),(338,35,323),(100,32,324),(231,30,325),(235,14,326),(284,29,327),(139,34,328),(274,23,329),(19,12,330);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(26,3,331),(248,35,332),(299,36,333),(146,23,334),(26,36,335),(328,35,336),(169,30,337),(111,28,338),(248,13,339),(19,4,340);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(145,34,341),(293,27,342),(338,18,343),(255,6,344),(41,6,345),(9,30,346),(296,4,347),(61,29,348),(399,29,349),(334,3,350);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(96,29,351),(129,11,352),(344,33,353),(284,24,354),(229,24,355),(168,37,356),(202,18,357),(8,22,358),(132,23,359),(349,22,360);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(270,7,361),(10,30,362),(261,23,363),(164,4,364),(156,8,365),(277,36,366),(203,30,367),(26,7,368),(148,5,369),(183,18,370);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(154,3,371),(303,22,372),(25,15,373),(82,2,374),(33,27,375),(320,35,376),(180,35,377),(269,18,378),(267,27,379),(391,6,380);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(382,16,381),(14,16,382),(46,2,383),(88,8,384),(210,9,385),(310,27,386),(343,17,387),(283,18,388),(255,34,389),(276,25,390);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(22,24,391),(152,6,392),(126,15,393),(143,3,394),(376,28,395),(34,34,396),(269,33,397),(297,31,398),(368,34,399),(12,13,400);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(312,37,401),(345,27,402),(118,32,403),(51,24,404),(271,12,405),(247,34,406),(97,19,407),(128,28,408),(279,18,409),(353,13,410);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(145,21,411),(370,34,412),(98,18,413),(284,12,414),(353,29,415),(117,9,416),(372,11,417),(34,10,418),(81,1,419),(286,11,420);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(292,18,421),(371,32,422),(301,7,423),(57,17,424),(262,26,425),(127,21,426),(317,4,427),(103,2,428),(15,10,429),(361,4,430);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(89,20,431),(80,20,432),(270,8,433),(79,12,434),(224,18,435),(161,18,436),(339,30,437),(33,6,438),(282,9,439),(363,18,440);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(42,5,441),(360,33,442),(229,1,443),(88,20,444),(5,29,445),(204,19,446),(223,30,447),(54,33,448),(321,37,449),(117,37,450);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(202,27,451),(96,16,452),(125,33,453),(335,11,454),(212,22,455),(38,31,456),(347,31,457),(306,37,458),(28,26,459),(160,15,460);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(194,37,461),(393,13,462),(51,10,463),(259,18,464),(66,14,465),(316,9,466),(188,28,467),(282,6,468),(358,23,469),(141,13,470);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(36,26,471),(103,22,472),(294,24,473),(340,26,474),(29,32,475),(400,2,476),(337,22,477),(375,32,478),(3,1,479),(309,1,480);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(142,21,481),(398,25,482),(294,6,483),(347,31,484),(36,11,485),(258,24,486),(174,10,487),(266,12,488),(14,37,489),(253,4,490);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(185,25,491),(138,32,492),(385,27,493),(174,3,494),(346,8,495),(57,19,496),(5,32,497),(179,15,498),(390,31,499),(396,21,500);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(304,18,501),(269,1,502),(38,25,503),(106,17,504),(388,14,505),(191,28,506),(79,26,507),(155,29,508),(52,23,509),(216,24,510);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(217,11,511),(149,5,512),(8,37,513),(221,3,514),(35,6,515),(123,34,516),(163,36,517),(353,28,518),(241,33,519),(107,31,520);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(201,24,521),(302,25,522),(286,10,523),(198,12,524),(315,10,525),(27,2,526),(66,18,527),(198,19,528),(67,2,529),(20,30,530);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(97,20,531),(76,37,532),(134,19,533),(308,31,534),(22,24,535),(123,20,536),(16,5,537),(116,20,538),(166,27,539),(31,29,540);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(92,36,541),(114,5,542),(202,8,543),(392,12,544),(329,19,545),(204,19,546),(6,32,547),(224,3,548),(167,34,549),(95,2,550);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(303,19,551),(250,4,552),(274,13,553),(290,13,554),(106,24,555),(148,19,556),(298,3,557),(213,29,558),(202,17,559),(230,11,560);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(134,31,561),(400,5,562),(79,18,563),(134,22,564),(15,16,565),(213,2,566),(309,18,567),(337,36,568),(155,1,569),(274,19,570);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(350,31,571),(263,5,572),(134,24,573),(236,35,574),(148,32,575),(127,23,576),(12,30,577),(378,14,578),(246,12,579),(146,1,580);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(238,10,581),(192,35,582),(172,27,583),(63,2,584),(391,4,585),(202,33,586),(245,1,587),(379,4,588),(323,9,589),(323,5,590);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(143,27,591),(268,29,592),(371,37,593),(193,5,594),(331,24,595),(121,23,596),(261,2,597),(99,21,598),(303,31,599),(167,29,600);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(50,2,601),(295,4,602),(32,16,603),(374,23,604),(323,5,605),(268,26,606),(308,7,607),(177,2,608),(272,22,609),(51,4,610);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(232,21,611),(329,29,612),(308,15,613),(122,19,614),(293,21,615),(329,4,616),(116,31,617),(67,34,618),(183,4,619),(153,29,620);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(84,8,621),(87,33,622),(47,9,623),(203,37,624),(261,34,625),(330,2,626),(392,9,627),(123,7,628),(9,36,629),(307,5,630);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(195,23,631),(264,13,632),(9,31,633),(253,7,634),(278,26,635),(374,29,636),(114,11,637),(177,14,638),(82,18,639),(251,9,640);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(376,16,641),(180,35,642),(21,8,643),(77,28,644),(89,13,645),(184,20,646),(111,31,647),(174,8,648),(6,28,649),(11,25,650);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(365,6,651),(364,23,652),(29,17,653),(362,37,654),(262,4,655),(388,30,656),(207,30,657),(91,29,658),(288,16,659),(288,28,660);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(86,21,661),(100,31,662),(156,18,663),(315,17,664),(17,6,665),(157,6,666),(154,30,667),(320,34,668),(85,32,669),(283,30,670);
INSERT INTO [Auckland_Park].[Stud_Int_IMark]([StudentID],[InternationalID],[IMarkID]) VALUES(45,28,671),(175,36,672),(112,17,673),(342,12,674),(264,32,675);