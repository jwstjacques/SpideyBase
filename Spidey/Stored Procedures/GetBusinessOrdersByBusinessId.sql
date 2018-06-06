CREATE PROCEDURE [Spidey].[GetBusinessOrdersByBusinessId]
	@business_id int
AS
	SET NOCOUNT ON;

	SELECT
		o.order_id
		,o.order_date
		,o.delivery_date
		,o.number_lillies
		,r.recipient_id
		,r.recipient_name
		,a.street_address
		,ci.city_name
		,a.code
		,ar.area_name
	FROM Spidey.Orders o
	LEFT JOIN Spidey.Recipients r
	ON o.recipient_id = r.recipient_id
	LEFT JOIN Spidey.RecipientAddress ra
	ON r.recipient_id = ra.recipient_id
	LEFT JOIN Spidey.Addresses a
	ON ra.address_id = a.address_id
	LEFT JOIN Spidey.Cities ci
	ON a.city_id = ci.[city_id]
	LEFT JOIN Spidey.Areas ar
	ON ci.area_id = ar.area_id
	LEFT JOIN Spidey.BusinessOrder bo
	ON o.order_id = bo.order_id
	LEFT JOIN [Spidey].Businesses b
	ON bo.business_id = b.business_id
	WHERE bo.business_id = @business_id
	ORDER BY o.order_date DESC
GO