CREATE TABLE [Spidey].[Regions]
(
	[region_id] INT NOT NULL PRIMARY KEY, 
    [region_name] NVARCHAR(50) NOT NULL, 
    [country_id] INT NOT NULL, 
    CONSTRAINT [FK_Regions_Countries] FOREIGN KEY ([country_id]) REFERENCES [Spidey].[Countries]([country_id])
)
