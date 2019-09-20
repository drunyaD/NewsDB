CREATE TABLE [dbo].[News_Reviews]
(
	[NewsId] INT NOT NULL , 
    [ReviewId] INT NOT NULL, 
    PRIMARY KEY ([NewsId], [ReviewId]),
	CONSTRAINT [FK_NewsReviews_ToNews] FOREIGN KEY ([NewsId]) REFERENCES [News]([Id]),
	CONSTRAINT [FK_NewsReviews_ToReviews] FOREIGN KEY ([ReviewId]) REFERENCES [Reviews]([Id])
)
