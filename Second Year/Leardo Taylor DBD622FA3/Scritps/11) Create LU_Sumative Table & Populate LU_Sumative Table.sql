USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[LU_Sumative]'))
BEGIN;
    DROP TABLE [Auckland_Park].[LU_Sumative];
END;
GO

CREATE TABLE [Auckland_Park].[LU_Sumative] (
    [LUID] INTEGER NOT NULL,
    [SumativeID] INTEGER NOT NULL
	PRIMARY KEY ([LUID], [SumativeID])

);
GO

INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('1',1),('1',2),('1',3),('1',4),('2',5),('2',6),('2',7),('2',8),('3',9),('3',10);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('3',11),('3',12),('4',13),('4',14),('4',15),('4',16),('5',17),('5',18),('5',19),('5',20);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('6',21),('6',22),('6',23),('6',24),('7',25),('7',26),('7',27),('7',28),('8',29),('8',30);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('8',31),('8',32),('9',33),('9',34),('9',35),('9',36),('10',37),('10',38),('10',39),('10',40);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('11',41),('11',42),('11',43),('11',44),('12',45),('12',46),('12',47),('12',48),('13',49),('13',50);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('13',51),('13',52),('14',53),('14',54),('14',55),('14',56),('15',57),('15',58),('15',59),('15',60);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('16',61),('16',62),('16',63),('16',64),('17',65),('17',66),('17',67),('17',68),('18',69),('18',70);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('18',71),('18',72),('19',73),('19',74),('19',75),('19',76),('20',77),('20',78),('20',79),('20',80);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('21',81),('21',82),('21',83),('21',84),('22',85),('22',86),('22',87),('22',88),('23',89),('23',90);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('23',91),('23',92),('24',93),('24',94),('24',95),('24',96),('25',97),('25',98),('25',99),('25',100);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('26',101),('26',102),('26',103),('26',104),('27',105),('27',106),('27',107),('27',108),('28',109),('28',110);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('28',111),('28',112),('29',113),('29',114),('29',115),('29',116),('30',117),('30',118),('30',119),('30',120);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('31',121),('31',122),('31',123),('31',124),('32',125),('32',126),('32',127),('32',128),('33',129),('33',130);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('33',131),('33',132),('34',133),('34',134),('34',135),('34',136),('35',137),('35',138),('35',139),('35',140);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('36',141),('36',142),('36',143),('36',144),('37',145),('37',146),('37',147),('37',148),('38',149),('38',150);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('38',151),('38',152),('39',153),('39',154),('39',155),('39',156),('40',157),('40',158),('40',159),('40',160);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('41',161),('41',162),('41',163),('41',164),('42',165),('42',166),('42',167),('42',168),('43',169),('43',170);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('43',171),('43',172),('44',173),('44',174),('44',175),('44',176),('45',177),('45',178),('45',179),('45',180);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('46',181),('46',182),('46',183),('46',184),('47',185),('47',186),('47',187),('47',188),('48',189),('48',190);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('48',191),('48',192),('49',193),('49',194),('49',195),('49',196),('50',197),('50',198),('50',199),('50',200);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('51',201),('51',202),('51',203),('51',204),('52',205),('52',206),('52',207),('52',208),('53',209),('53',210);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('53',211),('53',212),('54',213),('54',214),('54',215),('54',216),('55',217),('55',218),('55',219),('55',220);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('56',221),('56',222),('56',223),('56',224),('57',225),('57',226),('57',227),('57',228),('58',229),('58',230);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('58',231),('58',232),('59',233),('59',234),('59',235),('59',236),('60',237),('60',238),('60',239),('60',240);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('61',241),('61',242),('61',243),('61',244),('62',245),('62',246),('62',247),('62',248),('63',249),('63',250);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('63',251),('63',252),('64',253),('64',254),('64',255),('64',256),('65',257),('65',258),('65',259),('65',260);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('66',261),('66',262),('66',263),('66',264),('67',265),('67',266),('67',267),('67',268),('68',269),('68',270);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('68',271),('68',272),('69',273),('69',274),('69',275),('69',276),('70',277),('70',278),('70',279),('70',280);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('71',281),('71',282),('71',283),('71',284),('72',285),('72',286),('72',287),('72',288),('73',289),('73',290);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('73',291),('73',292),('74',293),('74',294),('74',295),('74',296),('75',297),('75',298),('75',299),('75',300);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('76',301),('76',302),('76',303),('76',304),('77',305),('77',306),('77',307),('77',308),('78',309),('78',310);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('78',311),('78',312),('79',313),('79',314),('79',315),('79',316),('80',317),('80',318),('80',319),('80',320);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('81',321),('81',322),('81',323),('81',324),('82',325),('82',326),('82',327),('82',328),('83',329),('83',330);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('83',331),('83',332),('84',333),('84',334),('84',335),('84',336),('85',337),('85',338),('85',339),('85',340);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('86',341),('86',342),('86',343),('86',344),('87',345),('87',346),('87',347),('87',348),('88',349),('88',350);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('88',351),('88',352),('89',353),('89',354),('89',355),('89',356),('90',357),('90',358),('90',359),('90',360);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('91',361),('91',362),('91',363),('91',364),('92',365),('92',366),('92',367),('92',368),('93',369),('93',370);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('93',371),('93',372),('94',373),('94',374),('94',375),('94',376),('95',377),('95',378),('95',379),('95',380);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('96',381),('96',382),('96',383),('96',384),('97',385),('97',386),('97',387),('97',388),('98',389),('98',390);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('98',391),('98',392),('99',393),('99',394),('99',395),('99',396),('100',397),('100',398),('100',399),('100',400);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('101',401),('101',402),('101',403),('101',404),('102',405),('102',406),('102',407),('102',408),('103',409),('103',410);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('103',411),('103',412),('104',413),('104',414),('104',415),('104',416),('105',417),('105',418),('105',419),('105',420);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('106',421),('106',422),('106',423),('106',424),('107',425),('107',426),('107',427),('107',428),('108',429),('108',430);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('108',431),('108',432),('109',433),('109',434),('109',435),('109',436),('110',437),('110',438),('110',439),('110',440);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('111',441),('111',442),('111',443),('111',444),('112',445),('112',446),('112',447),('112',448),('113',449),('113',450);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('113',451),('113',452),('114',453),('114',454),('114',455),('114',456),('115',457),('115',458),('115',459),('115',460);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('116',461),('116',462),('116',463),('116',464),('117',465),('117',466),('117',467),('117',468),('118',469),('118',470);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('118',471),('118',472),('119',473),('119',474),('119',475),('119',476),('120',477),('120',478),('120',479),('120',480);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('121',481),('121',482),('121',483),('121',484),('122',485),('122',486),('122',487),('122',488),('123',489),('123',490);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('123',491),('123',492),('124',493),('124',494),('124',495),('124',496),('125',497),('125',498),('125',499),('125',500);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('126',501),('126',502),('126',503),('126',504),('127',505),('127',506),('127',507),('127',508),('128',509),('128',510);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('128',511),('128',512),('129',513),('129',514),('129',515),('129',516),('130',517),('130',518),('130',519),('130',520);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('131',521),('131',522),('131',523),('131',524),('132',525),('132',526),('132',527),('132',528),('133',529),('133',530);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('133',531),('133',532),('134',533),('134',534),('134',535),('134',536),('135',537),('135',538),('135',539),('135',540);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('136',541),('136',542),('136',543),('136',544),('137',545),('137',546),('137',547),('137',548),('138',549),('138',550);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('138',551),('138',552),('139',553),('139',554),('139',555),('139',556),('140',557),('140',558),('140',559),('140',560);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('141',561),('141',562),('141',563),('141',564),('142',565),('142',566),('142',567),('142',568),('143',569),('143',570);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('143',571),('143',572),('144',573),('144',574),('144',575),('144',576),('145',577),('145',578),('145',579),('145',580);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('146',581),('146',582),('146',583),('146',584),('147',585),('147',586),('147',587),('147',588),('148',589),('148',590);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('148',591),('148',592),('149',593),('149',594),('149',595),('149',596),('150',597),('150',598),('150',599),('150',600);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('151',601),('151',602),('151',603),('151',604),('152',605),('152',606),('152',607),('152',608),('153',609),('153',610);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('153',611),('153',612),('154',613),('154',614),('154',615),('154',616),('155',617),('155',618),('155',619),('155',620);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('156',621),('156',622),('156',623),('156',624),('157',625),('157',626),('157',627),('157',628),('158',629),('158',630);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('158',631),('158',632),('159',633),('159',634),('159',635),('159',636),('160',637),('160',638),('160',639),('160',640);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('161',641),('161',642),('161',643),('161',644),('162',645),('162',646),('162',647),('162',648),('163',649),('163',650);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('163',651),('163',652),('164',653),('164',654),('164',655),('164',656),('165',657),('165',658),('165',659),('165',660);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('166',661),('166',662),('166',663),('166',664),('167',665),('167',666),('167',667),('167',668),('168',669),('168',670);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('168',671),('168',672),('169',673),('169',674),('169',675),('169',676),('170',677),('170',678),('170',679),('170',680);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('171',681),('171',682),('171',683),('171',684),('172',685),('172',686),('172',687),('172',688),('173',689),('173',690);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('173',691),('173',692),('174',693),('174',694),('174',695),('174',696),('175',697),('175',698),('175',699),('175',700);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('176',701),('176',702),('176',703),('176',704),('177',705),('177',706),('177',707),('177',708),('178',709),('178',710);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('178',711),('178',712),('179',713),('179',714),('179',715),('179',716),('180',717),('180',718),('180',719),('180',720);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('181',721),('181',722),('181',723),('181',724),('182',725),('182',726),('182',727),('182',728),('183',729),('183',730);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('183',731),('183',732),('184',733),('184',734),('184',735),('184',736),('185',737),('185',738),('185',739),('185',740);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('186',741),('186',742),('186',743),('186',744),('187',745),('187',746),('187',747),('187',748),('188',749),('188',750);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('188',751),('188',752),('189',753),('189',754),('189',755),('189',756),('190',757),('190',758),('190',759),('190',760);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('191',761),('191',762),('191',763),('191',764),('192',765),('192',766),('192',767),('192',768),('193',769),('193',770);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('193',771),('193',772),('194',773),('194',774),('194',775),('194',776),('195',777),('195',778),('195',779),('195',780);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('196',781),('196',782),('196',783),('196',784),('197',785),('197',786),('197',787),('197',788),('198',789),('198',790);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('198',791),('198',792),('199',793),('199',794),('199',795),('199',796),('200',797),('200',798),('200',799),('200',800);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('201',801),('201',802),('201',803),('201',804),('202',805),('202',806),('202',807),('202',808),('203',809),('203',810);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('203',811),('203',812),('204',813),('204',814),('204',815),('204',816),('205',817),('205',818),('205',819),('205',820);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('206',821),('206',822),('206',823),('206',824),('207',825),('207',826),('207',827),('207',828),('208',829),('208',830);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('208',831),('208',832),('209',833),('209',834),('209',835),('209',836),('210',837),('210',838),('210',839),('210',840);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('211',841),('211',842),('211',843),('211',844),('212',845),('212',846),('212',847),('212',848),('213',849),('213',850);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('213',851),('213',852),('214',853),('214',854),('214',855),('214',856),('215',857),('215',858),('215',859),('215',860);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('216',861),('216',862),('216',863),('216',864),('217',865),('217',866),('217',867),('217',868),('218',869),('218',870);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('218',871),('218',872),('219',873),('219',874),('219',875),('219',876),('220',877),('220',878),('220',879),('220',880);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('221',881),('221',882),('221',883),('221',884),('222',885),('222',886),('222',887),('222',888),('223',889),('223',890);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('223',891),('223',892),('224',893),('224',894),('224',895),('224',896),('225',897),('225',898),('225',899),('225',900);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('226',901),('226',902),('226',903),('226',904),('227',905),('227',906),('227',907),('227',908),('228',909),('228',910);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('228',911),('228',912),('229',913),('229',914),('229',915),('229',916),('230',917),('230',918),('230',919),('230',920);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('231',921),('231',922),('231',923),('231',924),('232',925),('232',926),('232',927),('232',928),('233',929),('233',930);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('233',931),('233',932),('234',933),('234',934),('234',935),('234',936),('235',937),('235',938),('235',939),('235',940);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('236',941),('236',942),('236',943),('236',944),('237',945),('237',946),('237',947),('237',948),('238',949),('238',950);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('238',951),('238',952),('239',953),('239',954),('239',955),('239',956),('240',957),('240',958),('240',959),('240',960);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('241',961),('241',962),('241',963),('241',964),('242',965),('242',966),('242',967),('242',968),('243',969),('243',970);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('243',971),('243',972),('244',973),('244',974),('244',975),('244',976),('245',977),('245',978),('245',979),('245',980);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('246',981),('246',982),('246',983),('246',984),('247',985),('247',986),('247',987),('247',988),('248',989),('248',990);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('248',991),('248',992),('249',993),('249',994),('249',995),('249',996),('250',997),('250',998),('250',999),('250',1000);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('251',1001),('251',1002),('251',1003),('251',1004),('252',1005),('252',1006),('252',1007),('252',1008),('253',1009),('253',1010);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('253',1011),('253',1012),('254',1013),('254',1014),('254',1015),('254',1016),('255',1017),('255',1018),('255',1019),('255',1020);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('256',1021),('256',1022),('256',1023),('256',1024),('257',1025),('257',1026),('257',1027),('257',1028),('258',1029),('258',1030);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('258',1031),('258',1032),('259',1033),('259',1034),('259',1035),('259',1036),('260',1037),('260',1038),('260',1039),('260',1040);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('261',1041),('261',1042),('261',1043),('261',1044),('262',1045),('262',1046),('262',1047),('262',1048),('263',1049),('263',1050);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('263',1051),('263',1052),('264',1053),('264',1054),('264',1055),('264',1056),('265',1057),('265',1058),('265',1059),('265',1060);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('266',1061),('266',1062),('266',1063),('266',1064),('267',1065),('267',1066),('267',1067),('267',1068),('268',1069),('268',1070);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('268',1071),('268',1072),('269',1073),('269',1074),('269',1075),('269',1076),('270',1077),('270',1078),('270',1079),('270',1080);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('271',1081),('271',1082),('271',1083),('271',1084),('272',1085),('272',1086),('272',1087),('272',1088),('273',1089),('273',1090);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('273',1091),('273',1092),('274',1093),('274',1094),('274',1095),('274',1096),('275',1097),('275',1098),('275',1099),('275',1100);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('276',1101),('276',1102),('276',1103),('276',1104),('277',1105),('277',1106),('277',1107),('277',1108),('278',1109),('278',1110);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('278',1111),('278',1112),('279',1113),('279',1114),('279',1115),('279',1116),('280',1117),('280',1118),('280',1119),('280',1120);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('281',1121),('281',1122),('281',1123),('281',1124),('282',1125),('282',1126),('282',1127),('282',1128),('283',1129),('283',1130);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('283',1131),('283',1132),('284',1133),('284',1134),('284',1135),('284',1136),('285',1137),('285',1138),('285',1139),('285',1140);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('286',1141),('286',1142),('286',1143),('286',1144),('287',1145),('287',1146),('287',1147),('287',1148),('288',1149),('288',1150);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('288',1151),('288',1152),('289',1153),('289',1154),('289',1155),('289',1156),('290',1157),('290',1158),('290',1159),('290',1160);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('291',1161),('291',1162),('291',1163),('291',1164),('292',1165),('292',1166),('292',1167),('292',1168),('293',1169),('293',1170);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('293',1171),('293',1172),('294',1173),('294',1174),('294',1175),('294',1176),('295',1177),('295',1178),('295',1179),('295',1180);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('296',1181),('296',1182),('296',1183),('296',1184),('297',1185),('297',1186),('297',1187),('297',1188),('298',1189),('298',1190);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('298',1191),('298',1192),('299',1193),('299',1194),('299',1195),('299',1196),('300',1197),('300',1198),('300',1199),('300',1200);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('301',1201),('301',1202),('301',1203),('301',1204),('302',1205),('302',1206),('302',1207),('302',1208),('303',1209),('303',1210);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('303',1211),('303',1212),('304',1213),('304',1214),('304',1215),('304',1216),('305',1217),('305',1218),('305',1219),('305',1220);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('306',1221),('306',1222),('306',1223),('306',1224),('307',1225),('307',1226),('307',1227),('307',1228),('308',1229),('308',1230);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('308',1231),('308',1232),('309',1233),('309',1234),('309',1235),('309',1236),('310',1237),('310',1238),('310',1239),('310',1240);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('311',1241),('311',1242),('311',1243),('311',1244),('312',1245),('312',1246),('312',1247),('312',1248),('313',1249),('313',1250);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('313',1251),('313',1252),('314',1253),('314',1254),('314',1255),('314',1256),('315',1257),('315',1258),('315',1259),('315',1260);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('316',1261),('316',1262),('316',1263),('316',1264),('317',1265),('317',1266),('317',1267),('317',1268),('318',1269),('318',1270);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('318',1271),('318',1272),('319',1273),('319',1274),('319',1275),('319',1276),('320',1277),('320',1278),('320',1279),('320',1280);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('321',1281),('321',1282),('321',1283),('321',1284),('322',1285),('322',1286),('322',1287),('322',1288),('323',1289),('323',1290);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('323',1291),('323',1292),('324',1293),('324',1294),('324',1295),('324',1296),('325',1297),('325',1298),('325',1299),('325',1300);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('326',1301),('326',1302),('326',1303),('326',1304),('327',1305),('327',1306),('327',1307),('327',1308),('328',1309),('328',1310);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('328',1311),('328',1312),('329',1313),('329',1314),('329',1315),('329',1316),('330',1317),('330',1318),('330',1319),('330',1320);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('331',1321),('331',1322),('331',1323),('331',1324),('332',1325),('332',1326),('332',1327),('332',1328),('333',1329),('333',1330);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('333',1331),('333',1332),('334',1333),('334',1334),('334',1335),('334',1336),('335',1337),('335',1338),('335',1339),('335',1340);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('336',1341),('336',1342),('336',1343),('336',1344),('337',1345),('337',1346),('337',1347),('337',1348),('338',1349),('338',1350);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('338',1351),('338',1352),('339',1353),('339',1354),('339',1355),('339',1356),('340',1357),('340',1358),('340',1359),('340',1360);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('341',1361),('341',1362),('341',1363),('341',1364),('342',1365),('342',1366),('342',1367),('342',1368),('343',1369),('343',1370);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('343',1371),('343',1372),('344',1373),('344',1374),('344',1375),('344',1376),('345',1377),('345',1378),('345',1379),('345',1380);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('346',1381),('346',1382),('346',1383),('346',1384),('347',1385),('347',1386),('347',1387),('347',1388),('348',1389),('348',1390);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('348',1391),('348',1392),('349',1393),('349',1394),('349',1395),('349',1396),('350',1397),('350',1398),('350',1399),('350',1400);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('351',1401),('351',1402),('351',1403),('351',1404),('352',1405),('352',1406),('352',1407),('352',1408),('353',1409),('353',1410);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('353',1411),('353',1412),('354',1413),('354',1414),('354',1415),('354',1416),('355',1417),('355',1418),('355',1419),('355',1420);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('356',1421),('356',1422),('356',1423),('356',1424),('357',1425),('357',1426),('357',1427),('357',1428),('358',1429),('358',1430);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('358',1431),('358',1432),('359',1433),('359',1434),('359',1435),('359',1436),('360',1437),('360',1438),('360',1439),('360',1440);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('361',1441),('361',1442),('361',1443),('361',1444),('362',1445),('362',1446),('362',1447),('362',1448),('363',1449),('363',1450);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('363',1451),('363',1452),('364',1453),('364',1454),('364',1455),('364',1456),('365',1457),('365',1458),('365',1459),('365',1460);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('366',1461),('366',1462),('366',1463),('366',1464),('367',1465),('367',1466),('367',1467),('367',1468),('368',1469),('368',1470);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('368',1471),('368',1472),('369',1473),('369',1474),('369',1475),('369',1476),('370',1477),('370',1478),('370',1479),('370',1480);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('371',1481),('371',1482),('371',1483),('371',1484),('372',1485),('372',1486),('372',1487),('372',1488),('373',1489),('373',1490);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('373',1491),('373',1492),('374',1493),('374',1494),('374',1495),('374',1496),('375',1497),('375',1498),('375',1499),('375',1500);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('376',1501),('376',1502),('376',1503),('376',1504),('377',1505),('377',1506),('377',1507),('377',1508),('378',1509),('378',1510);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('378',1511),('378',1512),('379',1513),('379',1514),('379',1515),('379',1516),('380',1517),('380',1518),('380',1519),('380',1520);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('381',1521),('381',1522),('381',1523),('381',1524),('382',1525),('382',1526),('382',1527),('382',1528),('383',1529),('383',1530);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('383',1531),('383',1532),('384',1533),('384',1534),('384',1535),('384',1536),('385',1537),('385',1538),('385',1539),('385',1540);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('386',1541),('386',1542),('386',1543),('386',1544),('387',1545),('387',1546),('387',1547),('387',1548),('388',1549),('388',1550);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('388',1551),('388',1552),('389',1553),('389',1554),('389',1555),('389',1556),('390',1557),('390',1558),('390',1559),('390',1560);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('391',1561),('391',1562),('391',1563),('391',1564),('392',1565),('392',1566),('392',1567),('392',1568),('393',1569),('393',1570);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('393',1571),('393',1572),('394',1573),('394',1574),('394',1575),('394',1576),('395',1577),('395',1578),('395',1579),('395',1580);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('396',1581),('396',1582),('396',1583),('396',1584),('397',1585),('397',1586),('397',1587),('397',1588),('398',1589),('398',1590);
INSERT INTO [Auckland_Park].[LU_Sumative]([LUID],[SumativeID]) VALUES('398',1591),('398',1592),('399',1593),('399',1594),('399',1595),('399',1596),('400',1597),('400',1598),('400',1599),('400',1600);