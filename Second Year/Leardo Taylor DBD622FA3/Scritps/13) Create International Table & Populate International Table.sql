USE CTUDB
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('[Auckland_Park].[International]'))
BEGIN;
    DROP TABLE [Auckland_Park].[International];
END;
GO

CREATE TABLE [Auckland_Park].[International] (
    [InternationalID] INTEGER NOT NULL UNIQUE IDENTITY(1, 1),
    [Name] VARCHAR(MAX) NULL,
    PRIMARY KEY ([InternationalID])
);
GO

INSERT INTO [Auckland_Park].[International]([Name]) VALUES('tristique ac,'),('Vestibulum'),('eu tellus. Phasellus'),('purus.'),('hendrerit. Donec'),('diam at'),('hymenaeos. Mauris ut'),('lorem semper auctor.'),('Nunc'),('nec');
INSERT INTO [Auckland_Park].[International]([Name]) VALUES('eu,'),('non dui nec'),('vitae purus'),('Morbi sit amet'),('Nulla'),('at, libero. Morbi'),('dictum eu,'),('hendrerit neque. In'),('nulla at'),('rutrum');
INSERT INTO [Auckland_Park].[International]([Name]) VALUES('consequat nec,'),('augue id'),('metus sit'),('vehicula aliquet libero.'),('iaculis quis,'),('eu'),('pede ac urna.'),('Vivamus sit amet'),('ultrices, mauris ipsum'),('magna. Lorem ipsum');
INSERT INTO [Auckland_Park].[International]([Name]) VALUES('at'),('vitae,'),('aliquam'),('risus.'),('In faucibus.'),('congue'),('dictum placerat,');