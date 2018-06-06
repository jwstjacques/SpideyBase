CREATE TABLE [Spidey].[CustomerAddress]
(
	[customer_id] INT NOT NULL , 
    [address_id] INT NOT NULL, 
    [is_primary] BIT NOT NULL DEFAULT 1, 
    [is_active] BIT NOT NULL DEFAULT 1, 
    PRIMARY KEY ([address_id], [customer_id]), 
    CONSTRAINT [FK_CustomerAddress_Customers] FOREIGN KEY ([customer_id]) REFERENCES [Spidey].[Customers]([customer_id]),
	CONSTRAINT [FK_CustomerAddress_Addresses] FOREIGN KEY ([address_id]) REFERENCES [Spidey].[Addresses]([address_id])
)
