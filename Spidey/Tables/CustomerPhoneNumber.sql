CREATE TABLE [Spidey].[CustomerPhoneNumber]
(
	[customer_id] INT NOT NULL , 
    [phone_id] INT NOT NULL, 
    [is_primary] BIT NOT NULL DEFAULT 1, 
    [is_active] BIT NOT NULL DEFAULT 1, 
    PRIMARY KEY ([phone_id], [customer_id]), 
    CONSTRAINT [FK_CustomerPhoneNumber_Customers] FOREIGN KEY ([customer_id]) REFERENCES [Spidey].[Customers]([customer_id]),
	CONSTRAINT [FK_CustomerPhoneNumber_PhoneNumbers] FOREIGN KEY ([phone_id]) REFERENCES [Spidey].[PhoneNumbers]([phone_id])
)
