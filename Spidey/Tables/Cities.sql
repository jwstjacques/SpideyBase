CREATE TABLE [Spidey].[Cities]
(
	[city_id] INT NOT NULL PRIMARY KEY, 
    [city_name] NVARCHAR(50) NOT NULL, 
    [region_id] INT NOT NULL, 
    [area_id] SMALLINT NULL, 
    CONSTRAINT [FK_Cities_Regions] FOREIGN KEY ([region_id]) REFERENCES [Spidey].[Regions]([region_id]),
)
