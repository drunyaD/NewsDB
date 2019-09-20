CREATE TABLE [dbo].[Reviews]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [Text] NVARCHAR(500) NOT NULL, 
    [Date] DATETIME NOT NULL, 
    [HeadingId] INT NOT NULL, 
    CONSTRAINT [FK_Reviews_ToHeadings] FOREIGN KEY ([HeadingId]) REFERENCES [Headings]([Id])
)
