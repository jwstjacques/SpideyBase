CREATE TABLE [Spidey].[Customers]
(
	[customer_id] INT NOT NULL PRIMARY KEY, 
    [first_name] NVARCHAR(50) NOT NULL, 
    [last_name] NVARCHAR(50) NOT NULL, 
    [email] NVARCHAR(50) NULL
)

GO

CREATE INDEX [IX_Customers_LastName] ON [Spidey].[Customers] ([last_name])

GO
CREATE INDEX [IX_Customers_FirstName] ON [Spidey].[Customers] ([first_name])
