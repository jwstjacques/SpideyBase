CREATE TABLE [Spidey].[BusinessPhoneNumber]
(
	[business_id] INT NOT NULL ,
    [phone_id] INT NOT NULL, 
    [is_primary] BIT NOT NULL DEFAULT 1, 
    [is_active] BIT NOT NULL DEFAULT 1, 
    PRIMARY KEY ([phone_id], [business_id]), 
    CONSTRAINT [FK_BusinessPhoneNumber_Businesses] FOREIGN KEY ([business_id]) REFERENCES [Spidey].[Businesses]([business_id]),
	CONSTRAINT [FK_BusinessPhoneNumber_PhoneNumbers] FOREIGN KEY ([phone_id]) REFERENCES [Spidey].[PhoneNumbers]([phone_id])
)
