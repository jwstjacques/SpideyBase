CREATE PROCEDURE [Spidey].[GetCustomerDetailsByCustomerId]
	@customer_id int
AS
	SET NOCOUNT ON;

	SELECT
		c.customer_id
		,c.first_name
		,c.last_name
		,c.email
		,a.street_address
		,ci.city_name
		,ar.area_name
		,r.region_name
		,a.code
		,co.country_name
		,p.phone_number
	FROM Spidey.Customers c
	LEFT JOIN Spidey.CustomerAddress ca
		ON c.customer_id = ca.customer_id
	LEFT JOIN Spidey.Addresses a
		ON ca.address_id = a.address_id
	LEFT JOIN Spidey.Cities ci
		ON a.city_id = ci.city_id
	LEFT JOIN Spidey.Regions r
		ON ci.region_id = r.region_id
	LEFT JOIN Spidey.Countries co
		ON r.country_id = co.country_id
	LEFT JOIN Spidey.Areas ar
		ON ci.area_id = ar.area_id
	LEFT JOIN Spidey.CustomerPhoneNumber cpn
		ON c.customer_id = cpn.customer_id
	LEFT JOIN Spidey.PhoneNumbers p
		ON cpn.phone_id = p.phone_id
	WHERE c.customer_id = @customer_id
GO
