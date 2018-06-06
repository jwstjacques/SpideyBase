CREATE PROCEDURE [Spidey].[SaveCustomer]
(
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

	DECLARE @customer_id int
	DECLARE @address_id int
	DECLARE @phone_id int

	-- CUSTOMER
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
	INSERT INTO Spidey.CustomerAddress
		(customer_id, address_id)
	VALUES
		(@customer_id, @address_id)

	INSERT INTO Spidey.CustomerPhoneNumber
		(customer_id, phone_id)
	VALUES
		(@customer_id, @phone_id)
GO