CREATE TABLE [Spidey].[CustomerOrder]
(
	[customer_id] INT NOT NULL , 
    [order_id] INT NOT NULL, 
    PRIMARY KEY ([order_id], [customer_id]), 
    CONSTRAINT [FK_CustomerOrder_Customers] FOREIGN KEY ([customer_id]) REFERENCES [Spidey].[Customers]([customer_id]),
	CONSTRAINT [FK_CustomerOrder_Orders] FOREIGN KEY ([order_id]) REFERENCES [Spidey].[Orders]([order_id])
)
