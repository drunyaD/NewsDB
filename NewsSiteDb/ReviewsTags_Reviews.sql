CREATE TABLE [dbo].[ReviewsTags_Reviews]
(
	[ReviewTagId] INT NOT NULL , 
    [ReviewId] INT NOT NULL, 
    PRIMARY KEY ([ReviewId], [ReviewTagId]), 
    CONSTRAINT [FK_ReviewsTags_Reviews_ToReviewsTags] FOREIGN KEY ([ReviewTagId]) REFERENCES [ReviewsTags]([Id]), 
    CONSTRAINT [FK_ReviewsTags_Reviews_ToReviews] FOREIGN KEY ([ReviewId]) REFERENCES [Reviews]([Id])
)
