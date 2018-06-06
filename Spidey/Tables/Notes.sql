CREATE TABLE [Spidey].[Notes]
(
	[note_id] INT NOT NULL PRIMARY KEY, 
    [order_id] INT NOT NULL, 
    [text] NVARCHAR(255) NOT NULL, 
    [language_id] SMALLINT NOT NULL, 
    CONSTRAINT [FK_Notes_Languages] FOREIGN KEY ([language_id]) REFERENCES [Spidey].[Languages]([language_id]),
	CONSTRAINT [FK_Notes_Orders] FOREIGN KEY ([order_id]) REFERENCES [Spidey].[Orders]([order_id])

)
