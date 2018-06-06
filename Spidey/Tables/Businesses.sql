CREATE TABLE [Spidey].[Businesses]
(
	[business_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [business_name] NVARCHAR(50) NOT NULL
)

GO

CREATE INDEX [IX_Businesses_BusinessName] ON [Spidey].[Businesses] ([business_name])
