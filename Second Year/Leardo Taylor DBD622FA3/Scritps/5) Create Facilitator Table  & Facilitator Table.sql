USE CTUDB

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[Facilitator]'))
BEGIN;
    DROP TABLE [Auckland_Park].[Facilitator];
END;
GO

CREATE TABLE [Auckland_Park].[Facilitator] (
    [FacilitatorID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
    [PersonID] INTEGER NOT NULL UNIQUE,
    PRIMARY KEY ([FacilitatorID], [PersonID])
);
GO

INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(801),(802),(803),(804),(805),(806),(807),(808),(809),(810);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(811),(812),(813),(814),(815),(816),(817),(818),(819),(820);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(821),(822),(823),(824),(825),(826),(827),(828),(829),(830);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(831),(832),(833),(834),(835),(836),(837),(838),(839),(840);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(841),(842),(843),(844),(845),(846),(847),(848),(849),(850);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(851),(852),(853),(854),(855),(856),(857),(858),(859),(860);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(861),(862),(863),(864),(865),(866),(867),(868),(869),(870);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(871),(872),(873),(874),(875),(876),(877),(878),(879),(880);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(881),(882),(883),(884),(885),(886),(887),(888),(889),(890);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(891),(892),(893),(894),(895),(896),(897),(898),(899),(900);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(901),(902),(903),(904),(905),(906),(907),(908),(909),(910);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(911),(912),(913),(914),(915),(916),(917),(918),(919),(920);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(921),(922),(923),(924),(925),(926),(927),(928),(929),(930);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(931),(932),(933),(934),(935),(936),(937),(938),(939),(940);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(941),(942),(943),(944),(945),(946),(947),(948),(949),(950);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(951),(952),(953),(954),(955),(956),(957),(958),(959),(960);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(961),(962),(963),(964),(965),(966),(967),(968),(969),(970);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(971),(972),(973),(974),(975),(976),(977),(978),(979),(980);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(981),(982),(983),(984),(985),(986),(987),(988),(989),(990);
INSERT INTO [Auckland_Park].[Facilitator]([PersonID]) VALUES(991),(992),(993),(994),(995),(996),(997),(998),(999),(1000);