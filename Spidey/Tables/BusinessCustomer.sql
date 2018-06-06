CREATE TABLE [Spidey].[BusinessCustomer]
(
	[business_id] INT NOT NULL , 
    [customer_id] INT NOT NULL, 
    [is_active] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [FK_BusinessContact_Customers] FOREIGN KEY ([customer_id]) REFERENCES [Spidey].[Customers]([customer_id]), 
    CONSTRAINT [FK_BusinessContact_Businesses] FOREIGN KEY ([business_id]) REFERENCES [Spidey].[Businesses]([business_id]), 
    PRIMARY KEY ([customer_id], [business_id])
)
