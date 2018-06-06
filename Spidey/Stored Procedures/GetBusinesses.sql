CREATE PROCEDURE [Spidey].[GetBusinesses]
AS
	SET NOCOUNT ON;

	SELECT
		b.business_id
		,b.business_name
		,a.street_address
		,ci.city_name
		,ar.area_id
		,ar.area_name
		,a.code
	FROM [Spidey].Businesses b
	LEFT JOIN Spidey.BusinessAddress ba
		ON b.business_id = ba.business_id
	LEFT JOIN Spidey.Addresses a
		ON ba.address_id = a.address_id
	LEFT JOIN Spidey.Cities ci
		ON a.city_id = ci.[city_id]
	LEFT JOIN Spidey.Areas ar
		ON ci.area_id = ar.area_id
	ORDER BY b.business_name ASC
GO
