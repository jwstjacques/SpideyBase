CREATE TABLE [Spidey].[Orders]
(
	[order_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [order_date] SMALLDATETIME NOT NULL, 
    [delivery_date] SMALLDATETIME NULL, 
    [number_lillies] SMALLINT NOT NULL, 
    [recipient_id] INT NULL, 
    CONSTRAINT [FK_Orders_Recipients] FOREIGN KEY ([recipient_id]) REFERENCES[Spidey].[Recipients]([recipient_id])
)
