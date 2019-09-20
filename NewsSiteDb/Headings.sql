CREATE TABLE [dbo].[Headings]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [ParentHeadingId] INT NULL, 
    CONSTRAINT [FK_Headings_ToHeadings] FOREIGN KEY ([ParentHeadingId]) REFERENCES [Headings]([Id])
)