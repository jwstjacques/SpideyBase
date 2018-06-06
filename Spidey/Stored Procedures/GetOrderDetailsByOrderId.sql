CREATE PROCEDURE [Spidey].[GetOrderDetailsByOrderId]
	@order_id int
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
		,c.city_name
		,re.region_name
		,a.code
		,n.text
		,l.english_name
	FROM Spidey.Orders o
	LEFT JOIN Spidey.Recipients r
		ON o.recipient_id = r.recipient_id 
	LEFT JOIN Spidey.RecipientAddress ra
		ON r.recipient_id = ra.recipient_id
	LEFT JOIN Spidey.Addresses a
		ON ra.address_id = a.address_id
	LEFT JOIN Spidey.Cities c
		ON a.city_id = c.city_id
	LEFT JOIN Spidey.Regions re
		ON c.region_id = re.region_id
	LEFT JOIN Spidey.Areas ar
		ON c.city_id = ar.area_id
	LEFT JOIN Spidey.Notes n
		ON o.order_id = n.order_id
	LEFT JOIN Spidey.Languages l
		ON n.language_id = l.language_id
	WHERE o.order_id = @order_id
GO
