CREATE TABLE [Spidey].[BusinessOrder]
(
	[business_id] INT NOT NULL , 
    [customer_id] INT NOT NULL, 
    [order_id] INT NOT NULL, 
    PRIMARY KEY ([order_id], [business_id], [customer_id]), 
    CONSTRAINT [FK_BusinessOrder_Businesses] FOREIGN KEY ([business_id]) REFERENCES [Spidey].[Businesses]([business_id]),
	CONSTRAINT [FK_BusinessOrder_Customers] FOREIGN KEY ([customer_id]) REFERENCES [Spidey].[Customers]([customer_id]),
	CONSTRAINT [FK_BusinessOrder_Orders] FOREIGN KEY ([order_id]) REFERENCES [Spidey].[Orders]([order_id])
)
