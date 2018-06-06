CREATE PROCEDURE [Spidey].[SaveBusiness]
(
	@business_name nvarchar(50),
	@first_name nvarchar(50),
	@last_name nvarchar(50),
	@email nvarchar(50),
	@street_address nvarchar(50),
	@city_id int,
	@code nvarchar(10),
	@phone_number nvarchar(10)
)
AS
	SET NOCOUNT ON;

	DECLARE @business_id int
	DECLARE @customer_id int
	DECLARE @address_id int
	DECLARE @phone_id int

	--BUSINESS
	INSERT INTO Spidey.Businesses
		(business_name)
	VALUES
		(@business_name)
	SET
		@business_id = SCOPE_IDENTITY();

	--CUSTOMER
	INSERT INTO Spidey.Customers
		(first_name, last_name, email)
	VALUES
		(@first_name, @last_name, @email)
	SET
		@customer_id = SCOPE_IDENTITY();

	--ADDRESS
	INSERT INTO Spidey.Addresses
		(street_address, city_id, code)
	VALUES
		(@street_address, @city_id, @code)
	SET
		@address_id = SCOPE_IDENTITY;

	--PHONE
	INSERT INTO Spidey.PhoneNumbers
		(phone_number)
	VALUES
		(@phone_number)
	SET
		@phone_id = SCOPE_IDENTITY;

	--LOOKUPS
	INSERT INTO Spidey.BusinessAddress
		(business_id, address_id)
	VALUES
		(@business_id, @address_id)

	INSERT INTO Spidey.BusinessPhoneNumber
		(business_id, phone_id)
	VALUES
		(@business_id, @phone_id)

	INSERT INTO Spidey.BusinessCustomer
		(business_id, customer_id)
	VALUES
		(@business_id, @customer_id)
GO
