CREATE TABLE [Spidey].[BusinessAddress]
(
	[business_id] INT NOT NULL , 
    [address_id] INT NOT NULL, 
    [is_active] BIT NULL DEFAULT 1, 
    PRIMARY KEY ([address_id], [business_id]), 
    CONSTRAINT [FK_BusinessAddress_Businesses] FOREIGN KEY ([business_id]) REFERENCES [Spidey].[Businesses]([business_id]),
	CONSTRAINT [FK_BusinessAddress_Addresses] FOREIGN KEY ([address_id]) REFERENCES [Spidey].[Addresses]([address_id])
)
