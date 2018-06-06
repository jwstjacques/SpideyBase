CREATE PROCEDURE [Spidey].[GetCustomers]
AS
	SET NOCOUNT ON;

	SELECT 
		c.customer_id
		,c.first_name
		,c.last_name
		,b.business_id
		,b.business_name
		,a.street_address
		,ci.city_name
		,ar.area_id
		,ar.area_name
		,a.code
	FROM Spidey.Customers c
	LEFT JOIN Spidey.CustomerAddress ca
		ON c.[customer_id] = ca.customer_id
	LEFT JOIN Spidey.Addresses a
		ON ca.address_id = a.address_id
	LEFT JOIN Spidey.Cities ci
		ON a.city_id = ci.[city_id]
	LEFT JOIN Spidey.Areas ar
		ON ci.area_id = ar.area_id
	LEFT JOIN Spidey.BusinessCustomer bc
		ON c.[customer_id] = bc.customer_id
	LEFT JOIN [Spidey].Businesses b
		ON bc.business_id = b.business_id
	ORDER BY c.last_name ASC, c.first_name ASC
GO
