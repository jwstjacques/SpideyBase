CREATE PROCEDURE [Spidey].[GetBusinessContacstByBusinessId]
	@business_id int
AS
	SET NOCOUNT ON;

	SELECT
		c.customer_id
		,c.first_name
		,c.last_name
		,c.email
	FROM Spidey.BusinessCustomer bc
	LEFT JOIN Spidey.Customers c
		ON bc.customer_id = c.customer_id
	ORDER BY c.last_name ASC, c.first_name ASC
GO