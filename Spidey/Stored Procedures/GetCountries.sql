CREATE PROCEDURE [Spidey].[GetCountries]
AS
	SET NOCOUNT ON;

	SELECT
		c.country_id
		,c.country_name
	FROM Spidey.Countries c
GO
