CREATE TABLE [Spidey].[Addresses]
(
	[address_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [street_address] NVARCHAR(50) NOT NULL, 
    [city_id] INT NOT NULL, 
    [code] NVARCHAR(10) NOT NULL, 
    CONSTRAINT [FK_Addresses_Cities] FOREIGN KEY ([city_id]) REFERENCES [Spidey].[Cities]([city_id])
)
