CREATE TABLE [Spidey].[Recipients]
(
	[recipient_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [recipient_name] NVARCHAR(50) NOT NULL, 
    [is_business] BIT NOT NULL DEFAULT 0, 
    [email] NVARCHAR(50) NULL, 
    [phone_id] INT NULL, 
    CONSTRAINT [FK_Recipients_PhoneNumbers] FOREIGN KEY ([phone_id]) REFERENCES [Spidey].[PhoneNumbers]([phone_id])
)
