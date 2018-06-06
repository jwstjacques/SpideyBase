CREATE PROCEDURE [Spidey].[GetCities]
AS
	SET NOCOUNT ON;

	SELECT
		c.city_id
		,c.city_name
	FROM Spidey.Cities c
GO
