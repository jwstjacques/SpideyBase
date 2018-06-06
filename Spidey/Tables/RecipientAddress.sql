CREATE TABLE [Spidey].[RecipientAddress]
(
	[recipient_id] INT NOT NULL , 
    [address_id] INT NOT NULL, 
    PRIMARY KEY ([recipient_id], [address_id]), 
    CONSTRAINT [FK_RecipientAddress_Recipients] FOREIGN KEY ([recipient_id]) REFERENCES [Spidey].[Recipients]([recipient_id]),
	CONSTRAINT [FK_RecipientAddress_Addresses] FOREIGN KEY ([address_id]) REFERENCES [Spidey].[Addresses]([address_id])
)
