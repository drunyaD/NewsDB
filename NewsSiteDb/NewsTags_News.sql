CREATE TABLE [dbo].[NewsTags_News]
(
	[NewsTagId] INT NOT NULL , 
    [NewsId] INT NOT NULL, 
    PRIMARY KEY ([NewsId], [NewsTagId]), 
    CONSTRAINT [FK_NewsTags_News_ToNewsTags] FOREIGN KEY ([NewsTagId]) REFERENCES [NewsTags]([Id]), 
    CONSTRAINT [FK_NewsTags_News_ToNews] FOREIGN KEY ([NewsId]) REFERENCES [News]([Id])
)
